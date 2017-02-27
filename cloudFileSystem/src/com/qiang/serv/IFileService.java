package com.qiang.serv;

import java.util.List;

import com.qiang.dto.File;

public interface IFileService {
	public File getFileById(int fileid);

	public void insertfile(File file);

//	public void addfile(File file)

	public List<File> getAllchildrenfile();
	public  List<File>  getAllrootfile(String root);

}
