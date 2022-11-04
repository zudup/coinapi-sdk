goog.provide('API.Client.UniswapV3.TokenV3DTO');

/**
 * Stores aggregated information for a specific token across all pairs that token is included in.
 * @record
 */
API.Client.UniswapV3TokenV3DTO = function() {}

/**
 * @type {!Date}
 * @export
 */
API.Client.UniswapV3TokenV3DTO.prototype.entryTime;

/**
 * @type {!Date}
 * @export
 */
API.Client.UniswapV3TokenV3DTO.prototype.recvTime;

/**
 * Number of block in which entity was recorded.
 * @type {!number}
 * @export
 */
API.Client.UniswapV3TokenV3DTO.prototype.blockNumber;

/**
 * 
 * @type {!number}
 * @export
 */
API.Client.UniswapV3TokenV3DTO.prototype.vid;

/**
 * Token address.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3TokenV3DTO.prototype.id;

/**
 * Token symbol.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3TokenV3DTO.prototype.symbol;

/**
 * Token name.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3TokenV3DTO.prototype.name;

/**
 * Token decimals.
 * @type {!number}
 * @export
 */
API.Client.UniswapV3TokenV3DTO.prototype.decimals;

/**
 * @type {!API.Client.Numerics.BigInteger}
 * @export
 */
API.Client.UniswapV3TokenV3DTO.prototype.totalSupply;

/**
 * Volume in token units.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3TokenV3DTO.prototype.volume;

/**
 * Volume in derived USD.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3TokenV3DTO.prototype.volumeUsd;

/**
 * Volume in USD even on pools with less reliable USD values.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3TokenV3DTO.prototype.untrackedVolumeUsd;

/**
 * Fees in USD.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3TokenV3DTO.prototype.feesUsd;

/**
 * @type {!API.Client.Numerics.BigInteger}
 * @export
 */
API.Client.UniswapV3TokenV3DTO.prototype.txCount;

/**
 * @type {!API.Client.Numerics.BigInteger}
 * @export
 */
API.Client.UniswapV3TokenV3DTO.prototype.poolCount;

/**
 * Liquidity across all pools in token units.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3TokenV3DTO.prototype.totalValueLocked;

/**
 * Liquidity across all pools in derived USD.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3TokenV3DTO.prototype.totalValueLockedUsd;

/**
 * TVL derived in USD untracked.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3TokenV3DTO.prototype.totalValueLockedUsdUntracked;

/**
 * Derived price in ETH.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3TokenV3DTO.prototype.derivedEth;

/**
 * Pools token is in that are white listed for USD pricing.
 * @type {!Array<!string>}
 * @export
 */
API.Client.UniswapV3TokenV3DTO.prototype.whitelistPools;

/**
 * @type {!string}
 * @export
 */
API.Client.UniswapV3TokenV3DTO.prototype.tokenSymbol;

