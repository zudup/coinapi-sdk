goog.provide('API.Client.UniswapV2.TokenDayDataV2DTO');

/**
 * Token data aggregated across all pairs that include token.
 * @record
 */
API.Client.UniswapV2TokenDayDataV2DTO = function() {}

/**
 * @type {!Date}
 * @export
 */
API.Client.UniswapV2TokenDayDataV2DTO.prototype.entryTime;

/**
 * @type {!Date}
 * @export
 */
API.Client.UniswapV2TokenDayDataV2DTO.prototype.recvTime;

/**
 * Number of block in which entity was recorded.
 * @type {!number}
 * @export
 */
API.Client.UniswapV2TokenDayDataV2DTO.prototype.blockNumber;

/**
 * Token address and day id (day start timestamp in unix / 86400) concatenated with a dash.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2TokenDayDataV2DTO.prototype.id;

/**
 * Unix timestamp for start of day.
 * @type {!number}
 * @export
 */
API.Client.UniswapV2TokenDayDataV2DTO.prototype.date;

/**
 * Reference to token entity.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2TokenDayDataV2DTO.prototype.token;

/**
 * Amount of token swapped across all pairs throughout day.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2TokenDayDataV2DTO.prototype.dailyVolumeToken;

/**
 * Amount of token swapped across all pairs throughout day stored as a derived amount of ETH.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2TokenDayDataV2DTO.prototype.dailyVolumeEth;

/**
 * Amount of token swapped across all pairs throughout day stored as a derived amount of USD.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2TokenDayDataV2DTO.prototype.dailyVolumeUsd;

/**
 * Amount of transactions with this token across all pairs.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2TokenDayDataV2DTO.prototype.dailyTxns;

/**
 * Token amount of token deposited across all pairs.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2TokenDayDataV2DTO.prototype.totalLiquidityToken;

/**
 * Token amount of token deposited across all pairs stored as amount of ETH.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2TokenDayDataV2DTO.prototype.totalLiquidityEth;

/**
 * Token amount of token deposited across all pairs stored as amount of USD.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2TokenDayDataV2DTO.prototype.totalLiquidityUsd;

/**
 * Price of token in derived USD.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2TokenDayDataV2DTO.prototype.priceUsd;

/**
 * 
 * @type {!number}
 * @export
 */
API.Client.UniswapV2TokenDayDataV2DTO.prototype.vid;

