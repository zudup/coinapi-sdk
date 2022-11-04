goog.provide('API.Client.UniswapV3.PositionSnapshotV3DTO');

/**
 * @record
 */
API.Client.UniswapV3PositionSnapshotV3DTO = function() {}

/**
 * @type {!Date}
 * @export
 */
API.Client.UniswapV3PositionSnapshotV3DTO.prototype.entryTime;

/**
 * @type {!Date}
 * @export
 */
API.Client.UniswapV3PositionSnapshotV3DTO.prototype.recvTime;

/**
 * Number of block in which entity was recorded.
 * @type {!number}
 * @export
 */
API.Client.UniswapV3PositionSnapshotV3DTO.prototype.blockNumber;

/**
 * NFT token identifier, format: <NFT token id>#<block number>
 * @type {!string}
 * @export
 */
API.Client.UniswapV3PositionSnapshotV3DTO.prototype.id;

/**
 * Owner of the NFT.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3PositionSnapshotV3DTO.prototype.owner;

/**
 * Pool the position is within.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3PositionSnapshotV3DTO.prototype.pool;

/**
 * Position of which the snap was taken of.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3PositionSnapshotV3DTO.prototype.position;

/**
 * Timestamp of block in which the snap was created.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3PositionSnapshotV3DTO.prototype.timestamp;

/**
 * Total position liquidity.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3PositionSnapshotV3DTO.prototype.liquidity;

/**
 * Amount of token 0 ever deposited to position.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3PositionSnapshotV3DTO.prototype.depositedToken0;

/**
 * Amount of token 1 ever deposited to position.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3PositionSnapshotV3DTO.prototype.depositedToken1;

/**
 * Amount of token 0 ever withdrawn from position (without fees).
 * @type {!string}
 * @export
 */
API.Client.UniswapV3PositionSnapshotV3DTO.prototype.withdrawnToken0;

/**
 * Amount of token 1 ever withdrawn from position (without fees).
 * @type {!string}
 * @export
 */
API.Client.UniswapV3PositionSnapshotV3DTO.prototype.withdrawnToken1;

/**
 * All time collected fees in token0.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3PositionSnapshotV3DTO.prototype.collectedFeesToken0;

/**
 * All time collected fees in token1.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3PositionSnapshotV3DTO.prototype.collectedFeesToken1;

/**
 * Transaction in which the snapshot was initialized.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3PositionSnapshotV3DTO.prototype.transaction;

/**
 * Variable needed for fee computation.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3PositionSnapshotV3DTO.prototype.feeGrowthInside0LastX128;

/**
 * Variable needed for fee computation.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3PositionSnapshotV3DTO.prototype.feeGrowthInside1LastX128;

/**
 * 
 * @type {!number}
 * @export
 */
API.Client.UniswapV3PositionSnapshotV3DTO.prototype.vid;

