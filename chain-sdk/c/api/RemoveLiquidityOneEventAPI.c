#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>
#include "RemoveLiquidityOneEventAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define intToStr(dst, src) \
    do {\
    char dst[256];\
    snprintf(dst, 256, "%ld", (long int)(src));\
}while(0)


void
RemoveLiquidityOneEventAPI_chainsChainIdDappsCurveRemoveLiquidityOneEventHistoricalGet(apiClient_t *apiClient, char * chain_id , long startBlock , long endBlock , char startDate , char endDate , char * poolId )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/chains/{chain_id}/dapps/curve/removeLiquidityOneEvent/historical")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/chains/{chain_id}/dapps/curve/removeLiquidityOneEvent/historical");


    // Path Params
    long sizeOfPathParams_chain_id = strlen(chain_id)+3 + strlen("{ chain_id }");
    if(chain_id == NULL) {
        goto end;
    }
    char* localVarToReplace_chain_id = malloc(sizeOfPathParams_chain_id);
    sprintf(localVarToReplace_chain_id, "{%s}", "chain_id");

    localVarPath = strReplace(localVarPath, localVarToReplace_chain_id, chain_id);



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
    free(localVarToReplace_chain_id);
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

