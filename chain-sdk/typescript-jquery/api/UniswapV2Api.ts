/**
 * OnChain API
 *  This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                             
 *
 * The version of the OpenAPI document: v1
 * Contact: support@coinapi.io
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


import * as $ from 'jquery';
import * as models from '../model/models';
import { COLLECTION_FORMATS } from '../variables';
import { Configuration } from '../configuration';

/* tslint:disable:no-unused-variable member-ordering */


export class UniswapV2Api {
    protected basePath = 'https://onchain.coinapi.io';
    public defaultHeaders: Array<string> = [];
    public defaultExtraJQueryAjaxSettings?: JQueryAjaxSettings = undefined;
    public configuration: Configuration = new Configuration();

    constructor(basePath?: string, configuration?: Configuration, defaultExtraJQueryAjaxSettings?: JQueryAjaxSettings) {
        if (basePath) {
            this.basePath = basePath;
        }
        if (configuration) {
            this.configuration = configuration;
        }
        if (defaultExtraJQueryAjaxSettings) {
            this.defaultExtraJQueryAjaxSettings = defaultExtraJQueryAjaxSettings;
        }
    }

    private extendObj<T1 extends object, T2 extends T1>(objA: T2, objB: T2): T1|T2 {
        for (let key in objB) {
            if (objB.hasOwnProperty(key)) {
                objA[key] = objB[key];
            }
        }
        return objA;
    }

    /**
     * 
     * @summary GetPools
     * @param chainId Chain id
     */
    public chainsChainIdDappsUniswapv2PoolsCurrentGet(chainId: string, extraJQueryAjaxSettings?: JQueryAjaxSettings): JQuery.Promise<
    { response: JQueryXHR; body: Array<models.PairV2DTO>;  },
    { response: JQueryXHR; errorThrown: string }
    > {
        let localVarPath = this.basePath + '/chains/{chain_id}/dapps/uniswapv2/pools/current'.replace('{' + 'chain_id' + '}', encodeURIComponent(String(chainId)));

        let queryParameters: any = {};
        let headerParams: any = {};
        // verify required parameter 'chainId' is not null or undefined
        if (chainId === null || chainId === undefined) {
            throw new Error('Required parameter chainId was null or undefined when calling chainsChainIdDappsUniswapv2PoolsCurrentGet.');
        }


        localVarPath = localVarPath + "?" + $.param(queryParameters);
        // to determine the Content-Type header
        let consumes: string[] = [
        ];

        // to determine the Accept header
        let produces: string[] = [
            'text/plain', 
            'application/json', 
            'text/json'
        ];


        let requestOptions: JQueryAjaxSettings = {
            url: localVarPath,
            type: 'GET',
            headers: headerParams,
            processData: false
        };

        if (headerParams['Content-Type']) {
            requestOptions.contentType = headerParams['Content-Type'];
        }

        if (extraJQueryAjaxSettings) {
            requestOptions = (<any>Object).assign(requestOptions, extraJQueryAjaxSettings);
        }

        if (this.defaultExtraJQueryAjaxSettings) {
            requestOptions = (<any>Object).assign(requestOptions, this.defaultExtraJQueryAjaxSettings);
        }

        let dfd = $.Deferred<
            { response: JQueryXHR; body: Array<models.PairV2DTO>;  },
            { response: JQueryXHR; errorThrown: string }
        >();
        $.ajax(requestOptions).then(
            (data: Array<models.PairV2DTO>, textStatus: string, jqXHR: JQueryXHR) =>
                dfd.resolve({response: jqXHR, body: data}),
            (xhr: JQueryXHR, textStatus: string, errorThrown: string) =>
                dfd.reject({response: xhr, errorThrown: errorThrown})
        );
        return dfd.promise();
    }

