goog.provide('API.Client.UniswapV3.TransactionV3DTO');

/**
 * @record
 */
API.Client.UniswapV3TransactionV3DTO = function() {}

/**
 * @type {!Date}
 * @export
 */
API.Client.UniswapV3TransactionV3DTO.prototype.entryTime;

/**
 * @type {!Date}
 * @export
 */
API.Client.UniswapV3TransactionV3DTO.prototype.recvTime;

/**
 * Number of block in which entity was recorded.
 * @type {!number}
 * @export
 */
API.Client.UniswapV3TransactionV3DTO.prototype.blockNumber;

/**
 * Transaction hash.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3TransactionV3DTO.prototype.id;

/**
 * Timestamp txn was confirmed.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3TransactionV3DTO.prototype.timestamp;

/**
 * Gas used during txn execution.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3TransactionV3DTO.prototype.gasUsed;

/**
 * 
 * @type {!string}
 * @export
 */
API.Client.UniswapV3TransactionV3DTO.prototype.gasPrice;

/**
 * 
 * @type {!number}
 * @export
 */
API.Client.UniswapV3TransactionV3DTO.prototype.vid;

