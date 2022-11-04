goog.provide('API.Client.PairDTO');

/**
 * Information about a pair. Includes references to each token within the pair, volume information, liquidity information, and more. The pair entity mirrors the pair smart contract, and also contains aggregated information about use.
 * @record
 */
API.Client.PairDTO = function() {}

/**
 * @type {!Date}
 * @export
 */
API.Client.PairDTO.prototype.entryTime;

/**
 * @type {!Date}
 * @export
 */
API.Client.PairDTO.prototype.recvTime;

/**
 * Number of block in which entity was recorded.
 * @type {!number}
 * @export
 */
API.Client.PairDTO.prototype.blockNumber;

/**
 * Pair contract address.
 * @type {!string}
 * @export
 */
API.Client.PairDTO.prototype.id;

/**
 * Factory contract address.
 * @type {!string}
 * @export
 */
API.Client.PairDTO.prototype.factory;

/**
 * Friendly name, format: <token0 name>-<token1 name>
 * @type {!string}
 * @export
 */
API.Client.PairDTO.prototype.name;

/**
 * Reference to token0 as stored in pair contract.
 * @type {!string}
 * @export
 */
API.Client.PairDTO.prototype.token0;

/**
 * Reference to token0 as stored in pair contract.
 * @type {!string}
 * @export
 */
API.Client.PairDTO.prototype.token1;

/**
 * Reserve of token0.
 * @type {!string}
 * @export
 */
API.Client.PairDTO.prototype.reserve0;

/**
 * Reserve of token1.
 * @type {!string}
 * @export
 */
API.Client.PairDTO.prototype.reserve1;

/**
 * Total supply of liquidity token distributed to LPs.
 * @type {!string}
 * @export
 */
API.Client.PairDTO.prototype.totalSupply;

/**
 * Total liquidity in pair stored as an amount of ETH.
 * @type {!string}
 * @export
 */
API.Client.PairDTO.prototype.reserveEth;

/**
 * Total liquidity amount in pair stored as an amount of USD.
 * @type {!string}
 * @export
 */
API.Client.PairDTO.prototype.reserveUsd;

/**
 * Total liquidity with only tracked amount.
 * @type {!string}
 * @export
 */
API.Client.PairDTO.prototype.trackedReserveEth;

/**
 * Token0 per token1.
 * @type {!string}
 * @export
 */
API.Client.PairDTO.prototype.token0Price;

/**
 * Token1 per token0.
 * @type {!string}
 * @export
 */
API.Client.PairDTO.prototype.token1Price;

/**
 * Amount of token0 swapped on this pair.
 * @type {!string}
 * @export
 */
API.Client.PairDTO.prototype.volumeToken0;

/**
 * Amount of token1 swapped on this pair.
 * @type {!string}
 * @export
 */
API.Client.PairDTO.prototype.volumeToken1;

/**
 * Total amount swapped all time in this pair stored in USD (only tracked if USD liquidity is above minimum threshold).
 * @type {!string}
 * @export
 */
API.Client.PairDTO.prototype.volumeUsd;

/**
 * Total amount swapped all time in this pair stored in USD, no minimum liquidity threshold.
 * @type {!string}
 * @export
 */
API.Client.PairDTO.prototype.untrackedVolumeUsd;

/**
 * All time amount of transactions on this pair.
 * @type {!string}
 * @export
 */
API.Client.PairDTO.prototype.txCount;

/**
 * Total number of LPs.
 * @type {!string}
 * @export
 */
API.Client.PairDTO.prototype.liquidityProviderCount;

/**
 * Timestamp.
 * @type {!string}
 * @export
 */
API.Client.PairDTO.prototype.timestamp;

/**
 * Block number in which pair information was created in.
 * @type {!string}
 * @export
 */
API.Client.PairDTO.prototype.block;

/**
 * 
 * @type {!number}
 * @export
 */
API.Client.PairDTO.prototype.vid;

/**
 * @type {!number}
 * @export
 */
API.Client.PairDTO.prototype.evaluatedAsk;

