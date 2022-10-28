goog.provide('API.Client.SwapV3DTO');

/**
 * @record
 */
API.Client.SwapV3DTO = function() {}

/**
 * @type {!Date}
 * @export
 */
API.Client.SwapV3DTO.prototype.entryTime;

/**
 * @type {!Date}
 * @export
 */
API.Client.SwapV3DTO.prototype.recvTime;

/**
 * 
 * @type {!number}
 * @export
 */
API.Client.SwapV3DTO.prototype.blockNumber;

/**
 * 
 * @type {!number}
 * @export
 */
API.Client.SwapV3DTO.prototype.vid;

/**
 * 
 * @type {!string}
 * @export
 */
API.Client.SwapV3DTO.prototype.id;

/**
 * 
 * @type {!string}
 * @export
 */
API.Client.SwapV3DTO.prototype.transaction;

/**
 * 
 * @type {!Date}
 * @export
 */
API.Client.SwapV3DTO.prototype.timestamp;

/**
 * 
 * @type {!string}
 * @export
 */
API.Client.SwapV3DTO.prototype.pool;

/**
 * 
 * @type {!string}
 * @export
 */
API.Client.SwapV3DTO.prototype.token0;

/**
 * 
 * @type {!string}
 * @export
 */
API.Client.SwapV3DTO.prototype.token1;

/**
 * 
 * @type {!string}
 * @export
 */
API.Client.SwapV3DTO.prototype.sender;

/**
 * 
 * @type {!string}
 * @export
 */
API.Client.SwapV3DTO.prototype.recipient;

/**
 * 
 * @type {!string}
 * @export
 */
API.Client.SwapV3DTO.prototype.origin;

/**
 * 
 * @type {!string}
 * @export
 */
API.Client.SwapV3DTO.prototype.amount0;

/**
 * 
 * @type {!string}
 * @export
 */
API.Client.SwapV3DTO.prototype.amount1;

/**
 * 
 * @type {!string}
 * @export
 */
API.Client.SwapV3DTO.prototype.amountUsd;

/**
 * @type {!API.Client.BigInteger}
 * @export
 */
API.Client.SwapV3DTO.prototype.sqrtPriceX96;

/**
 * @type {!API.Client.BigInteger}
 * @export
 */
API.Client.SwapV3DTO.prototype.tick;

/**
 * @type {!API.Client.BigInteger}
 * @export
 */
API.Client.SwapV3DTO.prototype.logIndex;

/**
 * @type {!number}
 * @export
 */
API.Client.SwapV3DTO.prototype.evaluatedPrice;

/**
 * @type {!number}
 * @export
 */
API.Client.SwapV3DTO.prototype.evaluatedAmount;

/**
 * @type {!API.Client.ETradeAggressiveSide}
 * @export
 */
API.Client.SwapV3DTO.prototype.evaluatedAggressor;

/**
 * @type {!string}
 * @export
 */
API.Client.SwapV3DTO.prototype.poolId;

/**
 * @type {!string}
 * @export
 */
API.Client.SwapV3DTO.prototype.transactionId;

