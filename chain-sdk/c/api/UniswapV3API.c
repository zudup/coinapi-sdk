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


// GetBundles
//
list_t*
UniswapV3API_dappsUniswapv3BundleCurrentGet(apiClient_t *apiClient)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/uniswapv3/bundle/current")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/uniswapv3/bundle/current");



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

void
UniswapV3API_dappsUniswapv3BundlesHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/uniswapv3/bundles/historical")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/uniswapv3/bundles/historical");




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
    //    printf("%s\n","Success");
    //}
    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    
    
    free(localVarPath);

}

// GetBurns
//
list_t*
UniswapV3API_dappsUniswapv3BurnsCurrentGet(apiClient_t *apiClient, char * filter_pool_id )
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

void
UniswapV3API_dappsUniswapv3BurnsHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/uniswapv3/burns/historical")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/uniswapv3/burns/historical");




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
    //    printf("%s\n","Success");
    //}
    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    
    
    free(localVarPath);
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
    if(keyQuery_poolId){
        free(keyQuery_poolId);
        keyQuery_poolId = NULL;
    }
    if(keyPairQuery_poolId){
        keyValuePair_free(keyPairQuery_poolId);
        keyPairQuery_poolId = NULL;
    }

}

void
UniswapV3API_dappsUniswapv3DayDataHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/uniswapv3/dayData/historical")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/uniswapv3/dayData/historical");




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
    //    printf("%s\n","Success");
    //}
    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    
    
    free(localVarPath);

}

// GetFactory
//
list_t*
UniswapV3API_dappsUniswapv3FactoryCurrentGet(apiClient_t *apiClient, char * chain_id )
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


    // Path Params
    long sizeOfPathParams_chain_id = strlen(chain_id)+3 + strlen("{ chain_id }");
    if(chain_id == NULL) {
        goto end;
    }
    char* localVarToReplace_chain_id = malloc(sizeOfPathParams_chain_id);
    sprintf(localVarToReplace_chain_id, "{%s}", "chain_id");

    localVarPath = strReplace(localVarPath, localVarToReplace_chain_id, chain_id);


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
    free(localVarToReplace_chain_id);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

void
UniswapV3API_dappsUniswapv3FactoryHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/uniswapv3/factory/historical")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/uniswapv3/factory/historical");




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
    //    printf("%s\n","Success");
    //}
    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    
    
    free(localVarPath);

}

// GetMints
//
list_t*
UniswapV3API_dappsUniswapv3MintsCurrentGet(apiClient_t *apiClient, char * filter_pool_id )
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

void
UniswapV3API_dappsUniswapv3MintsHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/uniswapv3/mints/historical")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/uniswapv3/mints/historical");




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
    //    printf("%s\n","Success");
    //}
    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    
    
    free(localVarPath);
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
    if(keyQuery_poolId){
        free(keyQuery_poolId);
        keyQuery_poolId = NULL;
    }
    if(keyPairQuery_poolId){
        keyValuePair_free(keyPairQuery_poolId);
        keyPairQuery_poolId = NULL;
    }

}

void
UniswapV3API_dappsUniswapv3PoiHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/uniswapv3/poi/historical")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/uniswapv3/poi/historical");




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
    //    printf("%s\n","Success");
    //}
    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    
    
    free(localVarPath);

}

void
UniswapV3API_dappsUniswapv3PoolDayDataHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/uniswapv3/poolDayData/historical")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/uniswapv3/poolDayData/historical");




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
    //    printf("%s\n","Success");
    //}
    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    
    
    free(localVarPath);
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
    if(keyQuery_poolId){
        free(keyQuery_poolId);
        keyQuery_poolId = NULL;
    }
    if(keyPairQuery_poolId){
        keyValuePair_free(keyPairQuery_poolId);
        keyPairQuery_poolId = NULL;
    }

}

