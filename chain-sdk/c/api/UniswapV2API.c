#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>
#include "UniswapV2API.h"

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
UniswapV2API_uniswapV2BundlesCurrent(apiClient_t *apiClient)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/uniswapv2/bundles/current")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/uniswapv2/bundles/current");



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
    cJSON *UniswapV2APIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    if(!cJSON_IsArray(UniswapV2APIlocalVarJSON)) {
        return 0;//nonprimitive container
    }
    list_t *elementToReturn = list_createList();
    cJSON *VarJSON;
    cJSON_ArrayForEach(VarJSON, UniswapV2APIlocalVarJSON)
    {
        if(!cJSON_IsObject(VarJSON))
        {
           // return 0;
        }
        char *localVarJSONToChar = cJSON_Print(VarJSON);
        list_addElement(elementToReturn , localVarJSONToChar);
    }

    cJSON_Delete( UniswapV2APIlocalVarJSON);
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

// Burns (current)
//
// Gets burns.
//
list_t*
UniswapV2API_uniswapV2BurnsCurrent(apiClient_t *apiClient)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/uniswapv2/burns/current")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/uniswapv2/burns/current");



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
    cJSON *UniswapV2APIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    if(!cJSON_IsArray(UniswapV2APIlocalVarJSON)) {
        return 0;//nonprimitive container
    }
    list_t *elementToReturn = list_createList();
    cJSON *VarJSON;
    cJSON_ArrayForEach(VarJSON, UniswapV2APIlocalVarJSON)
    {
        if(!cJSON_IsObject(VarJSON))
        {
           // return 0;
        }
        char *localVarJSONToChar = cJSON_Print(VarJSON);
        list_addElement(elementToReturn , localVarJSONToChar);
    }

    cJSON_Delete( UniswapV2APIlocalVarJSON);
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

