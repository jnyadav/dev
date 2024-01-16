package com.user.controller;

import java.util.Collections;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.user.entity.User;
import com.user.service.UserService;
import com.user.util.UserUtil;

//import antlr.StringUtils;

@RestController
@RequestMapping(value="User")
public class UserController {
	
	@Autowired
	UserService userService;
	
	/**
	 * @param user
	 * @return saveUser
	 */
	@PostMapping(UserUtil.EndPOINT_SAVE)
	public ResponseEntity<User> createUser(@RequestBody User user){
		User saveUser = userService.createUser(user);
		 if(saveUser == null) {
		return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(null);
	}
		return new ResponseEntity<User>(saveUser,HttpStatus.CREATED);

}
	
	@GetMapping(value ="/getalluser") 
		public ResponseEntity<List<User>> getAllUser(){
			List<User> getAlluser = userService.getAllUser();
			if(getAlluser.isEmpty() || getAlluser == null) {
				return ResponseEntity.status(HttpStatus.NO_CONTENT).body(null);
			}
			else {
			return new ResponseEntity<List<User>> (getAlluser, HttpStatus.OK);
		}
	}
	@DeleteMapping(value="{id}")
	public ResponseEntity<String> deleteById(@PathVariable("id") Long id){
		userService.delete(id);
		return new ResponseEntity<>("user is deleted sussefully!!!",HttpStatus.OK);
	}
	
	@PutMapping("update/{id}")
	public ResponseEntity<User> updateUser(@RequestBody User user, @PathVariable("id") Long id){
		User user1 = userService.updateUser(user, id);
		return new ResponseEntity<>(user1, HttpStatus.OK);
	}
	}
