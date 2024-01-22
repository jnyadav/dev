package com.seveneleven.rishost.ageverification.controller.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Builder
@Data
public class StateTypeDto {
    private int stateId;

    private String stateCode;

    private String stateName;

    private int countryId;
}
