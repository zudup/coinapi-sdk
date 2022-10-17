goog.provide('API.Client.TickV3DTO');

/**
 * @record
 */
API.Client.TickV3DTO = function() {}

/**
 * @type {!Date}
 * @export
 */
API.Client.TickV3DTO.prototype.entryTime;

/**
 * @type {!Date}
 * @export
 */
API.Client.TickV3DTO.prototype.recvTime;

/**
 * @type {!number}
 * @export
 */
API.Client.TickV3DTO.prototype.blockNumber;

/**
 * @type {!number}
 * @export
 */
API.Client.TickV3DTO.prototype.vid;

/**
 * @type {!string}
 * @export
 */
API.Client.TickV3DTO.prototype.id;

/**
 * @type {!string}
 * @export
 */
API.Client.TickV3DTO.prototype.poolAddress;

/**
 * @type {!API.Client.BigInteger}
 * @export
 */
API.Client.TickV3DTO.prototype.tickIdx;

/**
 * @type {!string}
 * @export
 */
API.Client.TickV3DTO.prototype.pool;

/**
 * @type {!API.Client.BigInteger}
 * @export
 */
API.Client.TickV3DTO.prototype.liquidityGross;

/**
 * @type {!API.Client.BigInteger}
 * @export
 */
API.Client.TickV3DTO.prototype.liquidityNet;

/**
 * @type {!string}
 * @export
 */
API.Client.TickV3DTO.prototype.price0;

/**
 * @type {!string}
 * @export
 */
API.Client.TickV3DTO.prototype.price1;

/**
 * @type {!string}
 * @export
 */
API.Client.TickV3DTO.prototype.volumeToken0;

/**
 * @type {!string}
 * @export
 */
API.Client.TickV3DTO.prototype.volumeToken1;

/**
 * @type {!string}
 * @export
 */
API.Client.TickV3DTO.prototype.volumeUsd;

/**
 * @type {!string}
 * @export
 */
API.Client.TickV3DTO.prototype.untrackedVolumeUsd;

/**
 * @type {!string}
 * @export
 */
API.Client.TickV3DTO.prototype.feesUsd;

/**
 * @type {!string}
 * @export
 */
API.Client.TickV3DTO.prototype.collectedFeesToken0;

/**
 * @type {!string}
 * @export
 */
API.Client.TickV3DTO.prototype.collectedFeesToken1;

/**
 * @type {!string}
 * @export
 */
API.Client.TickV3DTO.prototype.collectedFeesUsd;

/**
 * @type {!Date}
 * @export
 */
API.Client.TickV3DTO.prototype.createdAtTimestamp;

/**
 * @type {!API.Client.BigInteger}
 * @export
 */
API.Client.TickV3DTO.prototype.liquidityProviderCount;

/**
 * @type {!API.Client.BigInteger}
 * @export
 */
API.Client.TickV3DTO.prototype.feeGrowthOutside0x128;

/**
 * @type {!API.Client.BigInteger}
 * @export
 */
API.Client.TickV3DTO.prototype.feeGrowthOutside1x128;

