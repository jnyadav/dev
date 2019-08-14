package com.cognizant.employee.service;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import org.dozer.DozerBeanMapper;
import org.mapstruct.factory.Mappers;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cognizant.employee.controller.EmployeeMapper;
import com.cognizant.employee.controller.Dto.EmployeeDto;
import com.cognizant.employee.entity.EmployeeEntity;
import com.cognizant.employee.repository.EmployeeRepository;



@Service
public class EmployeeServiceImpl implements EmployeeService {
   
	@Autowired
	EmployeeRepository employeeRepository;

	
	private EmployeeMapper employeeMapper= Mappers.getMapper(EmployeeMapper.class);
	
	
	
	DozerBeanMapper mapper;
	
	@Override
	public List<EmployeeDto> getAllEmployees() {
		return employeeRepository.findAll().stream()
				.map(s -> employeeMapper.employeeEntityToemployeeDto(s))
				.collect(Collectors.toList());
	}

	@Override
	public EmployeeDto getEmployeeById(Integer EmployeeId) {
		return employeeMapper.employeeEntityToemployeeDto(employeeRepository.findByempId(EmployeeId));
	}

	@Override
	public void deleteEmployeeById(int empId) {
		employeeRepository.deleteById(empId);
	}

	@Override
	public EmployeeDto updateEmployee(EmployeeDto employeeDto) {
		EmployeeEntity employeeEntity = employeeMapper.employeeEntityToDto(employeeDto);
		return employeeMapper.employeeEntityToemployeeDto(employeeRepository.save(employeeEntity));
	}

   }




