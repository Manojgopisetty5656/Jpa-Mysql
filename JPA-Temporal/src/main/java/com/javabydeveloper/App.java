package com.javabydeveloper;

import java.util.Date;


import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import com.javabydeveloper.domain.User;
import com.javabydeveloper.enums.UserType;

/**
 * JPA Temporal
 *
 */
public class App 
{
    public static void main( String[] args )
    {
    	EntityManagerFactory emf = null;
		EntityManager entityManager = null;
		EntityTransaction transaction = null;
		
		try{
			emf = Persistence.createEntityManagerFactory("jbd-pu");
			entityManager = emf.createEntityManager();
			transaction = entityManager.getTransaction();
			transaction.begin();
			
			User user = new User();
			user.setUserName("manoj");
			user.setPassword("manoj@123");
			// Setting Current Date
			user.setCreationTime(new Date());
			user.setDateofBirth(new Date());
			user.setUserType(UserType.EMPLOYEE);
	
			entityManager.persist(user);
			transaction.commit();
		}catch(Exception e){
			transaction.rollback();
		}finally{
			entityManager.close();
			emf.close();
		}
    }
}
