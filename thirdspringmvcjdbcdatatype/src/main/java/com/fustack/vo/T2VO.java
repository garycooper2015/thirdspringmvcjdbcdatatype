package com.fustack.vo;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Past;
import javax.validation.constraints.Size;

public class T2VO {

	public String id;
	
	public String i1;
	
	public String i2;
	
	@Size(min=1, max=40,message="s1的字符范围是1到40个字符")
	@NotNull(message="s1不可以为空")
	public String s1;
	
	@Size(min=1,max=255,message="s2的字符范围是1到255个字符")
	@NotNull(message="s2不可以为空")
	public String s2;
	
	public String s3;
	
	@NotNull(message="请输入日期")
	public String date1;

	@NotNull(message="请输入日期")
	public String datetime1;

	@NotNull(message="请输入日期")
	public String datetime2;
	
	public String decimal1;
	
	public String double1;
	
	public String f1;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getI1() {
		return i1;
	}

	public void setI1(String i1) {
		this.i1 = i1;
	}

	public String getI2() {
		return i2;
	}

	public void setI2(String i2) {
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

	public String getDate1() {
		return date1;
	}

	public void setDate1(String date1) {
		this.date1 = date1;
	}

	public String getDatetime1() {
		return datetime1;
	}

	public void setDatetime1(String datetime1) {
		this.datetime1 = datetime1;
	}

	public String getDatetime2() {
		return datetime2;
	}

	public void setDatetime2(String datetime2) {
		this.datetime2 = datetime2;
	}

	public String getDecimal1() {
		return decimal1;
	}

	public void setDecimal1(String decimal1) {
		this.decimal1 = decimal1;
	}

	public String getDouble1() {
		return double1;
	}

	public void setDouble1(String double1) {
		this.double1 = double1;
	}

	public String getF1() {
		return f1;
	}

	public void setF1(String f1) {
		this.f1 = f1;
	}
	
}
