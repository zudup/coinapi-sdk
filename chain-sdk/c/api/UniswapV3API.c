#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>
#include "UniswapV3API.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define intToStr(dst, src) \
    do {\
    char dst[256];\
    snprintf(dst, 256, "%ld", (long int)(src));\
}while(0)


// Bundles (current)
//
// Gets bundles.
//
list_t*
UniswapV3API_uniswapV3GetBundlesCurrent(apiClient_t *apiClient)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/uniswapv3/bundles/current")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/uniswapv3/bundles/current");



    list_addElement(localVarHeaderType,"text/plain"); //produces
    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarHeaderType,"text/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    cJSON *UniswapV3APIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    if(!cJSON_IsArray(UniswapV3APIlocalVarJSON)) {
        return 0;//nonprimitive container
    }
    list_t *elementToReturn = list_createList();
    cJSON *VarJSON;
    cJSON_ArrayForEach(VarJSON, UniswapV3APIlocalVarJSON)
    {
        if(!cJSON_IsObject(VarJSON))
        {
           // return 0;
        }
        char *localVarJSONToChar = cJSON_Print(VarJSON);
        list_addElement(elementToReturn , localVarJSONToChar);
    }

    cJSON_Delete( UniswapV3APIlocalVarJSON);
    cJSON_Delete( VarJSON);
    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Bundles (historical)
//
// Gets bundles.
//
list_t*
UniswapV3API_uniswapV3GetBundlesHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/uniswapv3/bundles/historical-manual")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/uniswapv3/bundles/historical-manual");




    // query parameters
    char *keyQuery_startBlock = NULL;
    long valueQuery_startBlock ;
    keyValuePair_t *keyPairQuery_startBlock = 0;
    if (startBlock)
    {
        keyQuery_startBlock = strdup("startBlock");
        valueQuery_startBlock = (startBlock);
        keyPairQuery_startBlock = keyValuePair_create(keyQuery_startBlock, &valueQuery_startBlock);
        list_addElement(localVarQueryParameters,keyPairQuery_startBlock);
    }

    // query parameters
    char *keyQuery_endBlock = NULL;
    long valueQuery_endBlock ;
    keyValuePair_t *keyPairQuery_endBlock = 0;
    if (endBlock)
    {
        keyQuery_endBlock = strdup("endBlock");
        valueQuery_endBlock = (endBlock);
        keyPairQuery_endBlock = keyValuePair_create(keyQuery_endBlock, &valueQuery_endBlock);
        list_addElement(localVarQueryParameters,keyPairQuery_endBlock);
    }

    // query parameters
    char *keyQuery_startDate = NULL;
    char valueQuery_startDate ;
    keyValuePair_t *keyPairQuery_startDate = 0;
    if (startDate)
    {
        keyQuery_startDate = strdup("startDate");
        valueQuery_startDate = (startDate);
        keyPairQuery_startDate = keyValuePair_create(keyQuery_startDate, &valueQuery_startDate);
        list_addElement(localVarQueryParameters,keyPairQuery_startDate);
    }

    // query parameters
    char *keyQuery_endDate = NULL;
    char valueQuery_endDate ;
    keyValuePair_t *keyPairQuery_endDate = 0;
    if (endDate)
    {
        keyQuery_endDate = strdup("endDate");
        valueQuery_endDate = (endDate);
        keyPairQuery_endDate = keyValuePair_create(keyQuery_endDate, &valueQuery_endDate);
        list_addElement(localVarQueryParameters,keyPairQuery_endDate);
    }
    list_addElement(localVarHeaderType,"text/plain"); //produces
    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarHeaderType,"text/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    cJSON *UniswapV3APIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    if(!cJSON_IsArray(UniswapV3APIlocalVarJSON)) {
        return 0;//nonprimitive container
    }
    list_t *elementToReturn = list_createList();
    cJSON *VarJSON;
    cJSON_ArrayForEach(VarJSON, UniswapV3APIlocalVarJSON)
    {
        if(!cJSON_IsObject(VarJSON))
        {
           // return 0;
        }
        char *localVarJSONToChar = cJSON_Print(VarJSON);
        list_addElement(elementToReturn , localVarJSONToChar);
    }

    cJSON_Delete( UniswapV3APIlocalVarJSON);
    cJSON_Delete( VarJSON);
    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    if(keyQuery_startBlock){
        free(keyQuery_startBlock);
        keyQuery_startBlock = NULL;
    }
    if(keyPairQuery_startBlock){
        keyValuePair_free(keyPairQuery_startBlock);
        keyPairQuery_startBlock = NULL;
    }
    if(keyQuery_endBlock){
        free(keyQuery_endBlock);
        keyQuery_endBlock = NULL;
    }
    if(keyPairQuery_endBlock){
        keyValuePair_free(keyPairQuery_endBlock);
        keyPairQuery_endBlock = NULL;
    }
    if(keyQuery_startDate){
        free(keyQuery_startDate);
        keyQuery_startDate = NULL;
    }
    if(keyPairQuery_startDate){
        keyValuePair_free(keyPairQuery_startDate);
        keyPairQuery_startDate = NULL;
    }
    if(keyQuery_endDate){
        free(keyQuery_endDate);
        keyQuery_endDate = NULL;
    }
    if(keyPairQuery_endDate){
        keyValuePair_free(keyPairQuery_endDate);
        keyPairQuery_endDate = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Burns (current)
//
// Gets burns.
//
list_t*
UniswapV3API_uniswapV3GetBurnsCurrent(apiClient_t *apiClient, char * filter_pool_id )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/uniswapv3/burns/current")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/uniswapv3/burns/current");




    // query parameters
    char *keyQuery_filter_pool_id = NULL;
    char * valueQuery_filter_pool_id = NULL;
    keyValuePair_t *keyPairQuery_filter_pool_id = 0;
    if (filter_pool_id)
    {
        keyQuery_filter_pool_id = strdup("filter_pool_id");
        valueQuery_filter_pool_id = strdup((filter_pool_id));
        keyPairQuery_filter_pool_id = keyValuePair_create(keyQuery_filter_pool_id, valueQuery_filter_pool_id);
        list_addElement(localVarQueryParameters,keyPairQuery_filter_pool_id);
    }
    list_addElement(localVarHeaderType,"text/plain"); //produces
    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarHeaderType,"text/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    cJSON *UniswapV3APIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    if(!cJSON_IsArray(UniswapV3APIlocalVarJSON)) {
        return 0;//nonprimitive container
    }
    list_t *elementToReturn = list_createList();
    cJSON *VarJSON;
    cJSON_ArrayForEach(VarJSON, UniswapV3APIlocalVarJSON)
    {
        if(!cJSON_IsObject(VarJSON))
        {
           // return 0;
        }
        char *localVarJSONToChar = cJSON_Print(VarJSON);
        list_addElement(elementToReturn , localVarJSONToChar);
    }

    cJSON_Delete( UniswapV3APIlocalVarJSON);
    cJSON_Delete( VarJSON);
    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    if(keyQuery_filter_pool_id){
        free(keyQuery_filter_pool_id);
        keyQuery_filter_pool_id = NULL;
    }
    if(valueQuery_filter_pool_id){
        free(valueQuery_filter_pool_id);
        valueQuery_filter_pool_id = NULL;
    }
    if(keyPairQuery_filter_pool_id){
        keyValuePair_free(keyPairQuery_filter_pool_id);
        keyPairQuery_filter_pool_id = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Burns (historical)
//
// Gets burns.
//
list_t*
UniswapV3API_uniswapV3GetBurnsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/uniswapv3/burns/historical-manual")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/uniswapv3/burns/historical-manual");




    // query parameters
    char *keyQuery_startBlock = NULL;
    long valueQuery_startBlock ;
    keyValuePair_t *keyPairQuery_startBlock = 0;
    if (startBlock)
    {
        keyQuery_startBlock = strdup("startBlock");
        valueQuery_startBlock = (startBlock);
        keyPairQuery_startBlock = keyValuePair_create(keyQuery_startBlock, &valueQuery_startBlock);
        list_addElement(localVarQueryParameters,keyPairQuery_startBlock);
    }

    // query parameters
    char *keyQuery_endBlock = NULL;
    long valueQuery_endBlock ;
    keyValuePair_t *keyPairQuery_endBlock = 0;
    if (endBlock)
    {
        keyQuery_endBlock = strdup("endBlock");
        valueQuery_endBlock = (endBlock);
        keyPairQuery_endBlock = keyValuePair_create(keyQuery_endBlock, &valueQuery_endBlock);
        list_addElement(localVarQueryParameters,keyPairQuery_endBlock);
    }

    // query parameters
    char *keyQuery_startDate = NULL;
    char valueQuery_startDate ;
    keyValuePair_t *keyPairQuery_startDate = 0;
    if (startDate)
    {
        keyQuery_startDate = strdup("startDate");
        valueQuery_startDate = (startDate);
        keyPairQuery_startDate = keyValuePair_create(keyQuery_startDate, &valueQuery_startDate);
        list_addElement(localVarQueryParameters,keyPairQuery_startDate);
    }

    // query parameters
    char *keyQuery_endDate = NULL;
    char valueQuery_endDate ;
    keyValuePair_t *keyPairQuery_endDate = 0;
    if (endDate)
    {
        keyQuery_endDate = strdup("endDate");
        valueQuery_endDate = (endDate);
        keyPairQuery_endDate = keyValuePair_create(keyQuery_endDate, &valueQuery_endDate);
        list_addElement(localVarQueryParameters,keyPairQuery_endDate);
    }

    // query parameters
    char *keyQuery_poolId = NULL;
    char * valueQuery_poolId = NULL;
    keyValuePair_t *keyPairQuery_poolId = 0;
    if (poolId)
    {
        keyQuery_poolId = strdup("poolId");
        valueQuery_poolId = strdup((poolId));
        keyPairQuery_poolId = keyValuePair_create(keyQuery_poolId, valueQuery_poolId);
        list_addElement(localVarQueryParameters,keyPairQuery_poolId);
    }
    list_addElement(localVarHeaderType,"text/plain"); //produces
    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarHeaderType,"text/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    cJSON *UniswapV3APIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    if(!cJSON_IsArray(UniswapV3APIlocalVarJSON)) {
        return 0;//nonprimitive container
    }
    list_t *elementToReturn = list_createList();
    cJSON *VarJSON;
    cJSON_ArrayForEach(VarJSON, UniswapV3APIlocalVarJSON)
    {
        if(!cJSON_IsObject(VarJSON))
        {
           // return 0;
        }
        char *localVarJSONToChar = cJSON_Print(VarJSON);
        list_addElement(elementToReturn , localVarJSONToChar);
    }

    cJSON_Delete( UniswapV3APIlocalVarJSON);
    cJSON_Delete( VarJSON);
    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    if(keyQuery_startBlock){
        free(keyQuery_startBlock);
        keyQuery_startBlock = NULL;
    }
    if(keyPairQuery_startBlock){
        keyValuePair_free(keyPairQuery_startBlock);
        keyPairQuery_startBlock = NULL;
    }
    if(keyQuery_endBlock){
        free(keyQuery_endBlock);
        keyQuery_endBlock = NULL;
    }
    if(keyPairQuery_endBlock){
        keyValuePair_free(keyPairQuery_endBlock);
        keyPairQuery_endBlock = NULL;
    }
    if(keyQuery_startDate){
        free(keyQuery_startDate);
        keyQuery_startDate = NULL;
    }
    if(keyPairQuery_startDate){
        keyValuePair_free(keyPairQuery_startDate);
        keyPairQuery_startDate = NULL;
    }
    if(keyQuery_endDate){
        free(keyQuery_endDate);
        keyQuery_endDate = NULL;
    }
    if(keyPairQuery_endDate){
        keyValuePair_free(keyPairQuery_endDate);
        keyPairQuery_endDate = NULL;
    }
    if(keyQuery_poolId){
        free(keyQuery_poolId);
        keyQuery_poolId = NULL;
    }
    if(valueQuery_poolId){
        free(valueQuery_poolId);
        valueQuery_poolId = NULL;
    }
    if(keyPairQuery_poolId){
        keyValuePair_free(keyPairQuery_poolId);
        keyPairQuery_poolId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// DayData (current)
//
// Gets uniswapv3 day data.
//
list_t*
UniswapV3API_uniswapV3GetDayDataCurrent(apiClient_t *apiClient)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/uniswapv3/dayData/current")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/uniswapv3/dayData/current");



    list_addElement(localVarHeaderType,"text/plain"); //produces
    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarHeaderType,"text/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    cJSON *UniswapV3APIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    if(!cJSON_IsArray(UniswapV3APIlocalVarJSON)) {
        return 0;//nonprimitive container
    }
    list_t *elementToReturn = list_createList();
    cJSON *VarJSON;
    cJSON_ArrayForEach(VarJSON, UniswapV3APIlocalVarJSON)
    {
        if(!cJSON_IsObject(VarJSON))
        {
           // return 0;
        }
        char *localVarJSONToChar = cJSON_Print(VarJSON);
        list_addElement(elementToReturn , localVarJSONToChar);
    }

    cJSON_Delete( UniswapV3APIlocalVarJSON);
    cJSON_Delete( VarJSON);
    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// DayData (historical)
