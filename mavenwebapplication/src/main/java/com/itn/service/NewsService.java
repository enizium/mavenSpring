package com.itn.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.itn.model.News;

public interface NewsService {

	public void saveNews(News news);
	public boolean saveImage(MultipartFile image);
	public List<News> getAllNews();
}
