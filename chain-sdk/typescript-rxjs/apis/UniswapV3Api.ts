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
import { BaseAPI } from '../runtime';
import type { OperationOpts, HttpQuery } from '../runtime';
import type {
    UniswapV3BundleDTO,
    UniswapV3BurnDTO,
    UniswapV3FactoryDTO,
    UniswapV3MintDTO,
    UniswapV3PoolDTO,
    UniswapV3PoolDayDataDTO,
    UniswapV3PoolHourDataDTO,
    UniswapV3PositionDTO,
    UniswapV3PositionSnapshotDTO,
    UniswapV3SwapDTO,
    UniswapV3TickDTO,
    UniswapV3TickDayDataDTO,
    UniswapV3TokenDTO,
    UniswapV3TokenHourDataDTO,
    UniswapV3TokenV3DayDataDTO,
    UniswapV3TransactionDTO,
    UniswapV3UniswapDayDataDTO,
} from '../models';

export interface UniswapV3GetBundlesHistoricalRequest {
    startBlock?: number;
    endBlock?: number;
    startDate?: string;
    endDate?: string;
    id?: string;
}

export interface UniswapV3GetBurnsHistoricalRequest {
    startBlock?: number;
    endBlock?: number;
    startDate?: string;
    endDate?: string;
    id?: string;
    pool?: string;
    token0?: string;
    token1?: string;
}

export interface UniswapV3GetFactorysHistoricalRequest {
    startBlock?: number;
    endBlock?: number;
    startDate?: string;
    endDate?: string;
    id?: string;
}

export interface UniswapV3GetMintsHistoricalRequest {
    startBlock?: number;
    endBlock?: number;
    startDate?: string;
    endDate?: string;
    id?: string;
    pool?: string;
    token0?: string;
    token1?: string;
}

export interface UniswapV3GetPoolDayDatasHistoricalRequest {
    startBlock?: number;
    endBlock?: number;
    startDate?: string;
    endDate?: string;
    id?: string;
    pool?: string;
}

export interface UniswapV3GetPoolHourDatasHistoricalRequest {
    startBlock?: number;
    endBlock?: number;
    startDate?: string;
    endDate?: string;
    id?: string;
    pool?: string;
}

export interface UniswapV3GetPoolsHistoricalRequest {
    startBlock?: number;
    endBlock?: number;
    startDate?: string;
    endDate?: string;
    id?: string;
    token0?: string;
    token1?: string;
}

export interface UniswapV3GetPositionSnapshotsHistoricalRequest {
    startBlock?: number;
    endBlock?: number;
    startDate?: string;
    endDate?: string;
    id?: string;
    pool?: string;
}

export interface UniswapV3GetPositionsHistoricalRequest {
    startBlock?: number;
    endBlock?: number;
    startDate?: string;
    endDate?: string;
    id?: string;
    pool?: string;
    token0?: string;
    token1?: string;
}

export interface UniswapV3GetSwapsHistoricalRequest {
    startBlock?: number;
    endBlock?: number;
    startDate?: string;
    endDate?: string;
    id?: string;
    pool?: string;
    token0?: string;
    token1?: string;
}

export interface UniswapV3GetTickDayDatasHistoricalRequest {
    startBlock?: number;
    endBlock?: number;
    startDate?: string;
    endDate?: string;
    id?: string;
    pool?: string;
}

export interface UniswapV3GetTicksHistoricalRequest {
    startBlock?: number;
    endBlock?: number;
    startDate?: string;
    endDate?: string;
    id?: string;
    pool?: string;
}

export interface UniswapV3GetTokenHourDatasHistoricalRequest {
    startBlock?: number;
    endBlock?: number;
    startDate?: string;
    endDate?: string;
    id?: string;
}

export interface UniswapV3GetTokenV3DayDatasHistoricalRequest {
    startBlock?: number;
    endBlock?: number;
    startDate?: string;
    endDate?: string;
    id?: string;
}

export interface UniswapV3GetTokensHistoricalRequest {
    startBlock?: number;
    endBlock?: number;
    startDate?: string;
    endDate?: string;
    id?: string;
    symbol?: string;
    name?: string;
}

export interface UniswapV3GetTransactionsHistoricalRequest {
    startBlock?: number;
    endBlock?: number;
    startDate?: string;
    endDate?: string;
    id?: string;
}

export interface UniswapV3GetUniswapDayDatasHistoricalRequest {
    startBlock?: number;
    endBlock?: number;
    startDate?: string;
    endDate?: string;
    id?: string;
}

export interface UniswapV3PoolsCurrentRequest {
    id?: string;
}

export interface UniswapV3SwapsCurrentRequest {
    pool?: string;
}

/**
 * no description
 */
export class UniswapV3Api extends BaseAPI {

    /**
     * Gets bundles.
     * Bundles (current)
     */
    uniswapV3BundlesCurrent(): Observable<Array<UniswapV3BundleDTO>>
    uniswapV3BundlesCurrent(opts?: OperationOpts): Observable<AjaxResponse<Array<UniswapV3BundleDTO>>>
    uniswapV3BundlesCurrent(opts?: OperationOpts): Observable<Array<UniswapV3BundleDTO> | AjaxResponse<Array<UniswapV3BundleDTO>>> {
        return this.request<Array<UniswapV3BundleDTO>>({
            url: '/dapps/uniswapv3/bundles/current',
            method: 'GET',
        }, opts?.responseOpts);
    };

