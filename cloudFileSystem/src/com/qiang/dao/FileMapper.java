package com.qiang.dao;

import java.util.List;

import com.qiang.dto.File;

public interface FileMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(File record);

    int insertSelective(File record);

    public File selectByPrimaryKey(Integer id);

    public int updateByPrimaryKeySelective(File record);

    int updateByPrimaryKey(File record);
    
   public  List<File>  getAllchildrenfile();
   
   public  List<File>  getAllrootfile(String root);
}