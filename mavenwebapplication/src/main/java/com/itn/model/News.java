package com.itn.model;

import java.io.Serializable;
import java.time.LocalDate;
import javax.persistence.*;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Table;

@Entity
@Table(name = "news_tbl")
public class News implements Serializable {

	public static final long serialVersionUID = 12032612L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="news_id")
	private int id;
	private String title;
	private String author;
	private String article;
	private String category;
	private String image;
	private LocalDate date;

	public News() {
		super();
	}

	public News(int id, String title, String author, String article, String category, String image, LocalDate date) {
		super();
		this.id = id;
		this.title = title;
		this.author = author;
		this.article = article;
		this.category = category;
		this.image = image;
		this.date = date;
	}

	public News(String title, String author, String article, String category, String image, LocalDate date) {
		super();
		this.title = title;
		this.author = author;
		this.article = article;
		this.category = category;
		this.image = image;
		this.date = date;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getArticle() {
		return article;
	}

	public void setArticle(String article) {
		this.article = article;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public LocalDate getDate() {
		return date;
	}

	public void setDate(LocalDate date) {
		this.date = date;
	}

}
