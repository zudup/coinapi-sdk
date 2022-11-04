goog.provide('API.Client.FactoryV3DTO');

/**
 * The Uniswap Factory entity is responsible for storing aggregate information across all Uniswap pairs. It can be used to view stats about total liquidity, volume, amount of pairs and more.
 * @record
 */
API.Client.FactoryV3DTO = function() {}

/**
 * @type {!Date}
 * @export
 */
API.Client.FactoryV3DTO.prototype.entryTime;

/**
 * @type {!Date}
 * @export
 */
API.Client.FactoryV3DTO.prototype.recvTime;

/**
 * Number of block in which entity was recorded.
 * @type {!number}
 * @export
 */
API.Client.FactoryV3DTO.prototype.blockNumber;

/**
 * Factory address.
 * @type {!string}
 * @export
 */
API.Client.FactoryV3DTO.prototype.id;

/**
 * Amount of pools created.
 * @type {!string}
 * @export
 */
API.Client.FactoryV3DTO.prototype.poolCount;

/**
 * Amount of transactions all time.
 * @type {!string}
 * @export
 */
API.Client.FactoryV3DTO.prototype.txCount;

/**
 * Total volume all time in derived USD.
 * @type {!string}
 * @export
 */
API.Client.FactoryV3DTO.prototype.totalVolumeUsd;

/**
 * Total volume all time in derived ETH.
 * @type {!string}
 * @export
 */
API.Client.FactoryV3DTO.prototype.totalVolumeEth;

/**
 * Total swap fees all time in USD.
 * @type {!string}
 * @export
 */
API.Client.FactoryV3DTO.prototype.totalFeesUsd;

/**
 * All volume even through less reliable USD values.
 * @type {!string}
 * @export
 */
API.Client.FactoryV3DTO.prototype.totalFeesEth;

/**
 * All volume even through less reliable USD values.
 * @type {!string}
 * @export
 */
API.Client.FactoryV3DTO.prototype.untrackedVolumeUsd;

/**
 * Total value locked derived in USD.
 * @type {!string}
 * @export
 */
API.Client.FactoryV3DTO.prototype.totalValueLockedUsd;

/**
 * Total value locked derived in ETH.
 * @type {!string}
 * @export
 */
API.Client.FactoryV3DTO.prototype.totalValueLockedEth;

/**
 * Total value locked derived in USD untracked.
 * @type {!string}
 * @export
 */
API.Client.FactoryV3DTO.prototype.totalValueLockedUsdUntracked;

/**
 * Total value locked derived in ETH untracked.
 * @type {!string}
 * @export
 */
API.Client.FactoryV3DTO.prototype.totalValueLockedEthUntracked;

/**
 * Current owner of the factory.
 * @type {!string}
 * @export
 */
API.Client.FactoryV3DTO.prototype.owner;

/**
 * 
 * @type {!number}
 * @export
 */
API.Client.FactoryV3DTO.prototype.vid;

