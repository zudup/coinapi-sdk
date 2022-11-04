goog.provide('API.Client.UniswapV3UniswapDayDataV3DTO');

/**
 * Data accumulated and condensed into day stats for all of Uniswap.
 * @record
 */
API.Client.UniswapV3UniswapDayDataV3DTO = function() {}

/**
 * @type {!Date}
 * @export
 */
API.Client.UniswapV3UniswapDayDataV3DTO.prototype.entryTime;

/**
 * @type {!Date}
 * @export
 */
API.Client.UniswapV3UniswapDayDataV3DTO.prototype.recvTime;

/**
 * Number of block in which entity was recorded.
 * @type {!number}
 * @export
 */
API.Client.UniswapV3UniswapDayDataV3DTO.prototype.blockNumber;

/**
 * 
 * @type {!number}
 * @export
 */
API.Client.UniswapV3UniswapDayDataV3DTO.prototype.vid;

/**
 * Timestamp rounded to current day by dividing by 86400.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3UniswapDayDataV3DTO.prototype.id;

/**
 * Timestamp rounded to current day by dividing by 86400.
 * @type {!number}
 * @export
 */
API.Client.UniswapV3UniswapDayDataV3DTO.prototype.date;

/**
 * Total volume across all pairs on this day, stored as a derived amount of ETH.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3UniswapDayDataV3DTO.prototype.volumeEth;

/**
 * Total volume across all pairs on this day, stored as a derived amount of USD.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3UniswapDayDataV3DTO.prototype.volumeUsd;

/**
 * Total daily volume in Uniswap derived in terms of USD untracked.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3UniswapDayDataV3DTO.prototype.volumeUsdUntracked;

/**
 * Fees in USD
 * @type {!string}
 * @export
 */
API.Client.UniswapV3UniswapDayDataV3DTO.prototype.feesUsd;

/**
 * @type {!API.Client.NumericsBigInteger}
 * @export
 */
API.Client.UniswapV3UniswapDayDataV3DTO.prototype.txCount;

/**
 * Tvl in terms of USD.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3UniswapDayDataV3DTO.prototype.tvlUsd;

