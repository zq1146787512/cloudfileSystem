
package com.qiang.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.qiang.dao.IUserDao;
import com.qiang.dto.User;
import com.qiang.serv.IUserService;

@Service("userService")
public class UserServiceImpl implements IUserService {
	@Resource
	private IUserDao userDao;
	
	public User getUserById(int userId) {
		return userDao.queryByPrimaryKey(userId);
	}

	public void insertUser(User user) {
		
		
		
		userDao.insertUser(user);
	}

	public void addUser(User user) {
		userDao.insertUser(user);
	}

	public List<User> getAllUser() {
		return userDao.getAllUser();
	}

}


