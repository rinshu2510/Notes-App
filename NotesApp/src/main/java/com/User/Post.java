package com.User;

import java.util.Date;

public class Post {
	private int id;
	private String content;
	private Date pdate;
	private UserDetails user;
	private String title;
	public Post(int id, String content, Date pdate, UserDetails user, String title) {
		super();
		this.id = id;
		this.content = content;
		this.pdate = pdate;
		this.user = user;
		this.title = title;
	}
	public Post() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getPdate() {
		return pdate;
	}
	public void setPdate(Date pdate) {
		this.pdate = pdate;
	}
	public UserDetails getUser() {
		return user;
	}
	public void setUser(UserDetails user) {
		this.user = user;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	
	
}