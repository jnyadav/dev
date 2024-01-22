package com.seveneleven.rishost.ageverification.exception;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@Data
@NoArgsConstructor
public class BusinessException extends Exception{

    private String errorCode;
    private String errorDetail;
    private String errorMsg;
}
