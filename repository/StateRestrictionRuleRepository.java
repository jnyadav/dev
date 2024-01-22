package com.seveneleven.rishost.ageverification.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.seveneleven.rishost.ageverification.entity.StateRestrictionRuleEntity;

import java.time.LocalDate;
import java.util.Optional;


public interface StateRestrictionRuleRepository extends JpaRepository<StateRestrictionRuleEntity, Integer>{

    Optional<StateRestrictionRuleEntity> findFirst1ByRestrictionItemTypeEntity_restrictionItemIdAndStateTypeEntity_stateCodeAndEffectiveDateBeforeOrderByEffectiveDateDesc(int restrictionItemId, String stateCode, LocalDate localDate);
}
