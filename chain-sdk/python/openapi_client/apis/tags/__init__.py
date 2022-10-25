# do not import all endpoints into this module because that uses a lot of memory and stack frames
# if you need the ability to import all endpoints from this module, import them with
# from openapi_client.apis.tag_to_api import tag_to_api

import enum


class TagValues(str, enum.Enum):
    SUSHISWAP = "Sushiswap"
    UNISWAP_V2 = "UniswapV2"
    UNISWAP_V3 = "UniswapV3"
    BATCH = "Batch"
    BUNDLES = "Bundles"
    BURNS = "Burns"
    DAY_DATA = "DayData"
    DEPOSIT = "Deposit"
    FACTORY = "Factory"
    HOUR_DATA = "HourData"
    LIQUIDITY_POSITION = "LiquidityPosition"
    LIQUIDITY_POSITION_SNAPSHOTS = "LiquidityPositionSnapshots"
    MINTS = "Mints"
    ORDERS = "Orders"
    POI = "Poi"
    POOL_DAY_DATA = "PoolDayData"
    POOL_HOUR_DATA = "PoolHourData"
    POOLS = "Pools"
    POSITION_SNAPSHOT = "PositionSnapshot"
    POSITIONS = "Positions"
    PRICES = "Prices"
    SETTLEMENT = "Settlement"
    SOLUTION = "Solution"
    STATS = "Stats"
    SWAPS = "Swaps"
    TICK_DAY_DATA = "TickDayData"
    TICKS = "Ticks"
    TOKEN_DAY_DATA = "TokenDayData"
    TOKEN_HOUR_DATA = "TokenHourData"
    TOKENS = "Tokens"
    TRADES = "Trades"
    TRANSACTIONS = "Transactions"
    UNISWAP_DAY_DATA = "UniswapDayData"
    USERS = "Users"
    WITHDRAW = "Withdraw"
    WITHDRAW_REQUEST = "WithdrawRequest"
