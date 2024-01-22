package com.seveneleven.rishost.ageverification.service.impl;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.seveneleven.rishost.ageverification.controller.dto.StateTypeDto;
import com.seveneleven.rishost.ageverification.entity.StateTypeEntity;
import com.seveneleven.rishost.ageverification.exception.ResourceNotFoundException;
import com.seveneleven.rishost.ageverification.repository.StateTypeRepository;
import com.seveneleven.rishost.ageverification.service.StateTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

@Service
public class StateTypeServiceImpl implements StateTypeService {

    @Autowired
    private StateTypeRepository stateTypeRepository;

    @Autowired
    private ObjectMapper objectMapper;

    /**
     * Method to return state by identifier
     *
     * @param id state identifier
     * @return StateTypeDto stateTypeDto
     */
    @Override
    public StateTypeDto findById(int id) {
        return objectMapper.convertValue(
                stateTypeRepository.findById(id).orElseThrow(() -> new ResourceNotFoundException(id, StateTypeEntity.class)), StateTypeDto.class);
    }

    /**
     * Method to return all countries by country id
     *
     * @return List<StateTypeDto> all states by country id
     */
    @Override
    public List<StateTypeDto> getAllStatesByCountryId(int countryId) {
        final List<StateTypeDto> stateList = new ArrayList<>();
        stateTypeRepository.findByCountryTypeEntity_CountryId(countryId).forEach(
                state -> stateList.add(objectMapper.convertValue(state, StateTypeDto.class))
        );
        return stateList;
    }

    @Override
    public List<StateTypeEntity> getAllStateDetailsByStateNameOrCode(Set<String> stateNameSet, Set<String> stateCodeSet, int countryId) {
        return stateTypeRepository.findStateListByNameOrCode( stateNameSet, stateCodeSet, countryId);
    }

}
