goog.provide('API.Client.SwapDTO');

/**
 * Swap are created for each token swap within a pair.
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
 * Number of block in which entity was recorded.
 * @type {!number}
 * @export
 */
API.Client.SwapDTO.prototype.blockNumber;

/**
 * Transaction hash plus index in Transaction swap array.
 * @type {!string}
 * @export
 */
API.Client.SwapDTO.prototype.id;

/**
 * Reference to transaction swap was included in.
 * @type {!string}
 * @export
 */
API.Client.SwapDTO.prototype.transaction;

/**
 * Timestamp of swap, used for sorted lookups.
 * @type {!string}
 * @export
 */
API.Client.SwapDTO.prototype.timestamp;

/**
 * Reference to pair.
 * @type {!string}
 * @export
 */
API.Client.SwapDTO.prototype.pair;

/**
 * Address that initiated the swap.
 * @type {!string}
 * @export
 */
API.Client.SwapDTO.prototype.sender;

/**
 * Amount of token0 sold.
 * @type {!string}
 * @export
 */
API.Client.SwapDTO.prototype.amount0In;

/**
 * Amount of token1 sold.
 * @type {!string}
 * @export
 */
API.Client.SwapDTO.prototype.amount1In;

/**
 * Amount of token0 received.
 * @type {!string}
 * @export
 */
API.Client.SwapDTO.prototype.amount0Out;

/**
 * Amount of token1 received.
 * @type {!string}
 * @export
 */
API.Client.SwapDTO.prototype.amount1Out;

/**
 * Recipient of output tokens.
 * @type {!string}
 * @export
 */
API.Client.SwapDTO.prototype.to;

/**
 * Event index within transaction.
 * @type {!string}
 * @export
 */
API.Client.SwapDTO.prototype.logIndex;

/**
 * Derived amount of tokens sold in USD.
 * @type {!string}
 * @export
 */
API.Client.SwapDTO.prototype.amountUsd;

/**
 * 
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