// Bundles (historical) 🔥
//
// Gets bundles.
//
list_t*
UniswapV2API_uniswapV2GetBundlesHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/uniswapv2/bundles/historical")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/uniswapv2/bundles/historical");




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
    char *keyQuery_id = NULL;
    char * valueQuery_id = NULL;
    keyValuePair_t *keyPairQuery_id = 0;
    if (id)
    {
        keyQuery_id = strdup("id");
        valueQuery_id = strdup((id));
        keyPairQuery_id = keyValuePair_create(keyQuery_id, valueQuery_id);
        list_addElement(localVarQueryParameters,keyPairQuery_id);
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
    cJSON *UniswapV2APIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    if(!cJSON_IsArray(UniswapV2APIlocalVarJSON)) {
        return 0;//nonprimitive container
    }
    list_t *elementToReturn = list_createList();
    cJSON *VarJSON;
    cJSON_ArrayForEach(VarJSON, UniswapV2APIlocalVarJSON)
    {
        if(!cJSON_IsObject(VarJSON))
        {
           // return 0;
        }
        char *localVarJSONToChar = cJSON_Print(VarJSON);
        list_addElement(elementToReturn , localVarJSONToChar);
    }

    cJSON_Delete( UniswapV2APIlocalVarJSON);
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
    if(keyQuery_id){
        free(keyQuery_id);
        keyQuery_id = NULL;
    }
    if(valueQuery_id){
        free(valueQuery_id);
        valueQuery_id = NULL;
    }
    if(keyPairQuery_id){
        keyValuePair_free(keyPairQuery_id);
        keyPairQuery_id = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Burns (historical) 🔥
//
// Gets burns.
//
list_t*
UniswapV2API_uniswapV2GetBurnsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * pair )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/uniswapv2/burns/historical")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/uniswapv2/burns/historical");




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
    char *keyQuery_id = NULL;
    char * valueQuery_id = NULL;
    keyValuePair_t *keyPairQuery_id = 0;
    if (id)
    {
        keyQuery_id = strdup("id");
        valueQuery_id = strdup((id));
        keyPairQuery_id = keyValuePair_create(keyQuery_id, valueQuery_id);
        list_addElement(localVarQueryParameters,keyPairQuery_id);
    }

    // query parameters
    char *keyQuery_pair = NULL;
    char * valueQuery_pair = NULL;
    keyValuePair_t *keyPairQuery_pair = 0;
    if (pair)
    {
        keyQuery_pair = strdup("pair");
        valueQuery_pair = strdup((pair));
        keyPairQuery_pair = keyValuePair_create(keyQuery_pair, valueQuery_pair);
        list_addElement(localVarQueryParameters,keyPairQuery_pair);
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
    cJSON *UniswapV2APIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    if(!cJSON_IsArray(UniswapV2APIlocalVarJSON)) {
        return 0;//nonprimitive container
    }
    list_t *elementToReturn = list_createList();
    cJSON *VarJSON;
    cJSON_ArrayForEach(VarJSON, UniswapV2APIlocalVarJSON)
    {
        if(!cJSON_IsObject(VarJSON))
        {
           // return 0;
        }
        char *localVarJSONToChar = cJSON_Print(VarJSON);
        list_addElement(elementToReturn , localVarJSONToChar);
    }

    cJSON_Delete( UniswapV2APIlocalVarJSON);
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
    if(keyQuery_id){
        free(keyQuery_id);
        keyQuery_id = NULL;
    }
    if(valueQuery_id){
        free(valueQuery_id);
        valueQuery_id = NULL;
    }
    if(keyPairQuery_id){
        keyValuePair_free(keyPairQuery_id);
        keyPairQuery_id = NULL;
    }
    if(keyQuery_pair){
        free(keyQuery_pair);
        keyQuery_pair = NULL;
    }
    if(valueQuery_pair){
        free(valueQuery_pair);
        valueQuery_pair = NULL;
    }
    if(keyPairQuery_pair){
        keyValuePair_free(keyPairQuery_pair);
        keyPairQuery_pair = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// LiquidityPositionSnapshots (historical) 🔥
//
// Gets liquidityPositionSnapshots.
//
list_t*
UniswapV2API_uniswapV2GetLiquidityPositionSnapshotsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * user , char * pair )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/uniswapv2/liquidityPositionSnapshots/historical")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/uniswapv2/liquidityPositionSnapshots/historical");




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
    char *keyQuery_id = NULL;
    char * valueQuery_id = NULL;
    keyValuePair_t *keyPairQuery_id = 0;
    if (id)
    {
        keyQuery_id = strdup("id");
        valueQuery_id = strdup((id));
        keyPairQuery_id = keyValuePair_create(keyQuery_id, valueQuery_id);
        list_addElement(localVarQueryParameters,keyPairQuery_id);
    }

    // query parameters
    char *keyQuery_user = NULL;
    char * valueQuery_user = NULL;
    keyValuePair_t *keyPairQuery_user = 0;
    if (user)
    {
        keyQuery_user = strdup("user");
        valueQuery_user = strdup((user));
        keyPairQuery_user = keyValuePair_create(keyQuery_user, valueQuery_user);
        list_addElement(localVarQueryParameters,keyPairQuery_user);
    }

    // query parameters
    char *keyQuery_pair = NULL;
    char * valueQuery_pair = NULL;
    keyValuePair_t *keyPairQuery_pair = 0;
    if (pair)
    {
        keyQuery_pair = strdup("pair");
        valueQuery_pair = strdup((pair));
        keyPairQuery_pair = keyValuePair_create(keyQuery_pair, valueQuery_pair);
        list_addElement(localVarQueryParameters,keyPairQuery_pair);
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
    cJSON *UniswapV2APIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    if(!cJSON_IsArray(UniswapV2APIlocalVarJSON)) {
        return 0;//nonprimitive container
    }
    list_t *elementToReturn = list_createList();
    cJSON *VarJSON;
    cJSON_ArrayForEach(VarJSON, UniswapV2APIlocalVarJSON)
    {
        if(!cJSON_IsObject(VarJSON))
        {
           // return 0;
        }
        char *localVarJSONToChar = cJSON_Print(VarJSON);
        list_addElement(elementToReturn , localVarJSONToChar);
    }

    cJSON_Delete( UniswapV2APIlocalVarJSON);
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
    if(keyQuery_id){
        free(keyQuery_id);
        keyQuery_id = NULL;
    }
    if(valueQuery_id){
        free(valueQuery_id);
        valueQuery_id = NULL;
    }
    if(keyPairQuery_id){
        keyValuePair_free(keyPairQuery_id);
        keyPairQuery_id = NULL;
    }
    if(keyQuery_user){
        free(keyQuery_user);
        keyQuery_user = NULL;
    }
    if(valueQuery_user){
        free(valueQuery_user);
        valueQuery_user = NULL;
    }
    if(keyPairQuery_user){
        keyValuePair_free(keyPairQuery_user);
        keyPairQuery_user = NULL;
    }
    if(keyQuery_pair){
        free(keyQuery_pair);
        keyQuery_pair = NULL;
    }
    if(valueQuery_pair){
        free(valueQuery_pair);
        valueQuery_pair = NULL;
    }
    if(keyPairQuery_pair){
        keyValuePair_free(keyPairQuery_pair);
        keyPairQuery_pair = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// LiquidityPositions (historical) 🔥
//
// Gets liquidityPositions.
//
list_t*
UniswapV2API_uniswapV2GetLiquidityPositionsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * user , char * pair )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/uniswapv2/liquidityPositions/historical")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/uniswapv2/liquidityPositions/historical");




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
    char *keyQuery_id = NULL;
    char * valueQuery_id = NULL;
    keyValuePair_t *keyPairQuery_id = 0;
    if (id)
    {
        keyQuery_id = strdup("id");
        valueQuery_id = strdup((id));
        keyPairQuery_id = keyValuePair_create(keyQuery_id, valueQuery_id);
        list_addElement(localVarQueryParameters,keyPairQuery_id);
    }

    // query parameters
    char *keyQuery_user = NULL;
    char * valueQuery_user = NULL;
    keyValuePair_t *keyPairQuery_user = 0;
    if (user)
    {
        keyQuery_user = strdup("user");
        valueQuery_user = strdup((user));
        keyPairQuery_user = keyValuePair_create(keyQuery_user, valueQuery_user);
        list_addElement(localVarQueryParameters,keyPairQuery_user);
    }

    // query parameters
    char *keyQuery_pair = NULL;
    char * valueQuery_pair = NULL;
    keyValuePair_t *keyPairQuery_pair = 0;
    if (pair)
    {
        keyQuery_pair = strdup("pair");
        valueQuery_pair = strdup((pair));
        keyPairQuery_pair = keyValuePair_create(keyQuery_pair, valueQuery_pair);
        list_addElement(localVarQueryParameters,keyPairQuery_pair);
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
    cJSON *UniswapV2APIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    if(!cJSON_IsArray(UniswapV2APIlocalVarJSON)) {
        return 0;//nonprimitive container
    }
    list_t *elementToReturn = list_createList();
    cJSON *VarJSON;
    cJSON_ArrayForEach(VarJSON, UniswapV2APIlocalVarJSON)
    {
        if(!cJSON_IsObject(VarJSON))
        {
           // return 0;
        }
        char *localVarJSONToChar = cJSON_Print(VarJSON);
        list_addElement(elementToReturn , localVarJSONToChar);
    }

    cJSON_Delete( UniswapV2APIlocalVarJSON);
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
    if(keyQuery_id){
        free(keyQuery_id);
        keyQuery_id = NULL;
    }
    if(valueQuery_id){
        free(valueQuery_id);
        valueQuery_id = NULL;
    }
    if(keyPairQuery_id){
        keyValuePair_free(keyPairQuery_id);
        keyPairQuery_id = NULL;
    }
    if(keyQuery_user){
        free(keyQuery_user);
        keyQuery_user = NULL;
    }
    if(valueQuery_user){
        free(valueQuery_user);
        valueQuery_user = NULL;
    }
    if(keyPairQuery_user){
        keyValuePair_free(keyPairQuery_user);
        keyPairQuery_user = NULL;
    }
    if(keyQuery_pair){
        free(keyQuery_pair);
        keyQuery_pair = NULL;
    }
    if(valueQuery_pair){
        free(valueQuery_pair);
        valueQuery_pair = NULL;
    }
    if(keyPairQuery_pair){
        keyValuePair_free(keyPairQuery_pair);
        keyPairQuery_pair = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Mints (historical) 🔥
//
// Gets mints.
//
list_t*
UniswapV2API_uniswapV2GetMintsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * pair )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/uniswapv2/mints/historical")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/uniswapv2/mints/historical");




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
    char *keyQuery_id = NULL;
    char * valueQuery_id = NULL;
    keyValuePair_t *keyPairQuery_id = 0;
    if (id)
    {
        keyQuery_id = strdup("id");
        valueQuery_id = strdup((id));
        keyPairQuery_id = keyValuePair_create(keyQuery_id, valueQuery_id);
        list_addElement(localVarQueryParameters,keyPairQuery_id);
    }

    // query parameters
    char *keyQuery_pair = NULL;
    char * valueQuery_pair = NULL;
    keyValuePair_t *keyPairQuery_pair = 0;
    if (pair)
    {
        keyQuery_pair = strdup("pair");
        valueQuery_pair = strdup((pair));
        keyPairQuery_pair = keyValuePair_create(keyQuery_pair, valueQuery_pair);
        list_addElement(localVarQueryParameters,keyPairQuery_pair);
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
    cJSON *UniswapV2APIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    if(!cJSON_IsArray(UniswapV2APIlocalVarJSON)) {
        return 0;//nonprimitive container
    }
    list_t *elementToReturn = list_createList();
    cJSON *VarJSON;
    cJSON_ArrayForEach(VarJSON, UniswapV2APIlocalVarJSON)
    {
        if(!cJSON_IsObject(VarJSON))
        {
           // return 0;
        }
        char *localVarJSONToChar = cJSON_Print(VarJSON);
        list_addElement(elementToReturn , localVarJSONToChar);
    }

    cJSON_Delete( UniswapV2APIlocalVarJSON);
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
    if(keyQuery_id){
        free(keyQuery_id);
        keyQuery_id = NULL;
    }
    if(valueQuery_id){
        free(valueQuery_id);
        valueQuery_id = NULL;
    }
    if(keyPairQuery_id){
        keyValuePair_free(keyPairQuery_id);
        keyPairQuery_id = NULL;
    }
    if(keyQuery_pair){
        free(keyQuery_pair);
        keyQuery_pair = NULL;
    }
    if(valueQuery_pair){
        free(valueQuery_pair);
        valueQuery_pair = NULL;
    }
    if(keyPairQuery_pair){
        keyValuePair_free(keyPairQuery_pair);
        keyPairQuery_pair = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// PairDayDatas (historical) 🔥
//
// Gets pairDayDatas.
//
list_t*
UniswapV2API_uniswapV2GetPairDayDatasHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * token_0 , char * token_1 )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/uniswapv2/pairDayDatas/historical")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/uniswapv2/pairDayDatas/historical");




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
    char *keyQuery_id = NULL;
    char * valueQuery_id = NULL;
    keyValuePair_t *keyPairQuery_id = 0;
    if (id)
    {
        keyQuery_id = strdup("id");
        valueQuery_id = strdup((id));
        keyPairQuery_id = keyValuePair_create(keyQuery_id, valueQuery_id);
        list_addElement(localVarQueryParameters,keyPairQuery_id);
    }

    // query parameters
    char *keyQuery_token_0 = NULL;
    char * valueQuery_token_0 = NULL;
    keyValuePair_t *keyPairQuery_token_0 = 0;
    if (token_0)
    {
        keyQuery_token_0 = strdup("token_0");
        valueQuery_token_0 = strdup((token_0));
        keyPairQuery_token_0 = keyValuePair_create(keyQuery_token_0, valueQuery_token_0);
        list_addElement(localVarQueryParameters,keyPairQuery_token_0);
    }

    // query parameters
    char *keyQuery_token_1 = NULL;
    char * valueQuery_token_1 = NULL;
    keyValuePair_t *keyPairQuery_token_1 = 0;
    if (token_1)
    {
        keyQuery_token_1 = strdup("token_1");
        valueQuery_token_1 = strdup((token_1));
        keyPairQuery_token_1 = keyValuePair_create(keyQuery_token_1, valueQuery_token_1);
        list_addElement(localVarQueryParameters,keyPairQuery_token_1);
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
    cJSON *UniswapV2APIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    if(!cJSON_IsArray(UniswapV2APIlocalVarJSON)) {
        return 0;//nonprimitive container
    }
    list_t *elementToReturn = list_createList();
    cJSON *VarJSON;
    cJSON_ArrayForEach(VarJSON, UniswapV2APIlocalVarJSON)
    {
        if(!cJSON_IsObject(VarJSON))
        {
           // return 0;
        }
        char *localVarJSONToChar = cJSON_Print(VarJSON);
        list_addElement(elementToReturn , localVarJSONToChar);
    }

    cJSON_Delete( UniswapV2APIlocalVarJSON);
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
    if(keyQuery_id){
        free(keyQuery_id);
        keyQuery_id = NULL;
    }
    if(valueQuery_id){
        free(valueQuery_id);
        valueQuery_id = NULL;
    }
    if(keyPairQuery_id){
        keyValuePair_free(keyPairQuery_id);
        keyPairQuery_id = NULL;
    }
    if(keyQuery_token_0){
        free(keyQuery_token_0);
        keyQuery_token_0 = NULL;
    }
    if(valueQuery_token_0){
        free(valueQuery_token_0);
        valueQuery_token_0 = NULL;
    }
    if(keyPairQuery_token_0){
        keyValuePair_free(keyPairQuery_token_0);
        keyPairQuery_token_0 = NULL;
    }
    if(keyQuery_token_1){
        free(keyQuery_token_1);
        keyQuery_token_1 = NULL;
    }
    if(valueQuery_token_1){
        free(valueQuery_token_1);
        valueQuery_token_1 = NULL;
    }
    if(keyPairQuery_token_1){
        keyValuePair_free(keyPairQuery_token_1);
        keyPairQuery_token_1 = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// PairHourDatas (historical) 🔥
//
// Gets pairHourDatas.
//
list_t*
UniswapV2API_uniswapV2GetPairHourDatasHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * pair )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/uniswapv2/pairHourDatas/historical")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/uniswapv2/pairHourDatas/historical");




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
    char *keyQuery_id = NULL;
    char * valueQuery_id = NULL;
    keyValuePair_t *keyPairQuery_id = 0;
    if (id)
    {
        keyQuery_id = strdup("id");
        valueQuery_id = strdup((id));
        keyPairQuery_id = keyValuePair_create(keyQuery_id, valueQuery_id);
        list_addElement(localVarQueryParameters,keyPairQuery_id);
    }

    // query parameters
    char *keyQuery_pair = NULL;
    char * valueQuery_pair = NULL;
    keyValuePair_t *keyPairQuery_pair = 0;
    if (pair)
    {
        keyQuery_pair = strdup("pair");
        valueQuery_pair = strdup((pair));
        keyPairQuery_pair = keyValuePair_create(keyQuery_pair, valueQuery_pair);
        list_addElement(localVarQueryParameters,keyPairQuery_pair);
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
    cJSON *UniswapV2APIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    if(!cJSON_IsArray(UniswapV2APIlocalVarJSON)) {
        return 0;//nonprimitive container
    }
    list_t *elementToReturn = list_createList();
    cJSON *VarJSON;
    cJSON_ArrayForEach(VarJSON, UniswapV2APIlocalVarJSON)
    {
        if(!cJSON_IsObject(VarJSON))
        {
           // return 0;
        }
        char *localVarJSONToChar = cJSON_Print(VarJSON);
        list_addElement(elementToReturn , localVarJSONToChar);
    }

    cJSON_Delete( UniswapV2APIlocalVarJSON);
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
    if(keyQuery_id){
        free(keyQuery_id);
        keyQuery_id = NULL;
    }
    if(valueQuery_id){
        free(valueQuery_id);
        valueQuery_id = NULL;
    }
    if(keyPairQuery_id){
        keyValuePair_free(keyPairQuery_id);
        keyPairQuery_id = NULL;
    }
    if(keyQuery_pair){
        free(keyQuery_pair);
        keyQuery_pair = NULL;
    }
    if(valueQuery_pair){
        free(valueQuery_pair);
        valueQuery_pair = NULL;
    }
    if(keyPairQuery_pair){
        keyValuePair_free(keyPairQuery_pair);
        keyPairQuery_pair = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Pairs (historical) 🔥
//
// Gets pairs.
//
list_t*
UniswapV2API_uniswapV2GetPairsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * token_0 , char * token_1 )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/uniswapv2/pairs/historical")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/uniswapv2/pairs/historical");




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
    char *keyQuery_id = NULL;
    char * valueQuery_id = NULL;
    keyValuePair_t *keyPairQuery_id = 0;
    if (id)
    {
        keyQuery_id = strdup("id");
        valueQuery_id = strdup((id));
        keyPairQuery_id = keyValuePair_create(keyQuery_id, valueQuery_id);
        list_addElement(localVarQueryParameters,keyPairQuery_id);
    }

    // query parameters
    char *keyQuery_token_0 = NULL;
    char * valueQuery_token_0 = NULL;
    keyValuePair_t *keyPairQuery_token_0 = 0;
    if (token_0)
    {
        keyQuery_token_0 = strdup("token_0");
        valueQuery_token_0 = strdup((token_0));
        keyPairQuery_token_0 = keyValuePair_create(keyQuery_token_0, valueQuery_token_0);
        list_addElement(localVarQueryParameters,keyPairQuery_token_0);
    }

    // query parameters
    char *keyQuery_token_1 = NULL;
    char * valueQuery_token_1 = NULL;
    keyValuePair_t *keyPairQuery_token_1 = 0;
    if (token_1)
    {
        keyQuery_token_1 = strdup("token_1");
        valueQuery_token_1 = strdup((token_1));
        keyPairQuery_token_1 = keyValuePair_create(keyQuery_token_1, valueQuery_token_1);
        list_addElement(localVarQueryParameters,keyPairQuery_token_1);
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
    cJSON *UniswapV2APIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    if(!cJSON_IsArray(UniswapV2APIlocalVarJSON)) {
        return 0;//nonprimitive container
    }
    list_t *elementToReturn = list_createList();
    cJSON *VarJSON;
    cJSON_ArrayForEach(VarJSON, UniswapV2APIlocalVarJSON)
    {
        if(!cJSON_IsObject(VarJSON))
        {
           // return 0;
        }
        char *localVarJSONToChar = cJSON_Print(VarJSON);
        list_addElement(elementToReturn , localVarJSONToChar);
    }

    cJSON_Delete( UniswapV2APIlocalVarJSON);
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
    if(keyQuery_id){
        free(keyQuery_id);
        keyQuery_id = NULL;
    }
    if(valueQuery_id){
        free(valueQuery_id);
        valueQuery_id = NULL;
    }
    if(keyPairQuery_id){
        keyValuePair_free(keyPairQuery_id);
        keyPairQuery_id = NULL;
    }
    if(keyQuery_token_0){
        free(keyQuery_token_0);
        keyQuery_token_0 = NULL;
    }
    if(valueQuery_token_0){
        free(valueQuery_token_0);
        valueQuery_token_0 = NULL;
    }
    if(keyPairQuery_token_0){
        keyValuePair_free(keyPairQuery_token_0);
        keyPairQuery_token_0 = NULL;
    }
    if(keyQuery_token_1){
        free(keyQuery_token_1);
        keyQuery_token_1 = NULL;
    }
    if(valueQuery_token_1){
        free(valueQuery_token_1);
        valueQuery_token_1 = NULL;
    }
    if(keyPairQuery_token_1){
        keyValuePair_free(keyPairQuery_token_1);
        keyPairQuery_token_1 = NULL;
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
UniswapV2API_uniswapV2GetPoolsCurrent(apiClient_t *apiClient, char * filter_pool_id )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/uniswapv2/pools/current")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/uniswapv2/pools/current");




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
    cJSON *UniswapV2APIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    if(!cJSON_IsArray(UniswapV2APIlocalVarJSON)) {
        return 0;//nonprimitive container
    }
    list_t *elementToReturn = list_createList();
    cJSON *VarJSON;
    cJSON_ArrayForEach(VarJSON, UniswapV2APIlocalVarJSON)
    {
        if(!cJSON_IsObject(VarJSON))
        {
           // return 0;
        }
        char *localVarJSONToChar = cJSON_Print(VarJSON);
        list_addElement(elementToReturn , localVarJSONToChar);
    }

    cJSON_Delete( UniswapV2APIlocalVarJSON);
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
UniswapV2API_uniswapV2GetSwapsCurrent(apiClient_t *apiClient)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/uniswapv2/swaps/current")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/uniswapv2/swaps/current");



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
    cJSON *UniswapV2APIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    if(!cJSON_IsArray(UniswapV2APIlocalVarJSON)) {
        return 0;//nonprimitive container
    }
    list_t *elementToReturn = list_createList();
    cJSON *VarJSON;
    cJSON_ArrayForEach(VarJSON, UniswapV2APIlocalVarJSON)
    {
        if(!cJSON_IsObject(VarJSON))
        {
           // return 0;
        }
        char *localVarJSONToChar = cJSON_Print(VarJSON);
        list_addElement(elementToReturn , localVarJSONToChar);
    }

    cJSON_Delete( UniswapV2APIlocalVarJSON);
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

