package com.edu.bean;

public class Message {
	private int code ;// 响应码 200 代表成功500代表失败
	
	private String msg ;// 响应的信息
	
	private Object obj ;// 响应的对象
	
	public Message(){}

	public Message(int code, String msg) {
		this.code = code;
		this.msg = msg;
	}

	public Message(int code, String msg, Object obj) {
		this.code = code;
		this.msg = msg;
		this.obj = obj;
	}

	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public Object getObj() {
		return obj;
	}

	public void setObj(Object obj) {
		this.obj = obj;
	}
	
	
}
