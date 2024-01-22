package com.seveneleven.rishost.ageverification.rest.client.impl;

import com.seveneleven.rishost.ageverification.rest.client.StoreLocationClientService;
import com.seveneleven.rishost.ageverification.rest.client.response.StoreLocationResponse;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.util.List;

@Service
public class StoreLocationClientServiceImpl implements StoreLocationClientService {

    private static final Logger logger = LoggerFactory.getLogger(StoreLocationClientServiceImpl.class);

    @Value("${backing-services.store-location-service}")
    private String storeLocationServiceBaseUrl;

    @Autowired
    private RestTemplate restTemplate;

    /**
     * Returns all the store locations
     *
     * @return List<StoreLocationDto> list of store locations
     */
    public List<StoreLocationResponse> getAllStoreLocations() {
        logger.info("Getting All store locations");
        final String resourceUrl = storeLocationServiceBaseUrl + "/storeLocations";
        ResponseEntity<List<StoreLocationResponse>> storeLocationResponse =
                restTemplate.exchange(resourceUrl, HttpMethod.GET, null, new ParameterizedTypeReference<List<StoreLocationResponse>>() {});
        return storeLocationResponse.getBody();
    }
}
