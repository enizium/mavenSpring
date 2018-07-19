package com.itn.DAO;

import java.util.List;

import com.itn.model.News;

public interface NewsDAO {

	public void add(News news);
	public List<News> getAllNews();
	
	
	
}
