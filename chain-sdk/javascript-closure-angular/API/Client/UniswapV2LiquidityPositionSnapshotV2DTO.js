goog.provide('API.Client.UniswapV2.LiquidityPositionSnapshotV2DTO');

/**
 * This entity is used to store data about a user's liquidity position over time. This information, along with information from the pair itself can be used to provide position sizes, token deposits, and more. It gets created and never updated.
 * @record
 */
API.Client.UniswapV2LiquidityPositionSnapshotV2DTO = function() {}

/**
 * @type {!Date}
 * @export
 */
API.Client.UniswapV2LiquidityPositionSnapshotV2DTO.prototype.entryTime;

/**
 * @type {!Date}
 * @export
 */
API.Client.UniswapV2LiquidityPositionSnapshotV2DTO.prototype.recvTime;

/**
 * Number of block in which entity was recorded.
 * @type {!number}
 * @export
 */
API.Client.UniswapV2LiquidityPositionSnapshotV2DTO.prototype.blockNumber;

/**
 * Identifier, format: <pair address>-<user address>
 * @type {!string}
 * @export
 */
API.Client.UniswapV2LiquidityPositionSnapshotV2DTO.prototype.id;

/**
 * Reference to LP identifier.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2LiquidityPositionSnapshotV2DTO.prototype.liquidityPosition;

/**
 * Creation time.
 * @type {!number}
 * @export
 */
API.Client.UniswapV2LiquidityPositionSnapshotV2DTO.prototype.timestamp;

/**
 * Number of block in which LP snapshot was recorded.
 * @type {!number}
 * @export
 */
API.Client.UniswapV2LiquidityPositionSnapshotV2DTO.prototype.block;

/**
 * Reference to user.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2LiquidityPositionSnapshotV2DTO.prototype.user;

/**
 * Reference to the pair liquidity is being provided on.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2LiquidityPositionSnapshotV2DTO.prototype.pair;

/**
 * Snapshot of token0 price.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2LiquidityPositionSnapshotV2DTO.prototype.token0PriceUsd;

/**
 * Snapshot of token0 price.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2LiquidityPositionSnapshotV2DTO.prototype.token1PriceUsd;

/**
 * Snapshot of pair token0 reserves.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2LiquidityPositionSnapshotV2DTO.prototype.reserve0;

/**
 * Snapshot of pair token1 reserves.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2LiquidityPositionSnapshotV2DTO.prototype.reserve1;

/**
 * Snapshot of pair reserves in USD.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2LiquidityPositionSnapshotV2DTO.prototype.reserveUsd;

/**
 * Snapshot of pool token supply.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2LiquidityPositionSnapshotV2DTO.prototype.liquidityTokenTotalSupply;

/**
 * Snapshot of users pool token balance.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2LiquidityPositionSnapshotV2DTO.prototype.liquidityTokenBalance;

/**
 * 
 * @type {!number}
 * @export
 */
API.Client.UniswapV2LiquidityPositionSnapshotV2DTO.prototype.vid;

/**
 * 
 * @type {!string}
 * @export
 */
API.Client.UniswapV2LiquidityPositionSnapshotV2DTO.prototype.blockRange;

