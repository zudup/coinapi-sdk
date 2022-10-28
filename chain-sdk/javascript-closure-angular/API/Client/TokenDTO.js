goog.provide('API.Client.TokenDTO');

/**
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
 * 
 * @type {!number}
 * @export
 */
API.Client.TokenDTO.prototype.blockNumber;

/**
 * 
 * @type {!string}
 * @export
 */
API.Client.TokenDTO.prototype.id;

/**
 * 
 * @type {!string}
 * @export
 */
API.Client.TokenDTO.prototype.factory;

/**
 * 
 * @type {!string}
 * @export
 */
API.Client.TokenDTO.prototype.symbol;

/**
 * 
 * @type {!string}
 * @export
 */
API.Client.TokenDTO.prototype.name;

/**
 * 
 * @type {!string}
 * @export
 */
API.Client.TokenDTO.prototype.decimals;

/**
 * 
 * @type {!string}
 * @export
 */
API.Client.TokenDTO.prototype.totalSupply;

/**
 * 
 * @type {!string}
 * @export
 */
API.Client.TokenDTO.prototype.volume;

/**
 * 
 * @type {!string}
 * @export
 */
API.Client.TokenDTO.prototype.volumeUsd;

/**
 * 
 * @type {!string}
 * @export
 */
API.Client.TokenDTO.prototype.untrackedVolumeUsd;

/**
 * 
 * @type {!string}
 * @export
 */
API.Client.TokenDTO.prototype.txCount;

/**
 * 
 * @type {!string}
 * @export
 */
API.Client.TokenDTO.prototype.liquidity;

/**
 * 
 * @type {!string}
 * @export
 */
API.Client.TokenDTO.prototype.derivedEth;

/**
 * 
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

