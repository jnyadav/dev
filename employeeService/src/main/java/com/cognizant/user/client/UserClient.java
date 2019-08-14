package com.cognizant.user.client;

import java.util.List;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;

import com.cognizant.user.dto.UserDto;
@FeignClient(url ="https://jsonplaceholder.typicode.com",name = "USER-CLIENT")
public interface UserClient {

@GetMapping("/users")
public List<UserDto> getAllUsers();

	
}
