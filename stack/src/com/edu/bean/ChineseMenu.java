package com.edu.bean;

import java.util.ArrayList;
import java.util.List;

public class ChineseMenu {
	private int id;
	private String name;
	private String fatherName;
	private String img;
	private String title;
	private int Fid;
	private int rowCount;
	
	public int getRowCount() {
		return rowCount;
	}
	public void setRowCount(int rowCount) {
		this.rowCount = rowCount;
	}
	private List<ChineseMenu> snackList = new ArrayList<ChineseMenu>() ;;
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
	
	public int getFid() {
		return Fid;
	}
	public void setFid(int fid) {
		Fid = fid;
	}
	public String getFatherName() {
		return fatherName;
	}
	public void setFatherName(String fatherName) {
		this.fatherName = fatherName;
	}
	public ChineseMenu(int id, String name,String fatherName, String img, String title, int fid) {
		this.id = id;
		this.name = name;
		this.fatherName = fatherName;
		this.img = img;
		this.title = title;
		Fid = fid;
	}
	public List<ChineseMenu> getSnackList() {
		return snackList;
	}
	public void setSnackList(List<ChineseMenu> snackList) {
		this.snackList = snackList;
	}
	public ChineseMenu() {
	}
	
}