    /**
     * Gets burns.
     * Burns (current)
     */
    uniswapV3BurnsCurrent(): Observable<Array<UniswapV3BurnDTO>>
    uniswapV3BurnsCurrent(opts?: OperationOpts): Observable<AjaxResponse<Array<UniswapV3BurnDTO>>>
    uniswapV3BurnsCurrent(opts?: OperationOpts): Observable<Array<UniswapV3BurnDTO> | AjaxResponse<Array<UniswapV3BurnDTO>>> {
        return this.request<Array<UniswapV3BurnDTO>>({
            url: '/dapps/uniswapv3/burns/current',
            method: 'GET',
        }, opts?.responseOpts);
    };

    /**
     * Gets factorys.
     * Factorys (current)
     */
    uniswapV3FactorysCurrent(): Observable<Array<UniswapV3FactoryDTO>>
    uniswapV3FactorysCurrent(opts?: OperationOpts): Observable<AjaxResponse<Array<UniswapV3FactoryDTO>>>
    uniswapV3FactorysCurrent(opts?: OperationOpts): Observable<Array<UniswapV3FactoryDTO> | AjaxResponse<Array<UniswapV3FactoryDTO>>> {
        return this.request<Array<UniswapV3FactoryDTO>>({
            url: '/dapps/uniswapv3/factorys/current',
            method: 'GET',
        }, opts?.responseOpts);
    };

    /**
     * Gets bundles.
     * Bundles (historical)
     */
    uniswapV3GetBundlesHistorical({ startBlock, endBlock, startDate, endDate, id }: UniswapV3GetBundlesHistoricalRequest): Observable<Array<UniswapV3BundleDTO>>
    uniswapV3GetBundlesHistorical({ startBlock, endBlock, startDate, endDate, id }: UniswapV3GetBundlesHistoricalRequest, opts?: OperationOpts): Observable<AjaxResponse<Array<UniswapV3BundleDTO>>>
    uniswapV3GetBundlesHistorical({ startBlock, endBlock, startDate, endDate, id }: UniswapV3GetBundlesHistoricalRequest, opts?: OperationOpts): Observable<Array<UniswapV3BundleDTO> | AjaxResponse<Array<UniswapV3BundleDTO>>> {

        const query: HttpQuery = {};

        if (startBlock != null) { query['startBlock'] = startBlock; }
        if (endBlock != null) { query['endBlock'] = endBlock; }
        if (startDate != null) { query['startDate'] = (startDate as any).toISOString(); }
        if (endDate != null) { query['endDate'] = (endDate as any).toISOString(); }
        if (id != null) { query['id'] = id; }

        return this.request<Array<UniswapV3BundleDTO>>({
            url: '/dapps/uniswapv3/bundles/historical',
            method: 'GET',
            query,
        }, opts?.responseOpts);
    };

    /**
     * Gets burns.
     * Burns (historical)
     */
    uniswapV3GetBurnsHistorical({ startBlock, endBlock, startDate, endDate, id, pool, token0, token1 }: UniswapV3GetBurnsHistoricalRequest): Observable<Array<UniswapV3BurnDTO>>
    uniswapV3GetBurnsHistorical({ startBlock, endBlock, startDate, endDate, id, pool, token0, token1 }: UniswapV3GetBurnsHistoricalRequest, opts?: OperationOpts): Observable<AjaxResponse<Array<UniswapV3BurnDTO>>>
    uniswapV3GetBurnsHistorical({ startBlock, endBlock, startDate, endDate, id, pool, token0, token1 }: UniswapV3GetBurnsHistoricalRequest, opts?: OperationOpts): Observable<Array<UniswapV3BurnDTO> | AjaxResponse<Array<UniswapV3BurnDTO>>> {

        const query: HttpQuery = {};

        if (startBlock != null) { query['startBlock'] = startBlock; }
        if (endBlock != null) { query['endBlock'] = endBlock; }
        if (startDate != null) { query['startDate'] = (startDate as any).toISOString(); }
        if (endDate != null) { query['endDate'] = (endDate as any).toISOString(); }
        if (id != null) { query['id'] = id; }
        if (pool != null) { query['pool'] = pool; }
        if (token0 != null) { query['token_0'] = token0; }
        if (token1 != null) { query['token_1'] = token1; }

        return this.request<Array<UniswapV3BurnDTO>>({
            url: '/dapps/uniswapv3/burns/historical',
            method: 'GET',
            query,
        }, opts?.responseOpts);
    };

    /**
     * Gets factorys.
     * Factorys (historical)
     */
    uniswapV3GetFactorysHistorical({ startBlock, endBlock, startDate, endDate, id }: UniswapV3GetFactorysHistoricalRequest): Observable<Array<UniswapV3FactoryDTO>>
    uniswapV3GetFactorysHistorical({ startBlock, endBlock, startDate, endDate, id }: UniswapV3GetFactorysHistoricalRequest, opts?: OperationOpts): Observable<AjaxResponse<Array<UniswapV3FactoryDTO>>>
    uniswapV3GetFactorysHistorical({ startBlock, endBlock, startDate, endDate, id }: UniswapV3GetFactorysHistoricalRequest, opts?: OperationOpts): Observable<Array<UniswapV3FactoryDTO> | AjaxResponse<Array<UniswapV3FactoryDTO>>> {

        const query: HttpQuery = {};

        if (startBlock != null) { query['startBlock'] = startBlock; }
        if (endBlock != null) { query['endBlock'] = endBlock; }
        if (startDate != null) { query['startDate'] = (startDate as any).toISOString(); }
        if (endDate != null) { query['endDate'] = (endDate as any).toISOString(); }
        if (id != null) { query['id'] = id; }

        return this.request<Array<UniswapV3FactoryDTO>>({
            url: '/dapps/uniswapv3/factorys/historical',
            method: 'GET',
            query,
        }, opts?.responseOpts);
    };

