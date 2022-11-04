goog.provide('API.Client.UniswapV3SwapV3DTO');

/**
 * Swap are created for each token swap within a pair.
 * @record
 */
API.Client.UniswapV3SwapV3DTO = function() {}

/**
 * @type {!Date}
 * @export
 */
API.Client.UniswapV3SwapV3DTO.prototype.entryTime;

/**
 * @type {!Date}
 * @export
 */
API.Client.UniswapV3SwapV3DTO.prototype.recvTime;

/**
 * Number of block in which entity was recorded.
 * @type {!number}
 * @export
 */
API.Client.UniswapV3SwapV3DTO.prototype.blockNumber;

/**
 * 
 * @type {!number}
 * @export
 */
API.Client.UniswapV3SwapV3DTO.prototype.vid;

/**
 * Identifier, format: transaction hash + \"#\" + index in swaps Transaction array.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3SwapV3DTO.prototype.id;

/**
 * Pointer to transaction.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3SwapV3DTO.prototype.transaction;

/**
 * Timestamp of transaction.
 * @type {!Date}
 * @export
 */
API.Client.UniswapV3SwapV3DTO.prototype.timestamp;

/**
 * Pool swap occured within.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3SwapV3DTO.prototype.pool;

/**
 * Reference to token0 as stored in pair contract.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3SwapV3DTO.prototype.token0;

/**
 * Reference to token1 as stored in pair contract.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3SwapV3DTO.prototype.token1;

/**
 * Sender of the swap.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3SwapV3DTO.prototype.sender;

/**
 * Recipient of the swap.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3SwapV3DTO.prototype.recipient;

/**
 * Transaction origin: the EOA (Externally Owned Account) that initiated the transaction
 * @type {!string}
 * @export
 */
API.Client.UniswapV3SwapV3DTO.prototype.origin;

/**
 * Delta of token0 swapped.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3SwapV3DTO.prototype.amount0;

/**
 * Delta of token1 swapped.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3SwapV3DTO.prototype.amount1;

/**
 * Derived amount of tokens sold in USD.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3SwapV3DTO.prototype.amountUsd;

/**
 * @type {!API.Client.NumericsBigInteger}
 * @export
 */
API.Client.UniswapV3SwapV3DTO.prototype.sqrtPriceX96;

/**
 * @type {!API.Client.NumericsBigInteger}
 * @export
 */
API.Client.UniswapV3SwapV3DTO.prototype.tick;

/**
 * @type {!API.Client.NumericsBigInteger}
 * @export
 */
API.Client.UniswapV3SwapV3DTO.prototype.logIndex;

/**
 * @type {!number}
 * @export
 */
API.Client.UniswapV3SwapV3DTO.prototype.evaluatedPrice;

/**
 * @type {!number}
 * @export
 */
API.Client.UniswapV3SwapV3DTO.prototype.evaluatedAmount;

/**
 * @type {!API.Client.TransactionsETradeAggressiveSide}
 * @export
 */
API.Client.UniswapV3SwapV3DTO.prototype.evaluatedAggressor;

/**
 * @type {!string}
 * @export
 */
API.Client.UniswapV3SwapV3DTO.prototype.poolId;

/**
 * @type {!string}
 * @export
 */
API.Client.UniswapV3SwapV3DTO.prototype.transactionId;

