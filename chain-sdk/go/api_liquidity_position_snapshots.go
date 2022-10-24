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


// LiquidityPositionSnapshotsApiService LiquidityPositionSnapshotsApi service
type LiquidityPositionSnapshotsApiService service

type ApiChainsChainIdDappsSushiswapLiquidityPositionSnapshotsHistoricalGetRequest struct {
	ctx context.Context
	ApiService *LiquidityPositionSnapshotsApiService
	chainId string
	startBlock *int64
	endBlock *int64
	startDate *time.Time
	endDate *time.Time
	poolId *string
}

func (r ApiChainsChainIdDappsSushiswapLiquidityPositionSnapshotsHistoricalGetRequest) StartBlock(startBlock int64) ApiChainsChainIdDappsSushiswapLiquidityPositionSnapshotsHistoricalGetRequest {
	r.startBlock = &startBlock
	return r
}

func (r ApiChainsChainIdDappsSushiswapLiquidityPositionSnapshotsHistoricalGetRequest) EndBlock(endBlock int64) ApiChainsChainIdDappsSushiswapLiquidityPositionSnapshotsHistoricalGetRequest {
	r.endBlock = &endBlock
	return r
}

func (r ApiChainsChainIdDappsSushiswapLiquidityPositionSnapshotsHistoricalGetRequest) StartDate(startDate time.Time) ApiChainsChainIdDappsSushiswapLiquidityPositionSnapshotsHistoricalGetRequest {
	r.startDate = &startDate
	return r
}

func (r ApiChainsChainIdDappsSushiswapLiquidityPositionSnapshotsHistoricalGetRequest) EndDate(endDate time.Time) ApiChainsChainIdDappsSushiswapLiquidityPositionSnapshotsHistoricalGetRequest {
	r.endDate = &endDate
	return r
}

func (r ApiChainsChainIdDappsSushiswapLiquidityPositionSnapshotsHistoricalGetRequest) PoolId(poolId string) ApiChainsChainIdDappsSushiswapLiquidityPositionSnapshotsHistoricalGetRequest {
	r.poolId = &poolId
	return r
}

func (r ApiChainsChainIdDappsSushiswapLiquidityPositionSnapshotsHistoricalGetRequest) Execute() (*http.Response, error) {
	return r.ApiService.ChainsChainIdDappsSushiswapLiquidityPositionSnapshotsHistoricalGetExecute(r)
}

/*
ChainsChainIdDappsSushiswapLiquidityPositionSnapshotsHistoricalGet Method for ChainsChainIdDappsSushiswapLiquidityPositionSnapshotsHistoricalGet

 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @param chainId
 @return ApiChainsChainIdDappsSushiswapLiquidityPositionSnapshotsHistoricalGetRequest
*/
func (a *LiquidityPositionSnapshotsApiService) ChainsChainIdDappsSushiswapLiquidityPositionSnapshotsHistoricalGet(ctx context.Context, chainId string) ApiChainsChainIdDappsSushiswapLiquidityPositionSnapshotsHistoricalGetRequest {
	return ApiChainsChainIdDappsSushiswapLiquidityPositionSnapshotsHistoricalGetRequest{
		ApiService: a,
		ctx: ctx,
		chainId: chainId,
	}
}

