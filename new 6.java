Class FileNotFoundException
....................................

public class FileNotFoundException extends RuntimeException {

    public FileNotFoundException(String message, Class aClass) {
		super(aClass.getSimpleName() + ":: "+message);
    }
}
	
	
	ExceptionClass
	.....................
	
	@ExceptionHandler(FileNotFoundException.class)
    public ResponseEntity<CustomErrorResponse> customHandleNotFound(Exception ex, WebRequest request) {

        CustomErrorResponse errors = new CustomErrorResponse();
        errors.setTimestamp(LocalDateTime.now());
        errors.setError(ex.getMessage());
        errors.setStatus(HttpStatus.NOT_FOUND.value());

        return new ResponseEntity<>(errors, HttpStatus.NOT_FOUND);
    }
	
	ServiceClassImpl
	..................
	
public void uploadFile(MultipartFile readExcelDataFile,int countryId) throws IOException {
	
	if(readExcelDataFile == null){
		throw new FileNotFoundException("File is null or empty");
	}else{
		String fileExtn = org.apache.commons.io.FilenameUtils.getExtension(readExcelDataFile.getOriginalFilename());
		if(!"xlsx".equalsIgnoreCase(fileExtn)){
			throw new FileNotFoundException("File is not an excel file");

		}
			
	}
}

else{
	 String fileExtn=readExcelDataFile.getOriginalFilename().split("\\.")[1];
	 if(!"xlsx".equalsIgnoreCase(file)){
		 throw new fileNotF
		 
	
	
	