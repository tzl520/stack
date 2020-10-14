package com.edu.bean;

import java.util.ArrayList;
import java.util.List;

public class Snack {
	private int id;
	private String name;
	private String fatherName;
	private String img;
	private String title;
	private int Sid;
	private int rowCount;
	
	public int getRowCount() {
		return rowCount;
	}
	public void setRowCount(int rowCount) {
		this.rowCount = rowCount;
	}
	private List<Snack> snackList = new ArrayList<Snack>() ;;
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
	public int getSid() {
		return Sid;
	}
	public void setSid(int sid) {
		Sid = sid;
	}
	
	public String getFatherName() {
		return fatherName;
	}
	public void setFatherName(String fatherName) {
		this.fatherName = fatherName;
	}
	public Snack(int id, String name,String fatherName, String img, String title, int sid) {
		this.id = id;
		this.name = name;
		this.fatherName = fatherName;
		this.img = img;
		this.title = title;
		Sid = sid;
	}
	public List<Snack> getSnackList() {
		return snackList;
	}
	public void setSnackList(List<Snack> snackList) {
		this.snackList = snackList;
	}
	public Snack() {
	}
	
}
