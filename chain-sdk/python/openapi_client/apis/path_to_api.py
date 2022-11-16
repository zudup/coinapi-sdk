import typing_extensions

from openapi_client.paths import PathValues
from openapi_client.apis.paths.dapps_uniswapv3_bundles_current import DappsUniswapv3BundlesCurrent
from openapi_client.apis.paths.dapps_uniswapv3_burns_current import DappsUniswapv3BurnsCurrent
from openapi_client.apis.paths.dapps_cow_orders_historical import DappsCowOrdersHistorical
from openapi_client.apis.paths.dapps_cow_settlements_historical import DappsCowSettlementsHistorical
from openapi_client.apis.paths.dapps_cow_tokens_historical import DappsCowTokensHistorical
from openapi_client.apis.paths.dapps_cow_trades_historical import DappsCowTradesHistorical
from openapi_client.apis.paths.dapps_cow_users_historical import DappsCowUsersHistorical
from openapi_client.apis.paths.dapps_curve_accounts_historical import DappsCurveAccountsHistorical
from openapi_client.apis.paths.dapps_curve_addliquidityevents_historical import DappsCurveAddliquidityeventsHistorical
from openapi_client.apis.paths.dapps_curve_adminfeechangelogs_historical import DappsCurveAdminfeechangelogsHistorical
from openapi_client.apis.paths.dapps_curve_amplificationcoeffchangelogs_historical import DappsCurveAmplificationcoeffchangelogsHistorical
from openapi_client.apis.paths.dapps_curve_coins_historical import DappsCurveCoinsHistorical
from openapi_client.apis.paths.dapps_curve_contracts_historical import DappsCurveContractsHistorical
from openapi_client.apis.paths.dapps_curve_contractversions_historical import DappsCurveContractversionsHistorical
from openapi_client.apis.paths.dapps_curve_dailyvolumes_historical import DappsCurveDailyvolumesHistorical
from openapi_client.apis.paths.dapps_curve_exchanges_historical import DappsCurveExchangesHistorical
from openapi_client.apis.paths.dapps_curve_feechangelogs_historical import DappsCurveFeechangelogsHistorical
from openapi_client.apis.paths.dapps_curve_gaugedeposits_historical import DappsCurveGaugedepositsHistorical
from openapi_client.apis.paths.dapps_curve_gauges_historical import DappsCurveGaugesHistorical
from openapi_client.apis.paths.dapps_curve_gaugeliquiditys_historical import DappsCurveGaugeliquiditysHistorical
from openapi_client.apis.paths.dapps_curve_gaugetotalweights_historical import DappsCurveGaugetotalweightsHistorical
from openapi_client.apis.paths.dapps_curve_gaugetypes_historical import DappsCurveGaugetypesHistorical
from openapi_client.apis.paths.dapps_curve_gaugetypeweights_historical import DappsCurveGaugetypeweightsHistorical
from openapi_client.apis.paths.dapps_curve_gaugeweights_historical import DappsCurveGaugeweightsHistorical
from openapi_client.apis.paths.dapps_curve_gaugeweightvotes_historical import DappsCurveGaugeweightvotesHistorical
from openapi_client.apis.paths.dapps_curve_gaugewithdraws_historical import DappsCurveGaugewithdrawsHistorical
from openapi_client.apis.paths.dapps_curve_hourlyvolumes_historical import DappsCurveHourlyvolumesHistorical
from openapi_client.apis.paths.dapps_curve_lptokens_historical import DappsCurveLptokensHistorical
from openapi_client.apis.paths.dapps_curve_pools_historical import DappsCurvePoolsHistorical
from openapi_client.apis.paths.dapps_curve_proposals_historical import DappsCurveProposalsHistorical
from openapi_client.apis.paths.dapps_curve_proposalvotes_historical import DappsCurveProposalvotesHistorical
from openapi_client.apis.paths.dapps_curve_removeliquidityevents_historical import DappsCurveRemoveliquidityeventsHistorical
from openapi_client.apis.paths.dapps_curve_removeliquidityoneevents_historical import DappsCurveRemoveliquidityoneeventsHistorical
from openapi_client.apis.paths.dapps_curve_systemstates_historical import DappsCurveSystemstatesHistorical
from openapi_client.apis.paths.dapps_curve_tokens_historical import DappsCurveTokensHistorical
from openapi_client.apis.paths.dapps_curve_transferownershipevents_historical import DappsCurveTransferownershipeventsHistorical
from openapi_client.apis.paths.dapps_curve_underlyingcoins_historical import DappsCurveUnderlyingcoinsHistorical
from openapi_client.apis.paths.dapps_curve_votingapps_historical import DappsCurveVotingappsHistorical
from openapi_client.apis.paths.dapps_curve_weeklyvolumes_historical import DappsCurveWeeklyvolumesHistorical
from openapi_client.apis.paths.dapps_dex_batchs_historical import DappsDexBatchsHistorical
from openapi_client.apis.paths.dapps_dex_deposits_historical import DappsDexDepositsHistorical
from openapi_client.apis.paths.dapps_dex_orders_historical import DappsDexOrdersHistorical
from openapi_client.apis.paths.dapps_dex_prices_historical import DappsDexPricesHistorical
from openapi_client.apis.paths.dapps_dex_solutions_historical import DappsDexSolutionsHistorical
from openapi_client.apis.paths.dapps_dex_statss_historical import DappsDexStatssHistorical
from openapi_client.apis.paths.dapps_dex_tokens_historical import DappsDexTokensHistorical
from openapi_client.apis.paths.dapps_dex_trades_historical import DappsDexTradesHistorical
from openapi_client.apis.paths.dapps_dex_users_historical import DappsDexUsersHistorical
from openapi_client.apis.paths.dapps_dex_withdraws_historical import DappsDexWithdrawsHistorical
from openapi_client.apis.paths.dapps_dex_withdrawrequests_historical import DappsDexWithdrawrequestsHistorical
from openapi_client.apis.paths.dapps_sushiswap_exchanges_current import DappsSushiswapExchangesCurrent
from openapi_client.apis.paths.dapps_uniswapv3_factory_current import DappsUniswapv3FactoryCurrent
from openapi_client.apis.paths.dapps_uniswapv3_mints_current import DappsUniswapv3MintsCurrent
from openapi_client.apis.paths.dapps_uniswapv3_pools_current import DappsUniswapv3PoolsCurrent
from openapi_client.apis.paths.dapps_uniswapv2_pools_current import DappsUniswapv2PoolsCurrent
from openapi_client.apis.paths.dapps_sushiswap_pools_current import DappsSushiswapPoolsCurrent
from openapi_client.apis.paths.dapps_uniswapv3_pools_day_data_current import DappsUniswapv3PoolsDayDataCurrent
from openapi_client.apis.paths.dapps_uniswapv3_pools_hour_data_current import DappsUniswapv3PoolsHourDataCurrent
from openapi_client.apis.paths.dapps_uniswapv3_positions_current import DappsUniswapv3PositionsCurrent
from openapi_client.apis.paths.dapps_uniswapv3_position_snapshots_current import DappsUniswapv3PositionSnapshotsCurrent
from openapi_client.apis.paths.dapps_sushiswap_bundles_historical import DappsSushiswapBundlesHistorical
from openapi_client.apis.paths.dapps_sushiswap_burns_historical import DappsSushiswapBurnsHistorical
from openapi_client.apis.paths.dapps_sushiswap_daydatas_historical import DappsSushiswapDaydatasHistorical
from openapi_client.apis.paths.dapps_sushiswap_factorys_historical import DappsSushiswapFactorysHistorical
from openapi_client.apis.paths.dapps_sushiswap_hourdatas_historical import DappsSushiswapHourdatasHistorical
from openapi_client.apis.paths.dapps_sushiswap_liquiditypositions_historical import DappsSushiswapLiquiditypositionsHistorical
from openapi_client.apis.paths.dapps_sushiswap_liquiditypositionsnapshots_historical import DappsSushiswapLiquiditypositionsnapshotsHistorical
from openapi_client.apis.paths.dapps_sushiswap_mints_historical import DappsSushiswapMintsHistorical
from openapi_client.apis.paths.dapps_sushiswap_pairdaydatas_historical import DappsSushiswapPairdaydatasHistorical
from openapi_client.apis.paths.dapps_sushiswap_pairs_historical import DappsSushiswapPairsHistorical
from openapi_client.apis.paths.dapps_sushiswap_pairhourdatas_historical import DappsSushiswapPairhourdatasHistorical
from openapi_client.apis.paths.dapps_sushiswap_swaps_historical import DappsSushiswapSwapsHistorical
from openapi_client.apis.paths.dapps_sushiswap_tokendaydatas_historical import DappsSushiswapTokendaydatasHistorical
from openapi_client.apis.paths.dapps_sushiswap_tokens_historical import DappsSushiswapTokensHistorical
from openapi_client.apis.paths.dapps_sushiswap_transactions_historical import DappsSushiswapTransactionsHistorical
from openapi_client.apis.paths.dapps_sushiswap_users_historical import DappsSushiswapUsersHistorical
from openapi_client.apis.paths.dapps_uniswapv3_swaps_current import DappsUniswapv3SwapsCurrent
from openapi_client.apis.paths.dapps_uniswapv2_swaps_current import DappsUniswapv2SwapsCurrent
from openapi_client.apis.paths.dapps_sushiswap_swaps_current import DappsSushiswapSwapsCurrent
from openapi_client.apis.paths.dapps_uniswapv3_ticks_current import DappsUniswapv3TicksCurrent
from openapi_client.apis.paths.dapps_uniswapv3_ticks_day_data_current import DappsUniswapv3TicksDayDataCurrent
from openapi_client.apis.paths.dapps_uniswapv3_tokens_current import DappsUniswapv3TokensCurrent
from openapi_client.apis.paths.dapps_uniswapv2_tokens_current import DappsUniswapv2TokensCurrent
from openapi_client.apis.paths.dapps_sushiswap_tokens_current import DappsSushiswapTokensCurrent
from openapi_client.apis.paths.dapps_uniswapv3_tokens_day_data_current import DappsUniswapv3TokensDayDataCurrent
from openapi_client.apis.paths.dapps_uniswapv3_tokens_hour_data_current import DappsUniswapv3TokensHourDataCurrent
from openapi_client.apis.paths.dapps_sushiswap_trades_current import DappsSushiswapTradesCurrent
from openapi_client.apis.paths.dapps_uniswapv3_day_data_current import DappsUniswapv3DayDataCurrent
from openapi_client.apis.paths.dapps_uniswapv2_bundlev2s_historical import DappsUniswapv2Bundlev2sHistorical
from openapi_client.apis.paths.dapps_uniswapv2_burnv2s_historical import DappsUniswapv2Burnv2sHistorical
from openapi_client.apis.paths.dapps_uniswapv2_liquiditypositionsnapshotv2s_historical import DappsUniswapv2Liquiditypositionsnapshotv2sHistorical
from openapi_client.apis.paths.dapps_uniswapv2_liquiditypositionv2s_historical import DappsUniswapv2Liquiditypositionv2sHistorical
from openapi_client.apis.paths.dapps_uniswapv2_mintv2s_historical import DappsUniswapv2Mintv2sHistorical
from openapi_client.apis.paths.dapps_uniswapv2_pairdaydatav2s_historical import DappsUniswapv2Pairdaydatav2sHistorical
from openapi_client.apis.paths.dapps_uniswapv2_pairhourdatav2s_historical import DappsUniswapv2Pairhourdatav2sHistorical
from openapi_client.apis.paths.dapps_uniswapv2_pairv2s_historical import DappsUniswapv2Pairv2sHistorical
from openapi_client.apis.paths.dapps_uniswapv2_swapv2s_historical import DappsUniswapv2Swapv2sHistorical
from openapi_client.apis.paths.dapps_uniswapv2_tokendaydatav2s_historical import DappsUniswapv2Tokendaydatav2sHistorical
from openapi_client.apis.paths.dapps_uniswapv2_tokenv2s_historical import DappsUniswapv2Tokenv2sHistorical
from openapi_client.apis.paths.dapps_uniswapv2_transactionv2s_historical import DappsUniswapv2Transactionv2sHistorical
from openapi_client.apis.paths.dapps_uniswapv2_uniswapdaydatav2s_historical import DappsUniswapv2Uniswapdaydatav2sHistorical
from openapi_client.apis.paths.dapps_uniswapv2_uniswapfactoryv2s_historical import DappsUniswapv2Uniswapfactoryv2sHistorical
from openapi_client.apis.paths.dapps_uniswapv2_userv2s_historical import DappsUniswapv2Userv2sHistorical
from openapi_client.apis.paths.dapps_uniswapv3_bundlev3s_historical import DappsUniswapv3Bundlev3sHistorical
from openapi_client.apis.paths.dapps_uniswapv3_burnv3s_historical import DappsUniswapv3Burnv3sHistorical
from openapi_client.apis.paths.dapps_uniswapv3_factoryv3s_historical import DappsUniswapv3Factoryv3sHistorical
from openapi_client.apis.paths.dapps_uniswapv3_mintv3s_historical import DappsUniswapv3Mintv3sHistorical
from openapi_client.apis.paths.dapps_uniswapv3_pooldaydatav3s_historical import DappsUniswapv3Pooldaydatav3sHistorical
from openapi_client.apis.paths.dapps_uniswapv3_poolhourdatav3s_historical import DappsUniswapv3Poolhourdatav3sHistorical
from openapi_client.apis.paths.dapps_uniswapv3_poolv3s_historical import DappsUniswapv3Poolv3sHistorical
from openapi_client.apis.paths.dapps_uniswapv3_positionsnapshotv3s_historical import DappsUniswapv3Positionsnapshotv3sHistorical
from openapi_client.apis.paths.dapps_uniswapv3_positionv3s_historical import DappsUniswapv3Positionv3sHistorical
from openapi_client.apis.paths.dapps_uniswapv3_swapv3s_historical import DappsUniswapv3Swapv3sHistorical
from openapi_client.apis.paths.dapps_uniswapv3_tickdaydatav3s_historical import DappsUniswapv3Tickdaydatav3sHistorical
from openapi_client.apis.paths.dapps_uniswapv3_tickv3s_historical import DappsUniswapv3Tickv3sHistorical
from openapi_client.apis.paths.dapps_uniswapv3_tokenhourdatav3s_historical import DappsUniswapv3Tokenhourdatav3sHistorical
from openapi_client.apis.paths.dapps_uniswapv3_tokenv3daydatas_historical import DappsUniswapv3Tokenv3daydatasHistorical
from openapi_client.apis.paths.dapps_uniswapv3_tokenv3s_historical import DappsUniswapv3Tokenv3sHistorical
from openapi_client.apis.paths.dapps_uniswapv3_transactionv3s_historical import DappsUniswapv3Transactionv3sHistorical
from openapi_client.apis.paths.dapps_uniswapv3_uniswapdaydatav3s_historical import DappsUniswapv3Uniswapdaydatav3sHistorical

