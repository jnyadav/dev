package com.seveneleven.rishost.ageverification.service;

import com.seveneleven.rishost.ageverification.controller.dto.CountyTypeDto;

import java.util.List;

public interface CountyTypeService {
    CountyTypeDto findById(int id);

    List<CountyTypeDto> getAllCountiesByCountryIdAndStateId(int countryId, int stateId);
}
