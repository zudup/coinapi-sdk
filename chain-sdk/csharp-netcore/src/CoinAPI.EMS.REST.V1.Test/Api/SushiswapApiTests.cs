/*
 * On Chain - REST API
 *
 *  This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                             
 *
 * The version of the OpenAPI document: v1
 * Contact: support@coinapi.io
 * Generated by: https://github.com/openapitools/openapi-generator.git
 */

using System;
using System.IO;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Reflection;
using RestSharp;
using Xunit;

using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Api;
// uncomment below to import models
//using CoinAPI.EMS.REST.V1.Model;

namespace CoinAPI.EMS.REST.V1.Test.Api
{
    /// <summary>
    ///  Class for testing SushiswapApi
    /// </summary>
    /// <remarks>
    /// This file is automatically generated by OpenAPI Generator (https://openapi-generator.tech).
    /// Please update the test case below to test the API endpoint.
    /// </remarks>
    public class SushiswapApiTests : IDisposable
    {
        private SushiswapApi instance;

        public SushiswapApiTests()
        {
            instance = new SushiswapApi();
        }

        public void Dispose()
        {
            // Cleanup when everything is done.
        }

        /// <summary>
        /// Test an instance of SushiswapApi
        /// </summary>
        [Fact]
        public void InstanceTest()
        {
            // TODO uncomment below to test 'IsType' SushiswapApi
            //Assert.IsType<SushiswapApi>(instance);
        }

        /// <summary>
        /// Test SushiswapBundlesCurrent
        /// </summary>
        [Fact]
        public void SushiswapBundlesCurrentTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //var response = instance.SushiswapBundlesCurrent();
            //Assert.IsType<List<SushiswapBundleDTO>>(response);
        }

