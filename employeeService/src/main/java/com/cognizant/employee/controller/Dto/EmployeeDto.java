package com.cognizant.employee.controller.Dto;

import javax.validation.constraints.NotNull;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

//@AllArgsConstructor
//@NoArgsConstructor
//@RequiredArgsConstructor
@Getter
@Setter
@Builder
public class EmployeeDto {

	public EmployeeDto(@NotNull int id, String employeeName, int phoneNo, int empId) {
		super();
		this.id = id;
		this.employeeName = employeeName;
		this.phoneNo = phoneNo;
		this.empId = empId;
	}

	public EmployeeDto() {
		super();
	}

	@NotNull
	private int id;
	private String employeeName;
	private int phoneNo;
	private int empId;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getEmployeeName() {
		return employeeName;
	}

	public void setEmployeeName(String employeeName) {
		this.employeeName = employeeName;
	}

	public int getPhoneNo() {
		return phoneNo;
	}

	public void setPhoneNo(int phoneNo) {
		this.phoneNo = phoneNo;
	}

	public int getEmpId() {
		return empId;
	}

	public void setEmpId(int empId) {
		this.empId = empId;
	}

}
