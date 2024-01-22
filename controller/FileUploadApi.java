package com.seveneleven.rishost.ageverification.controller;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

@Api(tags="File Upload Controller", value = "File Upload Controller")
public interface FileUploadApi {

    @ApiOperation(value = "Upload file with all the rules for city, county and state.")
    String uploadFile(MultipartFile reapExcelDataFile, int countryId) throws IOException;
}
