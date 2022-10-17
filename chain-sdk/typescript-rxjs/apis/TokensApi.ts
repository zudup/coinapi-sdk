// tslint:disable
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

import type { Observable } from 'rxjs';
import type { AjaxResponse } from 'rxjs/ajax';
import { BaseAPI, throwIfNullOrUndefined, encodeURI } from '../runtime';
import type { OperationOpts, HttpQuery } from '../runtime';

export interface ChainsChainIdDappsCowTokensHistoricalGetRequest {
    chainId: string;
    startBlock?: number;
    endBlock?: number;
    startDate?: string;
    endDate?: string;
    tokenId?: string;
}

export interface ChainsChainIdDappsCurveTokensHistoricalGetRequest {
    chainId: string;
    startBlock?: number;
    endBlock?: number;
    startDate?: string;
    endDate?: string;
    tokenId?: string;
}

export interface ChainsChainIdDappsDexTokensHistoricalGetRequest {
    chainId: string;
    startBlock?: number;
    endBlock?: number;
    startDate?: string;
    endDate?: string;
    tokenId?: string;
}

export interface ChainsChainIdDappsSushiswapTokensHistoricalGetRequest {
    chainId: string;
    startBlock?: number;
    endBlock?: number;
    startDate?: string;
    endDate?: string;
    tokenId?: string;
}

export interface ChainsChainIdDappsUniswapv2TokensHistoricalGetRequest {
    chainId: string;
    startBlock?: number;
    endBlock?: number;
    startDate?: string;
    endDate?: string;
    tokenId?: string;
}

export interface ChainsChainIdDappsUniswapv3TokensHistoricalGetRequest {
    chainId: string;
    startBlock?: number;
    endBlock?: number;
    startDate?: string;
    endDate?: string;
    tokenId?: string;
}

/**
 * no description
 */
export class TokensApi extends BaseAPI {

    /**
     */
    chainsChainIdDappsCowTokensHistoricalGet({ chainId, startBlock, endBlock, startDate, endDate, tokenId }: ChainsChainIdDappsCowTokensHistoricalGetRequest): Observable<void>
    chainsChainIdDappsCowTokensHistoricalGet({ chainId, startBlock, endBlock, startDate, endDate, tokenId }: ChainsChainIdDappsCowTokensHistoricalGetRequest, opts?: OperationOpts): Observable<void | AjaxResponse<void>>
    chainsChainIdDappsCowTokensHistoricalGet({ chainId, startBlock, endBlock, startDate, endDate, tokenId }: ChainsChainIdDappsCowTokensHistoricalGetRequest, opts?: OperationOpts): Observable<void | AjaxResponse<void>> {
        throwIfNullOrUndefined(chainId, 'chainId', 'chainsChainIdDappsCowTokensHistoricalGet');

        const query: HttpQuery = {};

        if (startBlock != null) { query['startBlock'] = startBlock; }
        if (endBlock != null) { query['endBlock'] = endBlock; }
        if (startDate != null) { query['startDate'] = (startDate as any).toISOString(); }
        if (endDate != null) { query['endDate'] = (endDate as any).toISOString(); }
        if (tokenId != null) { query['tokenId'] = tokenId; }

        return this.request<void>({
            url: '/chains/{chain_id}/dapps/cow/tokens/historical'.replace('{chain_id}', encodeURI(chainId)),
            method: 'GET',
            query,
        }, opts?.responseOpts);
    };

    /**
     */
    chainsChainIdDappsCurveTokensHistoricalGet({ chainId, startBlock, endBlock, startDate, endDate, tokenId }: ChainsChainIdDappsCurveTokensHistoricalGetRequest): Observable<void>
    chainsChainIdDappsCurveTokensHistoricalGet({ chainId, startBlock, endBlock, startDate, endDate, tokenId }: ChainsChainIdDappsCurveTokensHistoricalGetRequest, opts?: OperationOpts): Observable<void | AjaxResponse<void>>
    chainsChainIdDappsCurveTokensHistoricalGet({ chainId, startBlock, endBlock, startDate, endDate, tokenId }: ChainsChainIdDappsCurveTokensHistoricalGetRequest, opts?: OperationOpts): Observable<void | AjaxResponse<void>> {
        throwIfNullOrUndefined(chainId, 'chainId', 'chainsChainIdDappsCurveTokensHistoricalGet');

        const query: HttpQuery = {};

        if (startBlock != null) { query['startBlock'] = startBlock; }
        if (endBlock != null) { query['endBlock'] = endBlock; }
        if (startDate != null) { query['startDate'] = (startDate as any).toISOString(); }
        if (endDate != null) { query['endDate'] = (endDate as any).toISOString(); }
        if (tokenId != null) { query['tokenId'] = tokenId; }

        return this.request<void>({
            url: '/chains/{chain_id}/dapps/curve/tokens/historical'.replace('{chain_id}', encodeURI(chainId)),
            method: 'GET',
            query,
        }, opts?.responseOpts);
    };

