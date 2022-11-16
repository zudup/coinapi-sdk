goog.provide('API.Client.UniswapV2.UniswapFactoryV2DTO');

/**
 * The Uniswap Factory entity is responsible for storing aggregate information across all Uniswap pairs. It can be used to view stats about total liquidity, volume, amount of pairs and more.
 * @record
 */
API.Client.UniswapV2UniswapFactoryV2DTO = function() {}

/**
 * @type {!Date}
 * @export
 */
API.Client.UniswapV2UniswapFactoryV2DTO.prototype.entryTime;

/**
 * @type {!Date}
 * @export
 */
API.Client.UniswapV2UniswapFactoryV2DTO.prototype.recvTime;

/**
 * Number of block in which entity was recorded.
 * @type {!number}
 * @export
 */
API.Client.UniswapV2UniswapFactoryV2DTO.prototype.blockNumber;

/**
 * Factory address.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2UniswapFactoryV2DTO.prototype.id;

/**
 * Amount of pairs created by the Uniswap factory.
 * @type {!number}
 * @export
 */
API.Client.UniswapV2UniswapFactoryV2DTO.prototype.pairCount;

/**
 * All time USD volume across all pairs (USD is derived).
 * @type {!string}
 * @export
 */
API.Client.UniswapV2UniswapFactoryV2DTO.prototype.totalVolumeUsd;

/**
 * All time volume in ETH across all pairs (ETH is derived).
 * @type {!string}
 * @export
 */
API.Client.UniswapV2UniswapFactoryV2DTO.prototype.totalVolumeEth;

/**
 * Untracked volume USD.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2UniswapFactoryV2DTO.prototype.untrackedVolumeUsd;

/**
 * Total liquidity across all pairs stored as a derived USD amount.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2UniswapFactoryV2DTO.prototype.totalLiquidityUsd;

/**
 * Total liquidity across all pairs stored as a derived ETH amount.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2UniswapFactoryV2DTO.prototype.totalLiquidityEth;

/**
 * All time amount of transactions across all pairs.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2UniswapFactoryV2DTO.prototype.txCount;

/**
 * .
 * @type {!number}
 * @export
 */
API.Client.UniswapV2UniswapFactoryV2DTO.prototype.vid;

