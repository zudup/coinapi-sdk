goog.provide('API.Client.TokenV3DTO');

/**
 * @record
 */
API.Client.TokenV3DTO = function() {}

/**
 * @type {!Date}
 * @export
 */
API.Client.TokenV3DTO.prototype.entryTime;

/**
 * @type {!Date}
 * @export
 */
API.Client.TokenV3DTO.prototype.recvTime;

/**
 * 
 * @type {!number}
 * @export
 */
API.Client.TokenV3DTO.prototype.blockNumber;

/**
 * 
 * @type {!number}
 * @export
 */
API.Client.TokenV3DTO.prototype.vid;

/**
 * 
 * @type {!string}
 * @export
 */
API.Client.TokenV3DTO.prototype.id;

/**
 * 
 * @type {!string}
 * @export
 */
API.Client.TokenV3DTO.prototype.symbol;

/**
 * 
 * @type {!string}
 * @export
 */
API.Client.TokenV3DTO.prototype.name;

/**
 * 
 * @type {!number}
 * @export
 */
API.Client.TokenV3DTO.prototype.decimals;

/**
 * @type {!API.Client.BigInteger}
 * @export
 */
API.Client.TokenV3DTO.prototype.totalSupply;

/**
 * 
 * @type {!string}
 * @export
 */
API.Client.TokenV3DTO.prototype.volume;

/**
 * 
 * @type {!string}
 * @export
 */
API.Client.TokenV3DTO.prototype.volumeUsd;

/**
 * 
 * @type {!string}
 * @export
 */
API.Client.TokenV3DTO.prototype.untrackedVolumeUsd;

/**
 * 
 * @type {!string}
 * @export
 */
API.Client.TokenV3DTO.prototype.feesUsd;

/**
 * @type {!API.Client.BigInteger}
 * @export
 */
API.Client.TokenV3DTO.prototype.txCount;

/**
 * @type {!API.Client.BigInteger}
 * @export
 */
API.Client.TokenV3DTO.prototype.poolCount;

/**
 * 
 * @type {!string}
 * @export
 */
API.Client.TokenV3DTO.prototype.totalValueLocked;

/**
 * 
 * @type {!string}
 * @export
 */
API.Client.TokenV3DTO.prototype.totalValueLockedUsd;

/**
 * 
 * @type {!string}
 * @export
 */
API.Client.TokenV3DTO.prototype.totalValueLockedUsdUntracked;

/**
 * 
 * @type {!string}
 * @export
 */
API.Client.TokenV3DTO.prototype.derivedEth;

/**
 * 
 * @type {!Array<!string>}
 * @export
 */
API.Client.TokenV3DTO.prototype.whitelistPools;

/**
 * @type {!string}
 * @export
 */
API.Client.TokenV3DTO.prototype.tokenSymbol;

