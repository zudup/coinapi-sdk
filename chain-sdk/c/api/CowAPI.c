#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>
#include "CowAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define intToStr(dst, src) \
    do {\
    char dst[256];\
    snprintf(dst, 256, "%ld", (long int)(src));\
}while(0)


void
CowAPI_dappsCowOrdersHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/cow/orders/historical")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/cow/orders/historical");




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
CowAPI_dappsCowPoiHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/cow/poi/historical")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/cow/poi/historical");




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
CowAPI_dappsCowSettlementHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/cow/settlement/historical")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/cow/settlement/historical");




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
CowAPI_dappsCowTokensHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * tokenId )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/cow/tokens/historical")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/cow/tokens/historical");




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
CowAPI_dappsCowTradesHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/cow/trades/historical")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/cow/trades/historical");




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
CowAPI_dappsCowUsersHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/dapps/cow/users/historical")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/dapps/cow/users/historical");




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

