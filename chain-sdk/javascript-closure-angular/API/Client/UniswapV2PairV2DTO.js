goog.provide('API.Client.UniswapV2PairV2DTO');

/**
 * Information about a pair. Includes references to each token within the pair, volume information, liquidity information, and more. The pair entity mirrors the pair smart contract, and also contains aggregated information about use.
 * @record
 */
API.Client.UniswapV2PairV2DTO = function() {}

/**
 * @type {!Date}
 * @export
 */
API.Client.UniswapV2PairV2DTO.prototype.entryTime;

/**
 * @type {!Date}
 * @export
 */
API.Client.UniswapV2PairV2DTO.prototype.recvTime;

/**
 * Number of block in which entity was recorded.
 * @type {!number}
 * @export
 */
API.Client.UniswapV2PairV2DTO.prototype.blockNumber;

/**
 * 
 * @type {!number}
 * @export
 */
API.Client.UniswapV2PairV2DTO.prototype.vid;

/**
 * Pair contract address.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2PairV2DTO.prototype.id;

/**
 * Reference to token0 as stored in pair contract.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2PairV2DTO.prototype.token0;

/**
 * Reference to token1 as stored in pair contract.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2PairV2DTO.prototype.token1;

/**
 * Reserve of token0.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2PairV2DTO.prototype.reserve0;

/**
 * Reserve of token1.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2PairV2DTO.prototype.reserve1;

/**
 * Total supply of liquidity token distributed to LPs.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2PairV2DTO.prototype.totalSupply;

/**
 * Total liquidity in pair stored as an amount of ETH.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2PairV2DTO.prototype.reserveEth;

/**
 * Total liquidity amount in pair stored as an amount of USD.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2PairV2DTO.prototype.reserveUsd;

/**
 * Total liquidity with only tracked amount.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2PairV2DTO.prototype.trackedReserveEth;

/**
 * Token0 per token1.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2PairV2DTO.prototype.token0Price;

/**
 * Token1 per token0.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2PairV2DTO.prototype.token1Price;

/**
 * Amount of token0 swapped on this pair.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2PairV2DTO.prototype.volumeToken0;

/**
 * Amount of token1 swapped on this pair.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2PairV2DTO.prototype.volumeToken1;

/**
 * Total amount swapped all time in this pair stored in USD (only tracked if USD liquidity is above minimum threshold).
 * @type {!string}
 * @export
 */
API.Client.UniswapV2PairV2DTO.prototype.volumeUsd;

/**
 * Total amount swapped all time in this pair stored in USD, no minimum liquidity threshold.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2PairV2DTO.prototype.untrackedVolumeUsd;

/**
 * @type {!API.Client.NumericsBigInteger}
 * @export
 */
API.Client.UniswapV2PairV2DTO.prototype.txCount;

/**
 * Timestamp contract was created.
 * @type {!Date}
 * @export
 */
API.Client.UniswapV2PairV2DTO.prototype.createdAtTimestamp;

/**
 * Total number of LPs.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2PairV2DTO.prototype.liquidityProviderCount;

/**
 * @type {!number}
 * @export
 */
API.Client.UniswapV2PairV2DTO.prototype.evaluatedAsk;

