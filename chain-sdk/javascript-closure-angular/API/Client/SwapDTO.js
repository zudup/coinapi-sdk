goog.provide('API.Client.SwapDTO');

/**
 * @record
 */
API.Client.SwapDTO = function() {}

/**
 * @type {!Date}
 * @export
 */
API.Client.SwapDTO.prototype.entryTime;

/**
 * @type {!Date}
 * @export
 */
API.Client.SwapDTO.prototype.recvTime;

/**
 * @type {!number}
 * @export
 */
API.Client.SwapDTO.prototype.blockNumber;

/**
 * @type {!string}
 * @export
 */
API.Client.SwapDTO.prototype.id;

/**
 * @type {!string}
 * @export
 */
API.Client.SwapDTO.prototype.transaction;

/**
 * @type {!string}
 * @export
 */
API.Client.SwapDTO.prototype.timestamp;

/**
 * @type {!string}
 * @export
 */
API.Client.SwapDTO.prototype.pair;

/**
 * @type {!string}
 * @export
 */
API.Client.SwapDTO.prototype.sender;

/**
 * @type {!string}
 * @export
 */
API.Client.SwapDTO.prototype.amount0In;

/**
 * @type {!string}
 * @export
 */
API.Client.SwapDTO.prototype.amount1In;

/**
 * @type {!string}
 * @export
 */
API.Client.SwapDTO.prototype.amount0Out;

/**
 * @type {!string}
 * @export
 */
API.Client.SwapDTO.prototype.amount1Out;

/**
 * @type {!string}
 * @export
 */
API.Client.SwapDTO.prototype.to;

/**
 * @type {!string}
 * @export
 */
API.Client.SwapDTO.prototype.logIndex;

/**
 * @type {!string}
 * @export
 */
API.Client.SwapDTO.prototype.amountUsd;

/**
 * @type {!number}
 * @export
 */
API.Client.SwapDTO.prototype.vid;

/**
 * @type {!string}
 * @export
 */
API.Client.SwapDTO.prototype.poolId;

/**
 * @type {!string}
 * @export
 */
API.Client.SwapDTO.prototype.transactionId;

/**
 * @type {!number}
 * @export
 */
API.Client.SwapDTO.prototype.evaluatedPrice;

/**
 * @type {!number}
 * @export
 */
API.Client.SwapDTO.prototype.evaluatedAmount;

/**
 * @type {!API.Client.ETradeAggressiveSide}
 * @export
 */
API.Client.SwapDTO.prototype.evaluatedAggressor;

