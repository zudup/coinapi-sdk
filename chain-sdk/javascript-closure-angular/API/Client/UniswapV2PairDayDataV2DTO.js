goog.provide('API.Client.UniswapV2.PairDayDataV2DTO');

/**
 * Tracks pair data across each day.
 * @record
 */
API.Client.UniswapV2PairDayDataV2DTO = function() {}

/**
 * @type {!Date}
 * @export
 */
API.Client.UniswapV2PairDayDataV2DTO.prototype.entryTime;

/**
 * @type {!Date}
 * @export
 */
API.Client.UniswapV2PairDayDataV2DTO.prototype.recvTime;

/**
 * Number of block in which entity was recorded.
 * @type {!number}
 * @export
 */
API.Client.UniswapV2PairDayDataV2DTO.prototype.blockNumber;

/**
 * 
 * @type {!string}
 * @export
 */
API.Client.UniswapV2PairDayDataV2DTO.prototype.id;

/**
 * Unix timestamp for start of day.
 * @type {!number}
 * @export
 */
API.Client.UniswapV2PairDayDataV2DTO.prototype.date;

/**
 * Address for pair contract.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2PairDayDataV2DTO.prototype.pairAddress;

/**
 * Reference to token0.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2PairDayDataV2DTO.prototype.token0;

/**
 * Reference to token1.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2PairDayDataV2DTO.prototype.token1;

/**
 * Reserve of token0 (updated during each transaction on pair).
 * @type {!string}
 * @export
 */
API.Client.UniswapV2PairDayDataV2DTO.prototype.reserve0;

/**
 * Reserve of token1 (updated during each transaction on pair).
 * @type {!string}
 * @export
 */
API.Client.UniswapV2PairDayDataV2DTO.prototype.reserve1;

/**
 * Total supply of liquidity token distributed to LPs.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2PairDayDataV2DTO.prototype.totalSupply;

/**
 * Reserve of token0 plus token1 stored as a derived USD amount.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2PairDayDataV2DTO.prototype.reserveUsd;

/**
 * Total amount of token0 swapped throughout day.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2PairDayDataV2DTO.prototype.dailyVolumeToken0;

/**
 * Total amount of token1 swapped throughout day.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2PairDayDataV2DTO.prototype.dailyVolumeToken1;

/**
 * Total volume within pair throughout day.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2PairDayDataV2DTO.prototype.dailyVolumeUsd;

/**
 * Amount of transactions on pair throughout day.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2PairDayDataV2DTO.prototype.dailyTxns;

/**
 * 
 * @type {!number}
 * @export
 */
API.Client.UniswapV2PairDayDataV2DTO.prototype.vid;