PathToApi = typing_extensions.TypedDict(
    'PathToApi',
    {
        PathValues.DAPPS_UNISWAPV3_BUNDLES_CURRENT: DappsUniswapv3BundlesCurrent,
        PathValues.DAPPS_UNISWAPV3_BURNS_CURRENT: DappsUniswapv3BurnsCurrent,
        PathValues.DAPPS_COW_ORDERS_HISTORICAL: DappsCowOrdersHistorical,
        PathValues.DAPPS_COW_SETTLEMENTS_HISTORICAL: DappsCowSettlementsHistorical,
        PathValues.DAPPS_COW_TOKENS_HISTORICAL: DappsCowTokensHistorical,
        PathValues.DAPPS_COW_TRADES_HISTORICAL: DappsCowTradesHistorical,
        PathValues.DAPPS_COW_USERS_HISTORICAL: DappsCowUsersHistorical,
        PathValues.DAPPS_CURVE_ACCOUNTS_HISTORICAL: DappsCurveAccountsHistorical,
        PathValues.DAPPS_CURVE_ADDLIQUIDITYEVENTS_HISTORICAL: DappsCurveAddliquidityeventsHistorical,
        PathValues.DAPPS_CURVE_ADMINFEECHANGELOGS_HISTORICAL: DappsCurveAdminfeechangelogsHistorical,
        PathValues.DAPPS_CURVE_AMPLIFICATIONCOEFFCHANGELOGS_HISTORICAL: DappsCurveAmplificationcoeffchangelogsHistorical,
        PathValues.DAPPS_CURVE_COINS_HISTORICAL: DappsCurveCoinsHistorical,
        PathValues.DAPPS_CURVE_CONTRACTS_HISTORICAL: DappsCurveContractsHistorical,
        PathValues.DAPPS_CURVE_CONTRACTVERSIONS_HISTORICAL: DappsCurveContractversionsHistorical,
        PathValues.DAPPS_CURVE_DAILYVOLUMES_HISTORICAL: DappsCurveDailyvolumesHistorical,
        PathValues.DAPPS_CURVE_EXCHANGES_HISTORICAL: DappsCurveExchangesHistorical,
        PathValues.DAPPS_CURVE_FEECHANGELOGS_HISTORICAL: DappsCurveFeechangelogsHistorical,
        PathValues.DAPPS_CURVE_GAUGEDEPOSITS_HISTORICAL: DappsCurveGaugedepositsHistorical,
        PathValues.DAPPS_CURVE_GAUGES_HISTORICAL: DappsCurveGaugesHistorical,
        PathValues.DAPPS_CURVE_GAUGELIQUIDITYS_HISTORICAL: DappsCurveGaugeliquiditysHistorical,
        PathValues.DAPPS_CURVE_GAUGETOTALWEIGHTS_HISTORICAL: DappsCurveGaugetotalweightsHistorical,
        PathValues.DAPPS_CURVE_GAUGETYPES_HISTORICAL: DappsCurveGaugetypesHistorical,
        PathValues.DAPPS_CURVE_GAUGETYPEWEIGHTS_HISTORICAL: DappsCurveGaugetypeweightsHistorical,
        PathValues.DAPPS_CURVE_GAUGEWEIGHTS_HISTORICAL: DappsCurveGaugeweightsHistorical,
        PathValues.DAPPS_CURVE_GAUGEWEIGHTVOTES_HISTORICAL: DappsCurveGaugeweightvotesHistorical,
        PathValues.DAPPS_CURVE_GAUGEWITHDRAWS_HISTORICAL: DappsCurveGaugewithdrawsHistorical,
        PathValues.DAPPS_CURVE_HOURLYVOLUMES_HISTORICAL: DappsCurveHourlyvolumesHistorical,
        PathValues.DAPPS_CURVE_LPTOKENS_HISTORICAL: DappsCurveLptokensHistorical,
        PathValues.DAPPS_CURVE_POOLS_HISTORICAL: DappsCurvePoolsHistorical,
        PathValues.DAPPS_CURVE_PROPOSALS_HISTORICAL: DappsCurveProposalsHistorical,
        PathValues.DAPPS_CURVE_PROPOSALVOTES_HISTORICAL: DappsCurveProposalvotesHistorical,
        PathValues.DAPPS_CURVE_REMOVELIQUIDITYEVENTS_HISTORICAL: DappsCurveRemoveliquidityeventsHistorical,
        PathValues.DAPPS_CURVE_REMOVELIQUIDITYONEEVENTS_HISTORICAL: DappsCurveRemoveliquidityoneeventsHistorical,
        PathValues.DAPPS_CURVE_SYSTEMSTATES_HISTORICAL: DappsCurveSystemstatesHistorical,
        PathValues.DAPPS_CURVE_TOKENS_HISTORICAL: DappsCurveTokensHistorical,
        PathValues.DAPPS_CURVE_TRANSFEROWNERSHIPEVENTS_HISTORICAL: DappsCurveTransferownershipeventsHistorical,
        PathValues.DAPPS_CURVE_UNDERLYINGCOINS_HISTORICAL: DappsCurveUnderlyingcoinsHistorical,
        PathValues.DAPPS_CURVE_VOTINGAPPS_HISTORICAL: DappsCurveVotingappsHistorical,
        PathValues.DAPPS_CURVE_WEEKLYVOLUMES_HISTORICAL: DappsCurveWeeklyvolumesHistorical,
        PathValues.DAPPS_DEX_BATCHS_HISTORICAL: DappsDexBatchsHistorical,
        PathValues.DAPPS_DEX_DEPOSITS_HISTORICAL: DappsDexDepositsHistorical,
        PathValues.DAPPS_DEX_ORDERS_HISTORICAL: DappsDexOrdersHistorical,
        PathValues.DAPPS_DEX_PRICES_HISTORICAL: DappsDexPricesHistorical,
        PathValues.DAPPS_DEX_SOLUTIONS_HISTORICAL: DappsDexSolutionsHistorical,
        PathValues.DAPPS_DEX_STATSS_HISTORICAL: DappsDexStatssHistorical,
        PathValues.DAPPS_DEX_TOKENS_HISTORICAL: DappsDexTokensHistorical,
        PathValues.DAPPS_DEX_TRADES_HISTORICAL: DappsDexTradesHistorical,
        PathValues.DAPPS_DEX_USERS_HISTORICAL: DappsDexUsersHistorical,
        PathValues.DAPPS_DEX_WITHDRAWS_HISTORICAL: DappsDexWithdrawsHistorical,
        PathValues.DAPPS_DEX_WITHDRAWREQUESTS_HISTORICAL: DappsDexWithdrawrequestsHistorical,
        PathValues.DAPPS_SUSHISWAP_EXCHANGES_CURRENT: DappsSushiswapExchangesCurrent,
        PathValues.DAPPS_UNISWAPV3_FACTORY_CURRENT: DappsUniswapv3FactoryCurrent,
        PathValues.DAPPS_UNISWAPV3_MINTS_CURRENT: DappsUniswapv3MintsCurrent,
        PathValues.DAPPS_UNISWAPV3_POOLS_CURRENT: DappsUniswapv3PoolsCurrent,
        PathValues.DAPPS_UNISWAPV2_POOLS_CURRENT: DappsUniswapv2PoolsCurrent,
        PathValues.DAPPS_SUSHISWAP_POOLS_CURRENT: DappsSushiswapPoolsCurrent,
        PathValues.DAPPS_UNISWAPV3_POOLS_DAY_DATA_CURRENT: DappsUniswapv3PoolsDayDataCurrent,
        PathValues.DAPPS_UNISWAPV3_POOLS_HOUR_DATA_CURRENT: DappsUniswapv3PoolsHourDataCurrent,
        PathValues.DAPPS_UNISWAPV3_POSITIONS_CURRENT: DappsUniswapv3PositionsCurrent,
        PathValues.DAPPS_UNISWAPV3_POSITION_SNAPSHOTS_CURRENT: DappsUniswapv3PositionSnapshotsCurrent,
        PathValues.DAPPS_SUSHISWAP_BUNDLES_HISTORICAL: DappsSushiswapBundlesHistorical,
        PathValues.DAPPS_SUSHISWAP_BURNS_HISTORICAL: DappsSushiswapBurnsHistorical,
        PathValues.DAPPS_SUSHISWAP_DAYDATAS_HISTORICAL: DappsSushiswapDaydatasHistorical,
        PathValues.DAPPS_SUSHISWAP_FACTORYS_HISTORICAL: DappsSushiswapFactorysHistorical,
        PathValues.DAPPS_SUSHISWAP_HOURDATAS_HISTORICAL: DappsSushiswapHourdatasHistorical,
        PathValues.DAPPS_SUSHISWAP_LIQUIDITYPOSITIONS_HISTORICAL: DappsSushiswapLiquiditypositionsHistorical,
        PathValues.DAPPS_SUSHISWAP_LIQUIDITYPOSITIONSNAPSHOTS_HISTORICAL: DappsSushiswapLiquiditypositionsnapshotsHistorical,
        PathValues.DAPPS_SUSHISWAP_MINTS_HISTORICAL: DappsSushiswapMintsHistorical,
        PathValues.DAPPS_SUSHISWAP_PAIRDAYDATAS_HISTORICAL: DappsSushiswapPairdaydatasHistorical,
        PathValues.DAPPS_SUSHISWAP_PAIRS_HISTORICAL: DappsSushiswapPairsHistorical,
        PathValues.DAPPS_SUSHISWAP_PAIRHOURDATAS_HISTORICAL: DappsSushiswapPairhourdatasHistorical,
        PathValues.DAPPS_SUSHISWAP_SWAPS_HISTORICAL: DappsSushiswapSwapsHistorical,
        PathValues.DAPPS_SUSHISWAP_TOKENDAYDATAS_HISTORICAL: DappsSushiswapTokendaydatasHistorical,
        PathValues.DAPPS_SUSHISWAP_TOKENS_HISTORICAL: DappsSushiswapTokensHistorical,
        PathValues.DAPPS_SUSHISWAP_TRANSACTIONS_HISTORICAL: DappsSushiswapTransactionsHistorical,
        PathValues.DAPPS_SUSHISWAP_USERS_HISTORICAL: DappsSushiswapUsersHistorical,
        PathValues.DAPPS_UNISWAPV3_SWAPS_CURRENT: DappsUniswapv3SwapsCurrent,
        PathValues.DAPPS_UNISWAPV2_SWAPS_CURRENT: DappsUniswapv2SwapsCurrent,
        PathValues.DAPPS_SUSHISWAP_SWAPS_CURRENT: DappsSushiswapSwapsCurrent,
        PathValues.DAPPS_UNISWAPV3_TICKS_CURRENT: DappsUniswapv3TicksCurrent,
        PathValues.DAPPS_UNISWAPV3_TICKS_DAY_DATA_CURRENT: DappsUniswapv3TicksDayDataCurrent,
        PathValues.DAPPS_UNISWAPV3_TOKENS_CURRENT: DappsUniswapv3TokensCurrent,
        PathValues.DAPPS_UNISWAPV2_TOKENS_CURRENT: DappsUniswapv2TokensCurrent,
        PathValues.DAPPS_SUSHISWAP_TOKENS_CURRENT: DappsSushiswapTokensCurrent,
        PathValues.DAPPS_UNISWAPV3_TOKENS_DAY_DATA_CURRENT: DappsUniswapv3TokensDayDataCurrent,
        PathValues.DAPPS_UNISWAPV3_TOKENS_HOUR_DATA_CURRENT: DappsUniswapv3TokensHourDataCurrent,
        PathValues.DAPPS_SUSHISWAP_TRADES_CURRENT: DappsSushiswapTradesCurrent,
        PathValues.DAPPS_UNISWAPV3_DAY_DATA_CURRENT: DappsUniswapv3DayDataCurrent,
        PathValues.DAPPS_UNISWAPV2_BUNDLEV2S_HISTORICAL: DappsUniswapv2Bundlev2sHistorical,
        PathValues.DAPPS_UNISWAPV2_BURNV2S_HISTORICAL: DappsUniswapv2Burnv2sHistorical,
        PathValues.DAPPS_UNISWAPV2_LIQUIDITYPOSITIONSNAPSHOTV2S_HISTORICAL: DappsUniswapv2Liquiditypositionsnapshotv2sHistorical,
        PathValues.DAPPS_UNISWAPV2_LIQUIDITYPOSITIONV2S_HISTORICAL: DappsUniswapv2Liquiditypositionv2sHistorical,
        PathValues.DAPPS_UNISWAPV2_MINTV2S_HISTORICAL: DappsUniswapv2Mintv2sHistorical,
        PathValues.DAPPS_UNISWAPV2_PAIRDAYDATAV2S_HISTORICAL: DappsUniswapv2Pairdaydatav2sHistorical,
        PathValues.DAPPS_UNISWAPV2_PAIRHOURDATAV2S_HISTORICAL: DappsUniswapv2Pairhourdatav2sHistorical,
        PathValues.DAPPS_UNISWAPV2_PAIRV2S_HISTORICAL: DappsUniswapv2Pairv2sHistorical,
        PathValues.DAPPS_UNISWAPV2_SWAPV2S_HISTORICAL: DappsUniswapv2Swapv2sHistorical,
        PathValues.DAPPS_UNISWAPV2_TOKENDAYDATAV2S_HISTORICAL: DappsUniswapv2Tokendaydatav2sHistorical,
        PathValues.DAPPS_UNISWAPV2_TOKENV2S_HISTORICAL: DappsUniswapv2Tokenv2sHistorical,
        PathValues.DAPPS_UNISWAPV2_TRANSACTIONV2S_HISTORICAL: DappsUniswapv2Transactionv2sHistorical,
        PathValues.DAPPS_UNISWAPV2_UNISWAPDAYDATAV2S_HISTORICAL: DappsUniswapv2Uniswapdaydatav2sHistorical,
        PathValues.DAPPS_UNISWAPV2_UNISWAPFACTORYV2S_HISTORICAL: DappsUniswapv2Uniswapfactoryv2sHistorical,
        PathValues.DAPPS_UNISWAPV2_USERV2S_HISTORICAL: DappsUniswapv2Userv2sHistorical,
        PathValues.DAPPS_UNISWAPV3_BUNDLEV3S_HISTORICAL: DappsUniswapv3Bundlev3sHistorical,
        PathValues.DAPPS_UNISWAPV3_BURNV3S_HISTORICAL: DappsUniswapv3Burnv3sHistorical,
        PathValues.DAPPS_UNISWAPV3_FACTORYV3S_HISTORICAL: DappsUniswapv3Factoryv3sHistorical,
        PathValues.DAPPS_UNISWAPV3_MINTV3S_HISTORICAL: DappsUniswapv3Mintv3sHistorical,
        PathValues.DAPPS_UNISWAPV3_POOLDAYDATAV3S_HISTORICAL: DappsUniswapv3Pooldaydatav3sHistorical,
        PathValues.DAPPS_UNISWAPV3_POOLHOURDATAV3S_HISTORICAL: DappsUniswapv3Poolhourdatav3sHistorical,
        PathValues.DAPPS_UNISWAPV3_POOLV3S_HISTORICAL: DappsUniswapv3Poolv3sHistorical,
        PathValues.DAPPS_UNISWAPV3_POSITIONSNAPSHOTV3S_HISTORICAL: DappsUniswapv3Positionsnapshotv3sHistorical,
        PathValues.DAPPS_UNISWAPV3_POSITIONV3S_HISTORICAL: DappsUniswapv3Positionv3sHistorical,
        PathValues.DAPPS_UNISWAPV3_SWAPV3S_HISTORICAL: DappsUniswapv3Swapv3sHistorical,
        PathValues.DAPPS_UNISWAPV3_TICKDAYDATAV3S_HISTORICAL: DappsUniswapv3Tickdaydatav3sHistorical,
        PathValues.DAPPS_UNISWAPV3_TICKV3S_HISTORICAL: DappsUniswapv3Tickv3sHistorical,
        PathValues.DAPPS_UNISWAPV3_TOKENHOURDATAV3S_HISTORICAL: DappsUniswapv3Tokenhourdatav3sHistorical,
        PathValues.DAPPS_UNISWAPV3_TOKENV3DAYDATAS_HISTORICAL: DappsUniswapv3Tokenv3daydatasHistorical,
        PathValues.DAPPS_UNISWAPV3_TOKENV3S_HISTORICAL: DappsUniswapv3Tokenv3sHistorical,
        PathValues.DAPPS_UNISWAPV3_TRANSACTIONV3S_HISTORICAL: DappsUniswapv3Transactionv3sHistorical,
        PathValues.DAPPS_UNISWAPV3_UNISWAPDAYDATAV3S_HISTORICAL: DappsUniswapv3Uniswapdaydatav3sHistorical,
    }
)

