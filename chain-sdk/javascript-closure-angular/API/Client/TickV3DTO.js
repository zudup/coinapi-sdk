goog.provide('API.Client.TickV3DTO');

/**
 * Ticks are the boundaries between discrete areas in price space.
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
 * Number of block in which entity was recorded.
 * @type {!number}
 * @export
 */
API.Client.TickV3DTO.prototype.blockNumber;

/**
 * 
 * @type {!number}
 * @export
 */
API.Client.TickV3DTO.prototype.vid;

/**
 * Identifier, format: <pool address>#<tick index>
 * @type {!string}
 * @export
 */
API.Client.TickV3DTO.prototype.id;

/**
 * Pool address.
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
 * Pool address.
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
 * Calculated price of token0 of tick within this pool - constant.
 * @type {!string}
 * @export
 */
API.Client.TickV3DTO.prototype.price0;

/**
 * Calculated price of token1 of tick within this pool - constant.
 * @type {!string}
 * @export
 */
API.Client.TickV3DTO.prototype.price1;

/**
 * Lifetime volume of token0 with this tick in range.
 * @type {!string}
 * @export
 */
API.Client.TickV3DTO.prototype.volumeToken0;

/**
 * Lifetime volume of token1 with this tick in range.
 * @type {!string}
 * @export
 */
API.Client.TickV3DTO.prototype.volumeToken1;

/**
 * Lifetime volume in derived USD with this tick in range.
 * @type {!string}
 * @export
 */
API.Client.TickV3DTO.prototype.volumeUsd;

/**
 * Lifetime volume in untracked USD with this tick in range.
 * @type {!string}
 * @export
 */
API.Client.TickV3DTO.prototype.untrackedVolumeUsd;

/**
 * Fees in USD.
 * @type {!string}
 * @export
 */
API.Client.TickV3DTO.prototype.feesUsd;

/**
 * All time collected fees in token0.
 * @type {!string}
 * @export
 */
API.Client.TickV3DTO.prototype.collectedFeesToken0;

/**
 * All time collected fees in token1.
 * @type {!string}
 * @export
 */
API.Client.TickV3DTO.prototype.collectedFeesToken1;

/**
 * All time collected fees in USD.
 * @type {!string}
 * @export
 */
API.Client.TickV3DTO.prototype.collectedFeesUsd;

/**
 * Created time.
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

