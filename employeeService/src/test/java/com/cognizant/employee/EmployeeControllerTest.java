package com.cognizant.employee;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
/*import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;*/
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.MediaType;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import com.cognizant.employee.controller.Dto.EmployeeDto;
import com.fasterxml.jackson.databind.ObjectMapper;



//@ExtendWith(SpringExtension.class)
@RunWith(SpringRunner.class)
//@WebMvcTest(EmployeeController.class)
//@WebAppConfiguration()
//@AutoConfigureMockMvc
@SpringBootTest
public class EmployeeControllerTest{
	
	private MockMvc mockMvc;
	public String message;
	
	@Autowired
	private WebApplicationContext context;
	
	@Before
	public void setUp() {
		
		mockMvc = MockMvcBuilders.webAppContextSetup(context).build();
		
	}	
	ObjectMapper objectMapper = new ObjectMapper();

	/*
	 * @Test public void addEmployeeTest() throws Exception{ EmployeeDto employeeDto
	 * = new EmployeeDto(); employeeDto.setId(1);
	 * employeeDto.setEmployeeName("XYSS"); employeeDto.setEmpId(1234);
	 * employeeDto.setPhoneNo(234232423);
	 * 
	 * String jsonRequest = objectMapper.writeValueAsString(employeeDto); MvcResult
	 * mvcResult =
	 * mockMvc.perform(post("/employees/addEmployee").content(jsonRequest).
	 * contentType(MediaType.APPLICATION_JSON)).andExpect(status().isOk()).andReturn
	 * (); String resultContent=mvcResult.getResponse().getContentAsString();
	 * EmployeeDto response=objectMapper.readValue(resultContent,EmployeeDto.class);
	 * Assert.assertEquals( response.getId(), employeeDto.getId());
	 * Assert.assertEquals( response.getEmpId(), employeeDto.getEmpId());
	 * Assert.assertEquals( response.getPhoneNo(), employeeDto.getPhoneNo());
	 * 
	 * }
	 */
	    @Test
		public void getEmployeeByIdTest() throws Exception{
	    	EmployeeDto employeeDto = new EmployeeDto();
	    	employeeDto.setId(1);
	    	employeeDto.setEmployeeName("XYSS");
	    	employeeDto.setEmpId(1234);
	    	employeeDto.setPhoneNo(234232423);
	    	
	    	String jsonRequest = objectMapper.writeValueAsString(employeeDto);
	    	MvcResult mvcResult = mockMvc.perform(post("/employees/addEmployee").content(jsonRequest).contentType(MediaType.APPLICATION_JSON)).andExpect(status().isOk()).andReturn();
	    	MvcResult mvcGetResult = mockMvc.perform(get("/employees/1234").contentType(MediaType.APPLICATION_JSON)).andExpect(status().isOk()).andReturn();
			String resultContent=mvcGetResult.getResponse().getContentAsString();
			
			
			EmployeeDto response=objectMapper.readValue(resultContent,EmployeeDto.class);
			Assert.assertEquals( response.getId(), employeeDto.getId());
			
		}
	}


