package com.cognizant.employee.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cognizant.employee.entity.EmployeeEntity;

@Repository
public interface EmployeeRepository extends JpaRepository<EmployeeEntity,Integer> {

	EmployeeEntity findByempId(Integer employeeId);

}
