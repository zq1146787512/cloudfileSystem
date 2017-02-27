package com.qiang.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.qiang.dto.File;
import com.qiang.dto.User;
import com.qiang.listener.SessionListenertest;
import com.qiang.serv.IFileService;
import com.qiang.serv.IUserService;

@Controller
@RequestMapping("/user")
public class UserController {
	@Resource
	private IUserService userService;
	
	@Resource
	private IFileService  ifileService;
	
	/**
	 * 
	�����¼ҳ��
	 */
	@RequestMapping("/indexui")
	public String indexui(){
		return "index";
	}
	
	/**
	 * 
	进入我的文件
	 */
	@RequestMapping("/myfile")
	public String myfile(HttpServletRequest request,Model model){
		String user =String.valueOf(request.getParameter("user"));
        model.addAttribute("user", user);
        System.out.println(user);
		return "myfile";
	}
	
	/**
	 * 
	进入文件管理页面
	 */
	@RequestMapping("/filemanage")
	public String filemanage(HttpServletRequest request,Model model){
		String user =String.valueOf(request.getParameter("user"));
        model.addAttribute("user", user);
		List<File> file=ifileService.getAllrootfile("root");
		List<File> files=ifileService.getAllrootfile("ss");
		model.addAttribute("file", file);
		model.addAttribute("files", files);
		System.out.println(user);
		List<User> uList = userService.getAllUser();
//		System.out.println(uList);
//		User users = null;
//		for(User u:uList){
//			if((u.getName()).equals(user)){
//				System.out.println(u);
//				users=u;
//			}
//		}
		System.out.println(uList);
		model.addAttribute("users", uList);
		return "filemanagement";
	}
	
	
	
	
	
	
	
	@RequestMapping("/userList")
	public String userList(HttpServletRequest request,Model model){
		List<User> uList = userService.getAllUser();
		model.addAttribute("uList", uList);
		return "userList";
	}
	
	@RequestMapping("/showUser")
	public String showUser(HttpServletRequest request,Model model){
		int userId = Integer.parseInt(request.getParameter("id"));
		User user = userService.getUserById(userId);
		model.addAttribute("user", user);
		return "filemanagement";
	}
	
	@RequestMapping("/addUserUI")
	public String addUserUI(){
		return "addUser";
	}
	
	@RequestMapping("/addUser")
	public String addUser(HttpServletRequest request,Model model){
		User user = new User();
		user.setName(String.valueOf(request.getParameter("name")));
		user.setPassword(String.valueOf(request.getParameter("password")));
		user.setAge(Integer.parseInt(String.valueOf(request.getParameter("age"))));
		userService.addUser(user);
		return "redirect:/user/userList";
//		return "../index";
	}
	@RequestMapping("/myfile1")
	@ResponseBody
	public String index(HttpServletRequest request,Model model){
        boolean flag=false;
        String user =String.valueOf(request.getParameter("user"));
        model.addAttribute("user", user);
//		String name=String.valueOf(request.getParameter("name"));
		String pwd=String.valueOf(request.getParameter("pwd"));
		System.out.println(user+"   "+pwd);
//	
		for(User u:userService.getAllUser()){
//			System.out.println(u.getName()+"   "+u.getPassword());
			if(user.equals(u.getName())&&pwd.equals(u.getPassword())){
				flag=true;
			}		
		}
		
		if(flag){
			SessionListenertest slt=new SessionListenertest(user);
			request.getSession().setAttribute("slt", slt);
			System.out.println("ss");
			return "ok";
		}
		else return "no";
		
		
		
	}

	

}
