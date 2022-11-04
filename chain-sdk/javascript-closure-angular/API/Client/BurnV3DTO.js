goog.provide('API.Client.BurnV3DTO');

/**
 * Burn entities are created for every emitted Burn event on the Uniswap core contracts. The Burn entity stores key data about the event like token amounts, who burned, who received tokens, and more. This entity can be used to track liquidity removals on pairs.
 * @record
 */
API.Client.BurnV3DTO = function() {}

/**
 * @type {!Date}
 * @export
 */
API.Client.BurnV3DTO.prototype.entryTime;

/**
 * @type {!Date}
 * @export
 */
API.Client.BurnV3DTO.prototype.recvTime;

/**
 * Number of block in which entity was recorded.
 * @type {!number}
 * @export
 */
API.Client.BurnV3DTO.prototype.blockNumber;

/**
 * Transaction hash + '#' + index in mints Transaction array.
 * @type {!string}
 * @export
 */
API.Client.BurnV3DTO.prototype.id;

/**
 * Transaction burn was included in.
 * @type {!string}
 * @export
 */
API.Client.BurnV3DTO.prototype.transaction;

/**
 * Pool position is within.
 * @type {!string}
 * @export
 */
API.Client.BurnV3DTO.prototype.pool;

/**
 * Reference to token0 as stored in pool contract.
 * @type {!string}
 * @export
 */
API.Client.BurnV3DTO.prototype.token0;

/**
 * Reference to token1 as stored in pool contract.
 * @type {!string}
 * @export
 */
API.Client.BurnV3DTO.prototype.token1;

/**
 * Timestamp.
 * @type {!string}
 * @export
 */
API.Client.BurnV3DTO.prototype.timestamp;

/**
 * Owner of position where liquidity was burned.
 * @type {!string}
 * @export
 */
API.Client.BurnV3DTO.prototype.owner;

/**
 * Transaction origin: the EOA (Externally Owned Account) that initiated the transaction.
 * @type {!string}
 * @export
 */
API.Client.BurnV3DTO.prototype.origin;

/**
 * Amount of liquidity burned.
 * @type {!string}
 * @export
 */
API.Client.BurnV3DTO.prototype.amount;

/**
 * Amount of token 0 burned.
 * @type {!string}
 * @export
 */
API.Client.BurnV3DTO.prototype.amount0;

/**
 * Amount of token 1 burned.
 * @type {!string}
 * @export
 */
API.Client.BurnV3DTO.prototype.amount1;

/**
 * Derived amount based on available prices of tokens.
 * @type {!string}
 * @export
 */
API.Client.BurnV3DTO.prototype.amountUsd;

/**
 * Lower tick of position.
 * @type {!string}
 * @export
 */
API.Client.BurnV3DTO.prototype.tickLower;

/**
 * Upper tick of position.
 * @type {!string}
 * @export
 */
API.Client.BurnV3DTO.prototype.tickUpper;

/**
 * Position within the transactions.
 * @type {!string}
 * @export
 */
API.Client.BurnV3DTO.prototype.logIndex;

/**
 * 
 * @type {!number}
 * @export
 */
API.Client.BurnV3DTO.prototype.vid;

