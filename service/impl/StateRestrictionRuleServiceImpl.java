package com.seveneleven.rishost.ageverification.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.seveneleven.rishost.ageverification.entity.StateRestrictionRuleEntity;
import com.seveneleven.rishost.ageverification.repository.StateRestrictionRuleRepository;
import com.seveneleven.rishost.ageverification.service.StateRestrictionRuleService;

@Service
public class StateRestrictionRuleServiceImpl implements StateRestrictionRuleService {

	@Autowired
	private StateRestrictionRuleRepository stateRestrictionRuleRepo;
	
	@Override
	public void setStateRulesData(List<StateRestrictionRuleEntity> stateRestrictionRuleEntity) {
		stateRestrictionRuleRepo.saveAll(stateRestrictionRuleEntity);
	}

	@Override
	public void saveOneStateRule(StateRestrictionRuleEntity stateRestrictionRuleEntity) {
		stateRestrictionRuleRepo.save(stateRestrictionRuleEntity);
	}

}