//
// Gets uniswapv3 day data.
//
list_t*
UniswapV3API_uniswapV3GetDayDataHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/uniswapv3/dayData/historical-manual")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/uniswapv3/dayData/historical-manual");




    // query parameters
    char *keyQuery_startBlock = NULL;
    long valueQuery_startBlock ;
    keyValuePair_t *keyPairQuery_startBlock = 0;
    if (startBlock)
    {
        keyQuery_startBlock = strdup("startBlock");
        valueQuery_startBlock = (startBlock);
        keyPairQuery_startBlock = keyValuePair_create(keyQuery_startBlock, &valueQuery_startBlock);
        list_addElement(localVarQueryParameters,keyPairQuery_startBlock);
    }

    // query parameters
    char *keyQuery_endBlock = NULL;
    long valueQuery_endBlock ;
    keyValuePair_t *keyPairQuery_endBlock = 0;
    if (endBlock)
    {
        keyQuery_endBlock = strdup("endBlock");
        valueQuery_endBlock = (endBlock);
        keyPairQuery_endBlock = keyValuePair_create(keyQuery_endBlock, &valueQuery_endBlock);
        list_addElement(localVarQueryParameters,keyPairQuery_endBlock);
    }

    // query parameters
    char *keyQuery_startDate = NULL;
    char valueQuery_startDate ;
    keyValuePair_t *keyPairQuery_startDate = 0;
    if (startDate)
    {
        keyQuery_startDate = strdup("startDate");
        valueQuery_startDate = (startDate);
        keyPairQuery_startDate = keyValuePair_create(keyQuery_startDate, &valueQuery_startDate);
        list_addElement(localVarQueryParameters,keyPairQuery_startDate);
    }

    // query parameters
    char *keyQuery_endDate = NULL;
    char valueQuery_endDate ;
    keyValuePair_t *keyPairQuery_endDate = 0;
    if (endDate)
    {
        keyQuery_endDate = strdup("endDate");
        valueQuery_endDate = (endDate);
        keyPairQuery_endDate = keyValuePair_create(keyQuery_endDate, &valueQuery_endDate);
        list_addElement(localVarQueryParameters,keyPairQuery_endDate);
    }
    list_addElement(localVarHeaderType,"text/plain"); //produces
    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarHeaderType,"text/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    cJSON *UniswapV3APIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    if(!cJSON_IsArray(UniswapV3APIlocalVarJSON)) {
        return 0;//nonprimitive container
    }
    list_t *elementToReturn = list_createList();
    cJSON *VarJSON;
    cJSON_ArrayForEach(VarJSON, UniswapV3APIlocalVarJSON)
    {
        if(!cJSON_IsObject(VarJSON))
        {
           // return 0;
        }
        char *localVarJSONToChar = cJSON_Print(VarJSON);
        list_addElement(elementToReturn , localVarJSONToChar);
    }

    cJSON_Delete( UniswapV3APIlocalVarJSON);
    cJSON_Delete( VarJSON);
    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    if(keyQuery_startBlock){
        free(keyQuery_startBlock);
        keyQuery_startBlock = NULL;
    }
    if(keyPairQuery_startBlock){
        keyValuePair_free(keyPairQuery_startBlock);
        keyPairQuery_startBlock = NULL;
    }
    if(keyQuery_endBlock){
        free(keyQuery_endBlock);
        keyQuery_endBlock = NULL;
    }
    if(keyPairQuery_endBlock){
        keyValuePair_free(keyPairQuery_endBlock);
        keyPairQuery_endBlock = NULL;
    }
    if(keyQuery_startDate){
        free(keyQuery_startDate);
        keyQuery_startDate = NULL;
    }
    if(keyPairQuery_startDate){
        keyValuePair_free(keyPairQuery_startDate);
        keyPairQuery_startDate = NULL;
    }
    if(keyQuery_endDate){
        free(keyQuery_endDate);
        keyQuery_endDate = NULL;
    }
    if(keyPairQuery_endDate){
        keyValuePair_free(keyPairQuery_endDate);
        keyPairQuery_endDate = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Factory (current)
//
// Gets factory.
//
list_t*
UniswapV3API_uniswapV3GetFactoryCurrent(apiClient_t *apiClient)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/uniswapv3/factory/current")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/uniswapv3/factory/current");



    list_addElement(localVarHeaderType,"text/plain"); //produces
    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarHeaderType,"text/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    cJSON *UniswapV3APIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    if(!cJSON_IsArray(UniswapV3APIlocalVarJSON)) {
        return 0;//nonprimitive container
    }
    list_t *elementToReturn = list_createList();
    cJSON *VarJSON;
    cJSON_ArrayForEach(VarJSON, UniswapV3APIlocalVarJSON)
    {
        if(!cJSON_IsObject(VarJSON))
        {
           // return 0;
        }
        char *localVarJSONToChar = cJSON_Print(VarJSON);
        list_addElement(elementToReturn , localVarJSONToChar);
    }

    cJSON_Delete( UniswapV3APIlocalVarJSON);
    cJSON_Delete( VarJSON);
    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Factory (historical)
