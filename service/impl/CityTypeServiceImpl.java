package com.seveneleven.rishost.ageverification.service.impl;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.seveneleven.rishost.ageverification.controller.dto.CityTypeDto;
import com.seveneleven.rishost.ageverification.entity.CityTypeEntity;
import com.seveneleven.rishost.ageverification.exception.ResourceNotFoundException;
import com.seveneleven.rishost.ageverification.repository.CityTypeRepository;
import com.seveneleven.rishost.ageverification.service.CityTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class CityTypeServiceImpl implements CityTypeService {
    @Autowired
    ObjectMapper objectMapper;
    @Autowired
    private CityTypeRepository cityTypeRepository;

    /**
     * @param id
     * @return
     */
    @Override
    public CityTypeDto findById(int id) {
        return objectMapper.convertValue(
                cityTypeRepository.findById(id).orElseThrow(() -> new ResourceNotFoundException(id, CityTypeEntity.class)), CityTypeDto.class);
    }

    /**
     * Method to return all countries by country, state and county id
     *
     * @param countryId country identifier
     * @param stateId   state identifier
     * @param countyId  county identifier
     * @return
     */
    @Override
    public List<CityTypeDto> getAllCitiesByCountryIdStateIdAndCountyId(int countryId, int stateId, int countyId) {
        final List<CityTypeDto> cityTypeDtoList = new ArrayList<>();
        cityTypeRepository.findByCountyTypeEntity_StateTypeEntity_CountryTypeEntity_CountryIdAndCountyTypeEntity_StateTypeEntity_stateIdAndCountyTypeEntity_countyId(countryId, stateId, countyId).forEach(
                city -> cityTypeDtoList.add(objectMapper.convertValue(city, CityTypeDto.class))
        );
        return cityTypeDtoList;
    }
}
