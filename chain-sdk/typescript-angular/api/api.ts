export * from './sushiswap.service';
import { SushiswapService } from './sushiswap.service';
export * from './uniswapV2.service';
import { UniswapV2Service } from './uniswapV2.service';
export * from './uniswapV3.service';
import { UniswapV3Service } from './uniswapV3.service';
export const APIS = [SushiswapService, UniswapV2Service, UniswapV3Service];
