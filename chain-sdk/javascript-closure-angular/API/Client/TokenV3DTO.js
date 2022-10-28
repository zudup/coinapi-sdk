goog.provide('API.Client.TokenV3DTO');

/**
 * Stores aggregated information for a specific token across all pairs that token is included in.
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
 * token address
 * @type {!string}
 * @export
 */
API.Client.TokenV3DTO.prototype.id;

/**
 * token symbol
 * @type {!string}
 * @export
 */
API.Client.TokenV3DTO.prototype.symbol;

/**
 * token name
 * @type {!string}
 * @export
 */
API.Client.TokenV3DTO.prototype.name;

/**
 * token decimals
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
 * volume in token units
 * @type {!string}
 * @export
 */
API.Client.TokenV3DTO.prototype.volume;

/**
 * volume in derived USD
 * @type {!string}
 * @export
 */
API.Client.TokenV3DTO.prototype.volumeUsd;

/**
 * volume in USD even on pools with less reliable USD values
 * @type {!string}
 * @export
 */
API.Client.TokenV3DTO.prototype.untrackedVolumeUsd;

/**
 * fees in USD
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
 * liquidity across all pools in token units
 * @type {!string}
 * @export
 */
API.Client.TokenV3DTO.prototype.totalValueLocked;

/**
 * liquidity across all pools in derived USD
 * @type {!string}
 * @export
 */
API.Client.TokenV3DTO.prototype.totalValueLockedUsd;

/**
 * TVL derived in USD untracked
 * @type {!string}
 * @export
 */
API.Client.TokenV3DTO.prototype.totalValueLockedUsdUntracked;

/**
 * derived price in ETH
 * @type {!string}
 * @export
 */
API.Client.TokenV3DTO.prototype.derivedEth;

/**
 * pools token is in that are white listed for USD pricing
 * @type {!Array<!string>}
 * @export
 */
API.Client.TokenV3DTO.prototype.whitelistPools;

/**
 * @type {!string}
 * @export
 */
API.Client.TokenV3DTO.prototype.tokenSymbol;

