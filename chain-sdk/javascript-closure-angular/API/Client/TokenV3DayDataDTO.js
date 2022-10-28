goog.provide('API.Client.TokenV3DayDataDTO');

/**
 * Token data aggregated across all pairs that include token.
 * @record
 */
API.Client.TokenV3DayDataDTO = function() {}

/**
 * @type {!Date}
 * @export
 */
API.Client.TokenV3DayDataDTO.prototype.entryTime;

/**
 * @type {!Date}
 * @export
 */
API.Client.TokenV3DayDataDTO.prototype.recvTime;

/**
 * 
 * @type {!number}
 * @export
 */
API.Client.TokenV3DayDataDTO.prototype.blockNumber;

/**
 * 
 * @type {!number}
 * @export
 */
API.Client.TokenV3DayDataDTO.prototype.vid;

/**
 * token address concatendated with date
 * @type {!string}
 * @export
 */
API.Client.TokenV3DayDataDTO.prototype.id;

/**
 * timestamp rounded to current day by dividing by 86400
 * @type {!number}
 * @export
 */
API.Client.TokenV3DayDataDTO.prototype.date;

/**
 * pointer to token
 * @type {!string}
 * @export
 */
API.Client.TokenV3DayDataDTO.prototype.token;

/**
 * volume in token units
 * @type {!string}
 * @export
 */
API.Client.TokenV3DayDataDTO.prototype.volume;

/**
 * volume in derived USD
 * @type {!string}
 * @export
 */
API.Client.TokenV3DayDataDTO.prototype.volumeUsd;

/**
 * volume in USD even on pools with less reliable USD values
 * @type {!string}
 * @export
 */
API.Client.TokenV3DayDataDTO.prototype.untrackedVolumeUsd;

/**
 * liquidity across all pools in token units
 * @type {!string}
 * @export
 */
API.Client.TokenV3DayDataDTO.prototype.totalValueLocked;

/**
 * liquidity across all pools in derived USD
 * @type {!string}
 * @export
 */
API.Client.TokenV3DayDataDTO.prototype.totalValueLockedUsd;

/**
 * price at end of period in USD
 * @type {!string}
 * @export
 */
API.Client.TokenV3DayDataDTO.prototype.priceUsd;

/**
 * fees in USD
 * @type {!string}
 * @export
 */
API.Client.TokenV3DayDataDTO.prototype.feesUsd;

/**
 * opening price USD
 * @type {!string}
 * @export
 */
API.Client.TokenV3DayDataDTO.prototype.open;

/**
 * high price USD
 * @type {!string}
 * @export
 */
API.Client.TokenV3DayDataDTO.prototype.high;

/**
 * low price USD
 * @type {!string}
 * @export
 */
API.Client.TokenV3DayDataDTO.prototype.low;

/**
 * close price USD
 * @type {!string}
 * @export
 */
API.Client.TokenV3DayDataDTO.prototype.close;

