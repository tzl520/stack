package com.edu.bean;

import java.util.ArrayList;
import java.util.List;

public class Kitchen {
	private int id;
	private String name;
	private String fatherName;
	private String img;
	private String title;
	private int Kid;
	private int rowCount;
	
	public int getRowCount() {
		return rowCount;
	}
	public void setRowCount(int rowCount) {
		this.rowCount = rowCount;
	}
	private List<Kitchen> snackList = new ArrayList<Kitchen>() ;;
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
	
	
	public int getKid() {
		return Kid;
	}
	public void setKid(int kid) {
		Kid = kid;
	}
	public String getFatherName() {
		return fatherName;
	}
	public void setFatherName(String fatherName) {
		this.fatherName = fatherName;
	}

	public Kitchen(int id, String name, String fatherName, String img, String title, int kid, int rowCount
			) {
		this.id = id;
		this.name = name;
		this.fatherName = fatherName;
		this.img = img;
		this.title = title;
		Kid = kid;
		this.rowCount = rowCount;
	}
	public List<Kitchen> getSnackList() {
		return snackList;
	}
	public void setSnackList(List<Kitchen> snackList) {
		this.snackList = snackList;
	}
	public Kitchen() {
	}
	
}