        /// <summary>
        /// Test SushiswapBurnsCurrent
        /// </summary>
        [Fact]
        public void SushiswapBurnsCurrentTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //var response = instance.SushiswapBurnsCurrent();
            //Assert.IsType<List<SushiswapBurnDTO>>(response);
        }

        /// <summary>
        /// Test SushiswapDayDataCurrent
        /// </summary>
        [Fact]
        public void SushiswapDayDataCurrentTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //var response = instance.SushiswapDayDataCurrent();
            //Assert.IsType<List<SushiswapDayDataDTO>>(response);
        }

        /// <summary>
        /// Test SushiswapFactoriesCurrent
        /// </summary>
        [Fact]
        public void SushiswapFactoriesCurrentTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //var response = instance.SushiswapFactoriesCurrent();
            //Assert.IsType<List<SushiswapFactoryDTO>>(response);
        }

        /// <summary>
        /// Test SushiswapGetBundlesHistorical
        /// </summary>
        [Fact]
        public void SushiswapGetBundlesHistoricalTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //long? startBlock = null;
            //long? endBlock = null;
            //DateTime? startDate = null;
            //DateTime? endDate = null;
            //string id = null;
            //var response = instance.SushiswapGetBundlesHistorical(startBlock, endBlock, startDate, endDate, id);
            //Assert.IsType<List<SushiswapBundleDTO>>(response);
        }

        /// <summary>
        /// Test SushiswapGetBurnsHistorical
        /// </summary>
        [Fact]
        public void SushiswapGetBurnsHistoricalTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //long? startBlock = null;
            //long? endBlock = null;
            //DateTime? startDate = null;
            //DateTime? endDate = null;
            //string id = null;
            //string pair = null;
            //var response = instance.SushiswapGetBurnsHistorical(startBlock, endBlock, startDate, endDate, id, pair);
            //Assert.IsType<List<SushiswapBurnDTO>>(response);
        }

        /// <summary>
        /// Test SushiswapGetDayDataHistorical
        /// </summary>
        [Fact]
        public void SushiswapGetDayDataHistoricalTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //long? startBlock = null;
            //long? endBlock = null;
            //DateTime? startDate = null;
            //DateTime? endDate = null;
            //string id = null;
            //var response = instance.SushiswapGetDayDataHistorical(startBlock, endBlock, startDate, endDate, id);
            //Assert.IsType<List<SushiswapDayDataDTO>>(response);
        }

        /// <summary>
        /// Test SushiswapGetFactoriesHistorical
        /// </summary>
        [Fact]
        public void SushiswapGetFactoriesHistoricalTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //long? startBlock = null;
            //long? endBlock = null;
            //DateTime? startDate = null;
            //DateTime? endDate = null;
            //string id = null;
            //var response = instance.SushiswapGetFactoriesHistorical(startBlock, endBlock, startDate, endDate, id);
            //Assert.IsType<List<SushiswapFactoryDTO>>(response);
        }

        /// <summary>
        /// Test SushiswapGetHourDataHistorical
        /// </summary>
        [Fact]
        public void SushiswapGetHourDataHistoricalTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //long? startBlock = null;
            //long? endBlock = null;
            //DateTime? startDate = null;
            //DateTime? endDate = null;
            //string id = null;
            //var response = instance.SushiswapGetHourDataHistorical(startBlock, endBlock, startDate, endDate, id);
            //Assert.IsType<List<SushiswapHourDataDTO>>(response);
        }

        /// <summary>
        /// Test SushiswapGetLiquidityPositionSnapshotsHistorical
        /// </summary>
        [Fact]
        public void SushiswapGetLiquidityPositionSnapshotsHistoricalTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //long? startBlock = null;
            //long? endBlock = null;
            //DateTime? startDate = null;
            //DateTime? endDate = null;
            //string id = null;
            //string user = null;
            //string pair = null;
            //var response = instance.SushiswapGetLiquidityPositionSnapshotsHistorical(startBlock, endBlock, startDate, endDate, id, user, pair);
            //Assert.IsType<List<SushiswapLiquidityPositionSnapshotDTO>>(response);
        }

        /// <summary>
        /// Test SushiswapGetLiquidityPositionsHistorical
        /// </summary>
        [Fact]
        public void SushiswapGetLiquidityPositionsHistoricalTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //long? startBlock = null;
            //long? endBlock = null;
            //DateTime? startDate = null;
            //DateTime? endDate = null;
            //string id = null;
            //string user = null;
            //string pair = null;
            //var response = instance.SushiswapGetLiquidityPositionsHistorical(startBlock, endBlock, startDate, endDate, id, user, pair);
            //Assert.IsType<List<SushiswapLiquidityPositionDTO>>(response);
        }

        /// <summary>
        /// Test SushiswapGetMintsHistorical
        /// </summary>
        [Fact]
        public void SushiswapGetMintsHistoricalTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //long? startBlock = null;
            //long? endBlock = null;
            //DateTime? startDate = null;
            //DateTime? endDate = null;
            //string id = null;
            //string pair = null;
            //var response = instance.SushiswapGetMintsHistorical(startBlock, endBlock, startDate, endDate, id, pair);
            //Assert.IsType<List<SushiswapMintDTO>>(response);
        }

        /// <summary>
        /// Test SushiswapGetPairDayDataHistorical
        /// </summary>
        [Fact]
        public void SushiswapGetPairDayDataHistoricalTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //long? startBlock = null;
            //long? endBlock = null;
            //DateTime? startDate = null;
            //DateTime? endDate = null;
            //string id = null;
            //string pair = null;
            //string token0 = null;
            //string token1 = null;
            //var response = instance.SushiswapGetPairDayDataHistorical(startBlock, endBlock, startDate, endDate, id, pair, token0, token1);
            //Assert.IsType<List<SushiswapPairDayDataDTO>>(response);
        }

        /// <summary>
        /// Test SushiswapGetPairHourDataHistorical
        /// </summary>
        [Fact]
        public void SushiswapGetPairHourDataHistoricalTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //long? startBlock = null;
            //long? endBlock = null;
            //DateTime? startDate = null;
            //DateTime? endDate = null;
            //string id = null;
            //string pair = null;
            //var response = instance.SushiswapGetPairHourDataHistorical(startBlock, endBlock, startDate, endDate, id, pair);
            //Assert.IsType<List<SushiswapPairHourDataDTO>>(response);
        }

        /// <summary>
        /// Test SushiswapGetPairsHistorical
        /// </summary>
        [Fact]
        public void SushiswapGetPairsHistoricalTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //long? startBlock = null;
            //long? endBlock = null;
            //DateTime? startDate = null;
            //DateTime? endDate = null;
            //string id = null;
            //string name = null;
            //string token0 = null;
            //string token1 = null;
            //var response = instance.SushiswapGetPairsHistorical(startBlock, endBlock, startDate, endDate, id, name, token0, token1);
            //Assert.IsType<List<SushiswapPairDTO>>(response);
        }

        /// <summary>
        /// Test SushiswapGetSwapsHistorical
        /// </summary>
        [Fact]
        public void SushiswapGetSwapsHistoricalTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //long? startBlock = null;
            //long? endBlock = null;
            //DateTime? startDate = null;
            //DateTime? endDate = null;
            //string id = null;
            //string pair = null;
            //var response = instance.SushiswapGetSwapsHistorical(startBlock, endBlock, startDate, endDate, id, pair);
            //Assert.IsType<List<SushiswapSwapDTO>>(response);
        }

        /// <summary>
        /// Test SushiswapGetTokenDayDataHistorical
        /// </summary>
        [Fact]
        public void SushiswapGetTokenDayDataHistoricalTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //long? startBlock = null;
            //long? endBlock = null;
            //DateTime? startDate = null;
            //DateTime? endDate = null;
            //string id = null;
            //var response = instance.SushiswapGetTokenDayDataHistorical(startBlock, endBlock, startDate, endDate, id);
            //Assert.IsType<List<SushiswapTokenDayDataDTO>>(response);
        }

        /// <summary>
        /// Test SushiswapGetTokensHistorical
        /// </summary>
        [Fact]
        public void SushiswapGetTokensHistoricalTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //long? startBlock = null;
            //long? endBlock = null;
            //DateTime? startDate = null;
            //DateTime? endDate = null;
            //string id = null;
            //string symbol = null;
            //string name = null;
            //var response = instance.SushiswapGetTokensHistorical(startBlock, endBlock, startDate, endDate, id, symbol, name);
            //Assert.IsType<List<SushiswapTokenDTO>>(response);
        }

        /// <summary>
        /// Test SushiswapGetTransactionsHistorical
        /// </summary>
        [Fact]
        public void SushiswapGetTransactionsHistoricalTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //long? startBlock = null;
            //long? endBlock = null;
            //DateTime? startDate = null;
            //DateTime? endDate = null;
            //string id = null;
            //var response = instance.SushiswapGetTransactionsHistorical(startBlock, endBlock, startDate, endDate, id);
            //Assert.IsType<List<SushiswapTransactionDTO>>(response);
        }

        /// <summary>
        /// Test SushiswapGetUsersHistorical
        /// </summary>
        [Fact]
        public void SushiswapGetUsersHistoricalTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //long? startBlock = null;
            //long? endBlock = null;
            //DateTime? startDate = null;
            //DateTime? endDate = null;
            //string id = null;
            //var response = instance.SushiswapGetUsersHistorical(startBlock, endBlock, startDate, endDate, id);
            //Assert.IsType<List<SushiswapUserDTO>>(response);
        }

        /// <summary>
        /// Test SushiswapHourDataCurrent
        /// </summary>
        [Fact]
        public void SushiswapHourDataCurrentTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //var response = instance.SushiswapHourDataCurrent();
            //Assert.IsType<List<SushiswapHourDataDTO>>(response);
        }

        /// <summary>
        /// Test SushiswapLiquidityPositionSnapshotsCurrent
        /// </summary>
        [Fact]
        public void SushiswapLiquidityPositionSnapshotsCurrentTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //var response = instance.SushiswapLiquidityPositionSnapshotsCurrent();
            //Assert.IsType<List<SushiswapLiquidityPositionSnapshotDTO>>(response);
        }

        /// <summary>
        /// Test SushiswapLiquidityPositionsCurrent
        /// </summary>
        [Fact]
        public void SushiswapLiquidityPositionsCurrentTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //var response = instance.SushiswapLiquidityPositionsCurrent();
            //Assert.IsType<List<SushiswapLiquidityPositionDTO>>(response);
        }

        /// <summary>
        /// Test SushiswapMintsCurrent
        /// </summary>
        [Fact]
        public void SushiswapMintsCurrentTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //var response = instance.SushiswapMintsCurrent();
            //Assert.IsType<List<SushiswapMintDTO>>(response);
        }

        /// <summary>
        /// Test SushiswapPairDayDataCurrent
        /// </summary>
        [Fact]
        public void SushiswapPairDayDataCurrentTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //var response = instance.SushiswapPairDayDataCurrent();
            //Assert.IsType<List<SushiswapPairDayDataDTO>>(response);
        }

        /// <summary>
        /// Test SushiswapPairHourDataCurrent
        /// </summary>
        [Fact]
        public void SushiswapPairHourDataCurrentTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //var response = instance.SushiswapPairHourDataCurrent();
            //Assert.IsType<List<SushiswapPairHourDataDTO>>(response);
        }

        /// <summary>
        /// Test SushiswapPairsCurrent
        /// </summary>
        [Fact]
        public void SushiswapPairsCurrentTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string id = null;
            //var response = instance.SushiswapPairsCurrent(id);
            //Assert.IsType<List<SushiswapPairDTO>>(response);
        }

        /// <summary>
        /// Test SushiswapSwapsCurrent
        /// </summary>
        [Fact]
        public void SushiswapSwapsCurrentTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string pair = null;
            //var response = instance.SushiswapSwapsCurrent(pair);
            //Assert.IsType<List<SushiswapSwapDTO>>(response);
        }

        /// <summary>
        /// Test SushiswapTokenDayDataCurrent
        /// </summary>
        [Fact]
        public void SushiswapTokenDayDataCurrentTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //var response = instance.SushiswapTokenDayDataCurrent();
            //Assert.IsType<List<SushiswapTokenDayDataDTO>>(response);
        }

        /// <summary>
        /// Test SushiswapTokensCurrent
        /// </summary>
        [Fact]
        public void SushiswapTokensCurrentTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //var response = instance.SushiswapTokensCurrent();
            //Assert.IsType<List<SushiswapTokenDTO>>(response);
        }

        /// <summary>
        /// Test SushiswapTransactionsCurrent
        /// </summary>
        [Fact]
        public void SushiswapTransactionsCurrentTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //var response = instance.SushiswapTransactionsCurrent();
            //Assert.IsType<List<SushiswapTransactionDTO>>(response);
        }

        /// <summary>
        /// Test SushiswapUsersCurrent
        /// </summary>
        [Fact]
        public void SushiswapUsersCurrentTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //var response = instance.SushiswapUsersCurrent();
            //Assert.IsType<List<SushiswapUserDTO>>(response);
        }
    }
}
