goog.provide('API.Client.PositionV3DTO');

/**
 * Positions created through NonfungiblePositionManager. Positions are represented as NFTs (ERC-721 tokens) as opposed to the fungible ERC-20 tokens on Uniswap V1 and V2.
 * @record
 */
API.Client.PositionV3DTO = function() {}

/**
 * @type {!Date}
 * @export
 */
API.Client.PositionV3DTO.prototype.entryTime;

/**
 * @type {!Date}
 * @export
 */
API.Client.PositionV3DTO.prototype.recvTime;

/**
 * Number of block in which entity was recorded.
 * @type {!number}
 * @export
 */
API.Client.PositionV3DTO.prototype.blockNumber;

/**
 * NFT token identifier.
 * @type {!string}
 * @export
 */
API.Client.PositionV3DTO.prototype.id;

/**
 * Owner of the NFT.
 * @type {!string}
 * @export
 */
API.Client.PositionV3DTO.prototype.owner;

/**
 * Pool position is within.
 * @type {!string}
 * @export
 */
API.Client.PositionV3DTO.prototype.pool;

/**
 * Reference to token0 as stored in pair contract.
 * @type {!string}
 * @export
 */
API.Client.PositionV3DTO.prototype.token0;

/**
 * Reference to token1 as stored in pair contract.
 * @type {!string}
 * @export
 */
API.Client.PositionV3DTO.prototype.token1;

/**
 * Lower tick of the position.
 * @type {!string}
 * @export
 */
API.Client.PositionV3DTO.prototype.tickLower;

/**
 * Upper tick of the position.
 * @type {!string}
 * @export
 */
API.Client.PositionV3DTO.prototype.tickUpper;

/**
 * Total position liquidity.
 * @type {!string}
 * @export
 */
API.Client.PositionV3DTO.prototype.liquidity;

/**
 * Amount of token 0 ever deposited to position.
 * @type {!string}
 * @export
 */
API.Client.PositionV3DTO.prototype.depositedToken0;

/**
 * Amount of token 1 ever deposited to position.
 * @type {!string}
 * @export
 */
API.Client.PositionV3DTO.prototype.depositedToken1;

/**
 * Amount of token 0 ever withdrawn from position (without fees).
 * @type {!string}
 * @export
 */
API.Client.PositionV3DTO.prototype.withdrawnToken0;

/**
 * Amount of token 1 ever withdrawn from position (without fees).
 * @type {!string}
 * @export
 */
API.Client.PositionV3DTO.prototype.withdrawnToken1;

/**
 * All time collected fees in token0.
 * @type {!string}
 * @export
 */
API.Client.PositionV3DTO.prototype.collectedFeesToken0;

/**
 * All time collected fees in token1.
 * @type {!string}
 * @export
 */
API.Client.PositionV3DTO.prototype.collectedFeesToken1;

/**
 * Transaction in which the position was initialized.
 * @type {!string}
 * @export
 */
API.Client.PositionV3DTO.prototype.transaction;

/**
 * Variable needed for fee computation.
 * @type {!string}
 * @export
 */
API.Client.PositionV3DTO.prototype.feeGrowthInside0LastX128;

/**
 * Variable needed for fee computation.
 * @type {!string}
 * @export
 */
API.Client.PositionV3DTO.prototype.feeGrowthInside1LastX128;

/**
 * 
 * @type {!number}
 * @export
 */
API.Client.PositionV3DTO.prototype.vid;