    /**
     * Gets mints.
     * Mints (historical)
     */
    uniswapV3GetMintsHistorical({ startBlock, endBlock, startDate, endDate, id, pool, token0, token1 }: UniswapV3GetMintsHistoricalRequest): Observable<Array<UniswapV3MintDTO>>
    uniswapV3GetMintsHistorical({ startBlock, endBlock, startDate, endDate, id, pool, token0, token1 }: UniswapV3GetMintsHistoricalRequest, opts?: OperationOpts): Observable<AjaxResponse<Array<UniswapV3MintDTO>>>
    uniswapV3GetMintsHistorical({ startBlock, endBlock, startDate, endDate, id, pool, token0, token1 }: UniswapV3GetMintsHistoricalRequest, opts?: OperationOpts): Observable<Array<UniswapV3MintDTO> | AjaxResponse<Array<UniswapV3MintDTO>>> {

        const query: HttpQuery = {};

        if (startBlock != null) { query['startBlock'] = startBlock; }
        if (endBlock != null) { query['endBlock'] = endBlock; }
        if (startDate != null) { query['startDate'] = (startDate as any).toISOString(); }
        if (endDate != null) { query['endDate'] = (endDate as any).toISOString(); }
        if (id != null) { query['id'] = id; }
        if (pool != null) { query['pool'] = pool; }
        if (token0 != null) { query['token_0'] = token0; }
        if (token1 != null) { query['token_1'] = token1; }

        return this.request<Array<UniswapV3MintDTO>>({
            url: '/dapps/uniswapv3/mints/historical',
            method: 'GET',
            query,
        }, opts?.responseOpts);
    };

    /**
     * Gets poolDayDatas.
     * PoolDayDatas (historical)
     */
    uniswapV3GetPoolDayDatasHistorical({ startBlock, endBlock, startDate, endDate, id, pool }: UniswapV3GetPoolDayDatasHistoricalRequest): Observable<Array<UniswapV3PoolDayDataDTO>>
    uniswapV3GetPoolDayDatasHistorical({ startBlock, endBlock, startDate, endDate, id, pool }: UniswapV3GetPoolDayDatasHistoricalRequest, opts?: OperationOpts): Observable<AjaxResponse<Array<UniswapV3PoolDayDataDTO>>>
    uniswapV3GetPoolDayDatasHistorical({ startBlock, endBlock, startDate, endDate, id, pool }: UniswapV3GetPoolDayDatasHistoricalRequest, opts?: OperationOpts): Observable<Array<UniswapV3PoolDayDataDTO> | AjaxResponse<Array<UniswapV3PoolDayDataDTO>>> {

        const query: HttpQuery = {};

        if (startBlock != null) { query['startBlock'] = startBlock; }
        if (endBlock != null) { query['endBlock'] = endBlock; }
        if (startDate != null) { query['startDate'] = (startDate as any).toISOString(); }
        if (endDate != null) { query['endDate'] = (endDate as any).toISOString(); }
        if (id != null) { query['id'] = id; }
        if (pool != null) { query['pool'] = pool; }

        return this.request<Array<UniswapV3PoolDayDataDTO>>({
            url: '/dapps/uniswapv3/poolDayDatas/historical',
            method: 'GET',
            query,
        }, opts?.responseOpts);
    };

    /**
     * Gets poolHourDatas.
     * PoolHourDatas (historical)
     */
    uniswapV3GetPoolHourDatasHistorical({ startBlock, endBlock, startDate, endDate, id, pool }: UniswapV3GetPoolHourDatasHistoricalRequest): Observable<Array<UniswapV3PoolHourDataDTO>>
    uniswapV3GetPoolHourDatasHistorical({ startBlock, endBlock, startDate, endDate, id, pool }: UniswapV3GetPoolHourDatasHistoricalRequest, opts?: OperationOpts): Observable<AjaxResponse<Array<UniswapV3PoolHourDataDTO>>>
    uniswapV3GetPoolHourDatasHistorical({ startBlock, endBlock, startDate, endDate, id, pool }: UniswapV3GetPoolHourDatasHistoricalRequest, opts?: OperationOpts): Observable<Array<UniswapV3PoolHourDataDTO> | AjaxResponse<Array<UniswapV3PoolHourDataDTO>>> {

        const query: HttpQuery = {};

        if (startBlock != null) { query['startBlock'] = startBlock; }
        if (endBlock != null) { query['endBlock'] = endBlock; }
        if (startDate != null) { query['startDate'] = (startDate as any).toISOString(); }
        if (endDate != null) { query['endDate'] = (endDate as any).toISOString(); }
        if (id != null) { query['id'] = id; }
        if (pool != null) { query['pool'] = pool; }

        return this.request<Array<UniswapV3PoolHourDataDTO>>({
            url: '/dapps/uniswapv3/poolHourDatas/historical',
            method: 'GET',
            query,
        }, opts?.responseOpts);
    };

