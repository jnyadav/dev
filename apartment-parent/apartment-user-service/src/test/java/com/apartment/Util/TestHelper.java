package com.apartment.Util;

import java.util.ArrayList;
import java.util.List;

import com.apartment.user.entity.UserEntity;
import com.apartment.user.model.User;
import com.apartment.user.entity.UserKey;

public class TestHelper {

	public static UserEntity getEntityUserObj(){
		
	UserEntity userEntity=new UserEntity("12345", "surya@gmail.com", "9123323782", "dev");
	UserKey userkey=new UserKey();
	userkey.setUserName("Surya");
	userkey.setUserStatus("N");
	userEntity.setUserKey(userkey);
	return userEntity;

}
	public static User getUserObj(){
		
		User user=new User("12345", "surya@gmail.com", "9123323782", "dev");
		UserKey userkey=new UserKey();
		userkey.setUserName("Surya");
		userkey.setUserStatus("N");
		user.setUserKey(userkey);
		return user;

	}
	public static List<User> getAllUser(){
		List<User> list=new ArrayList<>();
		User user=new User("12345", "surya@gmail.com", "9123323782", "dev");
		UserKey userkey=new UserKey();
		userkey.setUserName("Surya");
		userkey.setUserStatus("N");
		user.setUserKey(userkey);
		list.add(user);
		return list;
		
		
	}
	public static List<UserEntity> getAllUserObj(){
		List<UserEntity> list=new ArrayList<>();
		UserEntity user=new UserEntity("12345", "surya@gmail.com", "9123323782", "dev");
		UserKey userkey=new UserKey();
		userkey.setUserName("Surya");
		userkey.setUserStatus("N");
		user.setUserKey(userkey);
		list.add(user);
		return list;
		
		
	}
}