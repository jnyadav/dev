package com.seveneleven.rishost.ageverification.repository;

import com.seveneleven.rishost.ageverification.entity.CityRestrictionRuleEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.time.LocalDate;
import java.util.Optional;

@Repository
public interface CityRestrictionRuleRepository extends JpaRepository<CityRestrictionRuleEntity, Integer> {

    Optional<CityRestrictionRuleEntity> findFirst1ByRestrictionItemTypeEntity_restrictionItemIdAndCityTypeEntity_cityNameAndEffectiveDateBeforeOrderByEffectiveDateDesc(int restrictionItemId, String cityName, LocalDate localDate);
}
