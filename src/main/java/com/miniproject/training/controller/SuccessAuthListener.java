package com.miniproject.training.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationListener;
import org.springframework.security.authentication.event.AuthenticationSuccessEvent;
import org.springframework.security.authentication.event.InteractiveAuthenticationSuccessEvent;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Component;

import com.miniproject.training.model.User;
import com.miniproject.training.model.User1;
import com.miniproject.training.service.UserService;

@Component
public class SuccessAuthListener implements ApplicationListener<InteractiveAuthenticationSuccessEvent> {

	@Autowired
	private HttpSession httpSession;
	
	@Autowired
	UserService userService;
	
	public void onApplicationEvent(InteractiveAuthenticationSuccessEvent event) {
		// TODO Auto-generated method stub
		//System.out.println("working you are successfully log in..");
		UserDetails userDetails = (UserDetails) event.getAuthentication().getPrincipal();
		String username = userDetails.getUsername();
		User user= userService.getUserByUsername(username);
		
		httpSession.setAttribute("application-user", user);
	}

}
