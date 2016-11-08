package com.niit.shoppingcart.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shoppingcart.model.Product;
import com.niit.shoppingcart.model.Supplier;


@EnableTransactionManagement
@Repository("productDAO")

public class ProductDAOImpl implements ProductDAO{
	
	private static final Logger log = LoggerFactory.getLogger(ProductDAOImpl.class);
	
	//private static final Logger log = LoggerFactory.getLogger(com.niit.shoppingcart.ProductDAOImpl);
	
	@Autowired
	private SessionFactory sessionFactory;
	
	
	public ProductDAOImpl(SessionFactory sessionFactory)
	{
	this.sessionFactory = sessionFactory;
	}
	

	@Transactional
    public boolean save(Product product)
{
    try {
	log.debug("Starting of the Method save");
	sessionFactory.getCurrentSession().save(product);
	return true;
} 
    catch (Exception e) {
	log.error("exception occured in save method " + e.getMessage());
	e.printStackTrace();
	return false;
}

}
	/*@Transactional
	public boolean update(Product product)
	{
		try {
			log.debug("Starting of the Method update");

			sessionFactory.getCurrentSession().update(product);
			log.debug("Starting of the Method update");

			return true;
		} catch (HibernateException e) {
			log.error("error occured:" + e.getMessage());
			e.printStackTrace();
			return false;
		}
	}*/
	
	/*@Transactional
	public boolean delete(Product product)
	{
		try {
			log.debug("Starting of the Method delete");

			sessionFactory.getCurrentSession().delete(product);
			log.debug("Ending of the Method delete");
			return true;
		} catch (HibernateException e) {
			log.error("error occuered:" + e.getMessage());
			e.printStackTrace();
			return false;
		}
	}*/
	@Transactional
	public boolean update(Product product){
		try{
			sessionFactory.getCurrentSession().update(product);
			return true;
		} catch (Exception e){
			e.printStackTrace();
			return false;
		}
	}
	@Transactional
	public void delete (int id){
		Product ProductToDelete=new Product();
		ProductToDelete.setId(id);
		sessionFactory.getCurrentSession().delete(ProductToDelete);
	}
	
	
	@Transactional
	public Product get(int id)
	{
		log.debug("Starting of the mathod get");
		log.info("Trying to get produced based on id:" + id);
	
		String hql = "from Product where id = "+"'"+id+"'";
		
		log.info("The hsql query is :" + hql);
	Query query =	sessionFactory.getCurrentSession().createQuery(hql);
	List<Product> list = query.list();
	
	if(list == null || list.isEmpty()) {
		log.info("No products are available with this id:" + id);
		return null;
	}else{
		return list.get(0);
	}
	
		
		
	}
	
	@Transactional
	public List<Product> list()
	{
		log.debug("Starting of the Method list");

	String hql = "from Product" ;
	
	Query query = sessionFactory.getCurrentSession().createQuery(hql);
	log.debug("Ending of the Method list");
	List<Product> list = query.list();
	if(list==null || list.isEmpty())
	{
		log.info("No products are available");
	}

	return list;
	}

}


