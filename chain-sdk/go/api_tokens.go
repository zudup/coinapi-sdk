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


// TokensApiService TokensApi service
type TokensApiService service

type ApiChainsChainIdDappsCowTokensHistoricalGetRequest struct {
	ctx context.Context
	ApiService *TokensApiService
	chainId string
	startBlock *int64
	endBlock *int64
	startDate *time.Time
	endDate *time.Time
	tokenId *string
}

func (r ApiChainsChainIdDappsCowTokensHistoricalGetRequest) StartBlock(startBlock int64) ApiChainsChainIdDappsCowTokensHistoricalGetRequest {
	r.startBlock = &startBlock
	return r
}

func (r ApiChainsChainIdDappsCowTokensHistoricalGetRequest) EndBlock(endBlock int64) ApiChainsChainIdDappsCowTokensHistoricalGetRequest {
	r.endBlock = &endBlock
	return r
}

func (r ApiChainsChainIdDappsCowTokensHistoricalGetRequest) StartDate(startDate time.Time) ApiChainsChainIdDappsCowTokensHistoricalGetRequest {
	r.startDate = &startDate
	return r
}

func (r ApiChainsChainIdDappsCowTokensHistoricalGetRequest) EndDate(endDate time.Time) ApiChainsChainIdDappsCowTokensHistoricalGetRequest {
	r.endDate = &endDate
	return r
}

func (r ApiChainsChainIdDappsCowTokensHistoricalGetRequest) TokenId(tokenId string) ApiChainsChainIdDappsCowTokensHistoricalGetRequest {
	r.tokenId = &tokenId
	return r
}

func (r ApiChainsChainIdDappsCowTokensHistoricalGetRequest) Execute() (*http.Response, error) {
	return r.ApiService.ChainsChainIdDappsCowTokensHistoricalGetExecute(r)
}

/*
ChainsChainIdDappsCowTokensHistoricalGet Method for ChainsChainIdDappsCowTokensHistoricalGet

 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @param chainId
 @return ApiChainsChainIdDappsCowTokensHistoricalGetRequest
*/
func (a *TokensApiService) ChainsChainIdDappsCowTokensHistoricalGet(ctx context.Context, chainId string) ApiChainsChainIdDappsCowTokensHistoricalGetRequest {
	return ApiChainsChainIdDappsCowTokensHistoricalGetRequest{
		ApiService: a,
		ctx: ctx,
		chainId: chainId,
	}
}

