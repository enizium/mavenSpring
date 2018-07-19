package com.itn.serviceimpl;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.itn.DAO.NewsDAO;
import com.itn.model.News;
import com.itn.service.NewsService;

@Service
@Transactional
public class NewsServiceImpl implements NewsService{

	@Autowired
	NewsDAO newsDAO;
	
	@Override
	public void saveNews(News news) {
		newsDAO.add(news);
		
	}

	@Override
	public boolean saveImage(MultipartFile image) {
		
		boolean status =false;
		String savePath="E:\\newProject\\mavenSpring\\mavenwebapplication\\newsImage\\";
		File saveImage=new File(savePath);
		if(!saveImage.exists()) {
			saveImage.mkdirs();
		}
		String fileName=image.getOriginalFilename();
		saveImage=new File(savePath+fileName);
		try {
			image.transferTo(saveImage);
			status =true;
		}
		catch (IOException e){
			System.out.println("e");
		}
		return status;
	}

	@Override
	public List<News> getAllNews() {
		
		return newsDAO.getAllNews();
	}
	

}
