package com.seveneleven.rishost.ageverification.service.impl;

import com.seveneleven.rishost.ageverification.entity.RestrictionItemTypeEntity;
import com.seveneleven.rishost.ageverification.repository.RestrictionItemTypeRepository;
import com.seveneleven.rishost.ageverification.service.RestrictionItemTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class RestrictionItemTypeServiceImpl implements RestrictionItemTypeService {
    @Autowired
    private RestrictionItemTypeRepository restrictionItemTypeRepository;

    @Override
    public List<RestrictionItemTypeEntity> getAllRestrictionItemList(){
        return restrictionItemTypeRepository.findAll();
    }
    @Override
    public Optional<RestrictionItemTypeEntity> getOneRestrictionItemList(int itemId){
        return restrictionItemTypeRepository.findById(itemId);

    }
}