    /**
     * Gets pools.
     * Pools (historical)
     */
    uniswapV3GetPoolsHistorical({ startBlock, endBlock, startDate, endDate, id, token0, token1 }: UniswapV3GetPoolsHistoricalRequest): Observable<Array<UniswapV3PoolDTO>>
    uniswapV3GetPoolsHistorical({ startBlock, endBlock, startDate, endDate, id, token0, token1 }: UniswapV3GetPoolsHistoricalRequest, opts?: OperationOpts): Observable<AjaxResponse<Array<UniswapV3PoolDTO>>>
    uniswapV3GetPoolsHistorical({ startBlock, endBlock, startDate, endDate, id, token0, token1 }: UniswapV3GetPoolsHistoricalRequest, opts?: OperationOpts): Observable<Array<UniswapV3PoolDTO> | AjaxResponse<Array<UniswapV3PoolDTO>>> {

        const query: HttpQuery = {};

        if (startBlock != null) { query['startBlock'] = startBlock; }
        if (endBlock != null) { query['endBlock'] = endBlock; }
        if (startDate != null) { query['startDate'] = (startDate as any).toISOString(); }
        if (endDate != null) { query['endDate'] = (endDate as any).toISOString(); }
        if (id != null) { query['id'] = id; }
        if (token0 != null) { query['token_0'] = token0; }
        if (token1 != null) { query['token_1'] = token1; }

        return this.request<Array<UniswapV3PoolDTO>>({
            url: '/dapps/uniswapv3/pools/historical',
            method: 'GET',
            query,
        }, opts?.responseOpts);
    };

    /**
     * Gets positionSnapshots.
     * PositionSnapshots (historical)
     */
    uniswapV3GetPositionSnapshotsHistorical({ startBlock, endBlock, startDate, endDate, id, pool }: UniswapV3GetPositionSnapshotsHistoricalRequest): Observable<Array<UniswapV3PositionSnapshotDTO>>
    uniswapV3GetPositionSnapshotsHistorical({ startBlock, endBlock, startDate, endDate, id, pool }: UniswapV3GetPositionSnapshotsHistoricalRequest, opts?: OperationOpts): Observable<AjaxResponse<Array<UniswapV3PositionSnapshotDTO>>>
    uniswapV3GetPositionSnapshotsHistorical({ startBlock, endBlock, startDate, endDate, id, pool }: UniswapV3GetPositionSnapshotsHistoricalRequest, opts?: OperationOpts): Observable<Array<UniswapV3PositionSnapshotDTO> | AjaxResponse<Array<UniswapV3PositionSnapshotDTO>>> {

        const query: HttpQuery = {};

        if (startBlock != null) { query['startBlock'] = startBlock; }
        if (endBlock != null) { query['endBlock'] = endBlock; }
        if (startDate != null) { query['startDate'] = (startDate as any).toISOString(); }
        if (endDate != null) { query['endDate'] = (endDate as any).toISOString(); }
        if (id != null) { query['id'] = id; }
        if (pool != null) { query['pool'] = pool; }

        return this.request<Array<UniswapV3PositionSnapshotDTO>>({
            url: '/dapps/uniswapv3/positionSnapshots/historical',
            method: 'GET',
            query,
        }, opts?.responseOpts);
    };

    /**
     * Gets positions.
     * Positions (historical)
     */
    uniswapV3GetPositionsHistorical({ startBlock, endBlock, startDate, endDate, id, pool, token0, token1 }: UniswapV3GetPositionsHistoricalRequest): Observable<Array<UniswapV3PositionDTO>>
    uniswapV3GetPositionsHistorical({ startBlock, endBlock, startDate, endDate, id, pool, token0, token1 }: UniswapV3GetPositionsHistoricalRequest, opts?: OperationOpts): Observable<AjaxResponse<Array<UniswapV3PositionDTO>>>
    uniswapV3GetPositionsHistorical({ startBlock, endBlock, startDate, endDate, id, pool, token0, token1 }: UniswapV3GetPositionsHistoricalRequest, opts?: OperationOpts): Observable<Array<UniswapV3PositionDTO> | AjaxResponse<Array<UniswapV3PositionDTO>>> {

        const query: HttpQuery = {};

        if (startBlock != null) { query['startBlock'] = startBlock; }
        if (endBlock != null) { query['endBlock'] = endBlock; }
        if (startDate != null) { query['startDate'] = (startDate as any).toISOString(); }
        if (endDate != null) { query['endDate'] = (endDate as any).toISOString(); }
        if (id != null) { query['id'] = id; }
        if (pool != null) { query['pool'] = pool; }
        if (token0 != null) { query['token_0'] = token0; }
        if (token1 != null) { query['token_1'] = token1; }

        return this.request<Array<UniswapV3PositionDTO>>({
            url: '/dapps/uniswapv3/positions/historical',
            method: 'GET',
            query,
        }, opts?.responseOpts);
    };

    /**
     * Gets swaps.
     * Swaps (historical)
     */
    uniswapV3GetSwapsHistorical({ startBlock, endBlock, startDate, endDate, id, pool, token0, token1 }: UniswapV3GetSwapsHistoricalRequest): Observable<Array<UniswapV3SwapDTO>>
    uniswapV3GetSwapsHistorical({ startBlock, endBlock, startDate, endDate, id, pool, token0, token1 }: UniswapV3GetSwapsHistoricalRequest, opts?: OperationOpts): Observable<AjaxResponse<Array<UniswapV3SwapDTO>>>
    uniswapV3GetSwapsHistorical({ startBlock, endBlock, startDate, endDate, id, pool, token0, token1 }: UniswapV3GetSwapsHistoricalRequest, opts?: OperationOpts): Observable<Array<UniswapV3SwapDTO> | AjaxResponse<Array<UniswapV3SwapDTO>>> {

        const query: HttpQuery = {};

        if (startBlock != null) { query['startBlock'] = startBlock; }
        if (endBlock != null) { query['endBlock'] = endBlock; }
        if (startDate != null) { query['startDate'] = (startDate as any).toISOString(); }
        if (endDate != null) { query['endDate'] = (endDate as any).toISOString(); }
        if (id != null) { query['id'] = id; }
        if (pool != null) { query['pool'] = pool; }
        if (token0 != null) { query['token_0'] = token0; }
        if (token1 != null) { query['token_1'] = token1; }

        return this.request<Array<UniswapV3SwapDTO>>({
            url: '/dapps/uniswapv3/swaps/historical',
            method: 'GET',
            query,
        }, opts?.responseOpts);
    };

