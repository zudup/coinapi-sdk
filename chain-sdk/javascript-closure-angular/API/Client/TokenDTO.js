goog.provide('API.Client.TokenDTO');

/**
 * Stores aggregated information for a specific token across all pairs that token is included in.
 * @record
 */
API.Client.TokenDTO = function() {}

/**
 * @type {!Date}
 * @export
 */
API.Client.TokenDTO.prototype.entryTime;

/**
 * @type {!Date}
 * @export
 */
API.Client.TokenDTO.prototype.recvTime;

/**
 * Number of block in which entity was recorded.
 * @type {!number}
 * @export
 */
API.Client.TokenDTO.prototype.blockNumber;

/**
 * Token address.
 * @type {!string}
 * @export
 */
API.Client.TokenDTO.prototype.id;

/**
 * Factory address.
 * @type {!string}
 * @export
 */
API.Client.TokenDTO.prototype.factory;

/**
 * Token symbol.
 * @type {!string}
 * @export
 */
API.Client.TokenDTO.prototype.symbol;

/**
 * Token name.
 * @type {!string}
 * @export
 */
API.Client.TokenDTO.prototype.name;

/**
 * Token decimals.
 * @type {!string}
 * @export
 */
API.Client.TokenDTO.prototype.decimals;

/**
 * Total supply of liquidity token.
 * @type {!string}
 * @export
 */
API.Client.TokenDTO.prototype.totalSupply;

/**
 * Amount of token traded all time across all pairs.
 * @type {!string}
 * @export
 */
API.Client.TokenDTO.prototype.volume;

/**
 * Amount of token in USD traded all time across pairs (only for tokens with liquidity above minimum threshold).
 * @type {!string}
 * @export
 */
API.Client.TokenDTO.prototype.volumeUsd;

/**
 * Amount of token in USD traded all time across pairs (no minimum liquidity threshold).
 * @type {!string}
 * @export
 */
API.Client.TokenDTO.prototype.untrackedVolumeUsd;

/**
 * Amount of transactions all time in pairs including token.
 * @type {!string}
 * @export
 */
API.Client.TokenDTO.prototype.txCount;

/**
 * Total amount of token provided as liquidity across all pairs.
 * @type {!string}
 * @export
 */
API.Client.TokenDTO.prototype.liquidity;

/**
 * ETH per token.
 * @type {!string}
 * @export
 */
API.Client.TokenDTO.prototype.derivedEth;

/**
 * Array of whitelisted pairs.
 * @type {!Array<!string>}
 * @export
 */
API.Client.TokenDTO.prototype.whitelistPairs;

/**
 * 
 * @type {!number}
 * @export
 */
API.Client.TokenDTO.prototype.vid;

/**
 * @type {!string}
 * @export
 */
API.Client.TokenDTO.prototype.tokenSymbol;

