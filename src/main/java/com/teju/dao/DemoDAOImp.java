package com.teju.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.teju.entity.Bank;
import com.teju.entity.Contact;
import com.teju.entity.Person;

@Repository
public class DemoDAOImp implements DemoDAO {

	@Autowired
	private SessionFactory session;
	
	//Person Class Methods
	
	@Override
	public void addPerson(Person person) {
		session.getCurrentSession().save(person);	
	}

	@Override
	public void updatePerson(Person person) {
		session.getCurrentSession().update(person);
		System.out.println("Records Updated");
		
	}

	@Override
	public void deletePerson(Person person) {
		
		session.getCurrentSession().delete(person);
	}

	@Override
	public Person getPerson(int id) {
		
		return (Person) session.getCurrentSession().get(Person.class, id);
	}

	@Override
	public List<Person> getPersons() {
		
		return session.getCurrentSession().createQuery("from Person").list();
	}

	//Contact class Methods
	@Override
	public void addContact(Contact contact) {
		session.getCurrentSession().save(contact);
	}

	@Override
	public void updateContact(Contact contact) {
		session.getCurrentSession().update(contact);
		System.out.println("Records Updated");
		
	}

	@Override
	public void deleteContact(Contact contact) {
		session.getCurrentSession().delete(contact);
	}

	@Override
	public Contact getContact(int id) {
		return (Contact) session.getCurrentSession().get(Contact.class, id);
	}

	@Override
	public List<Contact> getContacts() {
		
		return session.getCurrentSession().createQuery("from Contact").list();
	}

	@Override
	public void addBank(Bank bank) {
		session.getCurrentSession().save(bank);
		
	}

	@Override
	public void updateBank(Bank bank) {
		session.getCurrentSession().update(bank);
		System.out.println("Records Updated");	
	}

	@Override
	public void deleteBank(Bank bank) {
		session.getCurrentSession().delete(bank);
	}

	@Override
	public Bank getBank(int id) {
		return (Bank) session.getCurrentSession().get(Bank.class, id);
	}

	@Override
	public List<Bank> getBanks() {
		return session.getCurrentSession().createQuery("from Bank").list();
	}

}