    /**
     * Gets tickDayDatas.
     * TickDayDatas (historical)
     */
    uniswapV3GetTickDayDatasHistorical({ startBlock, endBlock, startDate, endDate, id, pool }: UniswapV3GetTickDayDatasHistoricalRequest): Observable<Array<UniswapV3TickDayDataDTO>>
    uniswapV3GetTickDayDatasHistorical({ startBlock, endBlock, startDate, endDate, id, pool }: UniswapV3GetTickDayDatasHistoricalRequest, opts?: OperationOpts): Observable<AjaxResponse<Array<UniswapV3TickDayDataDTO>>>
    uniswapV3GetTickDayDatasHistorical({ startBlock, endBlock, startDate, endDate, id, pool }: UniswapV3GetTickDayDatasHistoricalRequest, opts?: OperationOpts): Observable<Array<UniswapV3TickDayDataDTO> | AjaxResponse<Array<UniswapV3TickDayDataDTO>>> {

        const query: HttpQuery = {};

        if (startBlock != null) { query['startBlock'] = startBlock; }
        if (endBlock != null) { query['endBlock'] = endBlock; }
        if (startDate != null) { query['startDate'] = (startDate as any).toISOString(); }
        if (endDate != null) { query['endDate'] = (endDate as any).toISOString(); }
        if (id != null) { query['id'] = id; }
        if (pool != null) { query['pool'] = pool; }

        return this.request<Array<UniswapV3TickDayDataDTO>>({
            url: '/dapps/uniswapv3/tickDayDatas/historical',
            method: 'GET',
            query,
        }, opts?.responseOpts);
    };

    /**
     * Gets ticks.
     * Ticks (historical)
     */
    uniswapV3GetTicksHistorical({ startBlock, endBlock, startDate, endDate, id, pool }: UniswapV3GetTicksHistoricalRequest): Observable<Array<UniswapV3TickDTO>>
    uniswapV3GetTicksHistorical({ startBlock, endBlock, startDate, endDate, id, pool }: UniswapV3GetTicksHistoricalRequest, opts?: OperationOpts): Observable<AjaxResponse<Array<UniswapV3TickDTO>>>
    uniswapV3GetTicksHistorical({ startBlock, endBlock, startDate, endDate, id, pool }: UniswapV3GetTicksHistoricalRequest, opts?: OperationOpts): Observable<Array<UniswapV3TickDTO> | AjaxResponse<Array<UniswapV3TickDTO>>> {

        const query: HttpQuery = {};

        if (startBlock != null) { query['startBlock'] = startBlock; }
        if (endBlock != null) { query['endBlock'] = endBlock; }
        if (startDate != null) { query['startDate'] = (startDate as any).toISOString(); }
        if (endDate != null) { query['endDate'] = (endDate as any).toISOString(); }
        if (id != null) { query['id'] = id; }
        if (pool != null) { query['pool'] = pool; }

        return this.request<Array<UniswapV3TickDTO>>({
            url: '/dapps/uniswapv3/ticks/historical',
            method: 'GET',
            query,
        }, opts?.responseOpts);
    };

    /**
     * Gets tokenHourDatas.
     * TokenHourDatas (historical)
     */
    uniswapV3GetTokenHourDatasHistorical({ startBlock, endBlock, startDate, endDate, id }: UniswapV3GetTokenHourDatasHistoricalRequest): Observable<Array<UniswapV3TokenHourDataDTO>>
    uniswapV3GetTokenHourDatasHistorical({ startBlock, endBlock, startDate, endDate, id }: UniswapV3GetTokenHourDatasHistoricalRequest, opts?: OperationOpts): Observable<AjaxResponse<Array<UniswapV3TokenHourDataDTO>>>
    uniswapV3GetTokenHourDatasHistorical({ startBlock, endBlock, startDate, endDate, id }: UniswapV3GetTokenHourDatasHistoricalRequest, opts?: OperationOpts): Observable<Array<UniswapV3TokenHourDataDTO> | AjaxResponse<Array<UniswapV3TokenHourDataDTO>>> {

        const query: HttpQuery = {};

        if (startBlock != null) { query['startBlock'] = startBlock; }
        if (endBlock != null) { query['endBlock'] = endBlock; }
        if (startDate != null) { query['startDate'] = (startDate as any).toISOString(); }
        if (endDate != null) { query['endDate'] = (endDate as any).toISOString(); }
        if (id != null) { query['id'] = id; }

        return this.request<Array<UniswapV3TokenHourDataDTO>>({
            url: '/dapps/uniswapv3/tokenHourDatas/historical',
            method: 'GET',
            query,
        }, opts?.responseOpts);
    };

