package com.seveneleven.rishost.ageverification.service;

import com.seveneleven.rishost.ageverification.controller.dto.StateTypeDto;
import com.seveneleven.rishost.ageverification.entity.StateTypeEntity;

import java.util.List;
import java.util.Set;

public interface StateTypeService {

    StateTypeDto findById(int id);

    List<StateTypeDto> getAllStatesByCountryId(int countryId);

    List<StateTypeEntity> getAllStateDetailsByStateNameOrCode(Set<String> stateNameSet, Set<String> stateCodeSet, int countryId);
}
