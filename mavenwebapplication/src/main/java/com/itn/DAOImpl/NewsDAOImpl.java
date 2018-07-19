package com.itn.DAOImpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.itn.DAO.NewsDAO;
import com.itn.model.Member;
import com.itn.model.News;

@Service
@Transactional
public class NewsDAOImpl implements NewsDAO{
	
	@Autowired
	SessionFactory sessionFactory;

	@Override
	public void add(News news) {
		try(Session session = sessionFactory.openSession()) {
			session.beginTransaction();
			session.save(news);
			session.getTransaction().commit();
		}

		
		
	}

	@Override
	public List<News> getAllNews() {
		Session session =sessionFactory.openSession();
		session.beginTransaction();
		List<News> newslist=session.createCriteria(News.class).list();
		session.getTransaction().commit();
		session.close();
		 for(News news: newslist) {
	    	   System.out.println(news.getId()+news.getTitle()+news.getArticle());
	    	   
	       }
		return newslist;
	}

	
	

	
	
	

}
