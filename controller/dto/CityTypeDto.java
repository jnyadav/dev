package com.seveneleven.rishost.ageverification.controller.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Builder
@Data
public class CityTypeDto {
    private int cityId;

    private String cityName;

    private int countyId;

}
