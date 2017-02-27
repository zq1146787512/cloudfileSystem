package com.qiang.listener;

import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;
 
public class SessionListener implements HttpSessionListener {

	@SuppressWarnings("unused")
	private String username;
	
	public SessionListener(String username){
		this.username=username;
	}
	
	public SessionListener(){}

	public void sessionCreated(HttpSessionEvent se) {
		
		
	}

	public void sessionDestroyed(HttpSessionEvent se) {
		
		
	}

	

	

//	@Override
//	public void attributeAdded(HttpSessionBindingEvent arg0) {
//		HttpSession session=arg0.getSession();
//		String name =arg0.getName();
//		String value=(String) arg0.getValue();
//		
//	}


	
	


	
 
    
 
}