// Swaps (historical) 🔥
//
// Gets swaps.
//
list_t*
UniswapV2API_uniswapV2GetSwapsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * pair )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/uniswapv2/swaps/historical")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/uniswapv2/swaps/historical");




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
    char *keyQuery_id = NULL;
    char * valueQuery_id = NULL;
    keyValuePair_t *keyPairQuery_id = 0;
    if (id)
    {
        keyQuery_id = strdup("id");
        valueQuery_id = strdup((id));
        keyPairQuery_id = keyValuePair_create(keyQuery_id, valueQuery_id);
        list_addElement(localVarQueryParameters,keyPairQuery_id);
    }

    // query parameters
    char *keyQuery_pair = NULL;
    char * valueQuery_pair = NULL;
    keyValuePair_t *keyPairQuery_pair = 0;
    if (pair)
    {
        keyQuery_pair = strdup("pair");
        valueQuery_pair = strdup((pair));
        keyPairQuery_pair = keyValuePair_create(keyQuery_pair, valueQuery_pair);
        list_addElement(localVarQueryParameters,keyPairQuery_pair);
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
    cJSON *UniswapV2APIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    if(!cJSON_IsArray(UniswapV2APIlocalVarJSON)) {
        return 0;//nonprimitive container
    }
    list_t *elementToReturn = list_createList();
    cJSON *VarJSON;
    cJSON_ArrayForEach(VarJSON, UniswapV2APIlocalVarJSON)
    {
        if(!cJSON_IsObject(VarJSON))
        {
           // return 0;
        }
        char *localVarJSONToChar = cJSON_Print(VarJSON);
        list_addElement(elementToReturn , localVarJSONToChar);
    }

    cJSON_Delete( UniswapV2APIlocalVarJSON);
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
    if(keyQuery_id){
        free(keyQuery_id);
        keyQuery_id = NULL;
    }
    if(valueQuery_id){
        free(valueQuery_id);
        valueQuery_id = NULL;
    }
    if(keyPairQuery_id){
        keyValuePair_free(keyPairQuery_id);
        keyPairQuery_id = NULL;
    }
    if(keyQuery_pair){
        free(keyQuery_pair);
        keyQuery_pair = NULL;
    }
    if(valueQuery_pair){
        free(valueQuery_pair);
        valueQuery_pair = NULL;
    }
    if(keyPairQuery_pair){
        keyValuePair_free(keyPairQuery_pair);
        keyPairQuery_pair = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// TokenDayDatas (historical) 🔥
//
// Gets tokenDayDatas.
//
list_t*
UniswapV2API_uniswapV2GetTokenDayDatasHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/uniswapv2/tokenDayDatas/historical")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/uniswapv2/tokenDayDatas/historical");




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
    char *keyQuery_id = NULL;
    char * valueQuery_id = NULL;
    keyValuePair_t *keyPairQuery_id = 0;
    if (id)
    {
        keyQuery_id = strdup("id");
        valueQuery_id = strdup((id));
        keyPairQuery_id = keyValuePair_create(keyQuery_id, valueQuery_id);
        list_addElement(localVarQueryParameters,keyPairQuery_id);
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
    cJSON *UniswapV2APIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    if(!cJSON_IsArray(UniswapV2APIlocalVarJSON)) {
        return 0;//nonprimitive container
    }
    list_t *elementToReturn = list_createList();
    cJSON *VarJSON;
    cJSON_ArrayForEach(VarJSON, UniswapV2APIlocalVarJSON)
    {
        if(!cJSON_IsObject(VarJSON))
        {
           // return 0;
        }
        char *localVarJSONToChar = cJSON_Print(VarJSON);
        list_addElement(elementToReturn , localVarJSONToChar);
    }

    cJSON_Delete( UniswapV2APIlocalVarJSON);
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
    if(keyQuery_id){
        free(keyQuery_id);
        keyQuery_id = NULL;
    }
    if(valueQuery_id){
        free(valueQuery_id);
        valueQuery_id = NULL;
    }
    if(keyPairQuery_id){
        keyValuePair_free(keyPairQuery_id);
        keyPairQuery_id = NULL;
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
UniswapV2API_uniswapV2GetTokensCurrent(apiClient_t *apiClient)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/uniswapv2/tokens/current")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/uniswapv2/tokens/current");



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
    cJSON *UniswapV2APIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    if(!cJSON_IsArray(UniswapV2APIlocalVarJSON)) {
        return 0;//nonprimitive container
    }
    list_t *elementToReturn = list_createList();
    cJSON *VarJSON;
    cJSON_ArrayForEach(VarJSON, UniswapV2APIlocalVarJSON)
    {
        if(!cJSON_IsObject(VarJSON))
        {
           // return 0;
        }
        char *localVarJSONToChar = cJSON_Print(VarJSON);
        list_addElement(elementToReturn , localVarJSONToChar);
    }

    cJSON_Delete( UniswapV2APIlocalVarJSON);
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

// Tokens (historical) 🔥
//
// Gets tokens.
//
list_t*
UniswapV2API_uniswapV2GetTokensHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * symbol , char * name )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/uniswapv2/tokens/historical")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/uniswapv2/tokens/historical");




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
    char *keyQuery_id = NULL;
    char * valueQuery_id = NULL;
    keyValuePair_t *keyPairQuery_id = 0;
    if (id)
    {
        keyQuery_id = strdup("id");
        valueQuery_id = strdup((id));
        keyPairQuery_id = keyValuePair_create(keyQuery_id, valueQuery_id);
        list_addElement(localVarQueryParameters,keyPairQuery_id);
    }

    // query parameters
    char *keyQuery_symbol = NULL;
    char * valueQuery_symbol = NULL;
    keyValuePair_t *keyPairQuery_symbol = 0;
    if (symbol)
    {
        keyQuery_symbol = strdup("symbol");
        valueQuery_symbol = strdup((symbol));
        keyPairQuery_symbol = keyValuePair_create(keyQuery_symbol, valueQuery_symbol);
        list_addElement(localVarQueryParameters,keyPairQuery_symbol);
    }

    // query parameters
    char *keyQuery_name = NULL;
    char * valueQuery_name = NULL;
    keyValuePair_t *keyPairQuery_name = 0;
    if (name)
    {
        keyQuery_name = strdup("name");
        valueQuery_name = strdup((name));
        keyPairQuery_name = keyValuePair_create(keyQuery_name, valueQuery_name);
        list_addElement(localVarQueryParameters,keyPairQuery_name);
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
    cJSON *UniswapV2APIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    if(!cJSON_IsArray(UniswapV2APIlocalVarJSON)) {
        return 0;//nonprimitive container
    }
    list_t *elementToReturn = list_createList();
    cJSON *VarJSON;
    cJSON_ArrayForEach(VarJSON, UniswapV2APIlocalVarJSON)
    {
        if(!cJSON_IsObject(VarJSON))
        {
           // return 0;
        }
        char *localVarJSONToChar = cJSON_Print(VarJSON);
        list_addElement(elementToReturn , localVarJSONToChar);
    }

    cJSON_Delete( UniswapV2APIlocalVarJSON);
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
    if(keyQuery_id){
        free(keyQuery_id);
        keyQuery_id = NULL;
    }
    if(valueQuery_id){
        free(valueQuery_id);
        valueQuery_id = NULL;
    }
    if(keyPairQuery_id){
        keyValuePair_free(keyPairQuery_id);
        keyPairQuery_id = NULL;
    }
    if(keyQuery_symbol){
        free(keyQuery_symbol);
        keyQuery_symbol = NULL;
    }
    if(valueQuery_symbol){
        free(valueQuery_symbol);
        valueQuery_symbol = NULL;
    }
    if(keyPairQuery_symbol){
        keyValuePair_free(keyPairQuery_symbol);
        keyPairQuery_symbol = NULL;
    }
    if(keyQuery_name){
        free(keyQuery_name);
        keyQuery_name = NULL;
    }
    if(valueQuery_name){
        free(valueQuery_name);
        valueQuery_name = NULL;
    }
    if(keyPairQuery_name){
        keyValuePair_free(keyPairQuery_name);
        keyPairQuery_name = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Transactions (historical) 🔥
//
// Gets transactions.
//
list_t*
UniswapV2API_uniswapV2GetTransactionsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/uniswapv2/transactions/historical")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/uniswapv2/transactions/historical");




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
    char *keyQuery_id = NULL;
    char * valueQuery_id = NULL;
    keyValuePair_t *keyPairQuery_id = 0;
    if (id)
    {
        keyQuery_id = strdup("id");
        valueQuery_id = strdup((id));
        keyPairQuery_id = keyValuePair_create(keyQuery_id, valueQuery_id);
        list_addElement(localVarQueryParameters,keyPairQuery_id);
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
    cJSON *UniswapV2APIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    if(!cJSON_IsArray(UniswapV2APIlocalVarJSON)) {
        return 0;//nonprimitive container
    }
    list_t *elementToReturn = list_createList();
    cJSON *VarJSON;
    cJSON_ArrayForEach(VarJSON, UniswapV2APIlocalVarJSON)
    {
        if(!cJSON_IsObject(VarJSON))
        {
           // return 0;
        }
        char *localVarJSONToChar = cJSON_Print(VarJSON);
        list_addElement(elementToReturn , localVarJSONToChar);
    }

    cJSON_Delete( UniswapV2APIlocalVarJSON);
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
    if(keyQuery_id){
        free(keyQuery_id);
        keyQuery_id = NULL;
    }
    if(valueQuery_id){
        free(valueQuery_id);
        valueQuery_id = NULL;
    }
    if(keyPairQuery_id){
        keyValuePair_free(keyPairQuery_id);
        keyPairQuery_id = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// UniswapDayDatas (historical) 🔥
//
// Gets uniswapDayDatas.
//
list_t*
UniswapV2API_uniswapV2GetUniswapDayDatasHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/uniswapv2/uniswapDayDatas/historical")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/uniswapv2/uniswapDayDatas/historical");




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
    char *keyQuery_id = NULL;
    char * valueQuery_id = NULL;
    keyValuePair_t *keyPairQuery_id = 0;
    if (id)
    {
        keyQuery_id = strdup("id");
        valueQuery_id = strdup((id));
        keyPairQuery_id = keyValuePair_create(keyQuery_id, valueQuery_id);
        list_addElement(localVarQueryParameters,keyPairQuery_id);
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
    cJSON *UniswapV2APIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    if(!cJSON_IsArray(UniswapV2APIlocalVarJSON)) {
        return 0;//nonprimitive container
    }
    list_t *elementToReturn = list_createList();
    cJSON *VarJSON;
    cJSON_ArrayForEach(VarJSON, UniswapV2APIlocalVarJSON)
    {
        if(!cJSON_IsObject(VarJSON))
        {
           // return 0;
        }
        char *localVarJSONToChar = cJSON_Print(VarJSON);
        list_addElement(elementToReturn , localVarJSONToChar);
    }

    cJSON_Delete( UniswapV2APIlocalVarJSON);
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
    if(keyQuery_id){
        free(keyQuery_id);
        keyQuery_id = NULL;
    }
    if(valueQuery_id){
        free(valueQuery_id);
        valueQuery_id = NULL;
    }
    if(keyPairQuery_id){
        keyValuePair_free(keyPairQuery_id);
        keyPairQuery_id = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// UniswapFactorys (historical) 🔥
//
// Gets uniswapFactorys.
//
list_t*
UniswapV2API_uniswapV2GetUniswapFactorysHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/uniswapv2/uniswapFactorys/historical")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/uniswapv2/uniswapFactorys/historical");




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
    char *keyQuery_id = NULL;
    char * valueQuery_id = NULL;
    keyValuePair_t *keyPairQuery_id = 0;
    if (id)
    {
        keyQuery_id = strdup("id");
        valueQuery_id = strdup((id));
        keyPairQuery_id = keyValuePair_create(keyQuery_id, valueQuery_id);
        list_addElement(localVarQueryParameters,keyPairQuery_id);
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
    cJSON *UniswapV2APIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    if(!cJSON_IsArray(UniswapV2APIlocalVarJSON)) {
        return 0;//nonprimitive container
    }
    list_t *elementToReturn = list_createList();
    cJSON *VarJSON;
    cJSON_ArrayForEach(VarJSON, UniswapV2APIlocalVarJSON)
    {
        if(!cJSON_IsObject(VarJSON))
        {
           // return 0;
        }
        char *localVarJSONToChar = cJSON_Print(VarJSON);
        list_addElement(elementToReturn , localVarJSONToChar);
    }

    cJSON_Delete( UniswapV2APIlocalVarJSON);
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
    if(keyQuery_id){
        free(keyQuery_id);
        keyQuery_id = NULL;
    }
    if(valueQuery_id){
        free(valueQuery_id);
        valueQuery_id = NULL;
    }
    if(keyPairQuery_id){
        keyValuePair_free(keyPairQuery_id);
        keyPairQuery_id = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Users (historical) 🔥
//
// Gets users.
//
list_t*
UniswapV2API_uniswapV2GetUsersHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/uniswapv2/users/historical")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/uniswapv2/users/historical");




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
    char *keyQuery_id = NULL;
    char * valueQuery_id = NULL;
    keyValuePair_t *keyPairQuery_id = 0;
    if (id)
    {
        keyQuery_id = strdup("id");
        valueQuery_id = strdup((id));
        keyPairQuery_id = keyValuePair_create(keyQuery_id, valueQuery_id);
        list_addElement(localVarQueryParameters,keyPairQuery_id);
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
    cJSON *UniswapV2APIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    if(!cJSON_IsArray(UniswapV2APIlocalVarJSON)) {
        return 0;//nonprimitive container
    }
    list_t *elementToReturn = list_createList();
    cJSON *VarJSON;
    cJSON_ArrayForEach(VarJSON, UniswapV2APIlocalVarJSON)
    {
        if(!cJSON_IsObject(VarJSON))
        {
           // return 0;
        }
        char *localVarJSONToChar = cJSON_Print(VarJSON);
        list_addElement(elementToReturn , localVarJSONToChar);
    }

    cJSON_Delete( UniswapV2APIlocalVarJSON);
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
    if(keyQuery_id){
        free(keyQuery_id);
        keyQuery_id = NULL;
    }
    if(valueQuery_id){
        free(valueQuery_id);
        valueQuery_id = NULL;
    }
    if(keyPairQuery_id){
        keyValuePair_free(keyPairQuery_id);
        keyPairQuery_id = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// LiquidityPositionSnapshots (current)
//
// Gets liquidityPositionSnapshots.
//
list_t*
UniswapV2API_uniswapV2LiquidityPositionSnapshotsCurrent(apiClient_t *apiClient)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/uniswapv2/liquidityPositionSnapshots/current")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/uniswapv2/liquidityPositionSnapshots/current");



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
    cJSON *UniswapV2APIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    if(!cJSON_IsArray(UniswapV2APIlocalVarJSON)) {
        return 0;//nonprimitive container
    }
    list_t *elementToReturn = list_createList();
    cJSON *VarJSON;
    cJSON_ArrayForEach(VarJSON, UniswapV2APIlocalVarJSON)
    {
        if(!cJSON_IsObject(VarJSON))
        {
           // return 0;
        }
        char *localVarJSONToChar = cJSON_Print(VarJSON);
        list_addElement(elementToReturn , localVarJSONToChar);
    }

    cJSON_Delete( UniswapV2APIlocalVarJSON);
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

// LiquidityPositions (current)
//
// Gets liquidityPositions.
//
list_t*
UniswapV2API_uniswapV2LiquidityPositionsCurrent(apiClient_t *apiClient)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/uniswapv2/liquidityPositions/current")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/uniswapv2/liquidityPositions/current");



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
    cJSON *UniswapV2APIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    if(!cJSON_IsArray(UniswapV2APIlocalVarJSON)) {
        return 0;//nonprimitive container
    }
    list_t *elementToReturn = list_createList();
    cJSON *VarJSON;
    cJSON_ArrayForEach(VarJSON, UniswapV2APIlocalVarJSON)
    {
        if(!cJSON_IsObject(VarJSON))
        {
           // return 0;
        }
        char *localVarJSONToChar = cJSON_Print(VarJSON);
        list_addElement(elementToReturn , localVarJSONToChar);
    }

    cJSON_Delete( UniswapV2APIlocalVarJSON);
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

// Mints (current)
//
// Gets mints.
//
list_t*
UniswapV2API_uniswapV2MintsCurrent(apiClient_t *apiClient)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/uniswapv2/mints/current")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/uniswapv2/mints/current");



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
    cJSON *UniswapV2APIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    if(!cJSON_IsArray(UniswapV2APIlocalVarJSON)) {
        return 0;//nonprimitive container
    }
    list_t *elementToReturn = list_createList();
    cJSON *VarJSON;
    cJSON_ArrayForEach(VarJSON, UniswapV2APIlocalVarJSON)
    {
        if(!cJSON_IsObject(VarJSON))
        {
           // return 0;
        }
        char *localVarJSONToChar = cJSON_Print(VarJSON);
        list_addElement(elementToReturn , localVarJSONToChar);
    }

    cJSON_Delete( UniswapV2APIlocalVarJSON);
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

// PairDayDatas (current)
//
// Gets pairDayDatas.
//
list_t*
UniswapV2API_uniswapV2PairDayDatasCurrent(apiClient_t *apiClient)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/uniswapv2/pairDayDatas/current")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/uniswapv2/pairDayDatas/current");



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
    cJSON *UniswapV2APIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    if(!cJSON_IsArray(UniswapV2APIlocalVarJSON)) {
        return 0;//nonprimitive container
    }
    list_t *elementToReturn = list_createList();
    cJSON *VarJSON;
    cJSON_ArrayForEach(VarJSON, UniswapV2APIlocalVarJSON)
    {
        if(!cJSON_IsObject(VarJSON))
        {
           // return 0;
        }
        char *localVarJSONToChar = cJSON_Print(VarJSON);
        list_addElement(elementToReturn , localVarJSONToChar);
    }

    cJSON_Delete( UniswapV2APIlocalVarJSON);
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

// PairHourDatas (current)
//
// Gets pairHourDatas.
//
list_t*
UniswapV2API_uniswapV2PairHourDatasCurrent(apiClient_t *apiClient)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/uniswapv2/pairHourDatas/current")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/uniswapv2/pairHourDatas/current");



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
    cJSON *UniswapV2APIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    if(!cJSON_IsArray(UniswapV2APIlocalVarJSON)) {
        return 0;//nonprimitive container
    }
    list_t *elementToReturn = list_createList();
    cJSON *VarJSON;
    cJSON_ArrayForEach(VarJSON, UniswapV2APIlocalVarJSON)
    {
        if(!cJSON_IsObject(VarJSON))
        {
           // return 0;
        }
        char *localVarJSONToChar = cJSON_Print(VarJSON);
        list_addElement(elementToReturn , localVarJSONToChar);
    }

    cJSON_Delete( UniswapV2APIlocalVarJSON);
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

// Pairs (current)
//
// Gets pairs.
//
list_t*
UniswapV2API_uniswapV2PairsCurrent(apiClient_t *apiClient, char * id )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/uniswapv2/pairs/current")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/uniswapv2/pairs/current");




    // query parameters
    char *keyQuery_id = NULL;
    char * valueQuery_id = NULL;
    keyValuePair_t *keyPairQuery_id = 0;
    if (id)
    {
        keyQuery_id = strdup("id");
        valueQuery_id = strdup((id));
        keyPairQuery_id = keyValuePair_create(keyQuery_id, valueQuery_id);
        list_addElement(localVarQueryParameters,keyPairQuery_id);
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
    cJSON *UniswapV2APIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    if(!cJSON_IsArray(UniswapV2APIlocalVarJSON)) {
        return 0;//nonprimitive container
    }
    list_t *elementToReturn = list_createList();
    cJSON *VarJSON;
    cJSON_ArrayForEach(VarJSON, UniswapV2APIlocalVarJSON)
    {
        if(!cJSON_IsObject(VarJSON))
        {
           // return 0;
        }
        char *localVarJSONToChar = cJSON_Print(VarJSON);
        list_addElement(elementToReturn , localVarJSONToChar);
    }

    cJSON_Delete( UniswapV2APIlocalVarJSON);
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
    if(keyQuery_id){
        free(keyQuery_id);
        keyQuery_id = NULL;
    }
    if(valueQuery_id){
        free(valueQuery_id);
        valueQuery_id = NULL;
    }
    if(keyPairQuery_id){
        keyValuePair_free(keyPairQuery_id);
        keyPairQuery_id = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// TokenDayDatas (current)
//
// Gets tokenDayDatas.
//
list_t*
UniswapV2API_uniswapV2TokenDayDatasCurrent(apiClient_t *apiClient)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/uniswapv2/tokenDayDatas/current")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/uniswapv2/tokenDayDatas/current");



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
    cJSON *UniswapV2APIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    if(!cJSON_IsArray(UniswapV2APIlocalVarJSON)) {
        return 0;//nonprimitive container
    }
    list_t *elementToReturn = list_createList();
    cJSON *VarJSON;
    cJSON_ArrayForEach(VarJSON, UniswapV2APIlocalVarJSON)
    {
        if(!cJSON_IsObject(VarJSON))
        {
           // return 0;
        }
        char *localVarJSONToChar = cJSON_Print(VarJSON);
        list_addElement(elementToReturn , localVarJSONToChar);
    }

    cJSON_Delete( UniswapV2APIlocalVarJSON);
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

// Transactions (current)
//
// Gets transactions.
//
list_t*
UniswapV2API_uniswapV2TransactionsCurrent(apiClient_t *apiClient)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/uniswapv2/transactions/current")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/uniswapv2/transactions/current");



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
    cJSON *UniswapV2APIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    if(!cJSON_IsArray(UniswapV2APIlocalVarJSON)) {
        return 0;//nonprimitive container
    }
    list_t *elementToReturn = list_createList();
    cJSON *VarJSON;
    cJSON_ArrayForEach(VarJSON, UniswapV2APIlocalVarJSON)
    {
        if(!cJSON_IsObject(VarJSON))
        {
           // return 0;
        }
        char *localVarJSONToChar = cJSON_Print(VarJSON);
        list_addElement(elementToReturn , localVarJSONToChar);
    }

    cJSON_Delete( UniswapV2APIlocalVarJSON);
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

