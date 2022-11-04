goog.provide('API.Client.MintV3DTO');

/**
 * Mint entities are created for every emitted Mint event on the Uniswap core contracts. The Mint entity stores key data about the event like token amounts, who sent the transaction, and more.
 * @record
 */
API.Client.MintV3DTO = function() {}

/**
 * @type {!Date}
 * @export
 */
API.Client.MintV3DTO.prototype.entryTime;

/**
 * @type {!Date}
 * @export
 */
API.Client.MintV3DTO.prototype.recvTime;

/**
 * Number of block in which entity was recorded.
 * @type {!number}
 * @export
 */
API.Client.MintV3DTO.prototype.blockNumber;

/**
 * Transaction hash + '#' + index in mints Transaction array.
 * @type {!string}
 * @export
 */
API.Client.MintV3DTO.prototype.id;

/**
 * Which txn the mint was included in.
 * @type {!string}
 * @export
 */
API.Client.MintV3DTO.prototype.transaction;

/**
 * Time of transaction.
 * @type {!string}
 * @export
 */
API.Client.MintV3DTO.prototype.timestamp;

/**
 * Pool address.
 * @type {!string}
 * @export
 */
API.Client.MintV3DTO.prototype.pool;

/**
 * Reference to token0 as stored in pool contract.
 * @type {!string}
 * @export
 */
API.Client.MintV3DTO.prototype.token0;

/**
 * Reference to token1 as stored in pool contract.
 * @type {!string}
 * @export
 */
API.Client.MintV3DTO.prototype.token1;

/**
 * Owner of position where liquidity minted to.
 * @type {!string}
 * @export
 */
API.Client.MintV3DTO.prototype.owner;

/**
 * The address that minted the liquidity.
 * @type {!string}
 * @export
 */
API.Client.MintV3DTO.prototype.sender;

/**
 * Transaction origin: the EOA (Externally Owned Account) that initiated the transaction.
 * @type {!string}
 * @export
 */
API.Client.MintV3DTO.prototype.origin;

/**
 * Amount of liquidity minted.
 * @type {!string}
 * @export
 */
API.Client.MintV3DTO.prototype.amount;

/**
 * Amount of token 0 minted.
 * @type {!string}
 * @export
 */
API.Client.MintV3DTO.prototype.amount0;

/**
 * Amount of token 1 minted.
 * @type {!string}
 * @export
 */
API.Client.MintV3DTO.prototype.amount1;

/**
 * Derived amount based on available prices of tokens.
 * @type {!string}
 * @export
 */
API.Client.MintV3DTO.prototype.amountUsd;

/**
 * Lower tick of the position.
 * @type {!string}
 * @export
 */
API.Client.MintV3DTO.prototype.tickLower;

/**
 * Upper tick of the position.
 * @type {!string}
 * @export
 */
API.Client.MintV3DTO.prototype.tickUpper;

/**
 * Order within the transaction.
 * @type {!string}
 * @export
 */
API.Client.MintV3DTO.prototype.logIndex;

/**
 * 
 * @type {!number}
 * @export
 */
API.Client.MintV3DTO.prototype.vid;

