package com.seveneleven.rishost.ageverification.controller;

import com.seveneleven.rishost.ageverification.controller.dto.CityTypeDto;
import com.seveneleven.rishost.ageverification.controller.dto.CountryTypeDto;
import com.seveneleven.rishost.ageverification.controller.dto.CountyTypeDto;
import com.seveneleven.rishost.ageverification.controller.dto.StateTypeDto;
import com.seveneleven.rishost.ageverification.service.CityTypeService;
import com.seveneleven.rishost.ageverification.service.CountryTypeService;
import com.seveneleven.rishost.ageverification.service.CountyTypeService;
import com.seveneleven.rishost.ageverification.service.StateTypeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class LocationTypeController implements LocationTypeApi {
    private static final Logger logger = LoggerFactory.getLogger(LocationTypeController.class);

    @Autowired
    private CountryTypeService countryTypeService;

    @Autowired
    private StateTypeService stateTypeService;

    @Autowired
    private CountyTypeService countyTypeService;

    @Autowired
    private CityTypeService cityTypeService;

    /**
     * Endpoint to get country by country identifier
     *
     * @param id country identifier
     * @return return country
     */
    @GetMapping("/countries/{id}")
    @Override
    public ResponseEntity<CountryTypeDto> getCountryById(@PathVariable("id") Integer id) {
        logger.info("Getting countries by Id");
        return new ResponseEntity<>(countryTypeService.findById(id), HttpStatus.OK);
    }

    /**
     * Endpoint to get all the countries
     *
     * @return countries
     */
    @Override
    @GetMapping("/countries")
    public List<CountryTypeDto> getAllCountries() {
        logger.info("Getting All countries");
        return countryTypeService.getAllCountries();
    }

    /**
     * Endpoint to get state by state identifier
     *
     * @param id state identifier
     * @return return state
     */
    @Override
    @GetMapping("/states/{id}")
    public ResponseEntity<StateTypeDto> getStateById(@PathVariable("id") Integer id) {
        logger.info("Getting states by Id");
        return new ResponseEntity<>(stateTypeService.findById(id), HttpStatus.OK);
    }

    /**
     * Endpoint to get all the states by country identifier
     *
     * @param countryId country identifier
     * @return states
     */
    @Override
    @GetMapping("/countries/{countryId}/states")
    public List<StateTypeDto> getAllStatesByCountryId(@PathVariable("countryId") Integer countryId) {
        logger.info("Getting All states by country Id");
        return stateTypeService.getAllStatesByCountryId(countryId);
    }

    /**
     * Endpoint to get county by state identifier
     *
     * @param id county identifier
     * @return return country
     */
    @Override
    @GetMapping("/counties/{id}")
    public ResponseEntity<CountyTypeDto> getCountyById(Integer id) {
        logger.info("Getting county by Id");
        return new ResponseEntity<>(countyTypeService.findById(id), HttpStatus.OK);
    }

    /**
     * Endpoint to get all the states by country and state identifier
     *
     * @param countryId country identifier
     * @param stateId state identifier
     * @return counties
     */
    @Override
    @GetMapping("/countries/{countryId}/states/{stateId}/counties")
    public List<CountyTypeDto> getAllCountyByCountryIdAndStateId(@PathVariable("countryId") Integer countryId, @PathVariable("stateId") Integer stateId) {
        logger.info("Getting All states by country Id");
        return countyTypeService.getAllCountiesByCountryIdAndStateId(countryId, stateId);
    }

    /**
     * Endpoint to get City by city id
     *
     * @param id city identifier
     * @return city
     */
    @Override
    @GetMapping("/cities/{id}")
    public ResponseEntity<CityTypeDto> getCityById(Integer id) {
       logger.info("Getting City By Id");
       return new ResponseEntity<>(cityTypeService.findById(id), HttpStatus.OK);
   }

    /**
     * Endpoint to get all the cities by country, state and county identifier
     *
     * @param countryId country identifier
     * @param stateId state identifier
     * @param countyId county identifier
     * @return cities
     */
    @Override
    @GetMapping("/countries/{countryId}/states/{stateId}/counties/{countyId}/cities")
    public List<CityTypeDto> getAllCityByCountryIdStateIdAndCountyId(@PathVariable("countryId")  Integer countryId, @PathVariable("stateId") Integer stateId, @PathVariable("countyId") Integer countyId) {
        logger.info("Getting All cities by country, state and county Id");
        return cityTypeService.getAllCitiesByCountryIdStateIdAndCountyId(countryId, stateId, countyId);
    }
}
