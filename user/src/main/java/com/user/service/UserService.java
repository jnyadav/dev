package com.user.service;

import java.util.List;
import java.util.Optional;

import com.user.entity.User;

public interface UserService {

	User createUser(User user);

	List<User> getAllUser();

	User getUserById(Long id);

	User updateUser(User user, Long id);

	void delete(Long id);

}
