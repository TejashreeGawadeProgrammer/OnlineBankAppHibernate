package com.teju.cotroller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.teju.bo.PersonBo;
import com.teju.entity.Bank;
import com.teju.entity.Person;

@Controller 
@SessionAttributes("bank")
public class BankController {
	
	@ModelAttribute("bank")
	public Bank getBank() {
		return new Bank();
	}
	
    @Autowired  
    PersonBo dao;
    
    @RequestMapping("/bankform")  
    public String showform(Model m){  
    	m.addAttribute("bank", new Bank());	//provide reservation object to the mode
    	return "bankform"; 
    } 
    
    @RequestMapping(value="/save2",method = RequestMethod.POST)  
    public String save(@ModelAttribute("bank") Bank bank){  // @ModelAttribute value that is emp shoud be match to view page 
        dao.addBank(bank);  								// i.e. it returns on viewemp.jsp page there emp.name (this emp shoud match) 
        return "redirect:/bankdetails";  
    }  
     
//    @RequestMapping(value="/deleteperson/{id}",method = RequestMethod.GET)  
//    public String delete(@ModelAttribute("person") Person person){  //@PathVariable – for mapping dynamic values from the URI to handler method arguments.
//  	  Person perdel= dao.getPerson(person.getId());
//  		dao.deletePerson(perdel); 
//        return "redirect:/persondetails";  
//    } 
    
    @RequestMapping(value="/deletebank/{id}",method = RequestMethod.GET)  
    public String delete(@ModelAttribute("bank") Bank bank){  //@PathVariable – for mapping dynamic values from the URI to handler method arguments.
    	Bank bankdel= dao.getBank(bank.getId());
		dao.deleteBank(bankdel);
        return "redirect:/bankdetails";  
    }   
    @RequestMapping("/bankdetails")  
    public String viewemp(Model m){  
        List<Bank> list=dao.getBanks();  
        m.addAttribute("list",list);
        return "bankdetails";  
    }
    @RequestMapping(value="/editbank/{id}")  
    public String edit(@PathVariable int id, Model m){ 
  	  System.out.println("you are in edit");
      Bank bank=dao.getBank(id);  
      m.addAttribute("bank",bank);
      return "bankeditform";  
    }  
    
    @RequestMapping(value="/editsave2",method = RequestMethod.POST)  
    public String editsave(@ModelAttribute("bank") Bank bank){  // @ModelAttribute binds form data to the object 
  	  System.out.println("you are in edit save");
  	  dao.updateBank(bank);  
      return "redirect:/bankdetails";  
    }   
}
