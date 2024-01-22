package com.seveneleven.rishost.ageverification.service;

import java.io.IOException;

import org.springframework.web.multipart.MultipartFile;

public interface UploadFileService {

	void uploadFile(MultipartFile reapExcelDataFile, int countryId) throws IOException;

}
