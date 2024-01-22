package com.seveneleven.rishost.ageverification.service;

import com.seveneleven.rishost.ageverification.controller.dto.CityTypeDto;

import java.util.List;

public interface CityTypeService {

    CityTypeDto findById(int id);

    List<CityTypeDto> getAllCitiesByCountryIdStateIdAndCountyId(int countryId, int stateId, int countyId);
}