    /**
     * Gets tokenV3DayDatas.
     * TokenV3DayDatas (historical)
     */
    uniswapV3GetTokenV3DayDatasHistorical({ startBlock, endBlock, startDate, endDate, id }: UniswapV3GetTokenV3DayDatasHistoricalRequest): Observable<Array<UniswapV3TokenV3DayDataDTO>>
    uniswapV3GetTokenV3DayDatasHistorical({ startBlock, endBlock, startDate, endDate, id }: UniswapV3GetTokenV3DayDatasHistoricalRequest, opts?: OperationOpts): Observable<AjaxResponse<Array<UniswapV3TokenV3DayDataDTO>>>
    uniswapV3GetTokenV3DayDatasHistorical({ startBlock, endBlock, startDate, endDate, id }: UniswapV3GetTokenV3DayDatasHistoricalRequest, opts?: OperationOpts): Observable<Array<UniswapV3TokenV3DayDataDTO> | AjaxResponse<Array<UniswapV3TokenV3DayDataDTO>>> {

        const query: HttpQuery = {};

        if (startBlock != null) { query['startBlock'] = startBlock; }
        if (endBlock != null) { query['endBlock'] = endBlock; }
        if (startDate != null) { query['startDate'] = (startDate as any).toISOString(); }
        if (endDate != null) { query['endDate'] = (endDate as any).toISOString(); }
        if (id != null) { query['id'] = id; }

        return this.request<Array<UniswapV3TokenV3DayDataDTO>>({
            url: '/dapps/uniswapv3/tokenV3DayDatas/historical',
            method: 'GET',
            query,
        }, opts?.responseOpts);
    };

    /**
     * Gets tokens.
     * Tokens (historical)
     */
    uniswapV3GetTokensHistorical({ startBlock, endBlock, startDate, endDate, id, symbol, name }: UniswapV3GetTokensHistoricalRequest): Observable<Array<UniswapV3TokenDTO>>
    uniswapV3GetTokensHistorical({ startBlock, endBlock, startDate, endDate, id, symbol, name }: UniswapV3GetTokensHistoricalRequest, opts?: OperationOpts): Observable<AjaxResponse<Array<UniswapV3TokenDTO>>>
    uniswapV3GetTokensHistorical({ startBlock, endBlock, startDate, endDate, id, symbol, name }: UniswapV3GetTokensHistoricalRequest, opts?: OperationOpts): Observable<Array<UniswapV3TokenDTO> | AjaxResponse<Array<UniswapV3TokenDTO>>> {

        const query: HttpQuery = {};

        if (startBlock != null) { query['startBlock'] = startBlock; }
        if (endBlock != null) { query['endBlock'] = endBlock; }
        if (startDate != null) { query['startDate'] = (startDate as any).toISOString(); }
        if (endDate != null) { query['endDate'] = (endDate as any).toISOString(); }
        if (id != null) { query['id'] = id; }
        if (symbol != null) { query['symbol'] = symbol; }
        if (name != null) { query['name'] = name; }

        return this.request<Array<UniswapV3TokenDTO>>({
            url: '/dapps/uniswapv3/tokens/historical',
            method: 'GET',
            query,
        }, opts?.responseOpts);
    };

    /**
     * Gets transactions.
     * Transactions (historical)
     */
    uniswapV3GetTransactionsHistorical({ startBlock, endBlock, startDate, endDate, id }: UniswapV3GetTransactionsHistoricalRequest): Observable<Array<UniswapV3TransactionDTO>>
    uniswapV3GetTransactionsHistorical({ startBlock, endBlock, startDate, endDate, id }: UniswapV3GetTransactionsHistoricalRequest, opts?: OperationOpts): Observable<AjaxResponse<Array<UniswapV3TransactionDTO>>>
    uniswapV3GetTransactionsHistorical({ startBlock, endBlock, startDate, endDate, id }: UniswapV3GetTransactionsHistoricalRequest, opts?: OperationOpts): Observable<Array<UniswapV3TransactionDTO> | AjaxResponse<Array<UniswapV3TransactionDTO>>> {

        const query: HttpQuery = {};

        if (startBlock != null) { query['startBlock'] = startBlock; }
        if (endBlock != null) { query['endBlock'] = endBlock; }
        if (startDate != null) { query['startDate'] = (startDate as any).toISOString(); }
        if (endDate != null) { query['endDate'] = (endDate as any).toISOString(); }
        if (id != null) { query['id'] = id; }

        return this.request<Array<UniswapV3TransactionDTO>>({
            url: '/dapps/uniswapv3/transactions/historical',
            method: 'GET',
            query,
        }, opts?.responseOpts);
    };

    /**
     * Gets uniswapDayDatas.
     * UniswapDayDatas (historical)
     */
    uniswapV3GetUniswapDayDatasHistorical({ startBlock, endBlock, startDate, endDate, id }: UniswapV3GetUniswapDayDatasHistoricalRequest): Observable<Array<UniswapV3UniswapDayDataDTO>>
    uniswapV3GetUniswapDayDatasHistorical({ startBlock, endBlock, startDate, endDate, id }: UniswapV3GetUniswapDayDatasHistoricalRequest, opts?: OperationOpts): Observable<AjaxResponse<Array<UniswapV3UniswapDayDataDTO>>>
    uniswapV3GetUniswapDayDatasHistorical({ startBlock, endBlock, startDate, endDate, id }: UniswapV3GetUniswapDayDatasHistoricalRequest, opts?: OperationOpts): Observable<Array<UniswapV3UniswapDayDataDTO> | AjaxResponse<Array<UniswapV3UniswapDayDataDTO>>> {

        const query: HttpQuery = {};

        if (startBlock != null) { query['startBlock'] = startBlock; }
        if (endBlock != null) { query['endBlock'] = endBlock; }
        if (startDate != null) { query['startDate'] = (startDate as any).toISOString(); }
        if (endDate != null) { query['endDate'] = (endDate as any).toISOString(); }
        if (id != null) { query['id'] = id; }

        return this.request<Array<UniswapV3UniswapDayDataDTO>>({
            url: '/dapps/uniswapv3/uniswapDayDatas/historical',
            method: 'GET',
            query,
        }, opts?.responseOpts);
    };

