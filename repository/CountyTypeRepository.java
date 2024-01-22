package com.seveneleven.rishost.ageverification.repository;

import com.seveneleven.rishost.ageverification.entity.CountyTypeEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;


public interface CountyTypeRepository extends JpaRepository<CountyTypeEntity,Integer> {

    List<CountyTypeEntity> findByStateTypeEntity_CountryTypeEntity_CountryIdAndStateTypeEntity_stateId(int countryId, int stateId);
}