// Execute executes the request
func (a *LiquidityPositionSnapshotsApiService) ChainsChainIdDappsSushiswapLiquidityPositionSnapshotsHistoricalGetExecute(r ApiChainsChainIdDappsSushiswapLiquidityPositionSnapshotsHistoricalGetRequest) (*http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodGet
		localVarPostBody     interface{}
		formFiles            []formFile
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "LiquidityPositionSnapshotsApiService.ChainsChainIdDappsSushiswapLiquidityPositionSnapshotsHistoricalGet")
	if err != nil {
		return nil, &GenericOpenAPIError{error: err.Error()}
	}

	localVarPath := localBasePath + "/chains/{chain_id}/dapps/sushiswap/liquidityPositionSnapshots/historical"
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
	if r.poolId != nil {
		localVarQueryParams.Add("poolId", parameterToString(*r.poolId, ""))
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

type ApiChainsChainIdDappsUniswapv2LiquidityPositionSnapshotsHistoricalGetRequest struct {
	ctx context.Context
	ApiService *LiquidityPositionSnapshotsApiService
	chainId string
	startBlock *int64
	endBlock *int64
	startDate *time.Time
	endDate *time.Time
	poolId *string
}

func (r ApiChainsChainIdDappsUniswapv2LiquidityPositionSnapshotsHistoricalGetRequest) StartBlock(startBlock int64) ApiChainsChainIdDappsUniswapv2LiquidityPositionSnapshotsHistoricalGetRequest {
	r.startBlock = &startBlock
	return r
}

func (r ApiChainsChainIdDappsUniswapv2LiquidityPositionSnapshotsHistoricalGetRequest) EndBlock(endBlock int64) ApiChainsChainIdDappsUniswapv2LiquidityPositionSnapshotsHistoricalGetRequest {
	r.endBlock = &endBlock
	return r
}

func (r ApiChainsChainIdDappsUniswapv2LiquidityPositionSnapshotsHistoricalGetRequest) StartDate(startDate time.Time) ApiChainsChainIdDappsUniswapv2LiquidityPositionSnapshotsHistoricalGetRequest {
	r.startDate = &startDate
	return r
}

func (r ApiChainsChainIdDappsUniswapv2LiquidityPositionSnapshotsHistoricalGetRequest) EndDate(endDate time.Time) ApiChainsChainIdDappsUniswapv2LiquidityPositionSnapshotsHistoricalGetRequest {
	r.endDate = &endDate
	return r
}

func (r ApiChainsChainIdDappsUniswapv2LiquidityPositionSnapshotsHistoricalGetRequest) PoolId(poolId string) ApiChainsChainIdDappsUniswapv2LiquidityPositionSnapshotsHistoricalGetRequest {
	r.poolId = &poolId
	return r
}

func (r ApiChainsChainIdDappsUniswapv2LiquidityPositionSnapshotsHistoricalGetRequest) Execute() (*http.Response, error) {
	return r.ApiService.ChainsChainIdDappsUniswapv2LiquidityPositionSnapshotsHistoricalGetExecute(r)
}

/*
ChainsChainIdDappsUniswapv2LiquidityPositionSnapshotsHistoricalGet Method for ChainsChainIdDappsUniswapv2LiquidityPositionSnapshotsHistoricalGet

 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @param chainId
 @return ApiChainsChainIdDappsUniswapv2LiquidityPositionSnapshotsHistoricalGetRequest
*/
func (a *LiquidityPositionSnapshotsApiService) ChainsChainIdDappsUniswapv2LiquidityPositionSnapshotsHistoricalGet(ctx context.Context, chainId string) ApiChainsChainIdDappsUniswapv2LiquidityPositionSnapshotsHistoricalGetRequest {
	return ApiChainsChainIdDappsUniswapv2LiquidityPositionSnapshotsHistoricalGetRequest{
		ApiService: a,
		ctx: ctx,
		chainId: chainId,
	}
}

// Execute executes the request
func (a *LiquidityPositionSnapshotsApiService) ChainsChainIdDappsUniswapv2LiquidityPositionSnapshotsHistoricalGetExecute(r ApiChainsChainIdDappsUniswapv2LiquidityPositionSnapshotsHistoricalGetRequest) (*http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodGet
		localVarPostBody     interface{}
		formFiles            []formFile
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "LiquidityPositionSnapshotsApiService.ChainsChainIdDappsUniswapv2LiquidityPositionSnapshotsHistoricalGet")
	if err != nil {
		return nil, &GenericOpenAPIError{error: err.Error()}
	}

	localVarPath := localBasePath + "/chains/{chain_id}/dapps/uniswapv2/liquidityPositionSnapshots/historical"
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
	if r.poolId != nil {
		localVarQueryParams.Add("poolId", parameterToString(*r.poolId, ""))
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
