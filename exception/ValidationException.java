package com.seveneleven.rishost.ageverification.exception;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ValidationException extends Exception {
    private String errorCode;
    private String errorMsg;
    private String errorDetail;
}
