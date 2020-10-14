package com.edu.bean;

import java.util.ArrayList;
import java.util.List;

public class ForeignMenu {
	private int id;
	private String name;
	private String fatherName;
	private String img;
	private String title;
	private int Mid;
	private int rowCount;
	
	public int getRowCount() {
		return rowCount;
	}
	public void setRowCount(int rowCount) {
		this.rowCount = rowCount;
	}
	private List<ForeignMenu> snackList = new ArrayList<ForeignMenu>() ;;
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
	
	
	public int getMid() {
		return Mid;
	}
	public void setMid(int mid) {
		Mid = mid;
	}
	public String getFatherName() {
		return fatherName;
	}
	public void setFatherName(String fatherName) {
		this.fatherName = fatherName;
	}
	public ForeignMenu(int id, String name,String fatherName, String img, String title, int mid) {
		this.id = id;
		this.name = name;
		this.fatherName = fatherName;
		this.img = img;
		this.title = title;
		Mid = mid;
	}
	public List<ForeignMenu> getSnackList() {
		return snackList;
	}
	public void setSnackList(List<ForeignMenu> snackList) {
		this.snackList = snackList;
	}
	public ForeignMenu() {
	}
	
}
