package com.user.serviceImplTest;

import static org.junit.jupiter.api.Assertions.assertEquals;

import java.util.ArrayList;
import java.util.List;

import org.assertj.core.util.Arrays;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.springframework.boot.test.context.SpringBootTest;

import com.user.entity.User;
import com.user.repository.UserRepository;
import com.user.service.UserServiceImpl;

@SpringBootTest
class UserApplicationTests {
	
	@Mock
	UserRepository userRepository;
	
	@InjectMocks
	UserServiceImpl userServiceImpl;

	@Test
	public void getAllUserTest() {
		
		List<User> list = new ArrayList();
		User user = new User(1L,"Surya","Yadav","suryacitm@33gmail.com");
		list.add(user);
		
		Mockito.when(userRepository.findAll()).thenReturn(list);
		List<User> user1 = userServiceImpl.getAllUser();
		assertEquals("Surya", user1.get(0).getName());
		
	}

}
