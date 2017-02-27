



package com.qiang.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.qiang.dao.FileMapper;
import com.qiang.dto.File;
import com.qiang.serv.IFileService;
@Service("fileservice")
public class IFileServiceImpl implements IFileService {
	@Resource
	private FileMapper filemapper;

	public File getFileById(int fileid) {
		
		return filemapper.selectByPrimaryKey(fileid);
	}

	public void insertfile(File file) {
		
		filemapper.insert(file);
	}

	

	public List<File> getAllchildrenfile() {
		
		return  filemapper.getAllchildrenfile();
	}

	public List<File> getAllrootfile(String root) {
		
		return filemapper.getAllrootfile(root);
	}

}
