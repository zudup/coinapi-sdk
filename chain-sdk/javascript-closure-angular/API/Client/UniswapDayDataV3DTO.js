goog.provide('API.Client.UniswapDayDataV3DTO');

/**
 * Data accumulated and condensed into day stats for all of Uniswap
 * @record
 */
API.Client.UniswapDayDataV3DTO = function() {}

/**
 * @type {!Date}
 * @export
 */
API.Client.UniswapDayDataV3DTO.prototype.entryTime;

/**
 * @type {!Date}
 * @export
 */
API.Client.UniswapDayDataV3DTO.prototype.recvTime;

/**
 * 
 * @type {!number}
 * @export
 */
API.Client.UniswapDayDataV3DTO.prototype.blockNumber;

/**
 * 
 * @type {!number}
 * @export
 */
API.Client.UniswapDayDataV3DTO.prototype.vid;

/**
 * timestamp rounded to current day by dividing by 86400
 * @type {!string}
 * @export
 */
API.Client.UniswapDayDataV3DTO.prototype.id;

/**
 * timestamp rounded to current day by dividing by 86400
 * @type {!number}
 * @export
 */
API.Client.UniswapDayDataV3DTO.prototype.date;

/**
 * total volume across all pairs on this day, stored as a derived amount of ETH
 * @type {!string}
 * @export
 */
API.Client.UniswapDayDataV3DTO.prototype.volumeEth;

/**
 * total volume across all pairs on this day, stored as a derived amount of USD
 * @type {!string}
 * @export
 */
API.Client.UniswapDayDataV3DTO.prototype.volumeUsd;

/**
 * total daily volume in Uniswap derived in terms of USD untracked
 * @type {!string}
 * @export
 */
API.Client.UniswapDayDataV3DTO.prototype.volumeUsdUntracked;

/**
 * fees in USD
 * @type {!string}
 * @export
 */
API.Client.UniswapDayDataV3DTO.prototype.feesUsd;

/**
 * @type {!API.Client.BigInteger}
 * @export
 */
API.Client.UniswapDayDataV3DTO.prototype.txCount;

/**
 * tvl in terms of USD
 * @type {!string}
 * @export
 */
API.Client.UniswapDayDataV3DTO.prototype.tvlUsd;

