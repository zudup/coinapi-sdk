goog.provide('API.Client.UniswapV2.SwapV2DTO');

/**
 * Swap are created for each token swap within a pair.
 * @record
 */
API.Client.UniswapV2SwapV2DTO = function() {}

/**
 * @type {!Date}
 * @export
 */
API.Client.UniswapV2SwapV2DTO.prototype.entryTime;

/**
 * @type {!Date}
 * @export
 */
API.Client.UniswapV2SwapV2DTO.prototype.recvTime;

/**
 * Number of block in which entity was recorded.
 * @type {!number}
 * @export
 */
API.Client.UniswapV2SwapV2DTO.prototype.blockNumber;

/**
 * 
 * @type {!number}
 * @export
 */
API.Client.UniswapV2SwapV2DTO.prototype.vid;

/**
 * Transaction hash plus index in Transaction swap array.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2SwapV2DTO.prototype.id;

/**
 * Reference to transaction swap was included in.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2SwapV2DTO.prototype.transaction;

/**
 * Timestamp of swap, used for sorted lookups.
 * @type {!Date}
 * @export
 */
API.Client.UniswapV2SwapV2DTO.prototype.timestamp;

/**
 * Reference to pair.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2SwapV2DTO.prototype.pair;

/**
 * Address that initiated the swap.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2SwapV2DTO.prototype.sender;

/**
 * The EOA (Externally Owned Account) that initiated the transaction.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2SwapV2DTO.prototype.from;

/**
 * Amount of token0 sold.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2SwapV2DTO.prototype.amount0In;

/**
 * Amount of token1 sold.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2SwapV2DTO.prototype.amount1In;

/**
 * Amount of token0 received.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2SwapV2DTO.prototype.amount0Out;

/**
 * Amount of token1 received.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2SwapV2DTO.prototype.amount1Out;

/**
 * Recipient of output tokens.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2SwapV2DTO.prototype.to;

/**
 * @type {!API.Client.Numerics.BigInteger}
 * @export
 */
API.Client.UniswapV2SwapV2DTO.prototype.logIndex;

/**
 * Derived amount of tokens sold in USD.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2SwapV2DTO.prototype.amountUsd;

/**
 * @type {!number}
 * @export
 */
API.Client.UniswapV2SwapV2DTO.prototype.evaluatedPrice;

/**
 * @type {!number}
 * @export
 */
API.Client.UniswapV2SwapV2DTO.prototype.evaluatedAmount;

/**
 * @type {!API.Client.Transactions.ETradeAggressiveSide}
 * @export
 */
API.Client.UniswapV2SwapV2DTO.prototype.evaluatedAggressor;

/**
 * @type {!string}
 * @export
 */
API.Client.UniswapV2SwapV2DTO.prototype.poolId;

/**
 * @type {!string}
 * @export
 */
API.Client.UniswapV2SwapV2DTO.prototype.transactionId;