    /**
     * 
     * @summary GetSwaps
     * @param chainId Chain id
     */
    public chainsChainIdDappsUniswapv2SwapsCurrentGet(chainId: string, extraJQueryAjaxSettings?: JQueryAjaxSettings): JQuery.Promise<
    { response: JQueryXHR; body: Array<models.SwapV2DTO>;  },
    { response: JQueryXHR; errorThrown: string }
    > {
        let localVarPath = this.basePath + '/chains/{chain_id}/dapps/uniswapv2/swaps/current'.replace('{' + 'chain_id' + '}', encodeURIComponent(String(chainId)));

        let queryParameters: any = {};
        let headerParams: any = {};
        // verify required parameter 'chainId' is not null or undefined
        if (chainId === null || chainId === undefined) {
            throw new Error('Required parameter chainId was null or undefined when calling chainsChainIdDappsUniswapv2SwapsCurrentGet.');
        }


        localVarPath = localVarPath + "?" + $.param(queryParameters);
        // to determine the Content-Type header
        let consumes: string[] = [
        ];

        // to determine the Accept header
        let produces: string[] = [
            'text/plain', 
            'application/json', 
            'text/json'
        ];


        let requestOptions: JQueryAjaxSettings = {
            url: localVarPath,
            type: 'GET',
            headers: headerParams,
            processData: false
        };

        if (headerParams['Content-Type']) {
            requestOptions.contentType = headerParams['Content-Type'];
        }

        if (extraJQueryAjaxSettings) {
            requestOptions = (<any>Object).assign(requestOptions, extraJQueryAjaxSettings);
        }

        if (this.defaultExtraJQueryAjaxSettings) {
            requestOptions = (<any>Object).assign(requestOptions, this.defaultExtraJQueryAjaxSettings);
        }

        let dfd = $.Deferred<
            { response: JQueryXHR; body: Array<models.SwapV2DTO>;  },
            { response: JQueryXHR; errorThrown: string }
        >();
        $.ajax(requestOptions).then(
            (data: Array<models.SwapV2DTO>, textStatus: string, jqXHR: JQueryXHR) =>
                dfd.resolve({response: jqXHR, body: data}),
            (xhr: JQueryXHR, textStatus: string, errorThrown: string) =>
                dfd.reject({response: xhr, errorThrown: errorThrown})
        );
        return dfd.promise();
    }

    /**
     * 
     * @summary GetTokens
     * @param chainId Chain id
     */
    public chainsChainIdDappsUniswapv2TokensCurrentGet(chainId: string, extraJQueryAjaxSettings?: JQueryAjaxSettings): JQuery.Promise<
    { response: JQueryXHR; body: Array<models.TokenV2DTO>;  },
    { response: JQueryXHR; errorThrown: string }
    > {
        let localVarPath = this.basePath + '/chains/{chain_id}/dapps/uniswapv2/tokens/current'.replace('{' + 'chain_id' + '}', encodeURIComponent(String(chainId)));

        let queryParameters: any = {};
        let headerParams: any = {};
        // verify required parameter 'chainId' is not null or undefined
        if (chainId === null || chainId === undefined) {
            throw new Error('Required parameter chainId was null or undefined when calling chainsChainIdDappsUniswapv2TokensCurrentGet.');
        }


        localVarPath = localVarPath + "?" + $.param(queryParameters);
        // to determine the Content-Type header
        let consumes: string[] = [
        ];

        // to determine the Accept header
        let produces: string[] = [
            'text/plain', 
            'application/json', 
            'text/json'
        ];


        let requestOptions: JQueryAjaxSettings = {
            url: localVarPath,
            type: 'GET',
            headers: headerParams,
            processData: false
        };

        if (headerParams['Content-Type']) {
            requestOptions.contentType = headerParams['Content-Type'];
        }

        if (extraJQueryAjaxSettings) {
            requestOptions = (<any>Object).assign(requestOptions, extraJQueryAjaxSettings);
        }

        if (this.defaultExtraJQueryAjaxSettings) {
            requestOptions = (<any>Object).assign(requestOptions, this.defaultExtraJQueryAjaxSettings);
        }

        let dfd = $.Deferred<
            { response: JQueryXHR; body: Array<models.TokenV2DTO>;  },
            { response: JQueryXHR; errorThrown: string }
        >();
        $.ajax(requestOptions).then(
            (data: Array<models.TokenV2DTO>, textStatus: string, jqXHR: JQueryXHR) =>
                dfd.resolve({response: jqXHR, body: data}),
            (xhr: JQueryXHR, textStatus: string, errorThrown: string) =>
                dfd.reject({response: xhr, errorThrown: errorThrown})
        );
        return dfd.promise();
    }

}
