import typing_extensions

from openapi_client.apis.tags import TagValues
from openapi_client.apis.tags.sushiswap_api import SushiswapApi
from openapi_client.apis.tags.uniswap_v2_api import UniswapV2Api
from openapi_client.apis.tags.uniswap_v3_api import UniswapV3Api
from openapi_client.apis.tags.accounts_api import AccountsApi
from openapi_client.apis.tags.add_liquidity_event_api import AddLiquidityEventApi
from openapi_client.apis.tags.admin_fee_change_log_api import AdminFeeChangeLogApi
from openapi_client.apis.tags.amplification_coeff_change_log_api import AmplificationCoeffChangeLogApi
from openapi_client.apis.tags.batch_api import BatchApi
from openapi_client.apis.tags.bundles_api import BundlesApi
from openapi_client.apis.tags.burns_api import BurnsApi
from openapi_client.apis.tags.coins_api import CoinsApi
from openapi_client.apis.tags.contracts_api import ContractsApi
from openapi_client.apis.tags.contracts_version_api import ContractsVersionApi
from openapi_client.apis.tags.daily_volume_api import DailyVolumeApi
from openapi_client.apis.tags.day_data_api import DayDataApi
from openapi_client.apis.tags.deposit_api import DepositApi
from openapi_client.apis.tags.factory_api import FactoryApi
from openapi_client.apis.tags.fee_change_log_api import FeeChangeLogApi
from openapi_client.apis.tags.gauge_api import GaugeApi
from openapi_client.apis.tags.gauge_deposit_api import GaugeDepositApi
from openapi_client.apis.tags.gauge_liquidity_api import GaugeLiquidityApi
from openapi_client.apis.tags.gauge_total_weight_api import GaugeTotalWeightApi
from openapi_client.apis.tags.gauge_type_api import GaugeTypeApi
from openapi_client.apis.tags.gauge_type_weight_api import GaugeTypeWeightApi
from openapi_client.apis.tags.hour_data_api import HourDataApi
from openapi_client.apis.tags.liquidity_position_api import LiquidityPositionApi
from openapi_client.apis.tags.liquidity_position_snapshots_api import LiquidityPositionSnapshotsApi
from openapi_client.apis.tags.mints_api import MintsApi
from openapi_client.apis.tags.orders_api import OrdersApi
from openapi_client.apis.tags.poi_api import PoiApi
from openapi_client.apis.tags.pool_day_data_api import PoolDayDataApi
from openapi_client.apis.tags.pool_hour_data_api import PoolHourDataApi
from openapi_client.apis.tags.pools_api import PoolsApi
from openapi_client.apis.tags.position_snapshot_api import PositionSnapshotApi
from openapi_client.apis.tags.positions_api import PositionsApi
from openapi_client.apis.tags.prices_api import PricesApi
from openapi_client.apis.tags.settlement_api import SettlementApi
from openapi_client.apis.tags.solution_api import SolutionApi
from openapi_client.apis.tags.stats_api import StatsApi
from openapi_client.apis.tags.swaps_api import SwapsApi
from openapi_client.apis.tags.tick_day_data_api import TickDayDataApi
from openapi_client.apis.tags.ticks_api import TicksApi
from openapi_client.apis.tags.token_day_data_api import TokenDayDataApi
from openapi_client.apis.tags.token_hour_data_api import TokenHourDataApi
from openapi_client.apis.tags.tokens_api import TokensApi
from openapi_client.apis.tags.trades_api import TradesApi
from openapi_client.apis.tags.transactions_api import TransactionsApi
from openapi_client.apis.tags.uniswap_day_data_api import UniswapDayDataApi
from openapi_client.apis.tags.users_api import UsersApi
from openapi_client.apis.tags.withdraw_api import WithdrawApi
from openapi_client.apis.tags.withdraw_request_api import WithdrawRequestApi

