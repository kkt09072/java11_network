package org.kh.dto;

public class Member {
	private int no;
	private String id;
	private String pw;
	private String name;
	public Member() { }
	public Member(int no, String id, String pw, String name) {
		super();
		this.no = no;
		this.id = id;
		this.pw = pw;
		this.name = name;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@Override
	public String toString() {
		return "Member [no=" + no + ", id=" + id + ", pw=" + pw + ", name=" + name + "]";
	}
}
