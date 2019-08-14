package com.cognizant.employee;

import static org.junit.Assert.assertEquals;

import org.junit.Test;
import org.mapstruct.factory.Mappers;

import com.cognizant.employee.controller.EmployeeMapper;
import com.cognizant.employee.controller.Dto.EmployeeDto;
import com.cognizant.employee.entity.EmployeeEntity;

public class EmployeeMapperImplTest {

	private EmployeeMapper mapper= Mappers.getMapper(EmployeeMapper.class);
	
	
	@Test
	public void givenSourceToDestination_whenMaps_thenCorrect1() {
		
		EmployeeEntity employeeEntity = new EmployeeEntity();
		employeeEntity.setId(1);
		
		EmployeeDto employeeDto = mapper.employeeEntityToemployeeDto(employeeEntity);
		
		assertEquals(employeeEntity.getId(), employeeDto.getId());
		assertEquals(5 + 2, 7);
	}
}
