package com.seveneleven.rishost.ageverification.exception;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class SystemException extends RuntimeException {

    private String errorCode;
    private String errorDetail;
    private String errorMsg;

}