void
UniswapV3API_dappsUniswapv3PoolHourDataHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/uniswapv3/poolHourData/historical")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/uniswapv3/poolHourData/historical");




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
    //    printf("%s\n","Success");
    //}
    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    
    
    free(localVarPath);
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
    if(keyQuery_poolId){
        free(keyQuery_poolId);
        keyQuery_poolId = NULL;
    }
    if(keyPairQuery_poolId){
        keyValuePair_free(keyPairQuery_poolId);
        keyPairQuery_poolId = NULL;
    }

}

// GetPools
//
list_t*
UniswapV3API_dappsUniswapv3PoolsCurrentGet(apiClient_t *apiClient, char * filter_pool_id )
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

// GetPoolsDayData
//
list_t*
UniswapV3API_dappsUniswapv3PoolsDayDataCurrentGet(apiClient_t *apiClient, char * filter_pool_id )
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

void
UniswapV3API_dappsUniswapv3PoolsHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/uniswapv3/pools/historical")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/uniswapv3/pools/historical");




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
    //    printf("%s\n","Success");
    //}
    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    
    
    free(localVarPath);
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
    if(keyQuery_poolId){
        free(keyQuery_poolId);
        keyQuery_poolId = NULL;
    }
    if(keyPairQuery_poolId){
        keyValuePair_free(keyPairQuery_poolId);
        keyPairQuery_poolId = NULL;
    }

}

// GetPoolsHourData
//
list_t*
UniswapV3API_dappsUniswapv3PoolsHourDataCurrentGet(apiClient_t *apiClient, char * filter_pool_id )
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

void
UniswapV3API_dappsUniswapv3PositionSnapshotHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/uniswapv3/positionSnapshot/historical")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/uniswapv3/positionSnapshot/historical");




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
    //    printf("%s\n","Success");
    //}
    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    
    
    free(localVarPath);
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
    if(keyQuery_poolId){
        free(keyQuery_poolId);
        keyQuery_poolId = NULL;
    }
    if(keyPairQuery_poolId){
        keyValuePair_free(keyPairQuery_poolId);
        keyPairQuery_poolId = NULL;
    }

}

// GetPositionSnapshot
//
list_t*
UniswapV3API_dappsUniswapv3PositionSnapshotsCurrentGet(apiClient_t *apiClient, char * filter_pool_id )
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

// GetPositions
//
list_t*
UniswapV3API_dappsUniswapv3PositionsCurrentGet(apiClient_t *apiClient, char * filter_pool_id )
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

void
UniswapV3API_dappsUniswapv3PositionsHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/uniswapv3/positions/historical")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/uniswapv3/positions/historical");




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
    //    printf("%s\n","Success");
    //}
    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    
    
    free(localVarPath);
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
    if(keyQuery_poolId){
        free(keyQuery_poolId);
        keyQuery_poolId = NULL;
    }
    if(keyPairQuery_poolId){
        keyValuePair_free(keyPairQuery_poolId);
        keyPairQuery_poolId = NULL;
    }

}

// GetSwaps
//
list_t*
UniswapV3API_dappsUniswapv3SwapsCurrentGet(apiClient_t *apiClient, char * filter_pool_id )
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

void
UniswapV3API_dappsUniswapv3SwapsHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/uniswapv3/swaps/historical")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/uniswapv3/swaps/historical");




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
    //    printf("%s\n","Success");
    //}
    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    
    
    free(localVarPath);
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
    if(keyQuery_poolId){
        free(keyQuery_poolId);
        keyQuery_poolId = NULL;
    }
    if(keyPairQuery_poolId){
        keyValuePair_free(keyPairQuery_poolId);
        keyPairQuery_poolId = NULL;
    }

}

