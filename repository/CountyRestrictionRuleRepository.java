package com.seveneleven.rishost.ageverification.repository;

import com.seveneleven.rishost.ageverification.entity.CountyRestrictionRuleEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.time.LocalDate;
import java.util.Optional;

@Repository
public interface CountyRestrictionRuleRepository  extends JpaRepository<CountyRestrictionRuleEntity, Integer> {

    Optional<CountyRestrictionRuleEntity> findFirst1ByRestrictionItemTypeEntity_restrictionItemIdAndCountyTypeEntity_countyNameAndEffectiveDateBeforeOrderByEffectiveDateDesc(int restrictionItemId, String cityName, LocalDate localDate);
}
