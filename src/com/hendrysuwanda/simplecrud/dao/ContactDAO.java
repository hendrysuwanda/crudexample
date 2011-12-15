package com.hendrysuwanda.simplecrud.dao;

import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;

import com.hendrysuwanda.simplecrud.config.PMF;
import com.hendrysuwanda.simplecrud.domain.Contact;

public class ContactDAO {

	public void insert(Contact contact){
		PersistenceManager pm = PMF.get().getPersistenceManager();
		try{
			pm.makePersistent(contact);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			pm.close();
		}
	}
	
	public void update(Contact contact){
		PersistenceManager pm = PMF.get().getPersistenceManager();
		try{
			Contact ct = pm.getObjectById(Contact.class, contact.getCode());
			if(ct != null){
				
				ct.setFirstName(contact.getFirstName());
				ct.setLastName(contact.getLastName());
				ct.setSex(contact.getSex());
				ct.setPhone(contact.getPhone());
				ct.setEmail(contact.getEmail());
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			pm.close();
		}
	}
	
	public void delete(Contact contact){
		PersistenceManager pm = PMF.get().getPersistenceManager();
		try{
			
			Contact ct = pm.getObjectById(Contact.class, contact.getCode());
			if(ct != null){
				pm.deletePersistent(ct);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			
		}
	}
	
	public Contact fetchById(Long code){
		PersistenceManager pm = PMF.get().getPersistenceManager();
		Query query = pm.newQuery(Contact.class);
		Contact contact = null;
		try{
			query.setFilter("code == contactCode");
			query.declareParameters("Long contactCode");
			
			List<Contact> contacts = (List<Contact>)query.execute(code);
			contacts.size();
			System.out.println("Contacts size : " + contacts.size());
			if(contacts.size() > 0)
				contact = contacts.get(0);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			query.closeAll();
		}
		
		return contact;
	}
	
	public List<Contact> fetchAll(){
		PersistenceManager pm = PMF.get().getPersistenceManager();
		Query query = pm.newQuery(Contact.class);
		List<Contact> contacts = null;
		try{
			contacts = (List<Contact>)query.execute();
			contacts.size();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			query.closeAll();
		}
		
		return contacts;
	}
}
