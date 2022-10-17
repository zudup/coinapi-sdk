export * from './pools.service';
import { PoolsService } from './pools.service';
export * from './sushiswap.service';
import { SushiswapService } from './sushiswap.service';
export * from './swaps.service';
import { SwapsService } from './swaps.service';
export * from './tokens.service';
import { TokensService } from './tokens.service';
export * from './trades.service';
import { TradesService } from './trades.service';
export * from './uniswapV2.service';
import { UniswapV2Service } from './uniswapV2.service';
export * from './uniswapV3.service';
import { UniswapV3Service } from './uniswapV3.service';
export const APIS = [PoolsService, SushiswapService, SwapsService, TokensService, TradesService, UniswapV2Service, UniswapV3Service];