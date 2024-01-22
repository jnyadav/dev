package com.seveneleven.rishost.ageverification.service.impl;

import java.io.IOException;
import java.time.LocalDate;
import java.time.Month;
import java.time.ZoneId;
import java.util.*;

import com.seveneleven.rishost.ageverification.entity.RestrictionItemTypeEntity;
import com.seveneleven.rishost.ageverification.entity.StateTypeEntity;
import com.seveneleven.rishost.ageverification.service.RestrictionItemTypeService;
import com.seveneleven.rishost.ageverification.service.StateTypeService;
import com.seveneleven.rishost.ageverification.utils.AgeVerificationUtils;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.seveneleven.rishost.ageverification.entity.StateRestrictionRuleEntity;
import com.seveneleven.rishost.ageverification.service.UploadFileService;
import com.seveneleven.rishost.ageverification.service.StateRestrictionRuleService;

@Service
public class UploadFileServiceImpl implements UploadFileService {
	
	@Autowired
	private StateRestrictionRuleService stateRestrictionRuleService;
	@Autowired
	private StateTypeService stateTypeService;

	//TODO-Exception Implementation
	@Autowired
	private RestrictionItemTypeService restrictionItemTypeService;

	/**
	 *  Method will receive data from controller
	 *
	 * @param countryId county identifier
	 * @param readExcelDataFile is the excel file
	 */
	@Override
	public void uploadFile(MultipartFile readExcelDataFile,int countryId) throws IOException {
			XSSFWorkbook workbook = new XSSFWorkbook(readExcelDataFile.getInputStream());
	        XSSFSheet worksheet = workbook.getSheet("Level1");
	        //first sheet of the excel page is for state rules
			setStateRulesDetails(worksheet, countryId);
	}
	/**
	 * Method to set rules
	 *
	 * @param countryId county identifier
	 * @param worksheet first sheet data, this contains state related rules
	 */
	private void setStateRulesDetails(XSSFSheet worksheet, int countryId) {
		Set<String> stateCodeSet = new HashSet<>();
		Set<String> stateNameSet = new HashSet<>();

		for (Row row : worksheet) {
			//Skipping 1st and 2nd row
			if (row.getRowNum() != 0 && row.getRowNum() != 1) {
				stateNameSet.add(row.getCell(0).getStringCellValue().trim());
				stateCodeSet.add(row.getCell(1).getStringCellValue().trim());
			}
		}
		List<StateTypeEntity> stateTypeEntityList = stateTypeService.getAllStateDetailsByStateNameOrCode(stateNameSet, stateCodeSet, countryId);
		//Key is state code and value is stateName
		Map<String, StateTypeEntity> stateIdentityMap = new HashMap<>();
		//key is state code and value is state entity object
		stateTypeEntityList.parallelStream().forEach(stateTypeEntity -> stateIdentityMap.put(stateTypeEntity.getStateCode(), stateTypeEntity));

		List<RestrictionItemTypeEntity> restrictionItemTypeEntityList  = restrictionItemTypeService.getAllRestrictionItemList();

		Map<Integer, RestrictionItemTypeEntity> restrictionItemTypeEntityMap = new HashMap<>();
		//creating a map object, key is item id and value is restrictionRule
		restrictionItemTypeEntityList.parallelStream().forEach(restrictionItem -> restrictionItemTypeEntityMap.put(restrictionItem.getRestrictionItemId(), restrictionItem));

		//create and passing the
		LocalDate firstDayOfCurrentYear = LocalDate.of(LocalDate.now().getYear(), Month.JANUARY, 1);

		//For tobacco
		//skipping the 1st and 2nd row
		for (int i = 2; i < worksheet.getPhysicalNumberOfRows(); i++) {
			Row row = worksheet.getRow(i);
			//Section for populating the rules for Tobacco and E-Cig
			//i=effectiveDate, i2=id for restrictionItem, i3=age
			setRulesForTAndE(row, stateIdentityMap, restrictionItemTypeEntityMap, firstDayOfCurrentYear,  3, 2, 2);
			setRulesForTAndE(row, stateIdentityMap, restrictionItemTypeEntityMap, firstDayOfCurrentYear, 5, 1, 4);
			//Section for populating the rules for Military
			if (!AgeVerificationUtils.isCellEmpty(row.getCell(6))) {
				LocalDate effectiveDate = firstDayOfCurrentYear;
				//TODO- here existing rule must be checked first before saving into db
				//params - stateEntity, restrictionTypeItemEntity, age, effectiveDate
				stateRestrictionRuleService.saveOneStateRule(getStateRestrictionRuleEntity(stateIdentityMap.get(row.getCell(1).getStringCellValue().trim()),
						restrictionItemTypeEntityMap.get(3), (int) row.getCell(6).getNumericCellValue(), effectiveDate));
			}
			//Section for Populating the rules for Grandfather
			if (!AgeVerificationUtils.isCellEmpty(row.getCell(7))) {
				LocalDate effectiveDate;
				if (!AgeVerificationUtils.isCellEmpty(row.getCell(8))) {
					effectiveDate = row.getCell(8).getDateCellValue().toInstant().atZone(ZoneId.systemDefault()).toLocalDate();
				} else {
					effectiveDate = firstDayOfCurrentYear;
				}
				//TODO- here existing rule must be checked first before saving into db
				//params - stateEntity, restrictionTypeItemEntity, age, effectiveDate
				stateRestrictionRuleService.saveOneStateRule(getStateRestrictionRuleEntity(stateIdentityMap.get(row.getCell(1).getStringCellValue().trim()),
						restrictionItemTypeEntityMap.get(4), (int) row.getCell(7).getNumericCellValue(), effectiveDate));
			}
		}
		}
	/**
	 * Method to set rules for tobacco and E-Cig
	 *
	 * @param firstDayOfCurrentYear first date of the current year will be populated which doesn't has the value
	 * @param row particular row in which the operation is getting populated
	 * @param stateIdentityMap map contains state code as key and stateEntity object as value
	 * @param restrictionItemTypeEntityMap map contains restrictionItem_id as key and restrictionItemTypeEntity object as value
	 * @param i stateEntity
	 * @param i2 restrictionItemEntity identifier
	 * @param i3 age value identifier
	 */
	private void setRulesForTAndE(Row row, Map<String, StateTypeEntity> stateIdentityMap, Map<Integer, RestrictionItemTypeEntity> restrictionItemTypeEntityMap, LocalDate firstDayOfCurrentYear, int i, int i2, int i3) {
		LocalDate effectiveDate;
		if (!AgeVerificationUtils.isCellEmpty(row.getCell(i))) {
			effectiveDate = row.getCell(i).getDateCellValue().toInstant().atZone(ZoneId.systemDefault()).toLocalDate();
		} else {
			effectiveDate = firstDayOfCurrentYear;
		}
		//TODO- here existing rule must be checked first before saving into db
		//params - stateEntity, restrictionTypeItemEntity, age, effectiveDate
		stateRestrictionRuleService.saveOneStateRule(getStateRestrictionRuleEntity(stateIdentityMap.get(row.getCell(1).getStringCellValue().trim()),
				restrictionItemTypeEntityMap.get(i2), (int) row.getCell(i3).getNumericCellValue(), effectiveDate));
	}

	/**
	 * Method to create object of StateRestrictionRuleEntity object
	 *
	 * @param age age value for the object to set
	 * @param effectiveDate effective date for the
	 * @param stateIdentity stateEntity Object
	 * @param restrictionItemTypeEntityMap map contains restrictionItem_id as key and restrictionItemTypeEntity object as value
	 */
	private StateRestrictionRuleEntity getStateRestrictionRuleEntity(StateTypeEntity stateIdentity, RestrictionItemTypeEntity restrictionItemTypeEntityMap, int age, LocalDate effectiveDate) {
		return StateRestrictionRuleEntity.builder().stateTypeEntity(stateIdentity).age(age).restrictionItemTypeEntity(restrictionItemTypeEntityMap)
				.effectiveDate(effectiveDate).build();
	}
}

