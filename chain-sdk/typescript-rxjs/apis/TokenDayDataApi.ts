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

export interface ChainsChainIdDappsUniswapv2TokenDayDataHistoricalGetRequest {
    chainId: string;
    startBlock?: number;
    endBlock?: number;
    startDate?: string;
    endDate?: string;
    tokenId?: string;
}

export interface ChainsChainIdDappsUniswapv3TokenDayDataHistoricalGetRequest {
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
export class TokenDayDataApi extends BaseAPI {

    /**
     */
    chainsChainIdDappsUniswapv2TokenDayDataHistoricalGet({ chainId, startBlock, endBlock, startDate, endDate, tokenId }: ChainsChainIdDappsUniswapv2TokenDayDataHistoricalGetRequest): Observable<void>
    chainsChainIdDappsUniswapv2TokenDayDataHistoricalGet({ chainId, startBlock, endBlock, startDate, endDate, tokenId }: ChainsChainIdDappsUniswapv2TokenDayDataHistoricalGetRequest, opts?: OperationOpts): Observable<void | AjaxResponse<void>>
    chainsChainIdDappsUniswapv2TokenDayDataHistoricalGet({ chainId, startBlock, endBlock, startDate, endDate, tokenId }: ChainsChainIdDappsUniswapv2TokenDayDataHistoricalGetRequest, opts?: OperationOpts): Observable<void | AjaxResponse<void>> {
        throwIfNullOrUndefined(chainId, 'chainId', 'chainsChainIdDappsUniswapv2TokenDayDataHistoricalGet');

        const query: HttpQuery = {};

        if (startBlock != null) { query['startBlock'] = startBlock; }
        if (endBlock != null) { query['endBlock'] = endBlock; }
        if (startDate != null) { query['startDate'] = (startDate as any).toISOString(); }
        if (endDate != null) { query['endDate'] = (endDate as any).toISOString(); }
        if (tokenId != null) { query['tokenId'] = tokenId; }

        return this.request<void>({
            url: '/chains/{chain_id}/dapps/uniswapv2/tokenDayData/historical'.replace('{chain_id}', encodeURI(chainId)),
            method: 'GET',
            query,
        }, opts?.responseOpts);
    };

    /**
     */
    chainsChainIdDappsUniswapv3TokenDayDataHistoricalGet({ chainId, startBlock, endBlock, startDate, endDate, tokenId }: ChainsChainIdDappsUniswapv3TokenDayDataHistoricalGetRequest): Observable<void>
    chainsChainIdDappsUniswapv3TokenDayDataHistoricalGet({ chainId, startBlock, endBlock, startDate, endDate, tokenId }: ChainsChainIdDappsUniswapv3TokenDayDataHistoricalGetRequest, opts?: OperationOpts): Observable<void | AjaxResponse<void>>
    chainsChainIdDappsUniswapv3TokenDayDataHistoricalGet({ chainId, startBlock, endBlock, startDate, endDate, tokenId }: ChainsChainIdDappsUniswapv3TokenDayDataHistoricalGetRequest, opts?: OperationOpts): Observable<void | AjaxResponse<void>> {
        throwIfNullOrUndefined(chainId, 'chainId', 'chainsChainIdDappsUniswapv3TokenDayDataHistoricalGet');

        const query: HttpQuery = {};

        if (startBlock != null) { query['startBlock'] = startBlock; }
        if (endBlock != null) { query['endBlock'] = endBlock; }
        if (startDate != null) { query['startDate'] = (startDate as any).toISOString(); }
        if (endDate != null) { query['endDate'] = (endDate as any).toISOString(); }
        if (tokenId != null) { query['tokenId'] = tokenId; }

        return this.request<void>({
            url: '/chains/{chain_id}/dapps/uniswapv3/tokenDayData/historical'.replace('{chain_id}', encodeURI(chainId)),
            method: 'GET',
            query,
        }, opts?.responseOpts);
    };

}
