package com.apartment.controller;

import static org.junit.Assert.assertEquals;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.MockitoAnnotations;
import org.skyscreamer.jsonassert.JSONAssert;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.test.web.servlet.RequestBuilder;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;

import com.apartment.Util.TestHelper;
import com.apartment.user.api.UserController;
import com.apartment.user.entity.UserEntity;
import com.apartment.user.model.User;
import com.apartment.user.repository.UserRepository;
import com.apartment.user.service.UserServiceImpl;
import com.apartmentuserservice.constant.TestConstant;


public class UserServiceControllerTest {
	
	@Mock
	UserRepository userRepository;
	@Mock
	UserServiceImpl userServiceImpl;
	
	@InjectMocks
	UserController userController;
	
	private MockMvc mockMvc; 
	
	@Before
	public void setUp() throws Exception {
		MockitoAnnotations.initMocks(this);
		mockMvc = MockMvcBuilders.standaloneSetup(userController).build();
	}
	
	@Test
	public void testCreateUserEndPoint() throws Exception {
		UserEntity userEntity=TestHelper.getEntityUserObj();
 		User user=TestHelper.getUserObj();
 		String expectedReq = TestConstant.CREATE_REQ_JSON;
		Mockito.when(userRepository.save(Mockito.any(UserEntity.class))).thenReturn(userEntity);
		Mockito.when(userServiceImpl.createUser(Mockito.any(User.class))).thenReturn(user);
		RequestBuilder requestBuilder = MockMvcRequestBuilders.post(TestConstant.CREATE_USER_ENDPOINT).contentType(MediaType.APPLICATION_JSON).content(expectedReq);
		MvcResult result = mockMvc.perform(requestBuilder).andReturn();
		String expectedRes = TestConstant.CREATE_RES_JSON;
		JSONAssert.assertEquals(expectedRes, result.getResponse().getContentAsString(), true);
		
	}
	
	
	@Test
	public void testGetAllUsersEndPoint() throws Exception {
		List<UserEntity> userEntity=TestHelper.getAllUserObj();
 		List<User> user=TestHelper.getAllUser();
		Mockito.when(userRepository.findAll()).thenReturn(userEntity);
		Mockito.when(userServiceImpl.getAllUsers()).thenReturn(user);
		RequestBuilder requestBuilder = MockMvcRequestBuilders.get(TestConstant.GETALL_USER_ENDPOINT).contentType(MediaType.APPLICATION_JSON);
		MvcResult result = mockMvc.perform(requestBuilder).andReturn();
		String expectedRes = TestConstant.GET_ALL_USER_RES_JSON;
		JSONAssert.assertEquals(expectedRes, result.getResponse().getContentAsString(), true);
		
	}
	
	@Test
	public void testGetUserByUserNameEndPoint() throws Exception {
		String userName="Surya";
		UserEntity userEntity=TestHelper.getEntityUserObj();
 		User user=TestHelper.getUserObj();
		Mockito.when(userRepository.findOne(userName)).thenReturn(userEntity);
		Mockito.when(userServiceImpl.findByUserName(userName)).thenReturn(user);
		RequestBuilder requestBuilder = MockMvcRequestBuilders.get(TestConstant.GET_USERDETAILSBYUSERNAME_ENDPOINT).contentType(MediaType.APPLICATION_JSON);
		MvcResult result = mockMvc.perform(requestBuilder).andReturn();
		String expectedRes = TestConstant.GET_USERBYNAME_JSON;
		JSONAssert.assertEquals(expectedRes, result.getResponse().getContentAsString(), true);
		
	}
	
	
	@Test
	public void testValidateUserEndPoint() throws Exception {
		String userName="Surya";
		String password="12345";
		UserEntity userEntity = TestHelper.getEntityUserObj();
 		User user = TestHelper.getUserObj();
		Mockito.when(userRepository.findByCredential(userName,password)).thenReturn(userEntity);
		Mockito.when(userServiceImpl.validateUser(userName,password)).thenReturn(user);
		Mockito.when(userServiceImpl.findByUserName(userName)).thenReturn(user);
		RequestBuilder requestBuilder = MockMvcRequestBuilders.post(TestConstant.GET_VALIDATEUSER_ENDPOINT).contentType(MediaType.APPLICATION_JSON);
		MvcResult result = mockMvc.perform(requestBuilder).andReturn();
		String expectedRes = TestConstant.GET_VALIDATEUSER_JSON;
		JSONAssert.assertEquals(expectedRes, result.getResponse().getContentAsString(), true);
	
	}
	
	@Test
	public void testDeleteUserEndPoint() throws Exception {
		String userName="Surya";
		String userStatus="Y";
 		Mockito.doNothing().when(userServiceImpl).deleteUserByUserName(userName);
 		Mockito.doNothing().when(userRepository).updateDeleteFlag(userName,userStatus);
		RequestBuilder requestBuilder = MockMvcRequestBuilders.put(TestConstant.GET_DELETEUSER_ENDPOINT).contentType(MediaType.APPLICATION_JSON);
		MvcResult result = mockMvc.perform(requestBuilder).andReturn();
		String expectedRes ="User Deleted";
		assertEquals(expectedRes, result.getResponse().getContentAsString());
	
	}
	
	@Test
	public void testUpdateUserEndPoint() throws Exception{
 		User user=TestHelper.getUserObj();
 		Mockito.doNothing().when(userServiceImpl).updateUser(user);
 		Mockito.doNothing().when(userRepository).updateUser("Surya", "123", "surya@gmail.com", "9123323782", "dev");
		RequestBuilder requestBuilder = MockMvcRequestBuilders.put(TestConstant.GET_UPDATEUSER_ENDPOINT).contentType(MediaType.APPLICATION_JSON).content(TestConstant.UPDATE_USER_JSON);
		mockMvc.perform(requestBuilder);
	
	}
		
	}
	
	