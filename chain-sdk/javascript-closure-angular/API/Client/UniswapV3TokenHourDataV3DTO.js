goog.provide('API.Client.UniswapV3TokenHourDataV3DTO');

/**
 * Token data aggregated across all pairs that include token.
 * @record
 */
API.Client.UniswapV3TokenHourDataV3DTO = function() {}

/**
 * @type {!Date}
 * @export
 */
API.Client.UniswapV3TokenHourDataV3DTO.prototype.entryTime;

/**
 * @type {!Date}
 * @export
 */
API.Client.UniswapV3TokenHourDataV3DTO.prototype.recvTime;

/**
 * Number of block in which entity was recorded.
 * @type {!number}
 * @export
 */
API.Client.UniswapV3TokenHourDataV3DTO.prototype.blockNumber;

/**
 * Token address concatendated with date.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3TokenHourDataV3DTO.prototype.id;

/**
 * Unix timestamp for start of hour.
 * @type {!number}
 * @export
 */
API.Client.UniswapV3TokenHourDataV3DTO.prototype.periodStartUnix;

/**
 * Pointer to token.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3TokenHourDataV3DTO.prototype.token;

/**
 * Volume in token units.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3TokenHourDataV3DTO.prototype.volume;

/**
 * Volume in derived USD.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3TokenHourDataV3DTO.prototype.volumeUsd;

/**
 * Volume in USD even on pools with less reliable USD values.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3TokenHourDataV3DTO.prototype.untrackedVolumeUsd;

/**
 * Liquidity across all pools in token units.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3TokenHourDataV3DTO.prototype.totalValueLocked;

/**
 * Liquidity across all pools in derived USD.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3TokenHourDataV3DTO.prototype.totalValueLockedUsd;

/**
 * Price at end of period in USD.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3TokenHourDataV3DTO.prototype.priceUsd;

/**
 * Fees in USD.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3TokenHourDataV3DTO.prototype.feesUsd;

/**
 * Opening price USD.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3TokenHourDataV3DTO.prototype.open;

/**
 * High price USD.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3TokenHourDataV3DTO.prototype.high;

/**
 * Low price USD.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3TokenHourDataV3DTO.prototype.low;

/**
 * Close price USD.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3TokenHourDataV3DTO.prototype.close;

/**
 * 
 * @type {!number}
 * @export
 */
API.Client.UniswapV3TokenHourDataV3DTO.prototype.vid;

