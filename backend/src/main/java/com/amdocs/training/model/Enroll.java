package com.amdocs.training.model;

public class Enroll {
	private int uid;
	private int cid;
	public Enroll(int uid, int cid) {
		super();
		this.uid = uid;
		this.cid = cid;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	
}
