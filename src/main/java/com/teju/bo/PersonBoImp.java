package com.teju.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.teju.dao.DemoDAO;
import com.teju.entity.Bank;
import com.teju.entity.Contact;
import com.teju.entity.Person;

@Service
public class PersonBoImp implements PersonBo {

	@Autowired
	private DemoDAO demoDao;

	@Override
	@Transactional
	public void addPerson(Person person) {
		// TODO Auto-generated method stub
		demoDao.addPerson(person);
		
	}

	@Override
	@Transactional
	public void updatePerson(Person person) {
		// TODO Auto-generated method stub
		demoDao.updatePerson(person);
		System.out.println("Records Updated");
	}

	@Override
	@Transactional
	public void deletePerson(Person person) {
		// TODO Auto-generated method stub
		demoDao.deletePerson(person);
	}

	@Override
	@Transactional
	public Person getPerson(int id) {
		// TODO Auto-generated method stub
		return demoDao.getPerson(id);
	}

	@Override
	@Transactional
	public List<Person> getPersons() {
		// TODO Auto-generated method stub
		return demoDao.getPersons();
	}
	
//Contact Class Methods
	
	@Override
	@Transactional
	public void addContact(Contact contact) {
		// TODO Auto-generated method stub
		demoDao.addContact(contact);
	}

	@Override
	@Transactional
	public void updateContact(Contact contact) {
		// TODO Auto-generated method stub
		demoDao.updateContact(contact);;
		System.out.println("Records Updated");
	}

	@Override
	@Transactional
	public void deleteContact(Contact contact) {
		// TODO Auto-generated method stub
		demoDao.deleteContact(contact);
	}

	@Override
	@Transactional
	public Contact getContact(int id) {
		// TODO Auto-generated method stub
		return demoDao.getContact(id);
	}

	@Override
	@Transactional
	public List<Contact> getContacts() {
		// TODO Auto-generated method stub
		return demoDao.getContacts();
	}

	// Bank Class Methods
	@Override
	@Transactional
	public void addBank(Bank bank) {
		demoDao.addBank(bank);
	}

	@Override
	@Transactional
	public void updateBank(Bank bank) {
		demoDao.updateBank(bank);
	}

	@Override
	@Transactional
	public void deleteBank(Bank bank) {
		demoDao.deleteBank(bank);
	}

	@Override
	@Transactional
	public Bank getBank(int id) {
		return demoDao.getBank(id);
	}

	@Override
	@Transactional
	public List<Bank> getBanks() {
		return demoDao.getBanks();
	}
	
	

}
