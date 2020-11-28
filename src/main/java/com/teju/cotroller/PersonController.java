

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

import com.teju.entity.Person;
import com.teju.bo.PersonBo;  
  
@Controller 
@SessionAttributes("person")
public class PersonController { 
	
	@ModelAttribute("person")
	public Person getPerson() {
		return new Person();
	}
	
    @Autowired  
    PersonBo dao;//it uses xml to inject dao
    
    //Model is container that contains the data of the application place the Model interface in the controller
    @RequestMapping("/personform")  
    public String showform(Model m){  
    	m.addAttribute("person", new Person());	//provide person object to the mode
    	return "personform"; 
    }
    
    //populates the fields of a class, which then populates an attribute of the model to be passed back to the view
    @RequestMapping(value="/save",method = RequestMethod.POST)  
    public String save(@ModelAttribute("person") Person person){  // @ModelAttribute value that is person shoud be match to view page 
        dao.addPerson(person);  								// i.e. it returns on viewemp.jsp page there emp.name (this person shoud match) 
        return "redirect:/persondetails";  
    }  
     
    @RequestMapping("/persondetails")  
    public String viewemp(Model m){  
        List<Person> list=dao.getPersons();  
        m.addAttribute("list",list);
        return "persondetails";  
    } 
//    @RequestMapping(value="/deleteperson/{firstname}",method = RequestMethod.GET)  
//    public String delete(@PathVariable String firstname){  //@PathVariable – for mapping dynamic values from the URI to handler method arguments.
//        dao.deletePerson(firstname);  
//        return "redirect:/persondetails";  
//    }  
    
  @RequestMapping(value="/deleteperson/{id}",method = RequestMethod.GET)  
  public String delete(@ModelAttribute("person") Person person){  //@PathVariable – for mapping dynamic values from the URI to handler method arguments.
	  Person perdel= dao.getPerson(person.getId());
		dao.deletePerson(perdel); 
      return "redirect:/persondetails";  
  } 
    
  @RequestMapping(value="/editperson/{id}")  
  public String edit(@PathVariable int id, Model m){ 
	  System.out.println("you are in edit");
    Person person=dao.getPerson(id);  
    m.addAttribute("person",person);
    return "personeditform";  
  }  
  
  @RequestMapping(value="/editsave",method = RequestMethod.POST)  
  public String editsave(@ModelAttribute("person") Person person){  // @ModelAttribute binds form data to the object 
	  System.out.println("you are in edit save");
	  dao.updatePerson(person);  
    return "redirect:/persondetails";  
  }   
}  





