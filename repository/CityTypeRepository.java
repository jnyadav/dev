package com.seveneleven.rishost.ageverification.repository;

import com.seveneleven.rishost.ageverification.entity.CityTypeEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CityTypeRepository extends JpaRepository<CityTypeEntity, Integer> {

    List<CityTypeEntity> findByCountyTypeEntity_StateTypeEntity_CountryTypeEntity_CountryIdAndCountyTypeEntity_StateTypeEntity_stateIdAndCountyTypeEntity_countyId(int countryId, int stateId, int countyId);
}
