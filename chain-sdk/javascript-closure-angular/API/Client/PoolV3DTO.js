goog.provide('API.Client.PoolV3DTO');

/**
 * @record
 */
API.Client.PoolV3DTO = function() {}

/**
 * @type {!Date}
 * @export
 */
API.Client.PoolV3DTO.prototype.entryTime;

/**
 * @type {!Date}
 * @export
 */
API.Client.PoolV3DTO.prototype.recvTime;

/**
 * @type {!number}
 * @export
 */
API.Client.PoolV3DTO.prototype.blockNumber;

/**
 * @type {!number}
 * @export
 */
API.Client.PoolV3DTO.prototype.vid;

/**
 * @type {!string}
 * @export
 */
API.Client.PoolV3DTO.prototype.id;

/**
 * @type {!Date}
 * @export
 */
API.Client.PoolV3DTO.prototype.createdAtTimestamp;

/**
 * @type {!string}
 * @export
 */
API.Client.PoolV3DTO.prototype.token0;

/**
 * @type {!string}
 * @export
 */
API.Client.PoolV3DTO.prototype.token1;

/**
 * @type {!API.Client.BigInteger}
 * @export
 */
API.Client.PoolV3DTO.prototype.feeTier;

/**
 * @type {!API.Client.BigInteger}
 * @export
 */
API.Client.PoolV3DTO.prototype.liquidity;

/**
 * @type {!API.Client.BigInteger}
 * @export
 */
API.Client.PoolV3DTO.prototype.sqrtPrice;

/**
 * @type {!API.Client.BigInteger}
 * @export
 */
API.Client.PoolV3DTO.prototype.feeGrowthGlobal0x128;

/**
 * @type {!API.Client.BigInteger}
 * @export
 */
API.Client.PoolV3DTO.prototype.feeGrowthGlobal1x128;

/**
 * @type {!string}
 * @export
 */
API.Client.PoolV3DTO.prototype.token0Price;

/**
 * @type {!string}
 * @export
 */
API.Client.PoolV3DTO.prototype.token1Price;

/**
 * @type {!API.Client.BigInteger}
 * @export
 */
API.Client.PoolV3DTO.prototype.tick;

/**
 * @type {!API.Client.BigInteger}
 * @export
 */
API.Client.PoolV3DTO.prototype.observationIndex;

/**
 * @type {!string}
 * @export
 */
API.Client.PoolV3DTO.prototype.volumeToken0;

/**
 * @type {!string}
 * @export
 */
API.Client.PoolV3DTO.prototype.volumeToken1;

/**
 * @type {!string}
 * @export
 */
API.Client.PoolV3DTO.prototype.volumeUsd;

/**
 * @type {!string}
 * @export
 */
API.Client.PoolV3DTO.prototype.untrackedVolumeUsd;

/**
 * @type {!string}
 * @export
 */
API.Client.PoolV3DTO.prototype.feesUsd;

/**
 * @type {!API.Client.BigInteger}
 * @export
 */
API.Client.PoolV3DTO.prototype.txCount;

/**
 * @type {!string}
 * @export
 */
API.Client.PoolV3DTO.prototype.collectedFeesToken0;

/**
 * @type {!string}
 * @export
 */
API.Client.PoolV3DTO.prototype.collectedFeesToken1;

/**
 * @type {!string}
 * @export
 */
API.Client.PoolV3DTO.prototype.collectedFeesUsd;

/**
 * @type {!string}
 * @export
 */
API.Client.PoolV3DTO.prototype.totalValueLockedToken0;

/**
 * @type {!string}
 * @export
 */
API.Client.PoolV3DTO.prototype.totalValueLockedToken1;

/**
 * @type {!string}
 * @export
 */
API.Client.PoolV3DTO.prototype.totalValueLockedEth;

/**
 * @type {!string}
 * @export
 */
API.Client.PoolV3DTO.prototype.totalValueLockedUsd;

/**
 * @type {!string}
 * @export
 */
API.Client.PoolV3DTO.prototype.totalValueLockedUsdUntracked;

/**
 * @type {!string}
 * @export
 */
API.Client.PoolV3DTO.prototype.liquidityProviderCount;

/**
 * @type {!number}
 * @export
 */
API.Client.PoolV3DTO.prototype.evaluatedAsk;

