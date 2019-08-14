package com.cognizant.employee.controller;

import java.util.Optional;

import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;

import com.cognizant.employee.controller.Dto.EmployeeDto;
import com.cognizant.employee.entity.EmployeeEntity;

@Mapper(componentModel="spring")
public interface EmployeeMapper {
	
		EmployeeMapper INSTANCE = Mappers.getMapper(EmployeeMapper.class);
	    EmployeeDto employeeEntityToemployeeDto(EmployeeEntity employeeEntity);
	  // EmployeeDto employeeEntityToemployeeDto(Optional<EmployeeEntity> employeeEntity);
	    EmployeeEntity employeeEntityToDto(EmployeeDto employeeDto);
		//EmployeeDto employeeEntityToemployeeDto(Optional<EmployeeEntity> findById);
	
}
