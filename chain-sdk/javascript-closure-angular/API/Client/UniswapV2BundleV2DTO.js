goog.provide('API.Client.UniswapV2.BundleV2DTO');

/**
 * The Bundle is used as a global store of derived ETH price in USD. Because there is no guaranteed common base token across pairs, a global reference of USD price is useful for deriving other USD values. The Bundle entity stores an updated weighted average of ETH<->Stablecoin pair prices. This provides a strong estimate for the USD price of ETH.
 * @record
 */
API.Client.UniswapV2BundleV2DTO = function() {}

/**
 * @type {!Date}
 * @export
 */
API.Client.UniswapV2BundleV2DTO.prototype.entryTime;

/**
 * @type {!Date}
 * @export
 */
API.Client.UniswapV2BundleV2DTO.prototype.recvTime;

/**
 * Number of block in which entity was recorded.
 * @type {!number}
 * @export
 */
API.Client.UniswapV2BundleV2DTO.prototype.blockNumber;

/**
 * Constant 1.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2BundleV2DTO.prototype.id;

/**
 * Derived price of ETH in USD based on stablecoin pairs.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2BundleV2DTO.prototype.ethPrice;

/**
 * 
 * @type {!number}
 * @export
 */
API.Client.UniswapV2BundleV2DTO.prototype.vid;

/**
 * 
 * @type {!string}
 * @export
 */
API.Client.UniswapV2BundleV2DTO.prototype.blockRange;

