export * from './PoolsApi';
import { PoolsApi } from './PoolsApi';
export * from './SushiswapApi';
import { SushiswapApi } from './SushiswapApi';
export * from './SwapsApi';
import { SwapsApi } from './SwapsApi';
export * from './TokensApi';
import { TokensApi } from './TokensApi';
export * from './TradesApi';
import { TradesApi } from './TradesApi';
export * from './UniswapV2Api';
import { UniswapV2Api } from './UniswapV2Api';
export * from './UniswapV3Api';
import { UniswapV3Api } from './UniswapV3Api';
export const APIS = [PoolsApi, SushiswapApi, SwapsApi, TokensApi, TradesApi, UniswapV2Api, UniswapV3Api];