    /**
     */
    chainsChainIdDappsDexTokensHistoricalGet({ chainId, startBlock, endBlock, startDate, endDate, tokenId }: ChainsChainIdDappsDexTokensHistoricalGetRequest): Observable<void>
    chainsChainIdDappsDexTokensHistoricalGet({ chainId, startBlock, endBlock, startDate, endDate, tokenId }: ChainsChainIdDappsDexTokensHistoricalGetRequest, opts?: OperationOpts): Observable<void | AjaxResponse<void>>
    chainsChainIdDappsDexTokensHistoricalGet({ chainId, startBlock, endBlock, startDate, endDate, tokenId }: ChainsChainIdDappsDexTokensHistoricalGetRequest, opts?: OperationOpts): Observable<void | AjaxResponse<void>> {
        throwIfNullOrUndefined(chainId, 'chainId', 'chainsChainIdDappsDexTokensHistoricalGet');

        const query: HttpQuery = {};

        if (startBlock != null) { query['startBlock'] = startBlock; }
        if (endBlock != null) { query['endBlock'] = endBlock; }
        if (startDate != null) { query['startDate'] = (startDate as any).toISOString(); }
        if (endDate != null) { query['endDate'] = (endDate as any).toISOString(); }
        if (tokenId != null) { query['tokenId'] = tokenId; }

        return this.request<void>({
            url: '/chains/{chain_id}/dapps/dex/tokens/historical'.replace('{chain_id}', encodeURI(chainId)),
            method: 'GET',
            query,
        }, opts?.responseOpts);
    };

    /**
     */
    chainsChainIdDappsSushiswapTokensHistoricalGet({ chainId, startBlock, endBlock, startDate, endDate, tokenId }: ChainsChainIdDappsSushiswapTokensHistoricalGetRequest): Observable<void>
    chainsChainIdDappsSushiswapTokensHistoricalGet({ chainId, startBlock, endBlock, startDate, endDate, tokenId }: ChainsChainIdDappsSushiswapTokensHistoricalGetRequest, opts?: OperationOpts): Observable<void | AjaxResponse<void>>
    chainsChainIdDappsSushiswapTokensHistoricalGet({ chainId, startBlock, endBlock, startDate, endDate, tokenId }: ChainsChainIdDappsSushiswapTokensHistoricalGetRequest, opts?: OperationOpts): Observable<void | AjaxResponse<void>> {
        throwIfNullOrUndefined(chainId, 'chainId', 'chainsChainIdDappsSushiswapTokensHistoricalGet');

        const query: HttpQuery = {};

        if (startBlock != null) { query['startBlock'] = startBlock; }
        if (endBlock != null) { query['endBlock'] = endBlock; }
        if (startDate != null) { query['startDate'] = (startDate as any).toISOString(); }
        if (endDate != null) { query['endDate'] = (endDate as any).toISOString(); }
        if (tokenId != null) { query['tokenId'] = tokenId; }

        return this.request<void>({
            url: '/chains/{chain_id}/dapps/sushiswap/tokens/historical'.replace('{chain_id}', encodeURI(chainId)),
            method: 'GET',
            query,
        }, opts?.responseOpts);
    };

    /**
     */
    chainsChainIdDappsUniswapv2TokensHistoricalGet({ chainId, startBlock, endBlock, startDate, endDate, tokenId }: ChainsChainIdDappsUniswapv2TokensHistoricalGetRequest): Observable<void>
    chainsChainIdDappsUniswapv2TokensHistoricalGet({ chainId, startBlock, endBlock, startDate, endDate, tokenId }: ChainsChainIdDappsUniswapv2TokensHistoricalGetRequest, opts?: OperationOpts): Observable<void | AjaxResponse<void>>
    chainsChainIdDappsUniswapv2TokensHistoricalGet({ chainId, startBlock, endBlock, startDate, endDate, tokenId }: ChainsChainIdDappsUniswapv2TokensHistoricalGetRequest, opts?: OperationOpts): Observable<void | AjaxResponse<void>> {
        throwIfNullOrUndefined(chainId, 'chainId', 'chainsChainIdDappsUniswapv2TokensHistoricalGet');

        const query: HttpQuery = {};

        if (startBlock != null) { query['startBlock'] = startBlock; }
        if (endBlock != null) { query['endBlock'] = endBlock; }
        if (startDate != null) { query['startDate'] = (startDate as any).toISOString(); }
        if (endDate != null) { query['endDate'] = (endDate as any).toISOString(); }
        if (tokenId != null) { query['tokenId'] = tokenId; }

        return this.request<void>({
            url: '/chains/{chain_id}/dapps/uniswapv2/tokens/historical'.replace('{chain_id}', encodeURI(chainId)),
            method: 'GET',
            query,
        }, opts?.responseOpts);
    };

    /**
     */
    chainsChainIdDappsUniswapv3TokensHistoricalGet({ chainId, startBlock, endBlock, startDate, endDate, tokenId }: ChainsChainIdDappsUniswapv3TokensHistoricalGetRequest): Observable<void>
    chainsChainIdDappsUniswapv3TokensHistoricalGet({ chainId, startBlock, endBlock, startDate, endDate, tokenId }: ChainsChainIdDappsUniswapv3TokensHistoricalGetRequest, opts?: OperationOpts): Observable<void | AjaxResponse<void>>
    chainsChainIdDappsUniswapv3TokensHistoricalGet({ chainId, startBlock, endBlock, startDate, endDate, tokenId }: ChainsChainIdDappsUniswapv3TokensHistoricalGetRequest, opts?: OperationOpts): Observable<void | AjaxResponse<void>> {
        throwIfNullOrUndefined(chainId, 'chainId', 'chainsChainIdDappsUniswapv3TokensHistoricalGet');

        const query: HttpQuery = {};

        if (startBlock != null) { query['startBlock'] = startBlock; }
        if (endBlock != null) { query['endBlock'] = endBlock; }
        if (startDate != null) { query['startDate'] = (startDate as any).toISOString(); }
        if (endDate != null) { query['endDate'] = (endDate as any).toISOString(); }
        if (tokenId != null) { query['tokenId'] = tokenId; }

        return this.request<void>({
            url: '/chains/{chain_id}/dapps/uniswapv3/tokens/historical'.replace('{chain_id}', encodeURI(chainId)),
            method: 'GET',
            query,
        }, opts?.responseOpts);
    };

}
