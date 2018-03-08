package com.fustack.po;

import java.math.BigDecimal;
import java.sql.Date;
import java.sql.Timestamp;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class T2PO {

	private long id;
	
	private int i1;
	
	private int i2;
	
	private String s1;
	
	private String s2;
	
	private String s3;
	
	private Date date1;
	
	private Timestamp datetime1;
	
	private Timestamp datetime2;
	
	private BigDecimal decimal1;
	
	private Double double1;
	
	private float f1;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public int getI1() {
		return i1;
	}

	public void setI1(int i1) {
		this.i1 = i1;
	}

	public int getI2() {
		return i2;
	}

	public void setI2(int i2) {
		this.i2 = i2;
	}

	public String getS1() {
		return s1;
	}

	public void setS1(String s1) {
		this.s1 = s1;
	}

	public String getS2() {
		return s2;
	}

	public void setS2(String s2) {
		this.s2 = s2;
	}

	public String getS3() {
		return s3;
	}

	public void setS3(String s3) {
		this.s3 = s3;
	}

	public Date getDate1() {
		return date1;
	}

	public void setDate1(Date date1) {
		this.date1 = date1;
	}

	public Timestamp getDatetime1() {
		return datetime1;
	}

	public void setDatetime1(Timestamp datetime1) {
		this.datetime1 = datetime1;
	}

	public Timestamp getDatetime2() {
		return datetime2;
	}

	public void setDatetime2(Timestamp datetime2) {
		this.datetime2 = datetime2;
	}

	public BigDecimal getDecimal1() {
		return decimal1;
	}

	public void setDecimal1(BigDecimal decimal1) {
		this.decimal1 = decimal1;
	}

	public Double getDouble1() {
		return double1;
	}

	public void setDouble1(Double double1) {
		this.double1 = double1;
	}

	public float getF1() {
		return f1;
	}

	public void setF1(float f1) {
		this.f1 = f1;
	}
	
}
