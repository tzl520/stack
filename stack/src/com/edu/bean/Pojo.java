package com.edu.bean;

public class Pojo {
	private int id;
	private String name;
	private String img;
	private String title;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	@Override
	public String toString() {
		return "Stack [id=" + id + ", name=" + name + ", img=" + img + ", title=" + title + "]";
	}
	public Pojo() {
		
	}
	public Pojo(int id, String name, String img, String title) {
		this.id = id;
		this.name = name;
		this.img = img;
		this.title = title;
	}
}