void
UniswapV3API_dappsUniswapv3TickDayDataHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/uniswapv3/tickDayData/historical")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/uniswapv3/tickDayData/historical");




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
    //    printf("%s\n","Success");
    //}
    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    
    
    free(localVarPath);
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
    if(keyQuery_poolId){
        free(keyQuery_poolId);
        keyQuery_poolId = NULL;
    }
    if(keyPairQuery_poolId){
        keyValuePair_free(keyPairQuery_poolId);
        keyPairQuery_poolId = NULL;
    }

}

// GetTicks
//
list_t*
UniswapV3API_dappsUniswapv3TicksCurrentGet(apiClient_t *apiClient, char * filter_pool_id )
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

// GetTicksDayData
//
list_t*
UniswapV3API_dappsUniswapv3TicksDayDataCurrentGet(apiClient_t *apiClient, char * filter_pool_id )
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

void
UniswapV3API_dappsUniswapv3TicksHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/uniswapv3/ticks/historical")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/uniswapv3/ticks/historical");




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
    //    printf("%s\n","Success");
    //}
    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    
    
    free(localVarPath);
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
    if(keyQuery_poolId){
        free(keyQuery_poolId);
        keyQuery_poolId = NULL;
    }
    if(keyPairQuery_poolId){
        keyValuePair_free(keyPairQuery_poolId);
        keyPairQuery_poolId = NULL;
    }

}

void
UniswapV3API_dappsUniswapv3TokenDayDataHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * tokenId )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/uniswapv3/tokenDayData/historical")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/uniswapv3/tokenDayData/historical");




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
    //    printf("%s\n","Success");
    //}
    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    
    
    free(localVarPath);
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
    if(keyQuery_tokenId){
        free(keyQuery_tokenId);
        keyQuery_tokenId = NULL;
    }
    if(keyPairQuery_tokenId){
        keyValuePair_free(keyPairQuery_tokenId);
        keyPairQuery_tokenId = NULL;
    }

}

void
UniswapV3API_dappsUniswapv3TokenHourDataHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * tokenId )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/uniswapv3/tokenHourData/historical")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/uniswapv3/tokenHourData/historical");




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
    //    printf("%s\n","Success");
    //}
    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    
    
    free(localVarPath);
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
    if(keyQuery_tokenId){
        free(keyQuery_tokenId);
        keyQuery_tokenId = NULL;
    }
    if(keyPairQuery_tokenId){
        keyValuePair_free(keyPairQuery_tokenId);
        keyPairQuery_tokenId = NULL;
    }

}

// GetTokens
//
list_t*
UniswapV3API_dappsUniswapv3TokensCurrentGet(apiClient_t *apiClient, char * filter_token_id )
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

// GetTokensDayData
//
list_t*
UniswapV3API_dappsUniswapv3TokensDayDataCurrentGet(apiClient_t *apiClient, char * filter_token_id )
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

void
UniswapV3API_dappsUniswapv3TokensHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * tokenId )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/uniswapv3/tokens/historical")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/uniswapv3/tokens/historical");




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
    //    printf("%s\n","Success");
    //}
    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    
    
    free(localVarPath);
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
    if(keyQuery_tokenId){
        free(keyQuery_tokenId);
        keyQuery_tokenId = NULL;
    }
    if(keyPairQuery_tokenId){
        keyValuePair_free(keyPairQuery_tokenId);
        keyPairQuery_tokenId = NULL;
    }

}

// GetTokensHourData
//
list_t*
UniswapV3API_dappsUniswapv3TokensHourDataCurrentGet(apiClient_t *apiClient, char * filter_token_id )
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

void
UniswapV3API_dappsUniswapv3TransactionsHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/uniswapv3/transactions/historical")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/uniswapv3/transactions/historical");




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
    //    printf("%s\n","Success");
    //}
    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    
    
    free(localVarPath);

}

// GetUniswapDayData
//
list_t*
UniswapV3API_dappsUniswapv3UniswapDayDataCurrentGet(apiClient_t *apiClient)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/uniswapv3/uniswapDayData/current")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/uniswapv3/uniswapDayData/current");



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

