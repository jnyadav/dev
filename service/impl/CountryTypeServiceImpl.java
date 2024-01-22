package com.seveneleven.rishost.ageverification.service.impl;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.seveneleven.rishost.ageverification.controller.dto.CountryTypeDto;
import com.seveneleven.rishost.ageverification.entity.CountryTypeEntity;
import com.seveneleven.rishost.ageverification.exception.ResourceNotFoundException;
import com.seveneleven.rishost.ageverification.repository.CountryTypeRepository;
import com.seveneleven.rishost.ageverification.service.CountryTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class CountryTypeServiceImpl implements CountryTypeService {

    @Autowired
    private CountryTypeRepository countryTypeRepository;

    @Autowired
    private ObjectMapper objectMapper;

    /**
     * Method to return country by identifier
     *
     * @param id country identifier
     * @return CountryTypeDto countryTypeDto
     */
    @Override
    public CountryTypeDto findById(int id) {
        return objectMapper.convertValue(
                countryTypeRepository.findById(id).orElseThrow(() -> new ResourceNotFoundException(id, CountryTypeEntity.class)), CountryTypeDto.class);
    }

    /**
     * Method to return all countries
     *
     * @return List<CountryTypeDto> all countries
     */
    @Override
    public List<CountryTypeDto> getAllCountries() {
        final List<CountryTypeDto> countryList = new ArrayList<>();
        countryTypeRepository.findAll().forEach(
                store -> countryList.add(objectMapper.convertValue(store, CountryTypeDto.class))
        );
        return countryList;
    }
}
