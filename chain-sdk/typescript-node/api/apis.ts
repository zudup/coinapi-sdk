export * from './bundlesApi';
import { BundlesApi } from './bundlesApi';
export * from './burnsApi';
import { BurnsApi } from './burnsApi';
export * from './dayDataApi';
import { DayDataApi } from './dayDataApi';
export * from './factoryApi';
import { FactoryApi } from './factoryApi';
export * from './liquidityPositionApi';
import { LiquidityPositionApi } from './liquidityPositionApi';
export * from './liquidityPositionSnapshotsApi';
import { LiquidityPositionSnapshotsApi } from './liquidityPositionSnapshotsApi';
export * from './mintApi';
import { MintApi } from './mintApi';
export * from './mintsApi';
import { MintsApi } from './mintsApi';
export * from './poiApi';
import { PoiApi } from './poiApi';
export * from './poolDayDataApi';
import { PoolDayDataApi } from './poolDayDataApi';
export * from './poolHourDataApi';
import { PoolHourDataApi } from './poolHourDataApi';
export * from './poolsApi';
import { PoolsApi } from './poolsApi';
export * from './positionSnapshotApi';
import { PositionSnapshotApi } from './positionSnapshotApi';
export * from './positionsApi';
import { PositionsApi } from './positionsApi';
export * from './sushiswapApi';
import { SushiswapApi } from './sushiswapApi';
export * from './swapsApi';
import { SwapsApi } from './swapsApi';
export * from './tickDayDataApi';
import { TickDayDataApi } from './tickDayDataApi';
export * from './ticksApi';
import { TicksApi } from './ticksApi';
export * from './tokenDayDataApi';
import { TokenDayDataApi } from './tokenDayDataApi';
export * from './tokenHourDataApi';
import { TokenHourDataApi } from './tokenHourDataApi';
export * from './tokensApi';
import { TokensApi } from './tokensApi';
export * from './tradesApi';
import { TradesApi } from './tradesApi';
export * from './transactionsApi';
import { TransactionsApi } from './transactionsApi';
export * from './uniswapDayDataApi';
import { UniswapDayDataApi } from './uniswapDayDataApi';
export * from './uniswapV2Api';
import { UniswapV2Api } from './uniswapV2Api';
export * from './uniswapV3Api';
import { UniswapV3Api } from './uniswapV3Api';
export * from './userApi';
import { UserApi } from './userApi';
import * as http from 'http';

export class HttpError extends Error {
    constructor (public response: http.IncomingMessage, public body: any, public statusCode?: number) {
        super('HTTP request failed');
        this.name = 'HttpError';
    }
}

export { RequestFile } from '../model/models';

export const APIS = [BundlesApi, BurnsApi, DayDataApi, FactoryApi, LiquidityPositionApi, LiquidityPositionSnapshotsApi, MintApi, MintsApi, PoiApi, PoolDayDataApi, PoolHourDataApi, PoolsApi, PositionSnapshotApi, PositionsApi, SushiswapApi, SwapsApi, TickDayDataApi, TicksApi, TokenDayDataApi, TokenHourDataApi, TokensApi, TradesApi, TransactionsApi, UniswapDayDataApi, UniswapV2Api, UniswapV3Api, UserApi];
