package com.seveneleven.rishost.ageverification.controller.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Builder
@Data
public class CountryTypeDto {
    private int countryId;

    private String countryName;

    private String countryCode;
}