TagToApi = typing_extensions.TypedDict(
    'TagToApi',
    {
        TagValues.SUSHISWAP: SushiswapApi,
        TagValues.UNISWAP_V2: UniswapV2Api,
        TagValues.UNISWAP_V3: UniswapV3Api,
        TagValues.ACCOUNTS: AccountsApi,
        TagValues.ADD_LIQUIDITY_EVENT: AddLiquidityEventApi,
        TagValues.ADMIN_FEE_CHANGE_LOG: AdminFeeChangeLogApi,
        TagValues.AMPLIFICATION_COEFF_CHANGE_LOG: AmplificationCoeffChangeLogApi,
        TagValues.BATCH: BatchApi,
        TagValues.BUNDLES: BundlesApi,
        TagValues.BURNS: BurnsApi,
        TagValues.COINS: CoinsApi,
        TagValues.CONTRACTS: ContractsApi,
        TagValues.CONTRACTS_VERSION: ContractsVersionApi,
        TagValues.DAILY_VOLUME: DailyVolumeApi,
        TagValues.DAY_DATA: DayDataApi,
        TagValues.DEPOSIT: DepositApi,
        TagValues.FACTORY: FactoryApi,
        TagValues.FEE_CHANGE_LOG: FeeChangeLogApi,
        TagValues.GAUGE: GaugeApi,
        TagValues.GAUGE_DEPOSIT: GaugeDepositApi,
        TagValues.GAUGE_LIQUIDITY: GaugeLiquidityApi,
        TagValues.GAUGE_TOTAL_WEIGHT: GaugeTotalWeightApi,
        TagValues.GAUGE_TYPE: GaugeTypeApi,
        TagValues.GAUGE_TYPE_WEIGHT: GaugeTypeWeightApi,
        TagValues.HOUR_DATA: HourDataApi,
        TagValues.LIQUIDITY_POSITION: LiquidityPositionApi,
        TagValues.LIQUIDITY_POSITION_SNAPSHOTS: LiquidityPositionSnapshotsApi,
        TagValues.MINTS: MintsApi,
        TagValues.ORDERS: OrdersApi,
        TagValues.POI: PoiApi,
        TagValues.POOL_DAY_DATA: PoolDayDataApi,
        TagValues.POOL_HOUR_DATA: PoolHourDataApi,
        TagValues.POOLS: PoolsApi,
        TagValues.POSITION_SNAPSHOT: PositionSnapshotApi,
        TagValues.POSITIONS: PositionsApi,
        TagValues.PRICES: PricesApi,
        TagValues.SETTLEMENT: SettlementApi,
        TagValues.SOLUTION: SolutionApi,
        TagValues.STATS: StatsApi,
        TagValues.SWAPS: SwapsApi,
        TagValues.TICK_DAY_DATA: TickDayDataApi,
        TagValues.TICKS: TicksApi,
        TagValues.TOKEN_DAY_DATA: TokenDayDataApi,
        TagValues.TOKEN_HOUR_DATA: TokenHourDataApi,
        TagValues.TOKENS: TokensApi,
        TagValues.TRADES: TradesApi,
        TagValues.TRANSACTIONS: TransactionsApi,
        TagValues.UNISWAP_DAY_DATA: UniswapDayDataApi,
        TagValues.USERS: UsersApi,
        TagValues.WITHDRAW: WithdrawApi,
        TagValues.WITHDRAW_REQUEST: WithdrawRequestApi,
    }
)

tag_to_api = TagToApi(
    {
        TagValues.SUSHISWAP: SushiswapApi,
        TagValues.UNISWAP_V2: UniswapV2Api,
        TagValues.UNISWAP_V3: UniswapV3Api,
        TagValues.ACCOUNTS: AccountsApi,
        TagValues.ADD_LIQUIDITY_EVENT: AddLiquidityEventApi,
        TagValues.ADMIN_FEE_CHANGE_LOG: AdminFeeChangeLogApi,
        TagValues.AMPLIFICATION_COEFF_CHANGE_LOG: AmplificationCoeffChangeLogApi,
        TagValues.BATCH: BatchApi,
        TagValues.BUNDLES: BundlesApi,
        TagValues.BURNS: BurnsApi,
        TagValues.COINS: CoinsApi,
        TagValues.CONTRACTS: ContractsApi,
        TagValues.CONTRACTS_VERSION: ContractsVersionApi,
        TagValues.DAILY_VOLUME: DailyVolumeApi,
        TagValues.DAY_DATA: DayDataApi,
        TagValues.DEPOSIT: DepositApi,
        TagValues.FACTORY: FactoryApi,
        TagValues.FEE_CHANGE_LOG: FeeChangeLogApi,
        TagValues.GAUGE: GaugeApi,
        TagValues.GAUGE_DEPOSIT: GaugeDepositApi,
        TagValues.GAUGE_LIQUIDITY: GaugeLiquidityApi,
        TagValues.GAUGE_TOTAL_WEIGHT: GaugeTotalWeightApi,
        TagValues.GAUGE_TYPE: GaugeTypeApi,
        TagValues.GAUGE_TYPE_WEIGHT: GaugeTypeWeightApi,
        TagValues.HOUR_DATA: HourDataApi,
        TagValues.LIQUIDITY_POSITION: LiquidityPositionApi,
        TagValues.LIQUIDITY_POSITION_SNAPSHOTS: LiquidityPositionSnapshotsApi,
        TagValues.MINTS: MintsApi,
        TagValues.ORDERS: OrdersApi,
        TagValues.POI: PoiApi,
        TagValues.POOL_DAY_DATA: PoolDayDataApi,
        TagValues.POOL_HOUR_DATA: PoolHourDataApi,
        TagValues.POOLS: PoolsApi,
        TagValues.POSITION_SNAPSHOT: PositionSnapshotApi,
        TagValues.POSITIONS: PositionsApi,
        TagValues.PRICES: PricesApi,
        TagValues.SETTLEMENT: SettlementApi,
        TagValues.SOLUTION: SolutionApi,
        TagValues.STATS: StatsApi,
        TagValues.SWAPS: SwapsApi,
        TagValues.TICK_DAY_DATA: TickDayDataApi,
        TagValues.TICKS: TicksApi,
        TagValues.TOKEN_DAY_DATA: TokenDayDataApi,
        TagValues.TOKEN_HOUR_DATA: TokenHourDataApi,
        TagValues.TOKENS: TokensApi,
        TagValues.TRADES: TradesApi,
        TagValues.TRANSACTIONS: TransactionsApi,
        TagValues.UNISWAP_DAY_DATA: UniswapDayDataApi,
        TagValues.USERS: UsersApi,
        TagValues.WITHDRAW: WithdrawApi,
        TagValues.WITHDRAW_REQUEST: WithdrawRequestApi,
    }
)
