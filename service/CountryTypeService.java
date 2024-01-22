package com.seveneleven.rishost.ageverification.service;

import com.seveneleven.rishost.ageverification.controller.dto.CountryTypeDto;

import java.util.List;

public interface CountryTypeService {

    CountryTypeDto findById(int id);

    List<CountryTypeDto> getAllCountries();

}
