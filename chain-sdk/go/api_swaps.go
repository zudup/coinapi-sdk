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


// SwapsApiService SwapsApi service
type SwapsApiService service

type ApiChainsChainIdDappsCurveSwapsHistoricalGetRequest struct {
	ctx context.Context
	ApiService *SwapsApiService
	chainId string
	startBlock *int64
	endBlock *int64
	startDate *time.Time
	endDate *time.Time
	poolId *string
}

func (r ApiChainsChainIdDappsCurveSwapsHistoricalGetRequest) StartBlock(startBlock int64) ApiChainsChainIdDappsCurveSwapsHistoricalGetRequest {
	r.startBlock = &startBlock
	return r
}

func (r ApiChainsChainIdDappsCurveSwapsHistoricalGetRequest) EndBlock(endBlock int64) ApiChainsChainIdDappsCurveSwapsHistoricalGetRequest {
	r.endBlock = &endBlock
	return r
}

func (r ApiChainsChainIdDappsCurveSwapsHistoricalGetRequest) StartDate(startDate time.Time) ApiChainsChainIdDappsCurveSwapsHistoricalGetRequest {
	r.startDate = &startDate
	return r
}

func (r ApiChainsChainIdDappsCurveSwapsHistoricalGetRequest) EndDate(endDate time.Time) ApiChainsChainIdDappsCurveSwapsHistoricalGetRequest {
	r.endDate = &endDate
	return r
}

func (r ApiChainsChainIdDappsCurveSwapsHistoricalGetRequest) PoolId(poolId string) ApiChainsChainIdDappsCurveSwapsHistoricalGetRequest {
	r.poolId = &poolId
	return r
}

func (r ApiChainsChainIdDappsCurveSwapsHistoricalGetRequest) Execute() (*http.Response, error) {
	return r.ApiService.ChainsChainIdDappsCurveSwapsHistoricalGetExecute(r)
}

/*
ChainsChainIdDappsCurveSwapsHistoricalGet Method for ChainsChainIdDappsCurveSwapsHistoricalGet

 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @param chainId
 @return ApiChainsChainIdDappsCurveSwapsHistoricalGetRequest
*/
func (a *SwapsApiService) ChainsChainIdDappsCurveSwapsHistoricalGet(ctx context.Context, chainId string) ApiChainsChainIdDappsCurveSwapsHistoricalGetRequest {
	return ApiChainsChainIdDappsCurveSwapsHistoricalGetRequest{
		ApiService: a,
		ctx: ctx,
		chainId: chainId,
	}
}

// Execute executes the request
func (a *SwapsApiService) ChainsChainIdDappsCurveSwapsHistoricalGetExecute(r ApiChainsChainIdDappsCurveSwapsHistoricalGetRequest) (*http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodGet
		localVarPostBody     interface{}
		formFiles            []formFile
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "SwapsApiService.ChainsChainIdDappsCurveSwapsHistoricalGet")
	if err != nil {
		return nil, &GenericOpenAPIError{error: err.Error()}
	}

	localVarPath := localBasePath + "/chains/{chain_id}/dapps/curve/swaps/historical"
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

type ApiChainsChainIdDappsSushiswapSwapsHistoricalGetRequest struct {
	ctx context.Context
	ApiService *SwapsApiService
	chainId string
	startBlock *int64
	endBlock *int64
	startDate *time.Time
	endDate *time.Time
	poolId *string
}

func (r ApiChainsChainIdDappsSushiswapSwapsHistoricalGetRequest) StartBlock(startBlock int64) ApiChainsChainIdDappsSushiswapSwapsHistoricalGetRequest {
	r.startBlock = &startBlock
	return r
}

func (r ApiChainsChainIdDappsSushiswapSwapsHistoricalGetRequest) EndBlock(endBlock int64) ApiChainsChainIdDappsSushiswapSwapsHistoricalGetRequest {
	r.endBlock = &endBlock
	return r
}

func (r ApiChainsChainIdDappsSushiswapSwapsHistoricalGetRequest) StartDate(startDate time.Time) ApiChainsChainIdDappsSushiswapSwapsHistoricalGetRequest {
	r.startDate = &startDate
	return r
}

