goog.provide('API.Client.UniswapV2.MintV2DTO');

/**
 * Mint entities are created for every emitted Mint event on the Uniswap core contracts. The Mint entity stores key data about the event like token amounts, who sent the transaction, who received the liquidity, and more. This entity can be used to track liquidity provisions on pairs.
 * @record
 */
API.Client.UniswapV2MintV2DTO = function() {}

/**
 * @type {!Date}
 * @export
 */
API.Client.UniswapV2MintV2DTO.prototype.entryTime;

/**
 * @type {!Date}
 * @export
 */
API.Client.UniswapV2MintV2DTO.prototype.recvTime;

/**
 * Number of block in which entity was recorded.
 * @type {!number}
 * @export
 */
API.Client.UniswapV2MintV2DTO.prototype.blockNumber;

/**
 * Transaction hash plus index in the transaction mint array.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2MintV2DTO.prototype.id;

/**
 * Reference to the transaction Mint was included in.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2MintV2DTO.prototype.transaction;

/**
 * Timestamp of Mint, used to sort recent liquidity provisions.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2MintV2DTO.prototype.timestamp;

/**
 * Reference to pair.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2MintV2DTO.prototype.pair;

/**
 * Recipient of liquidity tokens.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2MintV2DTO.prototype.to;

/**
 * Amount of liquidity tokens minted.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2MintV2DTO.prototype.liquidity;

/**
 * Address that initiated the liquidity provision.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2MintV2DTO.prototype.sender;

/**
 * Amount of token0 provided.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2MintV2DTO.prototype.amount0;

/**
 * Amount of token1 provided.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2MintV2DTO.prototype.amount1;

/**
 * Index in the transaction event was emitted.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2MintV2DTO.prototype.logIndex;

/**
 * Derived USD value of token0 amount plus token1 amount.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2MintV2DTO.prototype.amountUsd;

/**
 * Address of fee recipient (if fee is on).
 * @type {!string}
 * @export
 */
API.Client.UniswapV2MintV2DTO.prototype.feeTo;

/**
 * Amount of liquidity sent to fee recipient (if fee is on).
 * @type {!string}
 * @export
 */
API.Client.UniswapV2MintV2DTO.prototype.feeLiquidity;

/**
 * 
 * @type {!number}
 * @export
 */
API.Client.UniswapV2MintV2DTO.prototype.vid;

/**
 * 
 * @type {!string}
 * @export
 */
API.Client.UniswapV2MintV2DTO.prototype.blockRange;

