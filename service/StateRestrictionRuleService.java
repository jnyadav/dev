package com.seveneleven.rishost.ageverification.service;

import java.util.List;

import com.seveneleven.rishost.ageverification.entity.StateRestrictionRuleEntity;

public interface StateRestrictionRuleService {

	void setStateRulesData(List<StateRestrictionRuleEntity> stateRestrictionRuleEntity);

    void saveOneStateRule(StateRestrictionRuleEntity stateRestrictionRuleEntity);
}
