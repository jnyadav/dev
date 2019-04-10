package com.apartmentuserservice.constant;

public class TestConstant {
	public static final String CREATE_REQ_JSON = "{\"userPassword\":\"123\",\"userEmail\":\"surya@gmail.com\",\"userMobile\":\"9123323782\",\"userRole\":\"dev\",\"userKey\":{\"userName\":\"Surya\",\"userStatus\":\"N\"}}"; 
	public static final String CREATE_RES_JSON = "{\"statusCode\": \"200\",\"message\": \"Your Record Is Successfully Created\",\"userList\": [{\"userKey\": {\"userName\": \"Surya\"},\"userEmail\": \"surya@gmail.com\",\"userMobile\": \"9123323782\",\"userRole\": \"dev\"}]}";  
	public static final String CREATE_USER_ENDPOINT = "/userservice/saveUser";
	
	public static final String GET_ALL_USER_RES_JSON = "[{\"userKey\": {\"userName\": \"Surya\"},\"userEmail\": \"surya@gmail.com\",\"userMobile\": \"9123323782\",\"userRole\": \"dev\"}]"; 
	public static final String GETALL_USER_ENDPOINT = "/userservice/getAllUsers";
	
	public static final String GET_USERBYNAME_JSON = "{\"userKey\": {\"userName\": \"Surya\"},\"userEmail\": \"surya@gmail.com\",\"userMobile\": \"9123323782\",\"userRole\": \"dev\"}"; 
	public static final String GET_USERDETAILSBYUSERNAME_ENDPOINT = "/userservice/getUser/Surya";
	
	public static final String GET_VALIDATEUSER_ENDPOINT = "/userservice/validateUser/Surya/12345";
	public static final String GET_VALIDATEUSER_JSON = "{\"user\": {\"userKey\": {\"userName\": \"Surya\"},\"userEmail\": \"surya@gmail.com\",\"userMobile\": \"9123323782\",\"userPassword\": \"12345\",\"userRole\": \"dev\"},\"userRole\": \"dev\",\"valid\": true}";
	
	public static final String GET_DELETEUSER_ENDPOINT = "/userservice/deleteUser/Surya"; 
	
	public static final String GET_UPDATEUSER_ENDPOINT = "/userservice/updateUser"; 
	public static final String UPDATE_USER_JSON = "{\"userPassword\":\"12345\",\"userEmail\":\"surya@gmail.com\",\"userMobile\":\"9123323782\",\"userRole\":\"dev\",\"userKey\":{\"userName\":\"Surya\",\"userStatus\":\"Y\"}}";
}
