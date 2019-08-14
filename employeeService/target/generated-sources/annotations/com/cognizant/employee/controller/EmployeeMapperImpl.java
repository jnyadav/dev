package com.cognizant.employee.controller;

import com.cognizant.employee.controller.Dto.EmployeeDto;
import com.cognizant.employee.entity.EmployeeEntity;
import javax.annotation.Generated;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2019-08-14T12:25:35+0530",
    comments = "version: 1.3.0.Beta2, compiler: Eclipse JDT (IDE) 3.17.0.v20190306-2240, environment: Java 10.0.2 (Oracle Corporation)"
)
@Component
public class EmployeeMapperImpl implements EmployeeMapper {

    @Override
    public EmployeeDto employeeEntityToemployeeDto(EmployeeEntity employeeEntity) {
        if ( employeeEntity == null ) {
            return null;
        }

        EmployeeDto employeeDto = new EmployeeDto();

        employeeDto.setId( employeeEntity.getId() );
        employeeDto.setEmployeeName( employeeEntity.getEmployeeName() );
        employeeDto.setPhoneNo( employeeEntity.getPhoneNo() );
        employeeDto.setEmpId( employeeEntity.getEmpId() );

        return employeeDto;
    }

    @Override
    public EmployeeEntity employeeEntityToDto(EmployeeDto employeeDto) {
        if ( employeeDto == null ) {
            return null;
        }

        EmployeeEntity employeeEntity = new EmployeeEntity();

        employeeEntity.setId( employeeDto.getId() );
        employeeEntity.setEmployeeName( employeeDto.getEmployeeName() );
        employeeEntity.setPhoneNo( employeeDto.getPhoneNo() );
        employeeEntity.setEmpId( employeeDto.getEmpId() );

        return employeeEntity;
    }
}
