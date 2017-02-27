package com.qiang.dto;

public class Operation {
	
	private String id;//操作的唯一id
	private String OpType;//操作的类型
	public String getOpType() {
		return OpType;
	}
	public void setOpType(String opType) {
		OpType = opType;
	}
	private String PN;

	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	public String getPN() {
		return PN;
	}
	public void setPN(String pN) {
		PN = pN;
	}
}