func (r ApiChainsChainIdDappsSushiswapSwapsHistoricalGetRequest) EndDate(endDate time.Time) ApiChainsChainIdDappsSushiswapSwapsHistoricalGetRequest {
	r.endDate = &endDate
	return r
}

func (r ApiChainsChainIdDappsSushiswapSwapsHistoricalGetRequest) PoolId(poolId string) ApiChainsChainIdDappsSushiswapSwapsHistoricalGetRequest {
	r.poolId = &poolId
	return r
}

func (r ApiChainsChainIdDappsSushiswapSwapsHistoricalGetRequest) Execute() (*http.Response, error) {
	return r.ApiService.ChainsChainIdDappsSushiswapSwapsHistoricalGetExecute(r)
}

/*
ChainsChainIdDappsSushiswapSwapsHistoricalGet Method for ChainsChainIdDappsSushiswapSwapsHistoricalGet

 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @param chainId
 @return ApiChainsChainIdDappsSushiswapSwapsHistoricalGetRequest
*/
func (a *SwapsApiService) ChainsChainIdDappsSushiswapSwapsHistoricalGet(ctx context.Context, chainId string) ApiChainsChainIdDappsSushiswapSwapsHistoricalGetRequest {
	return ApiChainsChainIdDappsSushiswapSwapsHistoricalGetRequest{
		ApiService: a,
		ctx: ctx,
		chainId: chainId,
	}
}

// Execute executes the request
func (a *SwapsApiService) ChainsChainIdDappsSushiswapSwapsHistoricalGetExecute(r ApiChainsChainIdDappsSushiswapSwapsHistoricalGetRequest) (*http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodGet
		localVarPostBody     interface{}
		formFiles            []formFile
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "SwapsApiService.ChainsChainIdDappsSushiswapSwapsHistoricalGet")
	if err != nil {
		return nil, &GenericOpenAPIError{error: err.Error()}
	}

	localVarPath := localBasePath + "/chains/{chain_id}/dapps/sushiswap/swaps/historical"
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

type ApiChainsChainIdDappsUniswapv2SwapsHistoricalGetRequest struct {
	ctx context.Context
	ApiService *SwapsApiService
	chainId string
	startBlock *int64
	endBlock *int64
	startDate *time.Time
	endDate *time.Time
	poolId *string
}

func (r ApiChainsChainIdDappsUniswapv2SwapsHistoricalGetRequest) StartBlock(startBlock int64) ApiChainsChainIdDappsUniswapv2SwapsHistoricalGetRequest {
	r.startBlock = &startBlock
	return r
}

func (r ApiChainsChainIdDappsUniswapv2SwapsHistoricalGetRequest) EndBlock(endBlock int64) ApiChainsChainIdDappsUniswapv2SwapsHistoricalGetRequest {
	r.endBlock = &endBlock
	return r
}

func (r ApiChainsChainIdDappsUniswapv2SwapsHistoricalGetRequest) StartDate(startDate time.Time) ApiChainsChainIdDappsUniswapv2SwapsHistoricalGetRequest {
	r.startDate = &startDate
	return r
}

func (r ApiChainsChainIdDappsUniswapv2SwapsHistoricalGetRequest) EndDate(endDate time.Time) ApiChainsChainIdDappsUniswapv2SwapsHistoricalGetRequest {
	r.endDate = &endDate
	return r
}

func (r ApiChainsChainIdDappsUniswapv2SwapsHistoricalGetRequest) PoolId(poolId string) ApiChainsChainIdDappsUniswapv2SwapsHistoricalGetRequest {
	r.poolId = &poolId
	return r
}

func (r ApiChainsChainIdDappsUniswapv2SwapsHistoricalGetRequest) Execute() (*http.Response, error) {
	return r.ApiService.ChainsChainIdDappsUniswapv2SwapsHistoricalGetExecute(r)
}

