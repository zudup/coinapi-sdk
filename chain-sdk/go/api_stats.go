/*
OnChain API

 This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                             

API version: v1
Contact: support@coinapi.io
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package openapi

import (
	"bytes"
	"context"
	"io/ioutil"
	"net/http"
	"net/url"
	"strings"
	"time"
)


// StatsApiService StatsApi service
type StatsApiService service

type ApiChainsChainIdDappsDexStatsHistoricalGetRequest struct {
	ctx context.Context
	ApiService *StatsApiService
	chainId string
	startBlock *int64
	endBlock *int64
	startDate *time.Time
	endDate *time.Time
}

func (r ApiChainsChainIdDappsDexStatsHistoricalGetRequest) StartBlock(startBlock int64) ApiChainsChainIdDappsDexStatsHistoricalGetRequest {
	r.startBlock = &startBlock
	return r
}

func (r ApiChainsChainIdDappsDexStatsHistoricalGetRequest) EndBlock(endBlock int64) ApiChainsChainIdDappsDexStatsHistoricalGetRequest {
	r.endBlock = &endBlock
	return r
}

func (r ApiChainsChainIdDappsDexStatsHistoricalGetRequest) StartDate(startDate time.Time) ApiChainsChainIdDappsDexStatsHistoricalGetRequest {
	r.startDate = &startDate
	return r
}

func (r ApiChainsChainIdDappsDexStatsHistoricalGetRequest) EndDate(endDate time.Time) ApiChainsChainIdDappsDexStatsHistoricalGetRequest {
	r.endDate = &endDate
	return r
}

func (r ApiChainsChainIdDappsDexStatsHistoricalGetRequest) Execute() (*http.Response, error) {
	return r.ApiService.ChainsChainIdDappsDexStatsHistoricalGetExecute(r)
}

/*
ChainsChainIdDappsDexStatsHistoricalGet Method for ChainsChainIdDappsDexStatsHistoricalGet

 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @param chainId
 @return ApiChainsChainIdDappsDexStatsHistoricalGetRequest
*/
func (a *StatsApiService) ChainsChainIdDappsDexStatsHistoricalGet(ctx context.Context, chainId string) ApiChainsChainIdDappsDexStatsHistoricalGetRequest {
	return ApiChainsChainIdDappsDexStatsHistoricalGetRequest{
		ApiService: a,
		ctx: ctx,
		chainId: chainId,
	}
}

// Execute executes the request
func (a *StatsApiService) ChainsChainIdDappsDexStatsHistoricalGetExecute(r ApiChainsChainIdDappsDexStatsHistoricalGetRequest) (*http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodGet
		localVarPostBody     interface{}
		formFiles            []formFile
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "StatsApiService.ChainsChainIdDappsDexStatsHistoricalGet")
	if err != nil {
		return nil, &GenericOpenAPIError{error: err.Error()}
	}

	localVarPath := localBasePath + "/chains/{chain_id}/dapps/dex/stats/historical"
	localVarPath = strings.Replace(localVarPath, "{"+"chain_id"+"}", url.PathEscape(parameterToString(r.chainId, "")), -1)

	localVarHeaderParams := make(map[string]string)
	localVarQueryParams := url.Values{}
	localVarFormParams := url.Values{}

	if r.startBlock != nil {
		localVarQueryParams.Add("startBlock", parameterToString(*r.startBlock, ""))
	}
	if r.endBlock != nil {
		localVarQueryParams.Add("endBlock", parameterToString(*r.endBlock, ""))
	}
	if r.startDate != nil {
		localVarQueryParams.Add("startDate", parameterToString(*r.startDate, ""))
	}
	if r.endDate != nil {
		localVarQueryParams.Add("endDate", parameterToString(*r.endDate, ""))
	}
	// to determine the Content-Type header
	localVarHTTPContentTypes := []string{}

	// set Content-Type header
	localVarHTTPContentType := selectHeaderContentType(localVarHTTPContentTypes)
	if localVarHTTPContentType != "" {
		localVarHeaderParams["Content-Type"] = localVarHTTPContentType
	}

	// to determine the Accept header
	localVarHTTPHeaderAccepts := []string{}

	// set Accept header
	localVarHTTPHeaderAccept := selectHeaderAccept(localVarHTTPHeaderAccepts)
	if localVarHTTPHeaderAccept != "" {
		localVarHeaderParams["Accept"] = localVarHTTPHeaderAccept
	}
	req, err := a.client.prepareRequest(r.ctx, localVarPath, localVarHTTPMethod, localVarPostBody, localVarHeaderParams, localVarQueryParams, localVarFormParams, formFiles)
	if err != nil {
		return nil, err
	}

	localVarHTTPResponse, err := a.client.callAPI(req)
	if err != nil || localVarHTTPResponse == nil {
		return localVarHTTPResponse, err
	}

	localVarBody, err := ioutil.ReadAll(localVarHTTPResponse.Body)
	localVarHTTPResponse.Body.Close()
	localVarHTTPResponse.Body = ioutil.NopCloser(bytes.NewBuffer(localVarBody))
	if err != nil {
		return localVarHTTPResponse, err
	}

	if localVarHTTPResponse.StatusCode >= 300 {
		newErr := &GenericOpenAPIError{
			body:  localVarBody,
			error: localVarHTTPResponse.Status,
		}
		return localVarHTTPResponse, newErr
	}

	return localVarHTTPResponse, nil
}