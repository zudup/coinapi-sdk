goog.provide('API.Client.UniswapV2.LiquidityPositionV2DTO');

/**
 * This entity is used to store data about a user's liquidity position. This information, along with information from the pair itself can be used to provide position sizes, token deposits, and more.
 * @record
 */
API.Client.UniswapV2LiquidityPositionV2DTO = function() {}

/**
 * @type {!Date}
 * @export
 */
API.Client.UniswapV2LiquidityPositionV2DTO.prototype.entryTime;

/**
 * @type {!Date}
 * @export
 */
API.Client.UniswapV2LiquidityPositionV2DTO.prototype.recvTime;

/**
 * Number of block in which entity was recorded.
 * @type {!number}
 * @export
 */
API.Client.UniswapV2LiquidityPositionV2DTO.prototype.blockNumber;

/**
 * User address and pair address concatenated with a dash.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2LiquidityPositionV2DTO.prototype.id;

/**
 * Reference to user.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2LiquidityPositionV2DTO.prototype.user;

/**
 * Reference to the pair liquidity is being provided on.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2LiquidityPositionV2DTO.prototype.pair;

/**
 * Amount of LP tokens minted for this position.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2LiquidityPositionV2DTO.prototype.liquidityTokenBalance;

/**
 * 
 * @type {!number}
 * @export
 */
API.Client.UniswapV2LiquidityPositionV2DTO.prototype.vid;

