package com.seveneleven.rishost.ageverification.rest.client.response;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.validation.constraints.NotNull;

@Data
@AllArgsConstructor
@Builder
@NoArgsConstructor
public class StoreLocationResponse {
    @NotNull
    private int id;
    @NotNull
    private int storeNo;
    private String city;
    private String county;
    private String state;
    private String country;
}
