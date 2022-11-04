goog.provide('API.Client.BundleV3DTO');

/**
 * The Bundle is used as a global store of derived ETH price in USD. This provides a strong estimate for the USD price of ETH.
 * @record
 */
API.Client.BundleV3DTO = function() {}

/**
 * @type {!Date}
 * @export
 */
API.Client.BundleV3DTO.prototype.entryTime;

/**
 * @type {!Date}
 * @export
 */
API.Client.BundleV3DTO.prototype.recvTime;

/**
 * Number of block in which entity was recorded.
 * @type {!number}
 * @export
 */
API.Client.BundleV3DTO.prototype.blockNumber;

/**
 * 
 * @type {!string}
 * @export
 */
API.Client.BundleV3DTO.prototype.id;

/**
 * Price of ETH in usd.
 * @type {!string}
 * @export
 */
API.Client.BundleV3DTO.prototype.ethPriceUsd;

/**
 * 
 * @type {!number}
 * @export
 */
API.Client.BundleV3DTO.prototype.vid;