// UniswapDayDatas (current)
//
// Gets uniswapDayDatas.
//
list_t*
UniswapV2API_uniswapV2UniswapDayDatasCurrent(apiClient_t *apiClient)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/uniswapv2/uniswapDayDatas/current")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/uniswapv2/uniswapDayDatas/current");



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
    cJSON *UniswapV2APIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    if(!cJSON_IsArray(UniswapV2APIlocalVarJSON)) {
        return 0;//nonprimitive container
    }
    list_t *elementToReturn = list_createList();
    cJSON *VarJSON;
    cJSON_ArrayForEach(VarJSON, UniswapV2APIlocalVarJSON)
    {
        if(!cJSON_IsObject(VarJSON))
        {
           // return 0;
        }
        char *localVarJSONToChar = cJSON_Print(VarJSON);
        list_addElement(elementToReturn , localVarJSONToChar);
    }

    cJSON_Delete( UniswapV2APIlocalVarJSON);
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

// UniswapFactorys (current)
//
// Gets uniswapFactorys.
//
list_t*
UniswapV2API_uniswapV2UniswapFactorysCurrent(apiClient_t *apiClient)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/uniswapv2/uniswapFactorys/current")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/uniswapv2/uniswapFactorys/current");



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
    cJSON *UniswapV2APIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    if(!cJSON_IsArray(UniswapV2APIlocalVarJSON)) {
        return 0;//nonprimitive container
    }
    list_t *elementToReturn = list_createList();
    cJSON *VarJSON;
    cJSON_ArrayForEach(VarJSON, UniswapV2APIlocalVarJSON)
    {
        if(!cJSON_IsObject(VarJSON))
        {
           // return 0;
        }
        char *localVarJSONToChar = cJSON_Print(VarJSON);
        list_addElement(elementToReturn , localVarJSONToChar);
    }

    cJSON_Delete( UniswapV2APIlocalVarJSON);
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

// Users (current)
//
// Gets users.
//
list_t*
UniswapV2API_uniswapV2UsersCurrent(apiClient_t *apiClient)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/uniswapv2/users/current")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/uniswapv2/users/current");



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
    cJSON *UniswapV2APIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    if(!cJSON_IsArray(UniswapV2APIlocalVarJSON)) {
        return 0;//nonprimitive container
    }
    list_t *elementToReturn = list_createList();
    cJSON *VarJSON;
    cJSON_ArrayForEach(VarJSON, UniswapV2APIlocalVarJSON)
    {
        if(!cJSON_IsObject(VarJSON))
        {
           // return 0;
        }
        char *localVarJSONToChar = cJSON_Print(VarJSON);
        list_addElement(elementToReturn , localVarJSONToChar);
    }

    cJSON_Delete( UniswapV2APIlocalVarJSON);
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

