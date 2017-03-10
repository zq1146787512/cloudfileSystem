package com.qiang.controller;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
@RequestMapping("/login")
public class FileController {


	@RequestMapping("/login")
	public String login(HttpRequest request,Model model){
		
		return null; 
	}
	
	
	

}
