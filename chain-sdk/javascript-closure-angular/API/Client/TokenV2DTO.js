goog.provide('API.Client.TokenV2DTO');

/**
 * Stores aggregated information for a specific token across all pairs that token is included in.
 * @record
 */
API.Client.TokenV2DTO = function() {}

/**
 * @type {!Date}
 * @export
 */
API.Client.TokenV2DTO.prototype.entryTime;

/**
 * @type {!Date}
 * @export
 */
API.Client.TokenV2DTO.prototype.recvTime;

/**
 * Number of block in which entity was recorded.
 * @type {!number}
 * @export
 */
API.Client.TokenV2DTO.prototype.blockNumber;

/**
 * 
 * @type {!number}
 * @export
 */
API.Client.TokenV2DTO.prototype.vid;

/**
 * Token address.
 * @type {!string}
 * @export
 */
API.Client.TokenV2DTO.prototype.id;

/**
 * Token symbol.
 * @type {!string}
 * @export
 */
API.Client.TokenV2DTO.prototype.symbol;

/**
 * Token name.
 * @type {!string}
 * @export
 */
API.Client.TokenV2DTO.prototype.name;

/**
 * Token decimals.
 * @type {!number}
 * @export
 */
API.Client.TokenV2DTO.prototype.decimals;

/**
 * @type {!API.Client.BigInteger}
 * @export
 */
API.Client.TokenV2DTO.prototype.totalSupply;

/**
 * Amount of token traded all time across all pairs.
 * @type {!string}
 * @export
 */
API.Client.TokenV2DTO.prototype.tradeVolume;

/**
 * Amount of token in USD traded all time across pairs (only for tokens with liquidity above minimum threshold).
 * @type {!string}
 * @export
 */
API.Client.TokenV2DTO.prototype.tradeVolumeUsd;

/**
 * Amount of token in USD traded all time across pairs (no minimum liquidity threshold).
 * @type {!string}
 * @export
 */
API.Client.TokenV2DTO.prototype.untrackedVolumeUsd;

/**
 * @type {!API.Client.BigInteger}
 * @export
 */
API.Client.TokenV2DTO.prototype.txCount;

/**
 * Total amount of token provided as liquidity across all pairs.
 * @type {!string}
 * @export
 */
API.Client.TokenV2DTO.prototype.totalLiquidity;

/**
 * ETH per token.
 * @type {!string}
 * @export
 */
API.Client.TokenV2DTO.prototype.derivedEth;

/**
 * @type {!string}
 * @export
 */
API.Client.TokenV2DTO.prototype.tokenSymbol;

