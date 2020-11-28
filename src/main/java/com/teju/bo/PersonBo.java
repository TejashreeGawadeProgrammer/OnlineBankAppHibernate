package com.teju.bo;

import java.util.List;

import com.teju.entity.Bank;
import com.teju.entity.Contact;
import com.teju.entity.Person;


public interface PersonBo {
	
	/* Person Class Methods */
	public void addPerson(Person person);

	public void updatePerson(Person person);

	public void deletePerson(Person person);

	public Person getPerson(int id);

	public List< Person > getPersons();
	
	/* Contact Class Methods */
	public void addContact(Contact contact);

	public void updateContact(Contact contact);

	public void deleteContact(Contact contact);

	public Contact getContact(int id);

	public List< Contact > getContacts();

	/* Bank CLass Methods */
	public void addBank(Bank bank);

	public void updateBank(Bank bank);

	public void deleteBank(Bank bank);

	public Bank getBank(int id);

	public List< Bank > getBanks();
}