/*
ChainsChainIdDappsUniswapv2SwapsHistoricalGet Method for ChainsChainIdDappsUniswapv2SwapsHistoricalGet

 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @param chainId
 @return ApiChainsChainIdDappsUniswapv2SwapsHistoricalGetRequest
*/
func (a *SwapsApiService) ChainsChainIdDappsUniswapv2SwapsHistoricalGet(ctx context.Context, chainId string) ApiChainsChainIdDappsUniswapv2SwapsHistoricalGetRequest {
	return ApiChainsChainIdDappsUniswapv2SwapsHistoricalGetRequest{
		ApiService: a,
		ctx: ctx,
		chainId: chainId,
	}
}

// Execute executes the request
func (a *SwapsApiService) ChainsChainIdDappsUniswapv2SwapsHistoricalGetExecute(r ApiChainsChainIdDappsUniswapv2SwapsHistoricalGetRequest) (*http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodGet
		localVarPostBody     interface{}
		formFiles            []formFile
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "SwapsApiService.ChainsChainIdDappsUniswapv2SwapsHistoricalGet")
	if err != nil {
		return nil, &GenericOpenAPIError{error: err.Error()}
	}

	localVarPath := localBasePath + "/chains/{chain_id}/dapps/uniswapv2/swaps/historical"
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

type ApiChainsChainIdDappsUniswapv3SwapsHistoricalGetRequest struct {
	ctx context.Context
	ApiService *SwapsApiService
	chainId string
	startBlock *int64
	endBlock *int64
	startDate *time.Time
	endDate *time.Time
	poolId *string
}

func (r ApiChainsChainIdDappsUniswapv3SwapsHistoricalGetRequest) StartBlock(startBlock int64) ApiChainsChainIdDappsUniswapv3SwapsHistoricalGetRequest {
	r.startBlock = &startBlock
	return r
}

func (r ApiChainsChainIdDappsUniswapv3SwapsHistoricalGetRequest) EndBlock(endBlock int64) ApiChainsChainIdDappsUniswapv3SwapsHistoricalGetRequest {
	r.endBlock = &endBlock
	return r
}

func (r ApiChainsChainIdDappsUniswapv3SwapsHistoricalGetRequest) StartDate(startDate time.Time) ApiChainsChainIdDappsUniswapv3SwapsHistoricalGetRequest {
	r.startDate = &startDate
	return r
}

func (r ApiChainsChainIdDappsUniswapv3SwapsHistoricalGetRequest) EndDate(endDate time.Time) ApiChainsChainIdDappsUniswapv3SwapsHistoricalGetRequest {
	r.endDate = &endDate
	return r
}

func (r ApiChainsChainIdDappsUniswapv3SwapsHistoricalGetRequest) PoolId(poolId string) ApiChainsChainIdDappsUniswapv3SwapsHistoricalGetRequest {
	r.poolId = &poolId
	return r
}

func (r ApiChainsChainIdDappsUniswapv3SwapsHistoricalGetRequest) Execute() (*http.Response, error) {
	return r.ApiService.ChainsChainIdDappsUniswapv3SwapsHistoricalGetExecute(r)
}

/*
ChainsChainIdDappsUniswapv3SwapsHistoricalGet Method for ChainsChainIdDappsUniswapv3SwapsHistoricalGet

 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @param chainId
 @return ApiChainsChainIdDappsUniswapv3SwapsHistoricalGetRequest
*/
func (a *SwapsApiService) ChainsChainIdDappsUniswapv3SwapsHistoricalGet(ctx context.Context, chainId string) ApiChainsChainIdDappsUniswapv3SwapsHistoricalGetRequest {
	return ApiChainsChainIdDappsUniswapv3SwapsHistoricalGetRequest{
		ApiService: a,
		ctx: ctx,
		chainId: chainId,
	}
}

// Execute executes the request
func (a *SwapsApiService) ChainsChainIdDappsUniswapv3SwapsHistoricalGetExecute(r ApiChainsChainIdDappsUniswapv3SwapsHistoricalGetRequest) (*http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodGet
		localVarPostBody     interface{}
		formFiles            []formFile
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "SwapsApiService.ChainsChainIdDappsUniswapv3SwapsHistoricalGet")
	if err != nil {
		return nil, &GenericOpenAPIError{error: err.Error()}
	}

	localVarPath := localBasePath + "/chains/{chain_id}/dapps/uniswapv3/swaps/historical"
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
