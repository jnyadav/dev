package com.seveneleven.rishost.ageverification.controller.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Builder
@Data
public class CountyTypeDto {

    private int countyId;

    private String countyName;
//ToDO - Pending
    private int stateId;
}
