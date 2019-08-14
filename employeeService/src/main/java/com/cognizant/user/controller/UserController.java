package com.cognizant.user.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.cognizant.user.client.UserClient;
import com.cognizant.user.dto.UserDto;

@RestController
public class UserController {
    @Autowired
	UserClient userClient;
	
	@GetMapping("/getAllUsers")
	public List<UserDto> getUsers(){
		
		return userClient.getAllUsers();
		
	}
}
