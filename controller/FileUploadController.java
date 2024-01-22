package com.seveneleven.rishost.ageverification.controller;

import com.seveneleven.rishost.ageverification.service.UploadFileService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

@RestController
public class FileUploadController implements FileUploadApi {
    private static final Logger logger = LoggerFactory.getLogger(FileUploadController.class);
    @Autowired
    private UploadFileService uploadFileServiceService;

    @PostMapping("/uploadFile/{countryId}")
    public String uploadFile(@RequestParam("file") MultipartFile readExcelDataFile, @PathVariable("countryId") int countryId) throws IOException {
        uploadFileServiceService.uploadFile(readExcelDataFile, countryId);
        return "Successfully added the data to the database.";
    }
}
