package com.seveneleven.rishost.ageverification.service.impl;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.seveneleven.rishost.ageverification.controller.dto.CountyTypeDto;
import com.seveneleven.rishost.ageverification.entity.CountyTypeEntity;
import com.seveneleven.rishost.ageverification.exception.ResourceNotFoundException;
import com.seveneleven.rishost.ageverification.repository.CountyTypeRepository;
import com.seveneleven.rishost.ageverification.service.CountyTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class CountyTypeServiceImpl implements CountyTypeService {

    @Autowired
    private CountyTypeRepository countyTypeRepository;

    @Autowired
    private ObjectMapper objectMapper;

    /**
     * Method to return county by identifier
     *
     * @param id county identifier
     * @return CountyTypeDto countyTypeDto
     */
    @Override
    public CountyTypeDto findById(int id) {
        return objectMapper.convertValue(
                countyTypeRepository.findById(id).orElseThrow(() -> new ResourceNotFoundException(id, CountyTypeEntity.class)), CountyTypeDto.class);
    }

    /**
     * Method to return all countries by country id
     *
     * @return List<CountyTypeDto> all counties by country id
     */
    @Override
    public List<CountyTypeDto> getAllCountiesByCountryIdAndStateId(int countryId, int stateId) {
        final List<CountyTypeDto> countyTypeDtoList = new ArrayList<>();
        countyTypeRepository.findByStateTypeEntity_CountryTypeEntity_CountryIdAndStateTypeEntity_stateId(countryId, stateId).forEach(
                state -> countyTypeDtoList.add(objectMapper.convertValue(state, CountyTypeDto.class))
        );
        return countyTypeDtoList;
    }
}
