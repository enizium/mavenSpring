package com.itn.DAOImpl;



import com.itn.DAO.MemberDAO;
import com.itn.model.Member;

import java.util.ArrayList;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAOImpl implements MemberDAO{

    @Autowired
    SessionFactory sessionFactory;
    @Override
    public void insert(Member member) {
        try (Session session = sessionFactory.openSession()) {
            session.beginTransaction();
            session.save(member);
            session.getTransaction().commit();
        }
    }

    
    @Override
    public List<Member> selectAll() {
       Session session=sessionFactory.openSession();
       session.beginTransaction();
       List<Member> ls=session.createCriteria(Member.class).list();
       session.getTransaction().commit();
       session.close();
       for(Member m: ls) {
    	   System.out.println(m.getName()+m.getId());
    	   
       }
       
       return ls;
       }

    @Override
    public List<Member> selectById(int id) {
    	Session session= sessionFactory.openSession();
    	session.beginTransaction();
    	List<Member> ls= new ArrayList();  	
    	ls.add(session.get(Member.class, id));
    	session.getTransaction().commit();
    	session.close();
    	System.out.println(ls.get(0).getName());
    	
    	return ls;
    	
   }

    @Override
    public void updateMember(Member member) {
    	Session session=sessionFactory.openSession();
    	session.beginTransaction();
    	session.update(member);
    	
    	session.getTransaction().commit();
    }

    @Override
    public void deleteMember(Member member) {
    	Session session =sessionFactory.openSession();
    	session.beginTransaction();
    	session.delete(member);
    	session.getTransaction().commit();
 }
 
    
}
