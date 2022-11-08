goog.provide('API.Client.UniswapV2.TransactionV2DTO');

/**
 * Transaction entities are created for each Ethereum transaction that contains an interaction within Uniswap contracts. Each transaction contains 3 arrays, and at least one of these arrays has a length of 1.
 * @record
 */
API.Client.UniswapV2TransactionV2DTO = function() {}

/**
 * @type {!Date}
 * @export
 */
API.Client.UniswapV2TransactionV2DTO.prototype.entryTime;

/**
 * @type {!Date}
 * @export
 */
API.Client.UniswapV2TransactionV2DTO.prototype.recvTime;

/**
 * Number of block in which entity was recorded.
 * @type {!number}
 * @export
 */
API.Client.UniswapV2TransactionV2DTO.prototype.blockNumber;

/**
 * Ethereum transaction hash.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2TransactionV2DTO.prototype.id;

/**
 * Timestamp.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2TransactionV2DTO.prototype.timestamp;

/**
 * Array of Mint events within the transaction, 0 or greater.
 * @type {!Array<!string>}
 * @export
 */
API.Client.UniswapV2TransactionV2DTO.prototype.mints;

/**
 * Array of Burn events within transaction, 0 or greater.
 * @type {!Array<!string>}
 * @export
 */
API.Client.UniswapV2TransactionV2DTO.prototype.burns;

/**
 * Array of Swap events within transaction, 0 or greater.
 * @type {!Array<!string>}
 * @export
 */
API.Client.UniswapV2TransactionV2DTO.prototype.swaps;

/**
 * 
 * @type {!number}
 * @export
 */
API.Client.UniswapV2TransactionV2DTO.prototype.vid;

