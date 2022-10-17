goog.provide('API.Client.UniswapDayDataV3DTO');

/**
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
 * @type {!number}
 * @export
 */
API.Client.UniswapDayDataV3DTO.prototype.blockNumber;

/**
 * @type {!number}
 * @export
 */
API.Client.UniswapDayDataV3DTO.prototype.vid;

/**
 * @type {!string}
 * @export
 */
API.Client.UniswapDayDataV3DTO.prototype.id;

/**
 * @type {!number}
 * @export
 */
API.Client.UniswapDayDataV3DTO.prototype.date;

/**
 * @type {!string}
 * @export
 */
API.Client.UniswapDayDataV3DTO.prototype.volumeEth;

/**
 * @type {!string}
 * @export
 */
API.Client.UniswapDayDataV3DTO.prototype.volumeUsd;

/**
 * @type {!string}
 * @export
 */
API.Client.UniswapDayDataV3DTO.prototype.volumeUsdUntracked;

/**
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
 * @type {!string}
 * @export
 */
API.Client.UniswapDayDataV3DTO.prototype.tvlUsd;