//
// Gets factory.
//
list_t*
UniswapV3API_uniswapV3GetFactoryHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/uniswapv3/factory/historical-manual")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/uniswapv3/factory/historical-manual");




    // query parameters
    char *keyQuery_startBlock = NULL;
    long valueQuery_startBlock ;
    keyValuePair_t *keyPairQuery_startBlock = 0;
    if (startBlock)
    {
        keyQuery_startBlock = strdup("startBlock");
        valueQuery_startBlock = (startBlock);
        keyPairQuery_startBlock = keyValuePair_create(keyQuery_startBlock, &valueQuery_startBlock);
        list_addElement(localVarQueryParameters,keyPairQuery_startBlock);
    }

    // query parameters
    char *keyQuery_endBlock = NULL;
    long valueQuery_endBlock ;
    keyValuePair_t *keyPairQuery_endBlock = 0;
    if (endBlock)
    {
        keyQuery_endBlock = strdup("endBlock");
        valueQuery_endBlock = (endBlock);
        keyPairQuery_endBlock = keyValuePair_create(keyQuery_endBlock, &valueQuery_endBlock);
        list_addElement(localVarQueryParameters,keyPairQuery_endBlock);
    }

    // query parameters
    char *keyQuery_startDate = NULL;
    char valueQuery_startDate ;
    keyValuePair_t *keyPairQuery_startDate = 0;
    if (startDate)
    {
        keyQuery_startDate = strdup("startDate");
        valueQuery_startDate = (startDate);
        keyPairQuery_startDate = keyValuePair_create(keyQuery_startDate, &valueQuery_startDate);
        list_addElement(localVarQueryParameters,keyPairQuery_startDate);
    }

    // query parameters
    char *keyQuery_endDate = NULL;
    char valueQuery_endDate ;
    keyValuePair_t *keyPairQuery_endDate = 0;
    if (endDate)
    {
        keyQuery_endDate = strdup("endDate");
        valueQuery_endDate = (endDate);
        keyPairQuery_endDate = keyValuePair_create(keyQuery_endDate, &valueQuery_endDate);
        list_addElement(localVarQueryParameters,keyPairQuery_endDate);
    }
    list_addElement(localVarHeaderType,"text/plain"); //produces
    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarHeaderType,"text/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    cJSON *UniswapV3APIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    if(!cJSON_IsArray(UniswapV3APIlocalVarJSON)) {
        return 0;//nonprimitive container
    }
    list_t *elementToReturn = list_createList();
    cJSON *VarJSON;
    cJSON_ArrayForEach(VarJSON, UniswapV3APIlocalVarJSON)
    {
        if(!cJSON_IsObject(VarJSON))
        {
           // return 0;
        }
        char *localVarJSONToChar = cJSON_Print(VarJSON);
        list_addElement(elementToReturn , localVarJSONToChar);
    }

    cJSON_Delete( UniswapV3APIlocalVarJSON);
    cJSON_Delete( VarJSON);
    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    if(keyQuery_startBlock){
        free(keyQuery_startBlock);
        keyQuery_startBlock = NULL;
    }
    if(keyPairQuery_startBlock){
        keyValuePair_free(keyPairQuery_startBlock);
        keyPairQuery_startBlock = NULL;
    }
    if(keyQuery_endBlock){
        free(keyQuery_endBlock);
        keyQuery_endBlock = NULL;
    }
    if(keyPairQuery_endBlock){
        keyValuePair_free(keyPairQuery_endBlock);
        keyPairQuery_endBlock = NULL;
    }
    if(keyQuery_startDate){
        free(keyQuery_startDate);
        keyQuery_startDate = NULL;
    }
    if(keyPairQuery_startDate){
        keyValuePair_free(keyPairQuery_startDate);
        keyPairQuery_startDate = NULL;
    }
    if(keyQuery_endDate){
        free(keyQuery_endDate);
        keyQuery_endDate = NULL;
    }
    if(keyPairQuery_endDate){
        keyValuePair_free(keyPairQuery_endDate);
        keyPairQuery_endDate = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Mints (current)
//
// Gets mints.
//
list_t*
UniswapV3API_uniswapV3GetMintsCurrent(apiClient_t *apiClient, char * filter_pool_id )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/uniswapv3/mints/current")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/uniswapv3/mints/current");




    // query parameters
    char *keyQuery_filter_pool_id = NULL;
    char * valueQuery_filter_pool_id = NULL;
    keyValuePair_t *keyPairQuery_filter_pool_id = 0;
    if (filter_pool_id)
    {
        keyQuery_filter_pool_id = strdup("filter_pool_id");
        valueQuery_filter_pool_id = strdup((filter_pool_id));
        keyPairQuery_filter_pool_id = keyValuePair_create(keyQuery_filter_pool_id, valueQuery_filter_pool_id);
        list_addElement(localVarQueryParameters,keyPairQuery_filter_pool_id);
    }
    list_addElement(localVarHeaderType,"text/plain"); //produces
    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarHeaderType,"text/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    cJSON *UniswapV3APIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    if(!cJSON_IsArray(UniswapV3APIlocalVarJSON)) {
        return 0;//nonprimitive container
    }
    list_t *elementToReturn = list_createList();
    cJSON *VarJSON;
    cJSON_ArrayForEach(VarJSON, UniswapV3APIlocalVarJSON)
    {
        if(!cJSON_IsObject(VarJSON))
        {
           // return 0;
        }
        char *localVarJSONToChar = cJSON_Print(VarJSON);
        list_addElement(elementToReturn , localVarJSONToChar);
    }

    cJSON_Delete( UniswapV3APIlocalVarJSON);
    cJSON_Delete( VarJSON);
    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    if(keyQuery_filter_pool_id){
        free(keyQuery_filter_pool_id);
        keyQuery_filter_pool_id = NULL;
    }
    if(valueQuery_filter_pool_id){
        free(valueQuery_filter_pool_id);
        valueQuery_filter_pool_id = NULL;
    }
    if(keyPairQuery_filter_pool_id){
        keyValuePair_free(keyPairQuery_filter_pool_id);
        keyPairQuery_filter_pool_id = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Mints (historical)
//
// Gets mints.
//
list_t*
UniswapV3API_uniswapV3GetMintsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/uniswapv3/mints/historical-manual")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/uniswapv3/mints/historical-manual");




    // query parameters
    char *keyQuery_startBlock = NULL;
    long valueQuery_startBlock ;
    keyValuePair_t *keyPairQuery_startBlock = 0;
    if (startBlock)
    {
        keyQuery_startBlock = strdup("startBlock");
        valueQuery_startBlock = (startBlock);
        keyPairQuery_startBlock = keyValuePair_create(keyQuery_startBlock, &valueQuery_startBlock);
        list_addElement(localVarQueryParameters,keyPairQuery_startBlock);
    }

    // query parameters
    char *keyQuery_endBlock = NULL;
    long valueQuery_endBlock ;
    keyValuePair_t *keyPairQuery_endBlock = 0;
    if (endBlock)
    {
        keyQuery_endBlock = strdup("endBlock");
        valueQuery_endBlock = (endBlock);
        keyPairQuery_endBlock = keyValuePair_create(keyQuery_endBlock, &valueQuery_endBlock);
        list_addElement(localVarQueryParameters,keyPairQuery_endBlock);
    }

    // query parameters
    char *keyQuery_startDate = NULL;
    char valueQuery_startDate ;
    keyValuePair_t *keyPairQuery_startDate = 0;
    if (startDate)
    {
        keyQuery_startDate = strdup("startDate");
        valueQuery_startDate = (startDate);
        keyPairQuery_startDate = keyValuePair_create(keyQuery_startDate, &valueQuery_startDate);
        list_addElement(localVarQueryParameters,keyPairQuery_startDate);
    }

    // query parameters
    char *keyQuery_endDate = NULL;
    char valueQuery_endDate ;
    keyValuePair_t *keyPairQuery_endDate = 0;
    if (endDate)
    {
        keyQuery_endDate = strdup("endDate");
        valueQuery_endDate = (endDate);
        keyPairQuery_endDate = keyValuePair_create(keyQuery_endDate, &valueQuery_endDate);
        list_addElement(localVarQueryParameters,keyPairQuery_endDate);
    }

    // query parameters
    char *keyQuery_poolId = NULL;
    char * valueQuery_poolId = NULL;
    keyValuePair_t *keyPairQuery_poolId = 0;
    if (poolId)
    {
        keyQuery_poolId = strdup("poolId");
        valueQuery_poolId = strdup((poolId));
        keyPairQuery_poolId = keyValuePair_create(keyQuery_poolId, valueQuery_poolId);
        list_addElement(localVarQueryParameters,keyPairQuery_poolId);
    }
    list_addElement(localVarHeaderType,"text/plain"); //produces
    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarHeaderType,"text/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    cJSON *UniswapV3APIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    if(!cJSON_IsArray(UniswapV3APIlocalVarJSON)) {
        return 0;//nonprimitive container
    }
    list_t *elementToReturn = list_createList();
    cJSON *VarJSON;
    cJSON_ArrayForEach(VarJSON, UniswapV3APIlocalVarJSON)
    {
        if(!cJSON_IsObject(VarJSON))
        {
           // return 0;
        }
        char *localVarJSONToChar = cJSON_Print(VarJSON);
        list_addElement(elementToReturn , localVarJSONToChar);
    }

    cJSON_Delete( UniswapV3APIlocalVarJSON);
    cJSON_Delete( VarJSON);
    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    if(keyQuery_startBlock){
        free(keyQuery_startBlock);
        keyQuery_startBlock = NULL;
    }
    if(keyPairQuery_startBlock){
        keyValuePair_free(keyPairQuery_startBlock);
        keyPairQuery_startBlock = NULL;
    }
    if(keyQuery_endBlock){
        free(keyQuery_endBlock);
        keyQuery_endBlock = NULL;
    }
    if(keyPairQuery_endBlock){
        keyValuePair_free(keyPairQuery_endBlock);
        keyPairQuery_endBlock = NULL;
    }
    if(keyQuery_startDate){
        free(keyQuery_startDate);
        keyQuery_startDate = NULL;
    }
    if(keyPairQuery_startDate){
        keyValuePair_free(keyPairQuery_startDate);
        keyPairQuery_startDate = NULL;
    }
    if(keyQuery_endDate){
        free(keyQuery_endDate);
        keyQuery_endDate = NULL;
    }
    if(keyPairQuery_endDate){
        keyValuePair_free(keyPairQuery_endDate);
        keyPairQuery_endDate = NULL;
    }
    if(keyQuery_poolId){
        free(keyQuery_poolId);
        keyQuery_poolId = NULL;
    }
    if(valueQuery_poolId){
        free(valueQuery_poolId);
        valueQuery_poolId = NULL;
    }
    if(keyPairQuery_poolId){
        keyValuePair_free(keyPairQuery_poolId);
        keyPairQuery_poolId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Pools (current) 🔥
//
// Gets pools.
//
list_t*
UniswapV3API_uniswapV3GetPoolsCurrent(apiClient_t *apiClient, char * filter_pool_id )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/uniswapv3/pools/current")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/uniswapv3/pools/current");




    // query parameters
    char *keyQuery_filter_pool_id = NULL;
    char * valueQuery_filter_pool_id = NULL;
    keyValuePair_t *keyPairQuery_filter_pool_id = 0;
    if (filter_pool_id)
    {
        keyQuery_filter_pool_id = strdup("filter_pool_id");
        valueQuery_filter_pool_id = strdup((filter_pool_id));
        keyPairQuery_filter_pool_id = keyValuePair_create(keyQuery_filter_pool_id, valueQuery_filter_pool_id);
        list_addElement(localVarQueryParameters,keyPairQuery_filter_pool_id);
    }
    list_addElement(localVarHeaderType,"text/plain"); //produces
    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarHeaderType,"text/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    cJSON *UniswapV3APIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    if(!cJSON_IsArray(UniswapV3APIlocalVarJSON)) {
        return 0;//nonprimitive container
    }
    list_t *elementToReturn = list_createList();
    cJSON *VarJSON;
    cJSON_ArrayForEach(VarJSON, UniswapV3APIlocalVarJSON)
    {
        if(!cJSON_IsObject(VarJSON))
        {
           // return 0;
        }
        char *localVarJSONToChar = cJSON_Print(VarJSON);
        list_addElement(elementToReturn , localVarJSONToChar);
    }

    cJSON_Delete( UniswapV3APIlocalVarJSON);
    cJSON_Delete( VarJSON);
    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    if(keyQuery_filter_pool_id){
        free(keyQuery_filter_pool_id);
        keyQuery_filter_pool_id = NULL;
    }
    if(valueQuery_filter_pool_id){
        free(valueQuery_filter_pool_id);
        valueQuery_filter_pool_id = NULL;
    }
    if(keyPairQuery_filter_pool_id){
        keyValuePair_free(keyPairQuery_filter_pool_id);
        keyPairQuery_filter_pool_id = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// PoolsDayData (current)
//
// Gets pools day data.
//
list_t*
UniswapV3API_uniswapV3GetPoolsDayDataCurrent(apiClient_t *apiClient, char * filter_pool_id )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/uniswapv3/poolsDayData/current")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/uniswapv3/poolsDayData/current");




    // query parameters
    char *keyQuery_filter_pool_id = NULL;
    char * valueQuery_filter_pool_id = NULL;
    keyValuePair_t *keyPairQuery_filter_pool_id = 0;
    if (filter_pool_id)
    {
        keyQuery_filter_pool_id = strdup("filter_pool_id");
        valueQuery_filter_pool_id = strdup((filter_pool_id));
        keyPairQuery_filter_pool_id = keyValuePair_create(keyQuery_filter_pool_id, valueQuery_filter_pool_id);
        list_addElement(localVarQueryParameters,keyPairQuery_filter_pool_id);
    }
    list_addElement(localVarHeaderType,"text/plain"); //produces
    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarHeaderType,"text/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    cJSON *UniswapV3APIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    if(!cJSON_IsArray(UniswapV3APIlocalVarJSON)) {
        return 0;//nonprimitive container
    }
    list_t *elementToReturn = list_createList();
    cJSON *VarJSON;
    cJSON_ArrayForEach(VarJSON, UniswapV3APIlocalVarJSON)
    {
        if(!cJSON_IsObject(VarJSON))
        {
           // return 0;
        }
        char *localVarJSONToChar = cJSON_Print(VarJSON);
        list_addElement(elementToReturn , localVarJSONToChar);
    }

    cJSON_Delete( UniswapV3APIlocalVarJSON);
    cJSON_Delete( VarJSON);
    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    if(keyQuery_filter_pool_id){
        free(keyQuery_filter_pool_id);
        keyQuery_filter_pool_id = NULL;
    }
    if(valueQuery_filter_pool_id){
        free(valueQuery_filter_pool_id);
        valueQuery_filter_pool_id = NULL;
    }
    if(keyPairQuery_filter_pool_id){
        keyValuePair_free(keyPairQuery_filter_pool_id);
        keyPairQuery_filter_pool_id = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// PoolsDayData (historical)
//
// Gets pools day data.
//
list_t*
UniswapV3API_uniswapV3GetPoolsDayDataHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/uniswapv3/poolsDayData/historical-manual")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/uniswapv3/poolsDayData/historical-manual");




    // query parameters
    char *keyQuery_startBlock = NULL;
    long valueQuery_startBlock ;
    keyValuePair_t *keyPairQuery_startBlock = 0;
    if (startBlock)
    {
        keyQuery_startBlock = strdup("startBlock");
        valueQuery_startBlock = (startBlock);
        keyPairQuery_startBlock = keyValuePair_create(keyQuery_startBlock, &valueQuery_startBlock);
        list_addElement(localVarQueryParameters,keyPairQuery_startBlock);
    }

    // query parameters
    char *keyQuery_endBlock = NULL;
    long valueQuery_endBlock ;
    keyValuePair_t *keyPairQuery_endBlock = 0;
    if (endBlock)
    {
        keyQuery_endBlock = strdup("endBlock");
        valueQuery_endBlock = (endBlock);
        keyPairQuery_endBlock = keyValuePair_create(keyQuery_endBlock, &valueQuery_endBlock);
        list_addElement(localVarQueryParameters,keyPairQuery_endBlock);
    }

    // query parameters
    char *keyQuery_startDate = NULL;
    char valueQuery_startDate ;
    keyValuePair_t *keyPairQuery_startDate = 0;
    if (startDate)
    {
        keyQuery_startDate = strdup("startDate");
        valueQuery_startDate = (startDate);
        keyPairQuery_startDate = keyValuePair_create(keyQuery_startDate, &valueQuery_startDate);
        list_addElement(localVarQueryParameters,keyPairQuery_startDate);
    }

    // query parameters
    char *keyQuery_endDate = NULL;
    char valueQuery_endDate ;
    keyValuePair_t *keyPairQuery_endDate = 0;
    if (endDate)
    {
        keyQuery_endDate = strdup("endDate");
        valueQuery_endDate = (endDate);
        keyPairQuery_endDate = keyValuePair_create(keyQuery_endDate, &valueQuery_endDate);
        list_addElement(localVarQueryParameters,keyPairQuery_endDate);
    }

    // query parameters
    char *keyQuery_poolId = NULL;
    char * valueQuery_poolId = NULL;
    keyValuePair_t *keyPairQuery_poolId = 0;
    if (poolId)
    {
        keyQuery_poolId = strdup("poolId");
        valueQuery_poolId = strdup((poolId));
        keyPairQuery_poolId = keyValuePair_create(keyQuery_poolId, valueQuery_poolId);
        list_addElement(localVarQueryParameters,keyPairQuery_poolId);
    }
    list_addElement(localVarHeaderType,"text/plain"); //produces
    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarHeaderType,"text/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    cJSON *UniswapV3APIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    if(!cJSON_IsArray(UniswapV3APIlocalVarJSON)) {
        return 0;//nonprimitive container
    }
    list_t *elementToReturn = list_createList();
    cJSON *VarJSON;
    cJSON_ArrayForEach(VarJSON, UniswapV3APIlocalVarJSON)
    {
        if(!cJSON_IsObject(VarJSON))
        {
           // return 0;
        }
        char *localVarJSONToChar = cJSON_Print(VarJSON);
        list_addElement(elementToReturn , localVarJSONToChar);
    }

    cJSON_Delete( UniswapV3APIlocalVarJSON);
    cJSON_Delete( VarJSON);
    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    if(keyQuery_startBlock){
        free(keyQuery_startBlock);
        keyQuery_startBlock = NULL;
    }
    if(keyPairQuery_startBlock){
        keyValuePair_free(keyPairQuery_startBlock);
        keyPairQuery_startBlock = NULL;
    }
    if(keyQuery_endBlock){
        free(keyQuery_endBlock);
        keyQuery_endBlock = NULL;
    }
    if(keyPairQuery_endBlock){
        keyValuePair_free(keyPairQuery_endBlock);
        keyPairQuery_endBlock = NULL;
    }
    if(keyQuery_startDate){
        free(keyQuery_startDate);
        keyQuery_startDate = NULL;
    }
    if(keyPairQuery_startDate){
        keyValuePair_free(keyPairQuery_startDate);
        keyPairQuery_startDate = NULL;
    }
    if(keyQuery_endDate){
        free(keyQuery_endDate);
        keyQuery_endDate = NULL;
    }
    if(keyPairQuery_endDate){
        keyValuePair_free(keyPairQuery_endDate);
        keyPairQuery_endDate = NULL;
    }
    if(keyQuery_poolId){
        free(keyQuery_poolId);
        keyQuery_poolId = NULL;
    }
    if(valueQuery_poolId){
        free(valueQuery_poolId);
        valueQuery_poolId = NULL;
    }
    if(keyPairQuery_poolId){
        keyValuePair_free(keyPairQuery_poolId);
        keyPairQuery_poolId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Pools (historical) 🔥
//
// Gets pools.
//
list_t*
UniswapV3API_uniswapV3GetPoolsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/uniswapv3/pools/historical-manual")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/uniswapv3/pools/historical-manual");




    // query parameters
    char *keyQuery_startBlock = NULL;
    long valueQuery_startBlock ;
    keyValuePair_t *keyPairQuery_startBlock = 0;
    if (startBlock)
    {
        keyQuery_startBlock = strdup("startBlock");
        valueQuery_startBlock = (startBlock);
        keyPairQuery_startBlock = keyValuePair_create(keyQuery_startBlock, &valueQuery_startBlock);
        list_addElement(localVarQueryParameters,keyPairQuery_startBlock);
    }

    // query parameters
    char *keyQuery_endBlock = NULL;
    long valueQuery_endBlock ;
    keyValuePair_t *keyPairQuery_endBlock = 0;
    if (endBlock)
    {
        keyQuery_endBlock = strdup("endBlock");
        valueQuery_endBlock = (endBlock);
        keyPairQuery_endBlock = keyValuePair_create(keyQuery_endBlock, &valueQuery_endBlock);
        list_addElement(localVarQueryParameters,keyPairQuery_endBlock);
    }

    // query parameters
    char *keyQuery_startDate = NULL;
    char valueQuery_startDate ;
    keyValuePair_t *keyPairQuery_startDate = 0;
    if (startDate)
    {
        keyQuery_startDate = strdup("startDate");
        valueQuery_startDate = (startDate);
        keyPairQuery_startDate = keyValuePair_create(keyQuery_startDate, &valueQuery_startDate);
        list_addElement(localVarQueryParameters,keyPairQuery_startDate);
    }

    // query parameters
    char *keyQuery_endDate = NULL;
    char valueQuery_endDate ;
    keyValuePair_t *keyPairQuery_endDate = 0;
    if (endDate)
    {
        keyQuery_endDate = strdup("endDate");
        valueQuery_endDate = (endDate);
        keyPairQuery_endDate = keyValuePair_create(keyQuery_endDate, &valueQuery_endDate);
        list_addElement(localVarQueryParameters,keyPairQuery_endDate);
    }

    // query parameters
    char *keyQuery_poolId = NULL;
    char * valueQuery_poolId = NULL;
    keyValuePair_t *keyPairQuery_poolId = 0;
    if (poolId)
    {
        keyQuery_poolId = strdup("poolId");
        valueQuery_poolId = strdup((poolId));
        keyPairQuery_poolId = keyValuePair_create(keyQuery_poolId, valueQuery_poolId);
        list_addElement(localVarQueryParameters,keyPairQuery_poolId);
    }
    list_addElement(localVarHeaderType,"text/plain"); //produces
    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarHeaderType,"text/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    cJSON *UniswapV3APIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    if(!cJSON_IsArray(UniswapV3APIlocalVarJSON)) {
        return 0;//nonprimitive container
    }
    list_t *elementToReturn = list_createList();
    cJSON *VarJSON;
    cJSON_ArrayForEach(VarJSON, UniswapV3APIlocalVarJSON)
    {
        if(!cJSON_IsObject(VarJSON))
        {
           // return 0;
        }
        char *localVarJSONToChar = cJSON_Print(VarJSON);
        list_addElement(elementToReturn , localVarJSONToChar);
    }

    cJSON_Delete( UniswapV3APIlocalVarJSON);
    cJSON_Delete( VarJSON);
    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    if(keyQuery_startBlock){
        free(keyQuery_startBlock);
        keyQuery_startBlock = NULL;
    }
    if(keyPairQuery_startBlock){
        keyValuePair_free(keyPairQuery_startBlock);
        keyPairQuery_startBlock = NULL;
    }
    if(keyQuery_endBlock){
        free(keyQuery_endBlock);
        keyQuery_endBlock = NULL;
    }
    if(keyPairQuery_endBlock){
        keyValuePair_free(keyPairQuery_endBlock);
        keyPairQuery_endBlock = NULL;
    }
    if(keyQuery_startDate){
        free(keyQuery_startDate);
        keyQuery_startDate = NULL;
    }
    if(keyPairQuery_startDate){
        keyValuePair_free(keyPairQuery_startDate);
        keyPairQuery_startDate = NULL;
    }
    if(keyQuery_endDate){
        free(keyQuery_endDate);
        keyQuery_endDate = NULL;
    }
    if(keyPairQuery_endDate){
        keyValuePair_free(keyPairQuery_endDate);
        keyPairQuery_endDate = NULL;
    }
    if(keyQuery_poolId){
        free(keyQuery_poolId);
        keyQuery_poolId = NULL;
    }
    if(valueQuery_poolId){
        free(valueQuery_poolId);
        valueQuery_poolId = NULL;
    }
    if(keyPairQuery_poolId){
        keyValuePair_free(keyPairQuery_poolId);
        keyPairQuery_poolId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// PoolsHourData (current)
//
// Gets pools hour data.
//
list_t*
UniswapV3API_uniswapV3GetPoolsHourDataCurrent(apiClient_t *apiClient, char * filter_pool_id )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/uniswapv3/poolsHourData/current")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/uniswapv3/poolsHourData/current");




    // query parameters
    char *keyQuery_filter_pool_id = NULL;
    char * valueQuery_filter_pool_id = NULL;
    keyValuePair_t *keyPairQuery_filter_pool_id = 0;
    if (filter_pool_id)
    {
        keyQuery_filter_pool_id = strdup("filter_pool_id");
        valueQuery_filter_pool_id = strdup((filter_pool_id));
        keyPairQuery_filter_pool_id = keyValuePair_create(keyQuery_filter_pool_id, valueQuery_filter_pool_id);
        list_addElement(localVarQueryParameters,keyPairQuery_filter_pool_id);
    }
    list_addElement(localVarHeaderType,"text/plain"); //produces
    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarHeaderType,"text/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    cJSON *UniswapV3APIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    if(!cJSON_IsArray(UniswapV3APIlocalVarJSON)) {
        return 0;//nonprimitive container
    }
    list_t *elementToReturn = list_createList();
    cJSON *VarJSON;
    cJSON_ArrayForEach(VarJSON, UniswapV3APIlocalVarJSON)
    {
        if(!cJSON_IsObject(VarJSON))
        {
           // return 0;
        }
        char *localVarJSONToChar = cJSON_Print(VarJSON);
        list_addElement(elementToReturn , localVarJSONToChar);
    }

    cJSON_Delete( UniswapV3APIlocalVarJSON);
    cJSON_Delete( VarJSON);
    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    if(keyQuery_filter_pool_id){
        free(keyQuery_filter_pool_id);
        keyQuery_filter_pool_id = NULL;
    }
    if(valueQuery_filter_pool_id){
        free(valueQuery_filter_pool_id);
        valueQuery_filter_pool_id = NULL;
    }
    if(keyPairQuery_filter_pool_id){
        keyValuePair_free(keyPairQuery_filter_pool_id);
        keyPairQuery_filter_pool_id = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// PoolsHourData (historical)
//
// Gets pools hour data.
//
list_t*
UniswapV3API_uniswapV3GetPoolsHourDataHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/uniswapv3/poolsHourData/historical-manual")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/uniswapv3/poolsHourData/historical-manual");




    // query parameters
    char *keyQuery_startBlock = NULL;
    long valueQuery_startBlock ;
    keyValuePair_t *keyPairQuery_startBlock = 0;
    if (startBlock)
    {
        keyQuery_startBlock = strdup("startBlock");
        valueQuery_startBlock = (startBlock);
        keyPairQuery_startBlock = keyValuePair_create(keyQuery_startBlock, &valueQuery_startBlock);
        list_addElement(localVarQueryParameters,keyPairQuery_startBlock);
    }

    // query parameters
    char *keyQuery_endBlock = NULL;
    long valueQuery_endBlock ;
    keyValuePair_t *keyPairQuery_endBlock = 0;
    if (endBlock)
    {
        keyQuery_endBlock = strdup("endBlock");
        valueQuery_endBlock = (endBlock);
        keyPairQuery_endBlock = keyValuePair_create(keyQuery_endBlock, &valueQuery_endBlock);
        list_addElement(localVarQueryParameters,keyPairQuery_endBlock);
    }

    // query parameters
    char *keyQuery_startDate = NULL;
    char valueQuery_startDate ;
    keyValuePair_t *keyPairQuery_startDate = 0;
    if (startDate)
    {
        keyQuery_startDate = strdup("startDate");
        valueQuery_startDate = (startDate);
        keyPairQuery_startDate = keyValuePair_create(keyQuery_startDate, &valueQuery_startDate);
        list_addElement(localVarQueryParameters,keyPairQuery_startDate);
    }

    // query parameters
    char *keyQuery_endDate = NULL;
    char valueQuery_endDate ;
    keyValuePair_t *keyPairQuery_endDate = 0;
    if (endDate)
    {
        keyQuery_endDate = strdup("endDate");
        valueQuery_endDate = (endDate);
        keyPairQuery_endDate = keyValuePair_create(keyQuery_endDate, &valueQuery_endDate);
        list_addElement(localVarQueryParameters,keyPairQuery_endDate);
    }

    // query parameters
    char *keyQuery_poolId = NULL;
    char * valueQuery_poolId = NULL;
    keyValuePair_t *keyPairQuery_poolId = 0;
    if (poolId)
    {
        keyQuery_poolId = strdup("poolId");
        valueQuery_poolId = strdup((poolId));
        keyPairQuery_poolId = keyValuePair_create(keyQuery_poolId, valueQuery_poolId);
        list_addElement(localVarQueryParameters,keyPairQuery_poolId);
    }
    list_addElement(localVarHeaderType,"text/plain"); //produces
    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarHeaderType,"text/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    cJSON *UniswapV3APIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    if(!cJSON_IsArray(UniswapV3APIlocalVarJSON)) {
        return 0;//nonprimitive container
    }
    list_t *elementToReturn = list_createList();
    cJSON *VarJSON;
    cJSON_ArrayForEach(VarJSON, UniswapV3APIlocalVarJSON)
    {
        if(!cJSON_IsObject(VarJSON))
        {
           // return 0;
        }
        char *localVarJSONToChar = cJSON_Print(VarJSON);
        list_addElement(elementToReturn , localVarJSONToChar);
    }

    cJSON_Delete( UniswapV3APIlocalVarJSON);
    cJSON_Delete( VarJSON);
    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    if(keyQuery_startBlock){
        free(keyQuery_startBlock);
        keyQuery_startBlock = NULL;
    }
    if(keyPairQuery_startBlock){
        keyValuePair_free(keyPairQuery_startBlock);
        keyPairQuery_startBlock = NULL;
    }
    if(keyQuery_endBlock){
        free(keyQuery_endBlock);
        keyQuery_endBlock = NULL;
    }
    if(keyPairQuery_endBlock){
        keyValuePair_free(keyPairQuery_endBlock);
        keyPairQuery_endBlock = NULL;
    }
    if(keyQuery_startDate){
        free(keyQuery_startDate);
        keyQuery_startDate = NULL;
    }
    if(keyPairQuery_startDate){
        keyValuePair_free(keyPairQuery_startDate);
        keyPairQuery_startDate = NULL;
    }
    if(keyQuery_endDate){
        free(keyQuery_endDate);
        keyQuery_endDate = NULL;
    }
    if(keyPairQuery_endDate){
        keyValuePair_free(keyPairQuery_endDate);
        keyPairQuery_endDate = NULL;
    }
    if(keyQuery_poolId){
        free(keyQuery_poolId);
        keyQuery_poolId = NULL;
    }
    if(valueQuery_poolId){
        free(valueQuery_poolId);
        valueQuery_poolId = NULL;
    }
    if(keyPairQuery_poolId){
        keyValuePair_free(keyPairQuery_poolId);
        keyPairQuery_poolId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Positions (current)
//
// Gets positions.
//
list_t*
UniswapV3API_uniswapV3GetPositionsCurrent(apiClient_t *apiClient, char * filter_pool_id )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/uniswapv3/positions/current")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/uniswapv3/positions/current");




    // query parameters
    char *keyQuery_filter_pool_id = NULL;
    char * valueQuery_filter_pool_id = NULL;
    keyValuePair_t *keyPairQuery_filter_pool_id = 0;
    if (filter_pool_id)
    {
        keyQuery_filter_pool_id = strdup("filter_pool_id");
        valueQuery_filter_pool_id = strdup((filter_pool_id));
        keyPairQuery_filter_pool_id = keyValuePair_create(keyQuery_filter_pool_id, valueQuery_filter_pool_id);
        list_addElement(localVarQueryParameters,keyPairQuery_filter_pool_id);
    }
    list_addElement(localVarHeaderType,"text/plain"); //produces
    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarHeaderType,"text/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    cJSON *UniswapV3APIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    if(!cJSON_IsArray(UniswapV3APIlocalVarJSON)) {
        return 0;//nonprimitive container
    }
    list_t *elementToReturn = list_createList();
    cJSON *VarJSON;
    cJSON_ArrayForEach(VarJSON, UniswapV3APIlocalVarJSON)
    {
        if(!cJSON_IsObject(VarJSON))
        {
           // return 0;
        }
        char *localVarJSONToChar = cJSON_Print(VarJSON);
        list_addElement(elementToReturn , localVarJSONToChar);
    }

    cJSON_Delete( UniswapV3APIlocalVarJSON);
    cJSON_Delete( VarJSON);
    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    if(keyQuery_filter_pool_id){
        free(keyQuery_filter_pool_id);
        keyQuery_filter_pool_id = NULL;
    }
    if(valueQuery_filter_pool_id){
        free(valueQuery_filter_pool_id);
        valueQuery_filter_pool_id = NULL;
    }
    if(keyPairQuery_filter_pool_id){
        keyValuePair_free(keyPairQuery_filter_pool_id);
        keyPairQuery_filter_pool_id = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Positions (historical)
//
// Gets positions.
//
list_t*
UniswapV3API_uniswapV3GetPositionsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/uniswapv3/positions/historical-manual")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/uniswapv3/positions/historical-manual");




    // query parameters
    char *keyQuery_startBlock = NULL;
    long valueQuery_startBlock ;
    keyValuePair_t *keyPairQuery_startBlock = 0;
    if (startBlock)
    {
        keyQuery_startBlock = strdup("startBlock");
        valueQuery_startBlock = (startBlock);
        keyPairQuery_startBlock = keyValuePair_create(keyQuery_startBlock, &valueQuery_startBlock);
        list_addElement(localVarQueryParameters,keyPairQuery_startBlock);
    }

    // query parameters
    char *keyQuery_endBlock = NULL;
    long valueQuery_endBlock ;
    keyValuePair_t *keyPairQuery_endBlock = 0;
    if (endBlock)
    {
        keyQuery_endBlock = strdup("endBlock");
        valueQuery_endBlock = (endBlock);
        keyPairQuery_endBlock = keyValuePair_create(keyQuery_endBlock, &valueQuery_endBlock);
        list_addElement(localVarQueryParameters,keyPairQuery_endBlock);
    }

    // query parameters
    char *keyQuery_startDate = NULL;
    char valueQuery_startDate ;
    keyValuePair_t *keyPairQuery_startDate = 0;
    if (startDate)
    {
        keyQuery_startDate = strdup("startDate");
        valueQuery_startDate = (startDate);
        keyPairQuery_startDate = keyValuePair_create(keyQuery_startDate, &valueQuery_startDate);
        list_addElement(localVarQueryParameters,keyPairQuery_startDate);
    }

    // query parameters
    char *keyQuery_endDate = NULL;
    char valueQuery_endDate ;
    keyValuePair_t *keyPairQuery_endDate = 0;
    if (endDate)
    {
        keyQuery_endDate = strdup("endDate");
        valueQuery_endDate = (endDate);
        keyPairQuery_endDate = keyValuePair_create(keyQuery_endDate, &valueQuery_endDate);
        list_addElement(localVarQueryParameters,keyPairQuery_endDate);
    }

    // query parameters
    char *keyQuery_poolId = NULL;
    char * valueQuery_poolId = NULL;
    keyValuePair_t *keyPairQuery_poolId = 0;
    if (poolId)
    {
        keyQuery_poolId = strdup("poolId");
        valueQuery_poolId = strdup((poolId));
        keyPairQuery_poolId = keyValuePair_create(keyQuery_poolId, valueQuery_poolId);
        list_addElement(localVarQueryParameters,keyPairQuery_poolId);
    }
    list_addElement(localVarHeaderType,"text/plain"); //produces
    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarHeaderType,"text/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    cJSON *UniswapV3APIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    if(!cJSON_IsArray(UniswapV3APIlocalVarJSON)) {
        return 0;//nonprimitive container
    }
    list_t *elementToReturn = list_createList();
    cJSON *VarJSON;
    cJSON_ArrayForEach(VarJSON, UniswapV3APIlocalVarJSON)
    {
        if(!cJSON_IsObject(VarJSON))
        {
           // return 0;
        }
        char *localVarJSONToChar = cJSON_Print(VarJSON);
        list_addElement(elementToReturn , localVarJSONToChar);
    }

    cJSON_Delete( UniswapV3APIlocalVarJSON);
    cJSON_Delete( VarJSON);
    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    if(keyQuery_startBlock){
        free(keyQuery_startBlock);
        keyQuery_startBlock = NULL;
    }
    if(keyPairQuery_startBlock){
        keyValuePair_free(keyPairQuery_startBlock);
        keyPairQuery_startBlock = NULL;
    }
    if(keyQuery_endBlock){
        free(keyQuery_endBlock);
        keyQuery_endBlock = NULL;
    }
    if(keyPairQuery_endBlock){
        keyValuePair_free(keyPairQuery_endBlock);
        keyPairQuery_endBlock = NULL;
    }
    if(keyQuery_startDate){
        free(keyQuery_startDate);
        keyQuery_startDate = NULL;
    }
    if(keyPairQuery_startDate){
        keyValuePair_free(keyPairQuery_startDate);
        keyPairQuery_startDate = NULL;
    }
    if(keyQuery_endDate){
        free(keyQuery_endDate);
        keyQuery_endDate = NULL;
    }
    if(keyPairQuery_endDate){
        keyValuePair_free(keyPairQuery_endDate);
        keyPairQuery_endDate = NULL;
    }
    if(keyQuery_poolId){
        free(keyQuery_poolId);
        keyQuery_poolId = NULL;
    }
    if(valueQuery_poolId){
        free(valueQuery_poolId);
        valueQuery_poolId = NULL;
    }
    if(keyPairQuery_poolId){
        keyValuePair_free(keyPairQuery_poolId);
        keyPairQuery_poolId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// PositionsSnaphots (historical)
//
// Gets positions snapshots.
//
list_t*
UniswapV3API_uniswapV3GetPositionsSnaphotsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/uniswapv3/positionsSnapshots/historical-manual")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/uniswapv3/positionsSnapshots/historical-manual");




    // query parameters
    char *keyQuery_startBlock = NULL;
    long valueQuery_startBlock ;
    keyValuePair_t *keyPairQuery_startBlock = 0;
    if (startBlock)
    {
        keyQuery_startBlock = strdup("startBlock");
        valueQuery_startBlock = (startBlock);
        keyPairQuery_startBlock = keyValuePair_create(keyQuery_startBlock, &valueQuery_startBlock);
        list_addElement(localVarQueryParameters,keyPairQuery_startBlock);
    }

    // query parameters
    char *keyQuery_endBlock = NULL;
    long valueQuery_endBlock ;
    keyValuePair_t *keyPairQuery_endBlock = 0;
    if (endBlock)
    {
        keyQuery_endBlock = strdup("endBlock");
        valueQuery_endBlock = (endBlock);
        keyPairQuery_endBlock = keyValuePair_create(keyQuery_endBlock, &valueQuery_endBlock);
        list_addElement(localVarQueryParameters,keyPairQuery_endBlock);
    }

    // query parameters
    char *keyQuery_startDate = NULL;
    char valueQuery_startDate ;
    keyValuePair_t *keyPairQuery_startDate = 0;
    if (startDate)
    {
        keyQuery_startDate = strdup("startDate");
        valueQuery_startDate = (startDate);
        keyPairQuery_startDate = keyValuePair_create(keyQuery_startDate, &valueQuery_startDate);
        list_addElement(localVarQueryParameters,keyPairQuery_startDate);
    }

    // query parameters
    char *keyQuery_endDate = NULL;
    char valueQuery_endDate ;
    keyValuePair_t *keyPairQuery_endDate = 0;
    if (endDate)
    {
        keyQuery_endDate = strdup("endDate");
        valueQuery_endDate = (endDate);
        keyPairQuery_endDate = keyValuePair_create(keyQuery_endDate, &valueQuery_endDate);
        list_addElement(localVarQueryParameters,keyPairQuery_endDate);
    }

    // query parameters
    char *keyQuery_poolId = NULL;
    char * valueQuery_poolId = NULL;
    keyValuePair_t *keyPairQuery_poolId = 0;
    if (poolId)
    {
        keyQuery_poolId = strdup("poolId");
        valueQuery_poolId = strdup((poolId));
        keyPairQuery_poolId = keyValuePair_create(keyQuery_poolId, valueQuery_poolId);
        list_addElement(localVarQueryParameters,keyPairQuery_poolId);
    }
    list_addElement(localVarHeaderType,"text/plain"); //produces
    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarHeaderType,"text/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    cJSON *UniswapV3APIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    if(!cJSON_IsArray(UniswapV3APIlocalVarJSON)) {
        return 0;//nonprimitive container
    }
    list_t *elementToReturn = list_createList();
    cJSON *VarJSON;
    cJSON_ArrayForEach(VarJSON, UniswapV3APIlocalVarJSON)
    {
        if(!cJSON_IsObject(VarJSON))
        {
           // return 0;
        }
        char *localVarJSONToChar = cJSON_Print(VarJSON);
        list_addElement(elementToReturn , localVarJSONToChar);
    }

    cJSON_Delete( UniswapV3APIlocalVarJSON);
    cJSON_Delete( VarJSON);
    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    if(keyQuery_startBlock){
        free(keyQuery_startBlock);
        keyQuery_startBlock = NULL;
    }
    if(keyPairQuery_startBlock){
        keyValuePair_free(keyPairQuery_startBlock);
        keyPairQuery_startBlock = NULL;
    }
    if(keyQuery_endBlock){
        free(keyQuery_endBlock);
        keyQuery_endBlock = NULL;
    }
    if(keyPairQuery_endBlock){
        keyValuePair_free(keyPairQuery_endBlock);
        keyPairQuery_endBlock = NULL;
    }
    if(keyQuery_startDate){
        free(keyQuery_startDate);
        keyQuery_startDate = NULL;
    }
    if(keyPairQuery_startDate){
        keyValuePair_free(keyPairQuery_startDate);
        keyPairQuery_startDate = NULL;
    }
    if(keyQuery_endDate){
        free(keyQuery_endDate);
        keyQuery_endDate = NULL;
    }
    if(keyPairQuery_endDate){
        keyValuePair_free(keyPairQuery_endDate);
        keyPairQuery_endDate = NULL;
    }
    if(keyQuery_poolId){
        free(keyQuery_poolId);
        keyQuery_poolId = NULL;
    }
    if(valueQuery_poolId){
        free(valueQuery_poolId);
        valueQuery_poolId = NULL;
    }
    if(keyPairQuery_poolId){
        keyValuePair_free(keyPairQuery_poolId);
        keyPairQuery_poolId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// PositionsSnapshots (current)
//
// Gets positions snapshots.
//
list_t*
UniswapV3API_uniswapV3GetPositionsSnapshotsCurrent(apiClient_t *apiClient, char * filter_pool_id )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/uniswapv3/positionSnapshots/current")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/uniswapv3/positionSnapshots/current");




    // query parameters
    char *keyQuery_filter_pool_id = NULL;
    char * valueQuery_filter_pool_id = NULL;
    keyValuePair_t *keyPairQuery_filter_pool_id = 0;
    if (filter_pool_id)
    {
        keyQuery_filter_pool_id = strdup("filter_pool_id");
        valueQuery_filter_pool_id = strdup((filter_pool_id));
        keyPairQuery_filter_pool_id = keyValuePair_create(keyQuery_filter_pool_id, valueQuery_filter_pool_id);
        list_addElement(localVarQueryParameters,keyPairQuery_filter_pool_id);
    }
    list_addElement(localVarHeaderType,"text/plain"); //produces
    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarHeaderType,"text/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    cJSON *UniswapV3APIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    if(!cJSON_IsArray(UniswapV3APIlocalVarJSON)) {
        return 0;//nonprimitive container
    }
    list_t *elementToReturn = list_createList();
    cJSON *VarJSON;
    cJSON_ArrayForEach(VarJSON, UniswapV3APIlocalVarJSON)
    {
        if(!cJSON_IsObject(VarJSON))
        {
           // return 0;
        }
        char *localVarJSONToChar = cJSON_Print(VarJSON);
        list_addElement(elementToReturn , localVarJSONToChar);
    }

    cJSON_Delete( UniswapV3APIlocalVarJSON);
    cJSON_Delete( VarJSON);
    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    if(keyQuery_filter_pool_id){
        free(keyQuery_filter_pool_id);
        keyQuery_filter_pool_id = NULL;
    }
    if(valueQuery_filter_pool_id){
        free(valueQuery_filter_pool_id);
        valueQuery_filter_pool_id = NULL;
    }
    if(keyPairQuery_filter_pool_id){
        keyValuePair_free(keyPairQuery_filter_pool_id);
        keyPairQuery_filter_pool_id = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Swaps (current) 🔥
//
// Gets swaps.
//
list_t*
UniswapV3API_uniswapV3GetSwapsCurrent(apiClient_t *apiClient, char * filter_pool_id )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/uniswapv3/swaps/current")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/uniswapv3/swaps/current");




    // query parameters
    char *keyQuery_filter_pool_id = NULL;
    char * valueQuery_filter_pool_id = NULL;
    keyValuePair_t *keyPairQuery_filter_pool_id = 0;
    if (filter_pool_id)
    {
        keyQuery_filter_pool_id = strdup("filter_pool_id");
        valueQuery_filter_pool_id = strdup((filter_pool_id));
        keyPairQuery_filter_pool_id = keyValuePair_create(keyQuery_filter_pool_id, valueQuery_filter_pool_id);
        list_addElement(localVarQueryParameters,keyPairQuery_filter_pool_id);
    }
    list_addElement(localVarHeaderType,"text/plain"); //produces
    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarHeaderType,"text/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    cJSON *UniswapV3APIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    if(!cJSON_IsArray(UniswapV3APIlocalVarJSON)) {
        return 0;//nonprimitive container
    }
    list_t *elementToReturn = list_createList();
    cJSON *VarJSON;
    cJSON_ArrayForEach(VarJSON, UniswapV3APIlocalVarJSON)
    {
        if(!cJSON_IsObject(VarJSON))
        {
           // return 0;
        }
        char *localVarJSONToChar = cJSON_Print(VarJSON);
        list_addElement(elementToReturn , localVarJSONToChar);
    }

    cJSON_Delete( UniswapV3APIlocalVarJSON);
    cJSON_Delete( VarJSON);
    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    if(keyQuery_filter_pool_id){
        free(keyQuery_filter_pool_id);
        keyQuery_filter_pool_id = NULL;
    }
    if(valueQuery_filter_pool_id){
        free(valueQuery_filter_pool_id);
        valueQuery_filter_pool_id = NULL;
    }
    if(keyPairQuery_filter_pool_id){
        keyValuePair_free(keyPairQuery_filter_pool_id);
        keyPairQuery_filter_pool_id = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Swaps (historical) 🔥
//
// Gets swaps.
//
list_t*
UniswapV3API_uniswapV3GetSwapsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/uniswapv3/swaps/historical-manual")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/uniswapv3/swaps/historical-manual");




    // query parameters
    char *keyQuery_startBlock = NULL;
    long valueQuery_startBlock ;
    keyValuePair_t *keyPairQuery_startBlock = 0;
    if (startBlock)
    {
        keyQuery_startBlock = strdup("startBlock");
        valueQuery_startBlock = (startBlock);
        keyPairQuery_startBlock = keyValuePair_create(keyQuery_startBlock, &valueQuery_startBlock);
        list_addElement(localVarQueryParameters,keyPairQuery_startBlock);
    }

    // query parameters
    char *keyQuery_endBlock = NULL;
    long valueQuery_endBlock ;
    keyValuePair_t *keyPairQuery_endBlock = 0;
    if (endBlock)
    {
        keyQuery_endBlock = strdup("endBlock");
        valueQuery_endBlock = (endBlock);
        keyPairQuery_endBlock = keyValuePair_create(keyQuery_endBlock, &valueQuery_endBlock);
        list_addElement(localVarQueryParameters,keyPairQuery_endBlock);
    }

    // query parameters
    char *keyQuery_startDate = NULL;
    char valueQuery_startDate ;
    keyValuePair_t *keyPairQuery_startDate = 0;
    if (startDate)
    {
        keyQuery_startDate = strdup("startDate");
        valueQuery_startDate = (startDate);
        keyPairQuery_startDate = keyValuePair_create(keyQuery_startDate, &valueQuery_startDate);
        list_addElement(localVarQueryParameters,keyPairQuery_startDate);
    }

    // query parameters
    char *keyQuery_endDate = NULL;
    char valueQuery_endDate ;
    keyValuePair_t *keyPairQuery_endDate = 0;
    if (endDate)
    {
        keyQuery_endDate = strdup("endDate");
        valueQuery_endDate = (endDate);
        keyPairQuery_endDate = keyValuePair_create(keyQuery_endDate, &valueQuery_endDate);
        list_addElement(localVarQueryParameters,keyPairQuery_endDate);
    }

    // query parameters
    char *keyQuery_poolId = NULL;
    char * valueQuery_poolId = NULL;
    keyValuePair_t *keyPairQuery_poolId = 0;
    if (poolId)
    {
        keyQuery_poolId = strdup("poolId");
        valueQuery_poolId = strdup((poolId));
        keyPairQuery_poolId = keyValuePair_create(keyQuery_poolId, valueQuery_poolId);
        list_addElement(localVarQueryParameters,keyPairQuery_poolId);
    }
    list_addElement(localVarHeaderType,"text/plain"); //produces
    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarHeaderType,"text/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    cJSON *UniswapV3APIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    if(!cJSON_IsArray(UniswapV3APIlocalVarJSON)) {
        return 0;//nonprimitive container
    }
    list_t *elementToReturn = list_createList();
    cJSON *VarJSON;
    cJSON_ArrayForEach(VarJSON, UniswapV3APIlocalVarJSON)
    {
        if(!cJSON_IsObject(VarJSON))
        {
           // return 0;
        }
        char *localVarJSONToChar = cJSON_Print(VarJSON);
        list_addElement(elementToReturn , localVarJSONToChar);
    }

    cJSON_Delete( UniswapV3APIlocalVarJSON);
    cJSON_Delete( VarJSON);
    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    if(keyQuery_startBlock){
        free(keyQuery_startBlock);
        keyQuery_startBlock = NULL;
    }
    if(keyPairQuery_startBlock){
        keyValuePair_free(keyPairQuery_startBlock);
        keyPairQuery_startBlock = NULL;
    }
    if(keyQuery_endBlock){
        free(keyQuery_endBlock);
        keyQuery_endBlock = NULL;
    }
    if(keyPairQuery_endBlock){
        keyValuePair_free(keyPairQuery_endBlock);
        keyPairQuery_endBlock = NULL;
    }
    if(keyQuery_startDate){
        free(keyQuery_startDate);
        keyQuery_startDate = NULL;
    }
    if(keyPairQuery_startDate){
        keyValuePair_free(keyPairQuery_startDate);
        keyPairQuery_startDate = NULL;
    }
    if(keyQuery_endDate){
        free(keyQuery_endDate);
        keyQuery_endDate = NULL;
    }
    if(keyPairQuery_endDate){
        keyValuePair_free(keyPairQuery_endDate);
        keyPairQuery_endDate = NULL;
    }
    if(keyQuery_poolId){
        free(keyQuery_poolId);
        keyQuery_poolId = NULL;
    }
    if(valueQuery_poolId){
        free(valueQuery_poolId);
        valueQuery_poolId = NULL;
    }
    if(keyPairQuery_poolId){
        keyValuePair_free(keyPairQuery_poolId);
        keyPairQuery_poolId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Ticks (current)
//
// Gets ticks.
//
list_t*
UniswapV3API_uniswapV3GetTicksCurrent(apiClient_t *apiClient, char * filter_pool_id )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/uniswapv3/ticks/current")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/uniswapv3/ticks/current");




    // query parameters
    char *keyQuery_filter_pool_id = NULL;
    char * valueQuery_filter_pool_id = NULL;
    keyValuePair_t *keyPairQuery_filter_pool_id = 0;
    if (filter_pool_id)
    {
        keyQuery_filter_pool_id = strdup("filter_pool_id");
        valueQuery_filter_pool_id = strdup((filter_pool_id));
        keyPairQuery_filter_pool_id = keyValuePair_create(keyQuery_filter_pool_id, valueQuery_filter_pool_id);
        list_addElement(localVarQueryParameters,keyPairQuery_filter_pool_id);
    }
    list_addElement(localVarHeaderType,"text/plain"); //produces
    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarHeaderType,"text/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    cJSON *UniswapV3APIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    if(!cJSON_IsArray(UniswapV3APIlocalVarJSON)) {
        return 0;//nonprimitive container
    }
    list_t *elementToReturn = list_createList();
    cJSON *VarJSON;
    cJSON_ArrayForEach(VarJSON, UniswapV3APIlocalVarJSON)
    {
        if(!cJSON_IsObject(VarJSON))
        {
           // return 0;
        }
        char *localVarJSONToChar = cJSON_Print(VarJSON);
        list_addElement(elementToReturn , localVarJSONToChar);
    }

    cJSON_Delete( UniswapV3APIlocalVarJSON);
    cJSON_Delete( VarJSON);
    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    if(keyQuery_filter_pool_id){
        free(keyQuery_filter_pool_id);
        keyQuery_filter_pool_id = NULL;
    }
    if(valueQuery_filter_pool_id){
        free(valueQuery_filter_pool_id);
        valueQuery_filter_pool_id = NULL;
    }
    if(keyPairQuery_filter_pool_id){
        keyValuePair_free(keyPairQuery_filter_pool_id);
        keyPairQuery_filter_pool_id = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// TicksDayData (current)
//
// Gets ticks day data.
//
list_t*
UniswapV3API_uniswapV3GetTicksDayDataCurrent(apiClient_t *apiClient, char * filter_pool_id )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/uniswapv3/ticksDayData/current")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/uniswapv3/ticksDayData/current");




    // query parameters
    char *keyQuery_filter_pool_id = NULL;
    char * valueQuery_filter_pool_id = NULL;
    keyValuePair_t *keyPairQuery_filter_pool_id = 0;
    if (filter_pool_id)
    {
        keyQuery_filter_pool_id = strdup("filter_pool_id");
        valueQuery_filter_pool_id = strdup((filter_pool_id));
        keyPairQuery_filter_pool_id = keyValuePair_create(keyQuery_filter_pool_id, valueQuery_filter_pool_id);
        list_addElement(localVarQueryParameters,keyPairQuery_filter_pool_id);
    }
    list_addElement(localVarHeaderType,"text/plain"); //produces
    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarHeaderType,"text/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    cJSON *UniswapV3APIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    if(!cJSON_IsArray(UniswapV3APIlocalVarJSON)) {
        return 0;//nonprimitive container
    }
    list_t *elementToReturn = list_createList();
    cJSON *VarJSON;
    cJSON_ArrayForEach(VarJSON, UniswapV3APIlocalVarJSON)
    {
        if(!cJSON_IsObject(VarJSON))
        {
           // return 0;
        }
        char *localVarJSONToChar = cJSON_Print(VarJSON);
        list_addElement(elementToReturn , localVarJSONToChar);
    }

    cJSON_Delete( UniswapV3APIlocalVarJSON);
    cJSON_Delete( VarJSON);
    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    if(keyQuery_filter_pool_id){
        free(keyQuery_filter_pool_id);
        keyQuery_filter_pool_id = NULL;
    }
    if(valueQuery_filter_pool_id){
        free(valueQuery_filter_pool_id);
        valueQuery_filter_pool_id = NULL;
    }
    if(keyPairQuery_filter_pool_id){
        keyValuePair_free(keyPairQuery_filter_pool_id);
        keyPairQuery_filter_pool_id = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// TicksDayData (historical)
//
// Gets ticks day data.
//
list_t*
UniswapV3API_uniswapV3GetTicksDayDataHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/uniswapv3/ticksDayData/historical-manual")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/uniswapv3/ticksDayData/historical-manual");




    // query parameters
    char *keyQuery_startBlock = NULL;
    long valueQuery_startBlock ;
    keyValuePair_t *keyPairQuery_startBlock = 0;
    if (startBlock)
    {
        keyQuery_startBlock = strdup("startBlock");
        valueQuery_startBlock = (startBlock);
        keyPairQuery_startBlock = keyValuePair_create(keyQuery_startBlock, &valueQuery_startBlock);
        list_addElement(localVarQueryParameters,keyPairQuery_startBlock);
    }

    // query parameters
    char *keyQuery_endBlock = NULL;
    long valueQuery_endBlock ;
    keyValuePair_t *keyPairQuery_endBlock = 0;
    if (endBlock)
    {
        keyQuery_endBlock = strdup("endBlock");
        valueQuery_endBlock = (endBlock);
        keyPairQuery_endBlock = keyValuePair_create(keyQuery_endBlock, &valueQuery_endBlock);
        list_addElement(localVarQueryParameters,keyPairQuery_endBlock);
    }

    // query parameters
    char *keyQuery_startDate = NULL;
    char valueQuery_startDate ;
    keyValuePair_t *keyPairQuery_startDate = 0;
    if (startDate)
    {
        keyQuery_startDate = strdup("startDate");
        valueQuery_startDate = (startDate);
        keyPairQuery_startDate = keyValuePair_create(keyQuery_startDate, &valueQuery_startDate);
        list_addElement(localVarQueryParameters,keyPairQuery_startDate);
    }

    // query parameters
    char *keyQuery_endDate = NULL;
    char valueQuery_endDate ;
    keyValuePair_t *keyPairQuery_endDate = 0;
    if (endDate)
    {
        keyQuery_endDate = strdup("endDate");
        valueQuery_endDate = (endDate);
        keyPairQuery_endDate = keyValuePair_create(keyQuery_endDate, &valueQuery_endDate);
        list_addElement(localVarQueryParameters,keyPairQuery_endDate);
    }

    // query parameters
    char *keyQuery_poolId = NULL;
    char * valueQuery_poolId = NULL;
    keyValuePair_t *keyPairQuery_poolId = 0;
    if (poolId)
    {
        keyQuery_poolId = strdup("poolId");
        valueQuery_poolId = strdup((poolId));
        keyPairQuery_poolId = keyValuePair_create(keyQuery_poolId, valueQuery_poolId);
        list_addElement(localVarQueryParameters,keyPairQuery_poolId);
    }
    list_addElement(localVarHeaderType,"text/plain"); //produces
    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarHeaderType,"text/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    cJSON *UniswapV3APIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    if(!cJSON_IsArray(UniswapV3APIlocalVarJSON)) {
        return 0;//nonprimitive container
    }
    list_t *elementToReturn = list_createList();
    cJSON *VarJSON;
    cJSON_ArrayForEach(VarJSON, UniswapV3APIlocalVarJSON)
    {
        if(!cJSON_IsObject(VarJSON))
        {
           // return 0;
        }
        char *localVarJSONToChar = cJSON_Print(VarJSON);
        list_addElement(elementToReturn , localVarJSONToChar);
    }

    cJSON_Delete( UniswapV3APIlocalVarJSON);
    cJSON_Delete( VarJSON);
    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    if(keyQuery_startBlock){
        free(keyQuery_startBlock);
        keyQuery_startBlock = NULL;
    }
    if(keyPairQuery_startBlock){
        keyValuePair_free(keyPairQuery_startBlock);
        keyPairQuery_startBlock = NULL;
    }
    if(keyQuery_endBlock){
        free(keyQuery_endBlock);
        keyQuery_endBlock = NULL;
    }
    if(keyPairQuery_endBlock){
        keyValuePair_free(keyPairQuery_endBlock);
        keyPairQuery_endBlock = NULL;
    }
    if(keyQuery_startDate){
        free(keyQuery_startDate);
        keyQuery_startDate = NULL;
    }
    if(keyPairQuery_startDate){
        keyValuePair_free(keyPairQuery_startDate);
        keyPairQuery_startDate = NULL;
    }
    if(keyQuery_endDate){
        free(keyQuery_endDate);
        keyQuery_endDate = NULL;
    }
    if(keyPairQuery_endDate){
        keyValuePair_free(keyPairQuery_endDate);
        keyPairQuery_endDate = NULL;
    }
    if(keyQuery_poolId){
        free(keyQuery_poolId);
        keyQuery_poolId = NULL;
    }
    if(valueQuery_poolId){
        free(valueQuery_poolId);
        valueQuery_poolId = NULL;
    }
    if(keyPairQuery_poolId){
        keyValuePair_free(keyPairQuery_poolId);
        keyPairQuery_poolId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Ticks (historical)
//
// Gets ticks.
//
list_t*
UniswapV3API_uniswapV3GetTicksHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/uniswapv3/ticks/historical-manual")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/uniswapv3/ticks/historical-manual");




    // query parameters
    char *keyQuery_startBlock = NULL;
    long valueQuery_startBlock ;
    keyValuePair_t *keyPairQuery_startBlock = 0;
    if (startBlock)
    {
        keyQuery_startBlock = strdup("startBlock");
        valueQuery_startBlock = (startBlock);
        keyPairQuery_startBlock = keyValuePair_create(keyQuery_startBlock, &valueQuery_startBlock);
        list_addElement(localVarQueryParameters,keyPairQuery_startBlock);
    }

    // query parameters
    char *keyQuery_endBlock = NULL;
    long valueQuery_endBlock ;
    keyValuePair_t *keyPairQuery_endBlock = 0;
    if (endBlock)
    {
        keyQuery_endBlock = strdup("endBlock");
        valueQuery_endBlock = (endBlock);
        keyPairQuery_endBlock = keyValuePair_create(keyQuery_endBlock, &valueQuery_endBlock);
        list_addElement(localVarQueryParameters,keyPairQuery_endBlock);
    }

    // query parameters
    char *keyQuery_startDate = NULL;
    char valueQuery_startDate ;
    keyValuePair_t *keyPairQuery_startDate = 0;
    if (startDate)
    {
        keyQuery_startDate = strdup("startDate");
        valueQuery_startDate = (startDate);
        keyPairQuery_startDate = keyValuePair_create(keyQuery_startDate, &valueQuery_startDate);
        list_addElement(localVarQueryParameters,keyPairQuery_startDate);
    }

    // query parameters
    char *keyQuery_endDate = NULL;
    char valueQuery_endDate ;
    keyValuePair_t *keyPairQuery_endDate = 0;
    if (endDate)
    {
        keyQuery_endDate = strdup("endDate");
        valueQuery_endDate = (endDate);
        keyPairQuery_endDate = keyValuePair_create(keyQuery_endDate, &valueQuery_endDate);
        list_addElement(localVarQueryParameters,keyPairQuery_endDate);
    }

    // query parameters
    char *keyQuery_poolId = NULL;
    char * valueQuery_poolId = NULL;
    keyValuePair_t *keyPairQuery_poolId = 0;
    if (poolId)
    {
        keyQuery_poolId = strdup("poolId");
        valueQuery_poolId = strdup((poolId));
        keyPairQuery_poolId = keyValuePair_create(keyQuery_poolId, valueQuery_poolId);
        list_addElement(localVarQueryParameters,keyPairQuery_poolId);
    }
    list_addElement(localVarHeaderType,"text/plain"); //produces
    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarHeaderType,"text/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    cJSON *UniswapV3APIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    if(!cJSON_IsArray(UniswapV3APIlocalVarJSON)) {
        return 0;//nonprimitive container
    }
    list_t *elementToReturn = list_createList();
    cJSON *VarJSON;
    cJSON_ArrayForEach(VarJSON, UniswapV3APIlocalVarJSON)
    {
        if(!cJSON_IsObject(VarJSON))
        {
           // return 0;
        }
        char *localVarJSONToChar = cJSON_Print(VarJSON);
        list_addElement(elementToReturn , localVarJSONToChar);
    }

    cJSON_Delete( UniswapV3APIlocalVarJSON);
    cJSON_Delete( VarJSON);
    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    if(keyQuery_startBlock){
        free(keyQuery_startBlock);
        keyQuery_startBlock = NULL;
    }
    if(keyPairQuery_startBlock){
        keyValuePair_free(keyPairQuery_startBlock);
        keyPairQuery_startBlock = NULL;
    }
    if(keyQuery_endBlock){
        free(keyQuery_endBlock);
        keyQuery_endBlock = NULL;
    }
    if(keyPairQuery_endBlock){
        keyValuePair_free(keyPairQuery_endBlock);
        keyPairQuery_endBlock = NULL;
    }
    if(keyQuery_startDate){
        free(keyQuery_startDate);
        keyQuery_startDate = NULL;
    }
    if(keyPairQuery_startDate){
        keyValuePair_free(keyPairQuery_startDate);
        keyPairQuery_startDate = NULL;
    }
    if(keyQuery_endDate){
        free(keyQuery_endDate);
        keyQuery_endDate = NULL;
    }
    if(keyPairQuery_endDate){
        keyValuePair_free(keyPairQuery_endDate);
        keyPairQuery_endDate = NULL;
    }
    if(keyQuery_poolId){
        free(keyQuery_poolId);
        keyQuery_poolId = NULL;
    }
    if(valueQuery_poolId){
        free(valueQuery_poolId);
        valueQuery_poolId = NULL;
    }
    if(keyPairQuery_poolId){
        keyValuePair_free(keyPairQuery_poolId);
        keyPairQuery_poolId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Tokens (current) 🔥
//
// Gets tokens.
//
list_t*
UniswapV3API_uniswapV3GetTokensCurrent(apiClient_t *apiClient, char * filter_token_id )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/uniswapv3/tokens/current")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/uniswapv3/tokens/current");




    // query parameters
    char *keyQuery_filter_token_id = NULL;
    char * valueQuery_filter_token_id = NULL;
    keyValuePair_t *keyPairQuery_filter_token_id = 0;
    if (filter_token_id)
    {
        keyQuery_filter_token_id = strdup("filter_token_id");
        valueQuery_filter_token_id = strdup((filter_token_id));
        keyPairQuery_filter_token_id = keyValuePair_create(keyQuery_filter_token_id, valueQuery_filter_token_id);
        list_addElement(localVarQueryParameters,keyPairQuery_filter_token_id);
    }
    list_addElement(localVarHeaderType,"text/plain"); //produces
    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarHeaderType,"text/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    cJSON *UniswapV3APIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    if(!cJSON_IsArray(UniswapV3APIlocalVarJSON)) {
        return 0;//nonprimitive container
    }
    list_t *elementToReturn = list_createList();
    cJSON *VarJSON;
    cJSON_ArrayForEach(VarJSON, UniswapV3APIlocalVarJSON)
    {
        if(!cJSON_IsObject(VarJSON))
        {
           // return 0;
        }
        char *localVarJSONToChar = cJSON_Print(VarJSON);
        list_addElement(elementToReturn , localVarJSONToChar);
    }

    cJSON_Delete( UniswapV3APIlocalVarJSON);
    cJSON_Delete( VarJSON);
    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    if(keyQuery_filter_token_id){
        free(keyQuery_filter_token_id);
        keyQuery_filter_token_id = NULL;
    }
    if(valueQuery_filter_token_id){
        free(valueQuery_filter_token_id);
        valueQuery_filter_token_id = NULL;
    }
    if(keyPairQuery_filter_token_id){
        keyValuePair_free(keyPairQuery_filter_token_id);
        keyPairQuery_filter_token_id = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// TokensDayData (current)
//
// Gets tokens day data.
//
list_t*
UniswapV3API_uniswapV3GetTokensDayDataCurrent(apiClient_t *apiClient, char * filter_token_id )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/uniswapv3/tokensDayData/current")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/uniswapv3/tokensDayData/current");




    // query parameters
    char *keyQuery_filter_token_id = NULL;
    char * valueQuery_filter_token_id = NULL;
    keyValuePair_t *keyPairQuery_filter_token_id = 0;
    if (filter_token_id)
    {
        keyQuery_filter_token_id = strdup("filter_token_id");
        valueQuery_filter_token_id = strdup((filter_token_id));
        keyPairQuery_filter_token_id = keyValuePair_create(keyQuery_filter_token_id, valueQuery_filter_token_id);
        list_addElement(localVarQueryParameters,keyPairQuery_filter_token_id);
    }
    list_addElement(localVarHeaderType,"text/plain"); //produces
    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarHeaderType,"text/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    cJSON *UniswapV3APIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    if(!cJSON_IsArray(UniswapV3APIlocalVarJSON)) {
        return 0;//nonprimitive container
    }
    list_t *elementToReturn = list_createList();
    cJSON *VarJSON;
    cJSON_ArrayForEach(VarJSON, UniswapV3APIlocalVarJSON)
    {
        if(!cJSON_IsObject(VarJSON))
        {
           // return 0;
        }
        char *localVarJSONToChar = cJSON_Print(VarJSON);
        list_addElement(elementToReturn , localVarJSONToChar);
    }

    cJSON_Delete( UniswapV3APIlocalVarJSON);
    cJSON_Delete( VarJSON);
    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    if(keyQuery_filter_token_id){
        free(keyQuery_filter_token_id);
        keyQuery_filter_token_id = NULL;
    }
    if(valueQuery_filter_token_id){
        free(valueQuery_filter_token_id);
        valueQuery_filter_token_id = NULL;
    }
    if(keyPairQuery_filter_token_id){
        keyValuePair_free(keyPairQuery_filter_token_id);
        keyPairQuery_filter_token_id = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// TokensDayData (historical)
//
// Gets tokens day data.
//
list_t*
UniswapV3API_uniswapV3GetTokensDayDataHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * tokenId )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/uniswapv3/tokensDayData/historical-manual")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/uniswapv3/tokensDayData/historical-manual");




    // query parameters
    char *keyQuery_startBlock = NULL;
    long valueQuery_startBlock ;
    keyValuePair_t *keyPairQuery_startBlock = 0;
    if (startBlock)
    {
        keyQuery_startBlock = strdup("startBlock");
        valueQuery_startBlock = (startBlock);
        keyPairQuery_startBlock = keyValuePair_create(keyQuery_startBlock, &valueQuery_startBlock);
        list_addElement(localVarQueryParameters,keyPairQuery_startBlock);
    }

    // query parameters
    char *keyQuery_endBlock = NULL;
    long valueQuery_endBlock ;
    keyValuePair_t *keyPairQuery_endBlock = 0;
    if (endBlock)
    {
        keyQuery_endBlock = strdup("endBlock");
        valueQuery_endBlock = (endBlock);
        keyPairQuery_endBlock = keyValuePair_create(keyQuery_endBlock, &valueQuery_endBlock);
        list_addElement(localVarQueryParameters,keyPairQuery_endBlock);
    }

    // query parameters
    char *keyQuery_startDate = NULL;
    char valueQuery_startDate ;
    keyValuePair_t *keyPairQuery_startDate = 0;
    if (startDate)
    {
        keyQuery_startDate = strdup("startDate");
        valueQuery_startDate = (startDate);
        keyPairQuery_startDate = keyValuePair_create(keyQuery_startDate, &valueQuery_startDate);
        list_addElement(localVarQueryParameters,keyPairQuery_startDate);
    }

    // query parameters
    char *keyQuery_endDate = NULL;
    char valueQuery_endDate ;
    keyValuePair_t *keyPairQuery_endDate = 0;
    if (endDate)
    {
        keyQuery_endDate = strdup("endDate");
        valueQuery_endDate = (endDate);
        keyPairQuery_endDate = keyValuePair_create(keyQuery_endDate, &valueQuery_endDate);
        list_addElement(localVarQueryParameters,keyPairQuery_endDate);
    }

    // query parameters
    char *keyQuery_tokenId = NULL;
    char * valueQuery_tokenId = NULL;
    keyValuePair_t *keyPairQuery_tokenId = 0;
    if (tokenId)
    {
        keyQuery_tokenId = strdup("tokenId");
        valueQuery_tokenId = strdup((tokenId));
        keyPairQuery_tokenId = keyValuePair_create(keyQuery_tokenId, valueQuery_tokenId);
        list_addElement(localVarQueryParameters,keyPairQuery_tokenId);
    }
    list_addElement(localVarHeaderType,"text/plain"); //produces
    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarHeaderType,"text/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    cJSON *UniswapV3APIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    if(!cJSON_IsArray(UniswapV3APIlocalVarJSON)) {
        return 0;//nonprimitive container
    }
    list_t *elementToReturn = list_createList();
    cJSON *VarJSON;
    cJSON_ArrayForEach(VarJSON, UniswapV3APIlocalVarJSON)
    {
        if(!cJSON_IsObject(VarJSON))
        {
           // return 0;
        }
        char *localVarJSONToChar = cJSON_Print(VarJSON);
        list_addElement(elementToReturn , localVarJSONToChar);
    }

    cJSON_Delete( UniswapV3APIlocalVarJSON);
    cJSON_Delete( VarJSON);
    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    if(keyQuery_startBlock){
        free(keyQuery_startBlock);
        keyQuery_startBlock = NULL;
    }
    if(keyPairQuery_startBlock){
        keyValuePair_free(keyPairQuery_startBlock);
        keyPairQuery_startBlock = NULL;
    }
    if(keyQuery_endBlock){
        free(keyQuery_endBlock);
        keyQuery_endBlock = NULL;
    }
    if(keyPairQuery_endBlock){
        keyValuePair_free(keyPairQuery_endBlock);
        keyPairQuery_endBlock = NULL;
    }
    if(keyQuery_startDate){
        free(keyQuery_startDate);
        keyQuery_startDate = NULL;
    }
    if(keyPairQuery_startDate){
        keyValuePair_free(keyPairQuery_startDate);
        keyPairQuery_startDate = NULL;
    }
    if(keyQuery_endDate){
        free(keyQuery_endDate);
        keyQuery_endDate = NULL;
    }
    if(keyPairQuery_endDate){
        keyValuePair_free(keyPairQuery_endDate);
        keyPairQuery_endDate = NULL;
    }
    if(keyQuery_tokenId){
        free(keyQuery_tokenId);
        keyQuery_tokenId = NULL;
    }
    if(valueQuery_tokenId){
        free(valueQuery_tokenId);
        valueQuery_tokenId = NULL;
    }
    if(keyPairQuery_tokenId){
        keyValuePair_free(keyPairQuery_tokenId);
        keyPairQuery_tokenId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Tokens (historical) 🔥
//
// Gets tokens.
//
list_t*
UniswapV3API_uniswapV3GetTokensHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * tokenId )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/uniswapv3/tokens/historical-manual")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/uniswapv3/tokens/historical-manual");




    // query parameters
    char *keyQuery_startBlock = NULL;
    long valueQuery_startBlock ;
    keyValuePair_t *keyPairQuery_startBlock = 0;
    if (startBlock)
    {
        keyQuery_startBlock = strdup("startBlock");
        valueQuery_startBlock = (startBlock);
        keyPairQuery_startBlock = keyValuePair_create(keyQuery_startBlock, &valueQuery_startBlock);
        list_addElement(localVarQueryParameters,keyPairQuery_startBlock);
    }

    // query parameters
    char *keyQuery_endBlock = NULL;
    long valueQuery_endBlock ;
    keyValuePair_t *keyPairQuery_endBlock = 0;
    if (endBlock)
    {
        keyQuery_endBlock = strdup("endBlock");
        valueQuery_endBlock = (endBlock);
        keyPairQuery_endBlock = keyValuePair_create(keyQuery_endBlock, &valueQuery_endBlock);
        list_addElement(localVarQueryParameters,keyPairQuery_endBlock);
    }

    // query parameters
    char *keyQuery_startDate = NULL;
    char valueQuery_startDate ;
    keyValuePair_t *keyPairQuery_startDate = 0;
    if (startDate)
    {
        keyQuery_startDate = strdup("startDate");
        valueQuery_startDate = (startDate);
        keyPairQuery_startDate = keyValuePair_create(keyQuery_startDate, &valueQuery_startDate);
        list_addElement(localVarQueryParameters,keyPairQuery_startDate);
    }

    // query parameters
    char *keyQuery_endDate = NULL;
    char valueQuery_endDate ;
    keyValuePair_t *keyPairQuery_endDate = 0;
    if (endDate)
    {
        keyQuery_endDate = strdup("endDate");
        valueQuery_endDate = (endDate);
        keyPairQuery_endDate = keyValuePair_create(keyQuery_endDate, &valueQuery_endDate);
        list_addElement(localVarQueryParameters,keyPairQuery_endDate);
    }

    // query parameters
    char *keyQuery_tokenId = NULL;
    char * valueQuery_tokenId = NULL;
    keyValuePair_t *keyPairQuery_tokenId = 0;
    if (tokenId)
    {
        keyQuery_tokenId = strdup("tokenId");
        valueQuery_tokenId = strdup((tokenId));
        keyPairQuery_tokenId = keyValuePair_create(keyQuery_tokenId, valueQuery_tokenId);
        list_addElement(localVarQueryParameters,keyPairQuery_tokenId);
    }
    list_addElement(localVarHeaderType,"text/plain"); //produces
    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarHeaderType,"text/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    cJSON *UniswapV3APIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    if(!cJSON_IsArray(UniswapV3APIlocalVarJSON)) {
        return 0;//nonprimitive container
    }
    list_t *elementToReturn = list_createList();
    cJSON *VarJSON;
    cJSON_ArrayForEach(VarJSON, UniswapV3APIlocalVarJSON)
    {
        if(!cJSON_IsObject(VarJSON))
        {
           // return 0;
        }
        char *localVarJSONToChar = cJSON_Print(VarJSON);
        list_addElement(elementToReturn , localVarJSONToChar);
    }

    cJSON_Delete( UniswapV3APIlocalVarJSON);
    cJSON_Delete( VarJSON);
    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    if(keyQuery_startBlock){
        free(keyQuery_startBlock);
        keyQuery_startBlock = NULL;
    }
    if(keyPairQuery_startBlock){
        keyValuePair_free(keyPairQuery_startBlock);
        keyPairQuery_startBlock = NULL;
    }
    if(keyQuery_endBlock){
        free(keyQuery_endBlock);
        keyQuery_endBlock = NULL;
    }
    if(keyPairQuery_endBlock){
        keyValuePair_free(keyPairQuery_endBlock);
        keyPairQuery_endBlock = NULL;
    }
    if(keyQuery_startDate){
        free(keyQuery_startDate);
        keyQuery_startDate = NULL;
    }
    if(keyPairQuery_startDate){
        keyValuePair_free(keyPairQuery_startDate);
        keyPairQuery_startDate = NULL;
    }
    if(keyQuery_endDate){
        free(keyQuery_endDate);
        keyQuery_endDate = NULL;
    }
    if(keyPairQuery_endDate){
        keyValuePair_free(keyPairQuery_endDate);
        keyPairQuery_endDate = NULL;
    }
    if(keyQuery_tokenId){
        free(keyQuery_tokenId);
        keyQuery_tokenId = NULL;
    }
    if(valueQuery_tokenId){
        free(valueQuery_tokenId);
        valueQuery_tokenId = NULL;
    }
    if(keyPairQuery_tokenId){
        keyValuePair_free(keyPairQuery_tokenId);
        keyPairQuery_tokenId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// TokensHourData (current)
//
// Gets tokens hour data.
//
list_t*
UniswapV3API_uniswapV3GetTokensHourDataCurrent(apiClient_t *apiClient, char * filter_token_id )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/uniswapv3/tokensHourData/current")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/uniswapv3/tokensHourData/current");




    // query parameters
    char *keyQuery_filter_token_id = NULL;
    char * valueQuery_filter_token_id = NULL;
    keyValuePair_t *keyPairQuery_filter_token_id = 0;
    if (filter_token_id)
    {
        keyQuery_filter_token_id = strdup("filter_token_id");
        valueQuery_filter_token_id = strdup((filter_token_id));
        keyPairQuery_filter_token_id = keyValuePair_create(keyQuery_filter_token_id, valueQuery_filter_token_id);
        list_addElement(localVarQueryParameters,keyPairQuery_filter_token_id);
    }
    list_addElement(localVarHeaderType,"text/plain"); //produces
    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarHeaderType,"text/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    cJSON *UniswapV3APIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    if(!cJSON_IsArray(UniswapV3APIlocalVarJSON)) {
        return 0;//nonprimitive container
    }
    list_t *elementToReturn = list_createList();
    cJSON *VarJSON;
    cJSON_ArrayForEach(VarJSON, UniswapV3APIlocalVarJSON)
    {
        if(!cJSON_IsObject(VarJSON))
        {
           // return 0;
        }
        char *localVarJSONToChar = cJSON_Print(VarJSON);
        list_addElement(elementToReturn , localVarJSONToChar);
    }

    cJSON_Delete( UniswapV3APIlocalVarJSON);
    cJSON_Delete( VarJSON);
    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    if(keyQuery_filter_token_id){
        free(keyQuery_filter_token_id);
        keyQuery_filter_token_id = NULL;
    }
    if(valueQuery_filter_token_id){
        free(valueQuery_filter_token_id);
        valueQuery_filter_token_id = NULL;
    }
    if(keyPairQuery_filter_token_id){
        keyValuePair_free(keyPairQuery_filter_token_id);
        keyPairQuery_filter_token_id = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// TokensHourData (historical)
//
// Gets tokens hour data.
//
list_t*
UniswapV3API_uniswapV3GetTokensHourDataHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * tokenId )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/uniswapv3/tokensHourData/historical-manual")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/uniswapv3/tokensHourData/historical-manual");




    // query parameters
    char *keyQuery_startBlock = NULL;
    long valueQuery_startBlock ;
    keyValuePair_t *keyPairQuery_startBlock = 0;
    if (startBlock)
    {
        keyQuery_startBlock = strdup("startBlock");
        valueQuery_startBlock = (startBlock);
        keyPairQuery_startBlock = keyValuePair_create(keyQuery_startBlock, &valueQuery_startBlock);
        list_addElement(localVarQueryParameters,keyPairQuery_startBlock);
    }

    // query parameters
    char *keyQuery_endBlock = NULL;
    long valueQuery_endBlock ;
    keyValuePair_t *keyPairQuery_endBlock = 0;
    if (endBlock)
    {
        keyQuery_endBlock = strdup("endBlock");
        valueQuery_endBlock = (endBlock);
        keyPairQuery_endBlock = keyValuePair_create(keyQuery_endBlock, &valueQuery_endBlock);
        list_addElement(localVarQueryParameters,keyPairQuery_endBlock);
    }

    // query parameters
    char *keyQuery_startDate = NULL;
    char valueQuery_startDate ;
    keyValuePair_t *keyPairQuery_startDate = 0;
    if (startDate)
    {
        keyQuery_startDate = strdup("startDate");
        valueQuery_startDate = (startDate);
        keyPairQuery_startDate = keyValuePair_create(keyQuery_startDate, &valueQuery_startDate);
        list_addElement(localVarQueryParameters,keyPairQuery_startDate);
    }

    // query parameters
    char *keyQuery_endDate = NULL;
    char valueQuery_endDate ;
    keyValuePair_t *keyPairQuery_endDate = 0;
    if (endDate)
    {
        keyQuery_endDate = strdup("endDate");
        valueQuery_endDate = (endDate);
        keyPairQuery_endDate = keyValuePair_create(keyQuery_endDate, &valueQuery_endDate);
        list_addElement(localVarQueryParameters,keyPairQuery_endDate);
    }

    // query parameters
    char *keyQuery_tokenId = NULL;
    char * valueQuery_tokenId = NULL;
    keyValuePair_t *keyPairQuery_tokenId = 0;
    if (tokenId)
    {
        keyQuery_tokenId = strdup("tokenId");
        valueQuery_tokenId = strdup((tokenId));
        keyPairQuery_tokenId = keyValuePair_create(keyQuery_tokenId, valueQuery_tokenId);
        list_addElement(localVarQueryParameters,keyPairQuery_tokenId);
    }
    list_addElement(localVarHeaderType,"text/plain"); //produces
    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarHeaderType,"text/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    cJSON *UniswapV3APIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    if(!cJSON_IsArray(UniswapV3APIlocalVarJSON)) {
        return 0;//nonprimitive container
    }
    list_t *elementToReturn = list_createList();
    cJSON *VarJSON;
    cJSON_ArrayForEach(VarJSON, UniswapV3APIlocalVarJSON)
    {
        if(!cJSON_IsObject(VarJSON))
        {
           // return 0;
        }
        char *localVarJSONToChar = cJSON_Print(VarJSON);
        list_addElement(elementToReturn , localVarJSONToChar);
    }

    cJSON_Delete( UniswapV3APIlocalVarJSON);
    cJSON_Delete( VarJSON);
    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    if(keyQuery_startBlock){
        free(keyQuery_startBlock);
        keyQuery_startBlock = NULL;
    }
    if(keyPairQuery_startBlock){
        keyValuePair_free(keyPairQuery_startBlock);
        keyPairQuery_startBlock = NULL;
    }
    if(keyQuery_endBlock){
        free(keyQuery_endBlock);
        keyQuery_endBlock = NULL;
    }
    if(keyPairQuery_endBlock){
        keyValuePair_free(keyPairQuery_endBlock);
        keyPairQuery_endBlock = NULL;
    }
    if(keyQuery_startDate){
        free(keyQuery_startDate);
        keyQuery_startDate = NULL;
    }
    if(keyPairQuery_startDate){
        keyValuePair_free(keyPairQuery_startDate);
        keyPairQuery_startDate = NULL;
    }
    if(keyQuery_endDate){
        free(keyQuery_endDate);
        keyQuery_endDate = NULL;
    }
    if(keyPairQuery_endDate){
        keyValuePair_free(keyPairQuery_endDate);
        keyPairQuery_endDate = NULL;
    }
    if(keyQuery_tokenId){
        free(keyQuery_tokenId);
        keyQuery_tokenId = NULL;
    }
    if(valueQuery_tokenId){
        free(valueQuery_tokenId);
        valueQuery_tokenId = NULL;
    }
    if(keyPairQuery_tokenId){
        keyValuePair_free(keyPairQuery_tokenId);
        keyPairQuery_tokenId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Transactions (historical)
//
// Gets transactions.
//
list_t*
UniswapV3API_uniswapV3GetTransactionsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/uniswapv3/transactions/historical-manual")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/uniswapv3/transactions/historical-manual");




    // query parameters
    char *keyQuery_startBlock = NULL;
    long valueQuery_startBlock ;
    keyValuePair_t *keyPairQuery_startBlock = 0;
    if (startBlock)
    {
        keyQuery_startBlock = strdup("startBlock");
        valueQuery_startBlock = (startBlock);
        keyPairQuery_startBlock = keyValuePair_create(keyQuery_startBlock, &valueQuery_startBlock);
        list_addElement(localVarQueryParameters,keyPairQuery_startBlock);
    }

    // query parameters
    char *keyQuery_endBlock = NULL;
    long valueQuery_endBlock ;
    keyValuePair_t *keyPairQuery_endBlock = 0;
    if (endBlock)
    {
        keyQuery_endBlock = strdup("endBlock");
        valueQuery_endBlock = (endBlock);
        keyPairQuery_endBlock = keyValuePair_create(keyQuery_endBlock, &valueQuery_endBlock);
        list_addElement(localVarQueryParameters,keyPairQuery_endBlock);
    }

    // query parameters
    char *keyQuery_startDate = NULL;
    char valueQuery_startDate ;
    keyValuePair_t *keyPairQuery_startDate = 0;
    if (startDate)
    {
        keyQuery_startDate = strdup("startDate");
        valueQuery_startDate = (startDate);
        keyPairQuery_startDate = keyValuePair_create(keyQuery_startDate, &valueQuery_startDate);
        list_addElement(localVarQueryParameters,keyPairQuery_startDate);
    }

    // query parameters
    char *keyQuery_endDate = NULL;
    char valueQuery_endDate ;
    keyValuePair_t *keyPairQuery_endDate = 0;
    if (endDate)
    {
        keyQuery_endDate = strdup("endDate");
        valueQuery_endDate = (endDate);
        keyPairQuery_endDate = keyValuePair_create(keyQuery_endDate, &valueQuery_endDate);
        list_addElement(localVarQueryParameters,keyPairQuery_endDate);
    }
    list_addElement(localVarHeaderType,"text/plain"); //produces
    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarHeaderType,"text/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    cJSON *UniswapV3APIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    if(!cJSON_IsArray(UniswapV3APIlocalVarJSON)) {
        return 0;//nonprimitive container
    }
    list_t *elementToReturn = list_createList();
    cJSON *VarJSON;
    cJSON_ArrayForEach(VarJSON, UniswapV3APIlocalVarJSON)
    {
        if(!cJSON_IsObject(VarJSON))
        {
           // return 0;
        }
        char *localVarJSONToChar = cJSON_Print(VarJSON);
        list_addElement(elementToReturn , localVarJSONToChar);
    }

    cJSON_Delete( UniswapV3APIlocalVarJSON);
    cJSON_Delete( VarJSON);
    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    if(keyQuery_startBlock){
        free(keyQuery_startBlock);
        keyQuery_startBlock = NULL;
    }
    if(keyPairQuery_startBlock){
        keyValuePair_free(keyPairQuery_startBlock);
        keyPairQuery_startBlock = NULL;
    }
    if(keyQuery_endBlock){
        free(keyQuery_endBlock);
        keyQuery_endBlock = NULL;
    }
    if(keyPairQuery_endBlock){
        keyValuePair_free(keyPairQuery_endBlock);
        keyPairQuery_endBlock = NULL;
    }
    if(keyQuery_startDate){
        free(keyQuery_startDate);
        keyQuery_startDate = NULL;
    }
    if(keyPairQuery_startDate){
        keyValuePair_free(keyPairQuery_startDate);
        keyPairQuery_startDate = NULL;
    }
    if(keyQuery_endDate){
        free(keyQuery_endDate);
        keyQuery_endDate = NULL;
    }
    if(keyPairQuery_endDate){
        keyValuePair_free(keyPairQuery_endDate);
        keyPairQuery_endDate = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

