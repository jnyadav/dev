package com.seveneleven.rishost.ageverification.controller;

import com.seveneleven.rishost.ageverification.controller.dto.CityTypeDto;
import com.seveneleven.rishost.ageverification.controller.dto.CountryTypeDto;
import com.seveneleven.rishost.ageverification.controller.dto.CountyTypeDto;
import com.seveneleven.rishost.ageverification.controller.dto.StateTypeDto;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;

@Api(tags="Location Type Controller", value = "Location Type Controller")
public interface LocationTypeApi {
    @ApiOperation(value = "Returns country if id is found.", response = CountryTypeDto.class)
    ResponseEntity<CountryTypeDto> getCountryById(@PathVariable("id") Integer id);

    @ApiOperation(value = "Returns all list of countries.", response = List.class)
    List<CountryTypeDto> getAllCountries();

    @ApiOperation(value = "Returns country if id is found.", response = StateTypeDto.class)
    ResponseEntity<StateTypeDto> getStateById(@PathVariable("id") Integer id);

    @ApiOperation(value = "Returns all list of states by country id.", response = List.class)
    List<StateTypeDto> getAllStatesByCountryId(Integer countryId);

    @ApiOperation(value = "Returns county if id is found.", response = CountyTypeDto.class)
    ResponseEntity<CountyTypeDto> getCountyById(@PathVariable("id") Integer id);

    @ApiOperation(value = "Returns all list of states by country and state id.", response = List.class)
    List<CountyTypeDto> getAllCountyByCountryIdAndStateId(Integer countryId, Integer stateId);

    @ApiOperation(value = "Returns city if id is found.", response = CityTypeDto.class)
    ResponseEntity<CityTypeDto> getCityById(@PathVariable("id") Integer id);

    @ApiOperation(value = "Returns all list of cities by country, state and county id.", response = List.class)
    List<CityTypeDto> getAllCityByCountryIdStateIdAndCountyId(Integer countryId, Integer stateId, Integer countyId);
}
