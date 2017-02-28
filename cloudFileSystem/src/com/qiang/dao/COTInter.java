package com.qiang.dao;

import com.qiang.dto.Operation;
/**
 *操作转换的接口
 */
public interface COTInter {
	public  Operation getOperation();
	public  void deleteByPrimaryKey();
	/*//返回路径关系的接口
	String PathRealtion(File NI,File NJ);
	//由路径关系判断的COT转换函数,由操作的类型来判断选取的转换函数
	Operation TR(Operation c1,Operation c2);*/
	

}
