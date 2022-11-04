goog.provide('API.Client.UniswapV3TickDayDataV3DTO');

/**
 * Data accumulated and condensed into day stats for each exchange. Entity gets saved only if there is a change during the day
 * @record
 */
API.Client.UniswapV3TickDayDataV3DTO = function() {}

/**
 * @type {!Date}
 * @export
 */
API.Client.UniswapV3TickDayDataV3DTO.prototype.entryTime;

/**
 * @type {!Date}
 * @export
 */
API.Client.UniswapV3TickDayDataV3DTO.prototype.recvTime;

/**
 * Number of block in which entity was recorded.
 * @type {!number}
 * @export
 */
API.Client.UniswapV3TickDayDataV3DTO.prototype.blockNumber;

/**
 * Identifier, format: <pool address>-<tick index>-<timestamp>.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3TickDayDataV3DTO.prototype.id;

/**
 * Timestamp rounded to current day by dividing by 86400.
 * @type {!number}
 * @export
 */
API.Client.UniswapV3TickDayDataV3DTO.prototype.date;

/**
 * Pointer to pool.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3TickDayDataV3DTO.prototype.pool;

/**
 * Pointer to tick.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3TickDayDataV3DTO.prototype.tick;

/**
 * Total liquidity pool has as tick lower or upper at end of period.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3TickDayDataV3DTO.prototype.liquidityGross;

/**
 * How much liquidity changes when tick crossed at end of period.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3TickDayDataV3DTO.prototype.liquidityNet;

/**
 * Hourly volume of token0 with this tick in range.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3TickDayDataV3DTO.prototype.volumeToken0;

/**
 * Hourly volume of token1 with this tick in range.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3TickDayDataV3DTO.prototype.volumeToken1;

/**
 * Hourly volume in derived USD with this tick in range.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3TickDayDataV3DTO.prototype.volumeUsd;

/**
 * Fees in USD.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3TickDayDataV3DTO.prototype.feesUsd;

/**
 * Variable needed for fee computation.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3TickDayDataV3DTO.prototype.feeGrowthOutside0x128;

/**
 * Variable needed for fee computation.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3TickDayDataV3DTO.prototype.feeGrowthOutside1x128;

/**
 * 
 * @type {!number}
 * @export
 */
API.Client.UniswapV3TickDayDataV3DTO.prototype.vid;

