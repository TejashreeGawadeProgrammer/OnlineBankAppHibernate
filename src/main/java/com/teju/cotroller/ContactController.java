
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
import com.teju.entity.Contact;
import com.teju.entity.Person;

@Controller  
@SessionAttributes("contact")
public class ContactController {
	@ModelAttribute("contact")
	public Contact getContact() {
		return new Contact();
	}
	
	@Autowired  
    PersonBo dao;
    
    @RequestMapping("/contactform")  
    public String showform(Model m){  
    	m.addAttribute("contact", new Contact());	//provide reservation object to the mode
    	return "contactform"; 
    } 
    
    @RequestMapping(value="/save1",method = RequestMethod.POST)  
    public String save(@ModelAttribute("contact") Contact contact){  // @ModelAttribute value that is emp shoud be match to view page 
        dao.addContact(contact);  								// i.e. it returns on viewemp.jsp page there emp.name (this emp shoud match) 
        return "redirect:/contactdetails";  
    }  
     
    @RequestMapping("/contactdetails")  
    public String viewemp(Model m){  
        List<Contact> list=dao.getContacts();  
        m.addAttribute("list",list);
        return "contactdetails";  
    } 
    
//    @RequestMapping(value="/deleteperson/{id}",method = RequestMethod.GET)  
//    public String delete(@ModelAttribute("person") Person person){  //@PathVariable – for mapping dynamic values from the URI to handler method arguments.
//  	  Person perdel= dao.getPerson(person.getId());
//  		dao.deletePerson(perdel); 
//        return "redirect:/persondetails";  
//    }
    @RequestMapping(value="/deletecontact/{id}",method = RequestMethod.GET)  
    public String delete(@ModelAttribute("contact") Contact contact){  //@PathVariable – for mapping dynamic values from the URI to handler method arguments.
    	Contact condel= dao.getContact(contact.getId());
		dao.deleteContact(condel);
        return "redirect:/contactdetails";  
    }   

}