// Execute executes the request
func (a *TokensApiService) ChainsChainIdDappsCowTokensHistoricalGetExecute(r ApiChainsChainIdDappsCowTokensHistoricalGetRequest) (*http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodGet
		localVarPostBody     interface{}
		formFiles            []formFile
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "TokensApiService.ChainsChainIdDappsCowTokensHistoricalGet")
	if err != nil {
		return nil, &GenericOpenAPIError{error: err.Error()}
	}

	localVarPath := localBasePath + "/chains/{chain_id}/dapps/cow/tokens/historical"
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
	if r.tokenId != nil {
		localVarQueryParams.Add("tokenId", parameterToString(*r.tokenId, ""))
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

type ApiChainsChainIdDappsCurveTokensHistoricalGetRequest struct {
	ctx context.Context
	ApiService *TokensApiService
	chainId string
	startBlock *int64
	endBlock *int64
	startDate *time.Time
	endDate *time.Time
	tokenId *string
}

func (r ApiChainsChainIdDappsCurveTokensHistoricalGetRequest) StartBlock(startBlock int64) ApiChainsChainIdDappsCurveTokensHistoricalGetRequest {
	r.startBlock = &startBlock
	return r
}

func (r ApiChainsChainIdDappsCurveTokensHistoricalGetRequest) EndBlock(endBlock int64) ApiChainsChainIdDappsCurveTokensHistoricalGetRequest {
	r.endBlock = &endBlock
	return r
}

func (r ApiChainsChainIdDappsCurveTokensHistoricalGetRequest) StartDate(startDate time.Time) ApiChainsChainIdDappsCurveTokensHistoricalGetRequest {
	r.startDate = &startDate
	return r
}

func (r ApiChainsChainIdDappsCurveTokensHistoricalGetRequest) EndDate(endDate time.Time) ApiChainsChainIdDappsCurveTokensHistoricalGetRequest {
	r.endDate = &endDate
	return r
}

func (r ApiChainsChainIdDappsCurveTokensHistoricalGetRequest) TokenId(tokenId string) ApiChainsChainIdDappsCurveTokensHistoricalGetRequest {
	r.tokenId = &tokenId
	return r
}

func (r ApiChainsChainIdDappsCurveTokensHistoricalGetRequest) Execute() (*http.Response, error) {
	return r.ApiService.ChainsChainIdDappsCurveTokensHistoricalGetExecute(r)
}

/*
ChainsChainIdDappsCurveTokensHistoricalGet Method for ChainsChainIdDappsCurveTokensHistoricalGet

 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @param chainId
 @return ApiChainsChainIdDappsCurveTokensHistoricalGetRequest
*/
func (a *TokensApiService) ChainsChainIdDappsCurveTokensHistoricalGet(ctx context.Context, chainId string) ApiChainsChainIdDappsCurveTokensHistoricalGetRequest {
	return ApiChainsChainIdDappsCurveTokensHistoricalGetRequest{
		ApiService: a,
		ctx: ctx,
		chainId: chainId,
	}
}

// Execute executes the request
func (a *TokensApiService) ChainsChainIdDappsCurveTokensHistoricalGetExecute(r ApiChainsChainIdDappsCurveTokensHistoricalGetRequest) (*http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodGet
		localVarPostBody     interface{}
		formFiles            []formFile
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "TokensApiService.ChainsChainIdDappsCurveTokensHistoricalGet")
	if err != nil {
		return nil, &GenericOpenAPIError{error: err.Error()}
	}

	localVarPath := localBasePath + "/chains/{chain_id}/dapps/curve/tokens/historical"
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
	if r.tokenId != nil {
		localVarQueryParams.Add("tokenId", parameterToString(*r.tokenId, ""))
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

type ApiChainsChainIdDappsDexTokensHistoricalGetRequest struct {
	ctx context.Context
	ApiService *TokensApiService
	chainId string
	startBlock *int64
	endBlock *int64
	startDate *time.Time
	endDate *time.Time
	tokenId *string
}

func (r ApiChainsChainIdDappsDexTokensHistoricalGetRequest) StartBlock(startBlock int64) ApiChainsChainIdDappsDexTokensHistoricalGetRequest {
	r.startBlock = &startBlock
	return r
}

func (r ApiChainsChainIdDappsDexTokensHistoricalGetRequest) EndBlock(endBlock int64) ApiChainsChainIdDappsDexTokensHistoricalGetRequest {
	r.endBlock = &endBlock
	return r
}

func (r ApiChainsChainIdDappsDexTokensHistoricalGetRequest) StartDate(startDate time.Time) ApiChainsChainIdDappsDexTokensHistoricalGetRequest {
	r.startDate = &startDate
	return r
}

func (r ApiChainsChainIdDappsDexTokensHistoricalGetRequest) EndDate(endDate time.Time) ApiChainsChainIdDappsDexTokensHistoricalGetRequest {
	r.endDate = &endDate
	return r
}

func (r ApiChainsChainIdDappsDexTokensHistoricalGetRequest) TokenId(tokenId string) ApiChainsChainIdDappsDexTokensHistoricalGetRequest {
	r.tokenId = &tokenId
	return r
}

func (r ApiChainsChainIdDappsDexTokensHistoricalGetRequest) Execute() (*http.Response, error) {
	return r.ApiService.ChainsChainIdDappsDexTokensHistoricalGetExecute(r)
}

/*
ChainsChainIdDappsDexTokensHistoricalGet Method for ChainsChainIdDappsDexTokensHistoricalGet

 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @param chainId
 @return ApiChainsChainIdDappsDexTokensHistoricalGetRequest
*/
func (a *TokensApiService) ChainsChainIdDappsDexTokensHistoricalGet(ctx context.Context, chainId string) ApiChainsChainIdDappsDexTokensHistoricalGetRequest {
	return ApiChainsChainIdDappsDexTokensHistoricalGetRequest{
		ApiService: a,
		ctx: ctx,
		chainId: chainId,
	}
}

// Execute executes the request
func (a *TokensApiService) ChainsChainIdDappsDexTokensHistoricalGetExecute(r ApiChainsChainIdDappsDexTokensHistoricalGetRequest) (*http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodGet
		localVarPostBody     interface{}
		formFiles            []formFile
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "TokensApiService.ChainsChainIdDappsDexTokensHistoricalGet")
	if err != nil {
		return nil, &GenericOpenAPIError{error: err.Error()}
	}

	localVarPath := localBasePath + "/chains/{chain_id}/dapps/dex/tokens/historical"
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
	if r.tokenId != nil {
		localVarQueryParams.Add("tokenId", parameterToString(*r.tokenId, ""))
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

type ApiChainsChainIdDappsSushiswapTokensHistoricalGetRequest struct {
	ctx context.Context
	ApiService *TokensApiService
	chainId string
	startBlock *int64
	endBlock *int64
	startDate *time.Time
	endDate *time.Time
	tokenId *string
}

func (r ApiChainsChainIdDappsSushiswapTokensHistoricalGetRequest) StartBlock(startBlock int64) ApiChainsChainIdDappsSushiswapTokensHistoricalGetRequest {
	r.startBlock = &startBlock
	return r
}

func (r ApiChainsChainIdDappsSushiswapTokensHistoricalGetRequest) EndBlock(endBlock int64) ApiChainsChainIdDappsSushiswapTokensHistoricalGetRequest {
	r.endBlock = &endBlock
	return r
}

func (r ApiChainsChainIdDappsSushiswapTokensHistoricalGetRequest) StartDate(startDate time.Time) ApiChainsChainIdDappsSushiswapTokensHistoricalGetRequest {
	r.startDate = &startDate
	return r
}

func (r ApiChainsChainIdDappsSushiswapTokensHistoricalGetRequest) EndDate(endDate time.Time) ApiChainsChainIdDappsSushiswapTokensHistoricalGetRequest {
	r.endDate = &endDate
	return r
}

func (r ApiChainsChainIdDappsSushiswapTokensHistoricalGetRequest) TokenId(tokenId string) ApiChainsChainIdDappsSushiswapTokensHistoricalGetRequest {
	r.tokenId = &tokenId
	return r
}

func (r ApiChainsChainIdDappsSushiswapTokensHistoricalGetRequest) Execute() (*http.Response, error) {
	return r.ApiService.ChainsChainIdDappsSushiswapTokensHistoricalGetExecute(r)
}

/*
ChainsChainIdDappsSushiswapTokensHistoricalGet Method for ChainsChainIdDappsSushiswapTokensHistoricalGet

 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @param chainId
 @return ApiChainsChainIdDappsSushiswapTokensHistoricalGetRequest
*/
func (a *TokensApiService) ChainsChainIdDappsSushiswapTokensHistoricalGet(ctx context.Context, chainId string) ApiChainsChainIdDappsSushiswapTokensHistoricalGetRequest {
	return ApiChainsChainIdDappsSushiswapTokensHistoricalGetRequest{
		ApiService: a,
		ctx: ctx,
		chainId: chainId,
	}
}

// Execute executes the request
func (a *TokensApiService) ChainsChainIdDappsSushiswapTokensHistoricalGetExecute(r ApiChainsChainIdDappsSushiswapTokensHistoricalGetRequest) (*http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodGet
		localVarPostBody     interface{}
		formFiles            []formFile
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "TokensApiService.ChainsChainIdDappsSushiswapTokensHistoricalGet")
	if err != nil {
		return nil, &GenericOpenAPIError{error: err.Error()}
	}

	localVarPath := localBasePath + "/chains/{chain_id}/dapps/sushiswap/tokens/historical"
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
	if r.tokenId != nil {
		localVarQueryParams.Add("tokenId", parameterToString(*r.tokenId, ""))
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

type ApiChainsChainIdDappsUniswapv2TokensHistoricalGetRequest struct {
	ctx context.Context
	ApiService *TokensApiService
	chainId string
	startBlock *int64
	endBlock *int64
	startDate *time.Time
	endDate *time.Time
	tokenId *string
}

func (r ApiChainsChainIdDappsUniswapv2TokensHistoricalGetRequest) StartBlock(startBlock int64) ApiChainsChainIdDappsUniswapv2TokensHistoricalGetRequest {
	r.startBlock = &startBlock
	return r
}

func (r ApiChainsChainIdDappsUniswapv2TokensHistoricalGetRequest) EndBlock(endBlock int64) ApiChainsChainIdDappsUniswapv2TokensHistoricalGetRequest {
	r.endBlock = &endBlock
	return r
}

func (r ApiChainsChainIdDappsUniswapv2TokensHistoricalGetRequest) StartDate(startDate time.Time) ApiChainsChainIdDappsUniswapv2TokensHistoricalGetRequest {
	r.startDate = &startDate
	return r
}

func (r ApiChainsChainIdDappsUniswapv2TokensHistoricalGetRequest) EndDate(endDate time.Time) ApiChainsChainIdDappsUniswapv2TokensHistoricalGetRequest {
	r.endDate = &endDate
	return r
}

func (r ApiChainsChainIdDappsUniswapv2TokensHistoricalGetRequest) TokenId(tokenId string) ApiChainsChainIdDappsUniswapv2TokensHistoricalGetRequest {
	r.tokenId = &tokenId
	return r
}

func (r ApiChainsChainIdDappsUniswapv2TokensHistoricalGetRequest) Execute() (*http.Response, error) {
	return r.ApiService.ChainsChainIdDappsUniswapv2TokensHistoricalGetExecute(r)
}

/*
ChainsChainIdDappsUniswapv2TokensHistoricalGet Method for ChainsChainIdDappsUniswapv2TokensHistoricalGet

 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @param chainId
 @return ApiChainsChainIdDappsUniswapv2TokensHistoricalGetRequest
*/
func (a *TokensApiService) ChainsChainIdDappsUniswapv2TokensHistoricalGet(ctx context.Context, chainId string) ApiChainsChainIdDappsUniswapv2TokensHistoricalGetRequest {
	return ApiChainsChainIdDappsUniswapv2TokensHistoricalGetRequest{
		ApiService: a,
		ctx: ctx,
		chainId: chainId,
	}
}

// Execute executes the request
func (a *TokensApiService) ChainsChainIdDappsUniswapv2TokensHistoricalGetExecute(r ApiChainsChainIdDappsUniswapv2TokensHistoricalGetRequest) (*http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodGet
		localVarPostBody     interface{}
		formFiles            []formFile
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "TokensApiService.ChainsChainIdDappsUniswapv2TokensHistoricalGet")
	if err != nil {
		return nil, &GenericOpenAPIError{error: err.Error()}
	}

	localVarPath := localBasePath + "/chains/{chain_id}/dapps/uniswapv2/tokens/historical"
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
	if r.tokenId != nil {
		localVarQueryParams.Add("tokenId", parameterToString(*r.tokenId, ""))
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

type ApiChainsChainIdDappsUniswapv3TokensHistoricalGetRequest struct {
	ctx context.Context
	ApiService *TokensApiService
	chainId string
	startBlock *int64
	endBlock *int64
	startDate *time.Time
	endDate *time.Time
	tokenId *string
}

func (r ApiChainsChainIdDappsUniswapv3TokensHistoricalGetRequest) StartBlock(startBlock int64) ApiChainsChainIdDappsUniswapv3TokensHistoricalGetRequest {
	r.startBlock = &startBlock
	return r
}

func (r ApiChainsChainIdDappsUniswapv3TokensHistoricalGetRequest) EndBlock(endBlock int64) ApiChainsChainIdDappsUniswapv3TokensHistoricalGetRequest {
	r.endBlock = &endBlock
	return r
}

func (r ApiChainsChainIdDappsUniswapv3TokensHistoricalGetRequest) StartDate(startDate time.Time) ApiChainsChainIdDappsUniswapv3TokensHistoricalGetRequest {
	r.startDate = &startDate
	return r
}

func (r ApiChainsChainIdDappsUniswapv3TokensHistoricalGetRequest) EndDate(endDate time.Time) ApiChainsChainIdDappsUniswapv3TokensHistoricalGetRequest {
	r.endDate = &endDate
	return r
}

func (r ApiChainsChainIdDappsUniswapv3TokensHistoricalGetRequest) TokenId(tokenId string) ApiChainsChainIdDappsUniswapv3TokensHistoricalGetRequest {
	r.tokenId = &tokenId
	return r
}

func (r ApiChainsChainIdDappsUniswapv3TokensHistoricalGetRequest) Execute() (*http.Response, error) {
	return r.ApiService.ChainsChainIdDappsUniswapv3TokensHistoricalGetExecute(r)
}

/*
ChainsChainIdDappsUniswapv3TokensHistoricalGet Method for ChainsChainIdDappsUniswapv3TokensHistoricalGet

 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @param chainId
 @return ApiChainsChainIdDappsUniswapv3TokensHistoricalGetRequest
*/
func (a *TokensApiService) ChainsChainIdDappsUniswapv3TokensHistoricalGet(ctx context.Context, chainId string) ApiChainsChainIdDappsUniswapv3TokensHistoricalGetRequest {
	return ApiChainsChainIdDappsUniswapv3TokensHistoricalGetRequest{
		ApiService: a,
		ctx: ctx,
		chainId: chainId,
	}
}

// Execute executes the request
func (a *TokensApiService) ChainsChainIdDappsUniswapv3TokensHistoricalGetExecute(r ApiChainsChainIdDappsUniswapv3TokensHistoricalGetRequest) (*http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodGet
		localVarPostBody     interface{}
		formFiles            []formFile
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "TokensApiService.ChainsChainIdDappsUniswapv3TokensHistoricalGet")
	if err != nil {
		return nil, &GenericOpenAPIError{error: err.Error()}
	}

	localVarPath := localBasePath + "/chains/{chain_id}/dapps/uniswapv3/tokens/historical"
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
	if r.tokenId != nil {
		localVarQueryParams.Add("tokenId", parameterToString(*r.tokenId, ""))
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
