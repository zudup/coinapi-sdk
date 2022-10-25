import { NgModule, ModuleWithProviders, SkipSelf, Optional } from '@angular/core';
import { Configuration } from './configuration';
import { HttpClient } from '@angular/common/http';

import { AccountsService } from './api/accounts.service';
import { AddLiquidityEventService } from './api/addLiquidityEvent.service';
import { AdminFeeChangeLogService } from './api/adminFeeChangeLog.service';
import { AmplificationCoeffChangeLogService } from './api/amplificationCoeffChangeLog.service';
import { BatchService } from './api/batch.service';
import { BundlesService } from './api/bundles.service';
import { BurnsService } from './api/burns.service';
import { CoinsService } from './api/coins.service';
import { ContractsService } from './api/contracts.service';
import { ContractsVersionService } from './api/contractsVersion.service';
import { DailyVolumeService } from './api/dailyVolume.service';
import { DayDataService } from './api/dayData.service';
import { DepositService } from './api/deposit.service';
import { FactoryService } from './api/factory.service';
import { FeeChangeLogService } from './api/feeChangeLog.service';
import { GaugeService } from './api/gauge.service';
import { GaugeDepositService } from './api/gaugeDeposit.service';
import { GaugeLiquidityService } from './api/gaugeLiquidity.service';
import { GaugeTotalWeightService } from './api/gaugeTotalWeight.service';
import { GaugeTypeService } from './api/gaugeType.service';
import { GaugeTypeWeightService } from './api/gaugeTypeWeight.service';
import { GaugeWeightService } from './api/gaugeWeight.service';
import { GaugeWeightVoteService } from './api/gaugeWeightVote.service';
import { GaugeWithdrawService } from './api/gaugeWithdraw.service';
import { HourDataService } from './api/hourData.service';
import { HourlyVolumeService } from './api/hourlyVolume.service';
import { LiquidityPositionService } from './api/liquidityPosition.service';
import { LiquidityPositionSnapshotsService } from './api/liquidityPositionSnapshots.service';
import { LpTokenService } from './api/lpToken.service';
import { MintsService } from './api/mints.service';
import { OrdersService } from './api/orders.service';
import { PoiService } from './api/poi.service';
import { PoolDayDataService } from './api/poolDayData.service';
import { PoolHourDataService } from './api/poolHourData.service';
import { PoolsService } from './api/pools.service';
import { PositionSnapshotService } from './api/positionSnapshot.service';
import { PositionsService } from './api/positions.service';
import { PricesService } from './api/prices.service';
import { SettlementService } from './api/settlement.service';
import { SolutionService } from './api/solution.service';
import { StatsService } from './api/stats.service';
import { SushiswapService } from './api/sushiswap.service';
import { SwapsService } from './api/swaps.service';
import { TickDayDataService } from './api/tickDayData.service';
import { TicksService } from './api/ticks.service';
import { TokenDayDataService } from './api/tokenDayData.service';
import { TokenHourDataService } from './api/tokenHourData.service';
import { TokensService } from './api/tokens.service';
import { TradesService } from './api/trades.service';
import { TransactionsService } from './api/transactions.service';
import { UniswapDayDataService } from './api/uniswapDayData.service';
import { UniswapV2Service } from './api/uniswapV2.service';
import { UniswapV3Service } from './api/uniswapV3.service';
import { UsersService } from './api/users.service';
import { WithdrawService } from './api/withdraw.service';
import { WithdrawRequestService } from './api/withdrawRequest.service';

@NgModule({
  imports:      [],
  declarations: [],
  exports:      [],
  providers: []
})
export class ApiModule {
    public static forRoot(configurationFactory: () => Configuration): ModuleWithProviders<ApiModule> {
        return {
            ngModule: ApiModule,
            providers: [ { provide: Configuration, useFactory: configurationFactory } ]
        };
    }

    constructor( @Optional() @SkipSelf() parentModule: ApiModule,
                 @Optional() http: HttpClient) {
        if (parentModule) {
            throw new Error('ApiModule is already loaded. Import in your base AppModule only.');
        }
        if (!http) {
            throw new Error('You need to import the HttpClientModule in your AppModule! \n' +
            'See also https://github.com/angular/angular/issues/20575');
        }
    }
}
