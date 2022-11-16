goog.provide('API.Client.UniswapV2.UserV2DTO');

/**
 * A user entity is created for any address that provides liquidity to a pool on Uniswap. This entity can be used to track open positions for users.
 * @record
 */
API.Client.UniswapV2UserV2DTO = function() {}

/**
 * @type {!Date}
 * @export
 */
API.Client.UniswapV2UserV2DTO.prototype.entryTime;

/**
 * @type {!Date}
 * @export
 */
API.Client.UniswapV2UserV2DTO.prototype.recvTime;

/**
 * Number of block in which entity was recorded.
 * @type {!number}
 * @export
 */
API.Client.UniswapV2UserV2DTO.prototype.blockNumber;

/**
 * User address.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2UserV2DTO.prototype.id;

/**
 * Total USD value swapped.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2UserV2DTO.prototype.usdSwapped;

/**
 * 
 * @type {!number}
 * @export
 */
API.Client.UniswapV2UserV2DTO.prototype.vid;

