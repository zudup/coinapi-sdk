goog.provide('API.Client.TokenHourDataV3DTO');

/**
 * Token data aggregated across all pairs that include token.
 * @record
 */
API.Client.TokenHourDataV3DTO = function() {}

/**
 * @type {!Date}
 * @export
 */
API.Client.TokenHourDataV3DTO.prototype.entryTime;

/**
 * @type {!Date}
 * @export
 */
API.Client.TokenHourDataV3DTO.prototype.recvTime;

/**
 * 
 * @type {!number}
 * @export
 */
API.Client.TokenHourDataV3DTO.prototype.blockNumber;

/**
 * token address concatendated with date
 * @type {!string}
 * @export
 */
API.Client.TokenHourDataV3DTO.prototype.id;

/**
 * unix timestamp for start of hour
 * @type {!number}
 * @export
 */
API.Client.TokenHourDataV3DTO.prototype.periodStartUnix;

/**
 * pointer to token
 * @type {!string}
 * @export
 */
API.Client.TokenHourDataV3DTO.prototype.token;

/**
 * volume in token units
 * @type {!string}
 * @export
 */
API.Client.TokenHourDataV3DTO.prototype.volume;

/**
 * volume in derived USD
 * @type {!string}
 * @export
 */
API.Client.TokenHourDataV3DTO.prototype.volumeUsd;

/**
 * volume in USD even on pools with less reliable USD values
 * @type {!string}
 * @export
 */
API.Client.TokenHourDataV3DTO.prototype.untrackedVolumeUsd;

/**
 * liquidity across all pools in token units
 * @type {!string}
 * @export
 */
API.Client.TokenHourDataV3DTO.prototype.totalValueLocked;

/**
 * liquidity across all pools in derived USD
 * @type {!string}
 * @export
 */
API.Client.TokenHourDataV3DTO.prototype.totalValueLockedUsd;

/**
 * price at end of period in USD
 * @type {!string}
 * @export
 */
API.Client.TokenHourDataV3DTO.prototype.priceUsd;

/**
 * fees in USD
 * @type {!string}
 * @export
 */
API.Client.TokenHourDataV3DTO.prototype.feesUsd;

/**
 * opening price USD
 * @type {!string}
 * @export
 */
API.Client.TokenHourDataV3DTO.prototype.open;

/**
 * high price USD
 * @type {!string}
 * @export
 */
API.Client.TokenHourDataV3DTO.prototype.high;

/**
 * low price USD
 * @type {!string}
 * @export
 */
API.Client.TokenHourDataV3DTO.prototype.low;

/**
 * close price USD
 * @type {!string}
 * @export
 */
API.Client.TokenHourDataV3DTO.prototype.close;

/**
 * 
 * @type {!number}
 * @export
 */
API.Client.TokenHourDataV3DTO.prototype.vid;