path_to_api = PathToApi(
    {
        PathValues.DAPPS_UNISWAPV3_BUNDLES_CURRENT: DappsUniswapv3BundlesCurrent,
        PathValues.DAPPS_UNISWAPV3_BURNS_CURRENT: DappsUniswapv3BurnsCurrent,
        PathValues.DAPPS_COW_ORDERS_HISTORICAL: DappsCowOrdersHistorical,
        PathValues.DAPPS_COW_SETTLEMENTS_HISTORICAL: DappsCowSettlementsHistorical,
        PathValues.DAPPS_COW_TOKENS_HISTORICAL: DappsCowTokensHistorical,
        PathValues.DAPPS_COW_TRADES_HISTORICAL: DappsCowTradesHistorical,
        PathValues.DAPPS_COW_USERS_HISTORICAL: DappsCowUsersHistorical,
        PathValues.DAPPS_CURVE_ACCOUNTS_HISTORICAL: DappsCurveAccountsHistorical,
        PathValues.DAPPS_CURVE_ADDLIQUIDITYEVENTS_HISTORICAL: DappsCurveAddliquidityeventsHistorical,
        PathValues.DAPPS_CURVE_ADMINFEECHANGELOGS_HISTORICAL: DappsCurveAdminfeechangelogsHistorical,
        PathValues.DAPPS_CURVE_AMPLIFICATIONCOEFFCHANGELOGS_HISTORICAL: DappsCurveAmplificationcoeffchangelogsHistorical,
        PathValues.DAPPS_CURVE_COINS_HISTORICAL: DappsCurveCoinsHistorical,
        PathValues.DAPPS_CURVE_CONTRACTS_HISTORICAL: DappsCurveContractsHistorical,
        PathValues.DAPPS_CURVE_CONTRACTVERSIONS_HISTORICAL: DappsCurveContractversionsHistorical,
        PathValues.DAPPS_CURVE_DAILYVOLUMES_HISTORICAL: DappsCurveDailyvolumesHistorical,
        PathValues.DAPPS_CURVE_EXCHANGES_HISTORICAL: DappsCurveExchangesHistorical,
        PathValues.DAPPS_CURVE_FEECHANGELOGS_HISTORICAL: DappsCurveFeechangelogsHistorical,
        PathValues.DAPPS_CURVE_GAUGEDEPOSITS_HISTORICAL: DappsCurveGaugedepositsHistorical,
        PathValues.DAPPS_CURVE_GAUGES_HISTORICAL: DappsCurveGaugesHistorical,
        PathValues.DAPPS_CURVE_GAUGELIQUIDITYS_HISTORICAL: DappsCurveGaugeliquiditysHistorical,
        PathValues.DAPPS_CURVE_GAUGETOTALWEIGHTS_HISTORICAL: DappsCurveGaugetotalweightsHistorical,
        PathValues.DAPPS_CURVE_GAUGETYPES_HISTORICAL: DappsCurveGaugetypesHistorical,
        PathValues.DAPPS_CURVE_GAUGETYPEWEIGHTS_HISTORICAL: DappsCurveGaugetypeweightsHistorical,
        PathValues.DAPPS_CURVE_GAUGEWEIGHTS_HISTORICAL: DappsCurveGaugeweightsHistorical,
        PathValues.DAPPS_CURVE_GAUGEWEIGHTVOTES_HISTORICAL: DappsCurveGaugeweightvotesHistorical,
        PathValues.DAPPS_CURVE_GAUGEWITHDRAWS_HISTORICAL: DappsCurveGaugewithdrawsHistorical,
        PathValues.DAPPS_CURVE_HOURLYVOLUMES_HISTORICAL: DappsCurveHourlyvolumesHistorical,
        PathValues.DAPPS_CURVE_LPTOKENS_HISTORICAL: DappsCurveLptokensHistorical,
        PathValues.DAPPS_CURVE_POOLS_HISTORICAL: DappsCurvePoolsHistorical,
        PathValues.DAPPS_CURVE_PROPOSALS_HISTORICAL: DappsCurveProposalsHistorical,
        PathValues.DAPPS_CURVE_PROPOSALVOTES_HISTORICAL: DappsCurveProposalvotesHistorical,
        PathValues.DAPPS_CURVE_REMOVELIQUIDITYEVENTS_HISTORICAL: DappsCurveRemoveliquidityeventsHistorical,
        PathValues.DAPPS_CURVE_REMOVELIQUIDITYONEEVENTS_HISTORICAL: DappsCurveRemoveliquidityoneeventsHistorical,
        PathValues.DAPPS_CURVE_SYSTEMSTATES_HISTORICAL: DappsCurveSystemstatesHistorical,
        PathValues.DAPPS_CURVE_TOKENS_HISTORICAL: DappsCurveTokensHistorical,
        PathValues.DAPPS_CURVE_TRANSFEROWNERSHIPEVENTS_HISTORICAL: DappsCurveTransferownershipeventsHistorical,
        PathValues.DAPPS_CURVE_UNDERLYINGCOINS_HISTORICAL: DappsCurveUnderlyingcoinsHistorical,
        PathValues.DAPPS_CURVE_VOTINGAPPS_HISTORICAL: DappsCurveVotingappsHistorical,
        PathValues.DAPPS_CURVE_WEEKLYVOLUMES_HISTORICAL: DappsCurveWeeklyvolumesHistorical,
        PathValues.DAPPS_DEX_BATCHS_HISTORICAL: DappsDexBatchsHistorical,
        PathValues.DAPPS_DEX_DEPOSITS_HISTORICAL: DappsDexDepositsHistorical,
        PathValues.DAPPS_DEX_ORDERS_HISTORICAL: DappsDexOrdersHistorical,
        PathValues.DAPPS_DEX_PRICES_HISTORICAL: DappsDexPricesHistorical,
        PathValues.DAPPS_DEX_SOLUTIONS_HISTORICAL: DappsDexSolutionsHistorical,
        PathValues.DAPPS_DEX_STATSS_HISTORICAL: DappsDexStatssHistorical,
        PathValues.DAPPS_DEX_TOKENS_HISTORICAL: DappsDexTokensHistorical,
        PathValues.DAPPS_DEX_TRADES_HISTORICAL: DappsDexTradesHistorical,
        PathValues.DAPPS_DEX_USERS_HISTORICAL: DappsDexUsersHistorical,
        PathValues.DAPPS_DEX_WITHDRAWS_HISTORICAL: DappsDexWithdrawsHistorical,
        PathValues.DAPPS_DEX_WITHDRAWREQUESTS_HISTORICAL: DappsDexWithdrawrequestsHistorical,
        PathValues.DAPPS_SUSHISWAP_EXCHANGES_CURRENT: DappsSushiswapExchangesCurrent,
        PathValues.DAPPS_UNISWAPV3_FACTORY_CURRENT: DappsUniswapv3FactoryCurrent,
        PathValues.DAPPS_UNISWAPV3_MINTS_CURRENT: DappsUniswapv3MintsCurrent,
        PathValues.DAPPS_UNISWAPV3_POOLS_CURRENT: DappsUniswapv3PoolsCurrent,
        PathValues.DAPPS_UNISWAPV2_POOLS_CURRENT: DappsUniswapv2PoolsCurrent,
        PathValues.DAPPS_SUSHISWAP_POOLS_CURRENT: DappsSushiswapPoolsCurrent,
        PathValues.DAPPS_UNISWAPV3_POOLS_DAY_DATA_CURRENT: DappsUniswapv3PoolsDayDataCurrent,
        PathValues.DAPPS_UNISWAPV3_POOLS_HOUR_DATA_CURRENT: DappsUniswapv3PoolsHourDataCurrent,
        PathValues.DAPPS_UNISWAPV3_POSITIONS_CURRENT: DappsUniswapv3PositionsCurrent,
        PathValues.DAPPS_UNISWAPV3_POSITION_SNAPSHOTS_CURRENT: DappsUniswapv3PositionSnapshotsCurrent,
        PathValues.DAPPS_SUSHISWAP_BUNDLES_HISTORICAL: DappsSushiswapBundlesHistorical,
        PathValues.DAPPS_SUSHISWAP_BURNS_HISTORICAL: DappsSushiswapBurnsHistorical,
        PathValues.DAPPS_SUSHISWAP_DAYDATAS_HISTORICAL: DappsSushiswapDaydatasHistorical,
        PathValues.DAPPS_SUSHISWAP_FACTORYS_HISTORICAL: DappsSushiswapFactorysHistorical,
        PathValues.DAPPS_SUSHISWAP_HOURDATAS_HISTORICAL: DappsSushiswapHourdatasHistorical,
        PathValues.DAPPS_SUSHISWAP_LIQUIDITYPOSITIONS_HISTORICAL: DappsSushiswapLiquiditypositionsHistorical,
        PathValues.DAPPS_SUSHISWAP_LIQUIDITYPOSITIONSNAPSHOTS_HISTORICAL: DappsSushiswapLiquiditypositionsnapshotsHistorical,
        PathValues.DAPPS_SUSHISWAP_MINTS_HISTORICAL: DappsSushiswapMintsHistorical,
        PathValues.DAPPS_SUSHISWAP_PAIRDAYDATAS_HISTORICAL: DappsSushiswapPairdaydatasHistorical,
        PathValues.DAPPS_SUSHISWAP_PAIRS_HISTORICAL: DappsSushiswapPairsHistorical,
        PathValues.DAPPS_SUSHISWAP_PAIRHOURDATAS_HISTORICAL: DappsSushiswapPairhourdatasHistorical,
        PathValues.DAPPS_SUSHISWAP_SWAPS_HISTORICAL: DappsSushiswapSwapsHistorical,
        PathValues.DAPPS_SUSHISWAP_TOKENDAYDATAS_HISTORICAL: DappsSushiswapTokendaydatasHistorical,
        PathValues.DAPPS_SUSHISWAP_TOKENS_HISTORICAL: DappsSushiswapTokensHistorical,
        PathValues.DAPPS_SUSHISWAP_TRANSACTIONS_HISTORICAL: DappsSushiswapTransactionsHistorical,
        PathValues.DAPPS_SUSHISWAP_USERS_HISTORICAL: DappsSushiswapUsersHistorical,
        PathValues.DAPPS_UNISWAPV3_SWAPS_CURRENT: DappsUniswapv3SwapsCurrent,
        PathValues.DAPPS_UNISWAPV2_SWAPS_CURRENT: DappsUniswapv2SwapsCurrent,
        PathValues.DAPPS_SUSHISWAP_SWAPS_CURRENT: DappsSushiswapSwapsCurrent,
        PathValues.DAPPS_UNISWAPV3_TICKS_CURRENT: DappsUniswapv3TicksCurrent,
        PathValues.DAPPS_UNISWAPV3_TICKS_DAY_DATA_CURRENT: DappsUniswapv3TicksDayDataCurrent,
        PathValues.DAPPS_UNISWAPV3_TOKENS_CURRENT: DappsUniswapv3TokensCurrent,
        PathValues.DAPPS_UNISWAPV2_TOKENS_CURRENT: DappsUniswapv2TokensCurrent,
        PathValues.DAPPS_SUSHISWAP_TOKENS_CURRENT: DappsSushiswapTokensCurrent,
        PathValues.DAPPS_UNISWAPV3_TOKENS_DAY_DATA_CURRENT: DappsUniswapv3TokensDayDataCurrent,
        PathValues.DAPPS_UNISWAPV3_TOKENS_HOUR_DATA_CURRENT: DappsUniswapv3TokensHourDataCurrent,
        PathValues.DAPPS_SUSHISWAP_TRADES_CURRENT: DappsSushiswapTradesCurrent,
        PathValues.DAPPS_UNISWAPV3_DAY_DATA_CURRENT: DappsUniswapv3DayDataCurrent,
        PathValues.DAPPS_UNISWAPV2_BUNDLEV2S_HISTORICAL: DappsUniswapv2Bundlev2sHistorical,
        PathValues.DAPPS_UNISWAPV2_BURNV2S_HISTORICAL: DappsUniswapv2Burnv2sHistorical,
        PathValues.DAPPS_UNISWAPV2_LIQUIDITYPOSITIONSNAPSHOTV2S_HISTORICAL: DappsUniswapv2Liquiditypositionsnapshotv2sHistorical,
        PathValues.DAPPS_UNISWAPV2_LIQUIDITYPOSITIONV2S_HISTORICAL: DappsUniswapv2Liquiditypositionv2sHistorical,
        PathValues.DAPPS_UNISWAPV2_MINTV2S_HISTORICAL: DappsUniswapv2Mintv2sHistorical,
        PathValues.DAPPS_UNISWAPV2_PAIRDAYDATAV2S_HISTORICAL: DappsUniswapv2Pairdaydatav2sHistorical,
        PathValues.DAPPS_UNISWAPV2_PAIRHOURDATAV2S_HISTORICAL: DappsUniswapv2Pairhourdatav2sHistorical,
        PathValues.DAPPS_UNISWAPV2_PAIRV2S_HISTORICAL: DappsUniswapv2Pairv2sHistorical,
        PathValues.DAPPS_UNISWAPV2_SWAPV2S_HISTORICAL: DappsUniswapv2Swapv2sHistorical,
        PathValues.DAPPS_UNISWAPV2_TOKENDAYDATAV2S_HISTORICAL: DappsUniswapv2Tokendaydatav2sHistorical,
        PathValues.DAPPS_UNISWAPV2_TOKENV2S_HISTORICAL: DappsUniswapv2Tokenv2sHistorical,
        PathValues.DAPPS_UNISWAPV2_TRANSACTIONV2S_HISTORICAL: DappsUniswapv2Transactionv2sHistorical,
        PathValues.DAPPS_UNISWAPV2_UNISWAPDAYDATAV2S_HISTORICAL: DappsUniswapv2Uniswapdaydatav2sHistorical,
        PathValues.DAPPS_UNISWAPV2_UNISWAPFACTORYV2S_HISTORICAL: DappsUniswapv2Uniswapfactoryv2sHistorical,
        PathValues.DAPPS_UNISWAPV2_USERV2S_HISTORICAL: DappsUniswapv2Userv2sHistorical,
        PathValues.DAPPS_UNISWAPV3_BUNDLEV3S_HISTORICAL: DappsUniswapv3Bundlev3sHistorical,
        PathValues.DAPPS_UNISWAPV3_BURNV3S_HISTORICAL: DappsUniswapv3Burnv3sHistorical,
        PathValues.DAPPS_UNISWAPV3_FACTORYV3S_HISTORICAL: DappsUniswapv3Factoryv3sHistorical,
        PathValues.DAPPS_UNISWAPV3_MINTV3S_HISTORICAL: DappsUniswapv3Mintv3sHistorical,
        PathValues.DAPPS_UNISWAPV3_POOLDAYDATAV3S_HISTORICAL: DappsUniswapv3Pooldaydatav3sHistorical,
        PathValues.DAPPS_UNISWAPV3_POOLHOURDATAV3S_HISTORICAL: DappsUniswapv3Poolhourdatav3sHistorical,
        PathValues.DAPPS_UNISWAPV3_POOLV3S_HISTORICAL: DappsUniswapv3Poolv3sHistorical,
        PathValues.DAPPS_UNISWAPV3_POSITIONSNAPSHOTV3S_HISTORICAL: DappsUniswapv3Positionsnapshotv3sHistorical,
        PathValues.DAPPS_UNISWAPV3_POSITIONV3S_HISTORICAL: DappsUniswapv3Positionv3sHistorical,
        PathValues.DAPPS_UNISWAPV3_SWAPV3S_HISTORICAL: DappsUniswapv3Swapv3sHistorical,
        PathValues.DAPPS_UNISWAPV3_TICKDAYDATAV3S_HISTORICAL: DappsUniswapv3Tickdaydatav3sHistorical,
        PathValues.DAPPS_UNISWAPV3_TICKV3S_HISTORICAL: DappsUniswapv3Tickv3sHistorical,
        PathValues.DAPPS_UNISWAPV3_TOKENHOURDATAV3S_HISTORICAL: DappsUniswapv3Tokenhourdatav3sHistorical,
        PathValues.DAPPS_UNISWAPV3_TOKENV3DAYDATAS_HISTORICAL: DappsUniswapv3Tokenv3daydatasHistorical,
        PathValues.DAPPS_UNISWAPV3_TOKENV3S_HISTORICAL: DappsUniswapv3Tokenv3sHistorical,
        PathValues.DAPPS_UNISWAPV3_TRANSACTIONV3S_HISTORICAL: DappsUniswapv3Transactionv3sHistorical,
        PathValues.DAPPS_UNISWAPV3_UNISWAPDAYDATAV3S_HISTORICAL: DappsUniswapv3Uniswapdaydatav3sHistorical,
    }
)
