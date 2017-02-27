package com.qiang.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.alibaba.fastjson.JSONObject;


@Controller
@RequestMapping("/test")
public class ServerTask {
	public static JSONObject dummyService(Integer x) {
       Integer y = x + 1;
     JSONObject result = new JSONObject();
	   result.put("input", x);	
       result.put("output", y);
          return result;
		}
	
	@RequestMapping("/test")

	public String filemanage(HttpServletRequest request,Model model){
		JSONObject  result1 = dummyService(1);
		// Get the result, which should be 2
		String a = result1.toString();
		System.out.println(a);
		
		// Call the service a second time
		JSONObject result2 = dummyService((int) 'c');	
		model.addAttribute("s",result2 );
		return "test";
	}
	
	@RequestMapping("/testjsp")
	public String test(HttpServletRequest request,Model model){
		
		return "test";
	}

	
	
	

}