    /**
     * Gets mints.
     * Mints (current)
     */
    uniswapV3MintsCurrent(): Observable<Array<UniswapV3MintDTO>>
    uniswapV3MintsCurrent(opts?: OperationOpts): Observable<AjaxResponse<Array<UniswapV3MintDTO>>>
    uniswapV3MintsCurrent(opts?: OperationOpts): Observable<Array<UniswapV3MintDTO> | AjaxResponse<Array<UniswapV3MintDTO>>> {
        return this.request<Array<UniswapV3MintDTO>>({
            url: '/dapps/uniswapv3/mints/current',
            method: 'GET',
        }, opts?.responseOpts);
    };

    /**
     * Gets poolDayDatas.
     * PoolDayDatas (current)
     */
    uniswapV3PoolDayDatasCurrent(): Observable<Array<UniswapV3PoolDayDataDTO>>
    uniswapV3PoolDayDatasCurrent(opts?: OperationOpts): Observable<AjaxResponse<Array<UniswapV3PoolDayDataDTO>>>
    uniswapV3PoolDayDatasCurrent(opts?: OperationOpts): Observable<Array<UniswapV3PoolDayDataDTO> | AjaxResponse<Array<UniswapV3PoolDayDataDTO>>> {
        return this.request<Array<UniswapV3PoolDayDataDTO>>({
            url: '/dapps/uniswapv3/poolDayDatas/current',
            method: 'GET',
        }, opts?.responseOpts);
    };

    /**
     * Gets poolHourDatas.
     * PoolHourDatas (current)
     */
    uniswapV3PoolHourDatasCurrent(): Observable<Array<UniswapV3PoolHourDataDTO>>
    uniswapV3PoolHourDatasCurrent(opts?: OperationOpts): Observable<AjaxResponse<Array<UniswapV3PoolHourDataDTO>>>
    uniswapV3PoolHourDatasCurrent(opts?: OperationOpts): Observable<Array<UniswapV3PoolHourDataDTO> | AjaxResponse<Array<UniswapV3PoolHourDataDTO>>> {
        return this.request<Array<UniswapV3PoolHourDataDTO>>({
            url: '/dapps/uniswapv3/poolHourDatas/current',
            method: 'GET',
        }, opts?.responseOpts);
    };

    /**
     * Gets pools.
     * Pools (current)
     */
    uniswapV3PoolsCurrent({ id }: UniswapV3PoolsCurrentRequest): Observable<Array<UniswapV3PoolDTO>>
    uniswapV3PoolsCurrent({ id }: UniswapV3PoolsCurrentRequest, opts?: OperationOpts): Observable<AjaxResponse<Array<UniswapV3PoolDTO>>>
    uniswapV3PoolsCurrent({ id }: UniswapV3PoolsCurrentRequest, opts?: OperationOpts): Observable<Array<UniswapV3PoolDTO> | AjaxResponse<Array<UniswapV3PoolDTO>>> {

        const query: HttpQuery = {};

        if (id != null) { query['id'] = id; }

        return this.request<Array<UniswapV3PoolDTO>>({
            url: '/dapps/uniswapv3/pools/current',
            method: 'GET',
            query,
        }, opts?.responseOpts);
    };

    /**
     * Gets positionSnapshots.
     * PositionSnapshots (current)
     */
    uniswapV3PositionSnapshotsCurrent(): Observable<Array<UniswapV3PositionSnapshotDTO>>
    uniswapV3PositionSnapshotsCurrent(opts?: OperationOpts): Observable<AjaxResponse<Array<UniswapV3PositionSnapshotDTO>>>
    uniswapV3PositionSnapshotsCurrent(opts?: OperationOpts): Observable<Array<UniswapV3PositionSnapshotDTO> | AjaxResponse<Array<UniswapV3PositionSnapshotDTO>>> {
        return this.request<Array<UniswapV3PositionSnapshotDTO>>({
            url: '/dapps/uniswapv3/positionSnapshots/current',
            method: 'GET',
        }, opts?.responseOpts);
    };

    /**
     * Gets positions.
     * Positions (current)
     */
    uniswapV3PositionsCurrent(): Observable<Array<UniswapV3PositionDTO>>
    uniswapV3PositionsCurrent(opts?: OperationOpts): Observable<AjaxResponse<Array<UniswapV3PositionDTO>>>
    uniswapV3PositionsCurrent(opts?: OperationOpts): Observable<Array<UniswapV3PositionDTO> | AjaxResponse<Array<UniswapV3PositionDTO>>> {
        return this.request<Array<UniswapV3PositionDTO>>({
            url: '/dapps/uniswapv3/positions/current',
            method: 'GET',
        }, opts?.responseOpts);
    };

    /**
     * Gets swaps.
     * Swaps (current)
     */
    uniswapV3SwapsCurrent({ pool }: UniswapV3SwapsCurrentRequest): Observable<Array<UniswapV3SwapDTO>>
    uniswapV3SwapsCurrent({ pool }: UniswapV3SwapsCurrentRequest, opts?: OperationOpts): Observable<AjaxResponse<Array<UniswapV3SwapDTO>>>
    uniswapV3SwapsCurrent({ pool }: UniswapV3SwapsCurrentRequest, opts?: OperationOpts): Observable<Array<UniswapV3SwapDTO> | AjaxResponse<Array<UniswapV3SwapDTO>>> {

        const query: HttpQuery = {};

        if (pool != null) { query['pool'] = pool; }

        return this.request<Array<UniswapV3SwapDTO>>({
            url: '/dapps/uniswapv3/swaps/current',
            method: 'GET',
            query,
        }, opts?.responseOpts);
    };

