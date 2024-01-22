package com.seveneleven.rishost.ageverification.rest.client;

import com.seveneleven.rishost.ageverification.rest.client.response.StoreLocationResponse;

import java.util.List;

public interface StoreLocationClientService {
    List<StoreLocationResponse> getAllStoreLocations();
}
