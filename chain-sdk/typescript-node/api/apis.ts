export * from './poolsApi';
import { PoolsApi } from './poolsApi';
export * from './sushiswapApi';
import { SushiswapApi } from './sushiswapApi';
export * from './swapsApi';
import { SwapsApi } from './swapsApi';
export * from './tokensApi';
import { TokensApi } from './tokensApi';
export * from './tradesApi';
import { TradesApi } from './tradesApi';
export * from './uniswapV2Api';
import { UniswapV2Api } from './uniswapV2Api';
export * from './uniswapV3Api';
import { UniswapV3Api } from './uniswapV3Api';
import * as http from 'http';

export class HttpError extends Error {
    constructor (public response: http.IncomingMessage, public body: any, public statusCode?: number) {
        super('HTTP request failed');
        this.name = 'HttpError';
    }
}

export { RequestFile } from '../model/models';

export const APIS = [PoolsApi, SushiswapApi, SwapsApi, TokensApi, TradesApi, UniswapV2Api, UniswapV3Api];
