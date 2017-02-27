package com.qiang.listener;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionBindingListener;
 



public class SessionListenertest implements HttpSessionBindingListener {
	private String username ;
	
	public SessionListenertest(String username){
		this.username=username;
		
	}
	public SessionListenertest(){
	
		
	}
    @SuppressWarnings({ "rawtypes", "unchecked" })
	public void valueBound(HttpSessionBindingEvent arg0) {
		HttpSession hsession=arg0.getSession();
		ServletContext application=hsession.getServletContext();
		
		List onlineuserList=(List) application.getAttribute("onlineuserList");
		if(onlineuserList==null){
			onlineuserList=new ArrayList();
			application.setAttribute("onlineuserList", onlineuserList);
			
		}
		onlineuserList.add(this.username);
		System.out.println("在线人数："+onlineuserList.size());
		
	}

	public void valueUnbound(HttpSessionBindingEvent arg0) {
		HttpSession hsession=arg0.getSession();
		ServletContext application=hsession.getServletContext();
		@SuppressWarnings("rawtypes")
		List onlineuserList=(List) application.getAttribute("onlineuserList");
		
		onlineuserList.remove(this.username);
		System.out.println("tuichu");
		
		
	}
 
    
 
}
