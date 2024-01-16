package com.user.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import com.user.entity.User;
import com.user.repository.UserRepository;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	UserRepository userRepository;
	
	@Override
	public User createUser(User user) {
		
		return userRepository.save(user);
	}

	@Override
	public List<User> getAllUser() {
		
		return userRepository.findAll();
	}

	@Override
	public User getUserById(Long id) {
		User userById = userRepository.findById(id).orElse(null);
		return userById;
	}


	@Override
	public void delete(Long id) {
		userRepository.deleteById(id);
		
	}

	@Override
	public User updateUser(User user, Long id) {
		Optional<User> userdetails= userRepository.findById(id);
		if(userdetails.isPresent()) {
			User userDts = userdetails.get();
			userDts.setName(user.getName());
			userDts.setLastName(user.getLastName());
			userDts.setEmail(user.getEmail());
			return userRepository.save(userDts);
		}
		else {
			throw new RuntimeException("user not found" +id);
		}
	}

}