    /**
     * Gets tickDayDatas.
     * TickDayDatas (current)
     */
    uniswapV3TickDayDatasCurrent(): Observable<Array<UniswapV3TickDayDataDTO>>
    uniswapV3TickDayDatasCurrent(opts?: OperationOpts): Observable<AjaxResponse<Array<UniswapV3TickDayDataDTO>>>
    uniswapV3TickDayDatasCurrent(opts?: OperationOpts): Observable<Array<UniswapV3TickDayDataDTO> | AjaxResponse<Array<UniswapV3TickDayDataDTO>>> {
        return this.request<Array<UniswapV3TickDayDataDTO>>({
            url: '/dapps/uniswapv3/tickDayDatas/current',
            method: 'GET',
        }, opts?.responseOpts);
    };

    /**
     * Gets ticks.
     * Ticks (current)
     */
    uniswapV3TicksCurrent(): Observable<Array<UniswapV3TickDTO>>
    uniswapV3TicksCurrent(opts?: OperationOpts): Observable<AjaxResponse<Array<UniswapV3TickDTO>>>
    uniswapV3TicksCurrent(opts?: OperationOpts): Observable<Array<UniswapV3TickDTO> | AjaxResponse<Array<UniswapV3TickDTO>>> {
        return this.request<Array<UniswapV3TickDTO>>({
            url: '/dapps/uniswapv3/ticks/current',
            method: 'GET',
        }, opts?.responseOpts);
    };

    /**
     * Gets tokenHourDatas.
     * TokenHourDatas (current)
     */
    uniswapV3TokenHourDatasCurrent(): Observable<Array<UniswapV3TokenHourDataDTO>>
    uniswapV3TokenHourDatasCurrent(opts?: OperationOpts): Observable<AjaxResponse<Array<UniswapV3TokenHourDataDTO>>>
    uniswapV3TokenHourDatasCurrent(opts?: OperationOpts): Observable<Array<UniswapV3TokenHourDataDTO> | AjaxResponse<Array<UniswapV3TokenHourDataDTO>>> {
        return this.request<Array<UniswapV3TokenHourDataDTO>>({
            url: '/dapps/uniswapv3/tokenHourDatas/current',
            method: 'GET',
        }, opts?.responseOpts);
    };

    /**
     * Gets tokenV3DayDatas.
     * TokenV3DayDatas (current)
     */
    uniswapV3TokenV3DayDatasCurrent(): Observable<Array<UniswapV3TokenV3DayDataDTO>>
    uniswapV3TokenV3DayDatasCurrent(opts?: OperationOpts): Observable<AjaxResponse<Array<UniswapV3TokenV3DayDataDTO>>>
    uniswapV3TokenV3DayDatasCurrent(opts?: OperationOpts): Observable<Array<UniswapV3TokenV3DayDataDTO> | AjaxResponse<Array<UniswapV3TokenV3DayDataDTO>>> {
        return this.request<Array<UniswapV3TokenV3DayDataDTO>>({
            url: '/dapps/uniswapv3/tokenV3DayDatas/current',
            method: 'GET',
        }, opts?.responseOpts);
    };

    /**
     * Gets tokens.
     * Tokens (current)
     */
    uniswapV3TokensCurrent(): Observable<Array<UniswapV3TokenDTO>>
    uniswapV3TokensCurrent(opts?: OperationOpts): Observable<AjaxResponse<Array<UniswapV3TokenDTO>>>
    uniswapV3TokensCurrent(opts?: OperationOpts): Observable<Array<UniswapV3TokenDTO> | AjaxResponse<Array<UniswapV3TokenDTO>>> {
        return this.request<Array<UniswapV3TokenDTO>>({
            url: '/dapps/uniswapv3/tokens/current',
            method: 'GET',
        }, opts?.responseOpts);
    };

    /**
     * Gets transactions.
     * Transactions (current)
     */
    uniswapV3TransactionsCurrent(): Observable<Array<UniswapV3TransactionDTO>>
    uniswapV3TransactionsCurrent(opts?: OperationOpts): Observable<AjaxResponse<Array<UniswapV3TransactionDTO>>>
    uniswapV3TransactionsCurrent(opts?: OperationOpts): Observable<Array<UniswapV3TransactionDTO> | AjaxResponse<Array<UniswapV3TransactionDTO>>> {
        return this.request<Array<UniswapV3TransactionDTO>>({
            url: '/dapps/uniswapv3/transactions/current',
            method: 'GET',
        }, opts?.responseOpts);
    };

    /**
     * Gets uniswapDayDatas.
     * UniswapDayDatas (current)
     */
    uniswapV3UniswapDayDatasCurrent(): Observable<Array<UniswapV3UniswapDayDataDTO>>
    uniswapV3UniswapDayDatasCurrent(opts?: OperationOpts): Observable<AjaxResponse<Array<UniswapV3UniswapDayDataDTO>>>
    uniswapV3UniswapDayDatasCurrent(opts?: OperationOpts): Observable<Array<UniswapV3UniswapDayDataDTO> | AjaxResponse<Array<UniswapV3UniswapDayDataDTO>>> {
        return this.request<Array<UniswapV3UniswapDayDataDTO>>({
            url: '/dapps/uniswapv3/uniswapDayDatas/current',
            method: 'GET',
        }, opts?.responseOpts);
    };

}
