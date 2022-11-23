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
using NUnit.Framework;

using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Model;

namespace CoinAPI.EMS.REST.V1.Test
{
    /// <summary>
    ///  Class for testing DexApi
    /// </summary>
    /// <remarks>
    /// This file is automatically generated by OpenAPI Generator (https://openapi-generator.tech).
    /// Please update the test case below to test the API endpoint.
    /// </remarks>
    public class DexApiTests
    {
        private DexApi instance;

        /// <summary>
        /// Setup before each unit test
        /// </summary>
        [SetUp]
        public void Init()
        {
            instance = new DexApi();
        }

        /// <summary>
        /// Clean up after each unit test
        /// </summary>
        [TearDown]
        public void Cleanup()
        {

        }

        /// <summary>
        /// Test an instance of DexApi
        /// </summary>
        [Test]
        public void InstanceTest()
        {
            // TODO uncomment below to test 'IsInstanceOf' DexApi
            //Assert.IsInstanceOf(typeof(DexApi), instance);
        }

        
        /// <summary>
        /// Test DexBatchesCurrent
        /// </summary>
        [Test]
        public void DexBatchesCurrentTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //var response = instance.DexBatchesCurrent();
            //Assert.IsInstanceOf(typeof(List<DexBatchDTO>), response, "response is List<DexBatchDTO>");
        }
        
        /// <summary>
        /// Test DexDepositsCurrent
        /// </summary>
        [Test]
        public void DexDepositsCurrentTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //var response = instance.DexDepositsCurrent();
            //Assert.IsInstanceOf(typeof(List<DexDepositDTO>), response, "response is List<DexDepositDTO>");
        }
        
        /// <summary>
        /// Test DexGetBatchesHistorical
        /// </summary>
        [Test]
        public void DexGetBatchesHistoricalTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //long? startBlock = null;
            //long? endBlock = null;
            //DateTime? startDate = null;
            //DateTime? endDate = null;
            //string id = null;
            //var response = instance.DexGetBatchesHistorical(startBlock, endBlock, startDate, endDate, id);
            //Assert.IsInstanceOf(typeof(List<DexBatchDTO>), response, "response is List<DexBatchDTO>");
        }
        
        /// <summary>
        /// Test DexGetDepositsHistorical
        /// </summary>
        [Test]
        public void DexGetDepositsHistoricalTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //long? startBlock = null;
            //long? endBlock = null;
            //DateTime? startDate = null;
            //DateTime? endDate = null;
            //string id = null;
            //string user = null;
            //var response = instance.DexGetDepositsHistorical(startBlock, endBlock, startDate, endDate, id, user);
            //Assert.IsInstanceOf(typeof(List<DexDepositDTO>), response, "response is List<DexDepositDTO>");
        }
        
        /// <summary>
        /// Test DexGetOrdersHistorical
        /// </summary>
        [Test]
        public void DexGetOrdersHistoricalTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //long? startBlock = null;
            //long? endBlock = null;
            //DateTime? startDate = null;
            //DateTime? endDate = null;
            //string id = null;
            //string buyToken = null;
            //string sellToken = null;
            //var response = instance.DexGetOrdersHistorical(startBlock, endBlock, startDate, endDate, id, buyToken, sellToken);
            //Assert.IsInstanceOf(typeof(List<DexOrderDTO>), response, "response is List<DexOrderDTO>");
        }
        
        /// <summary>
        /// Test DexGetPricesHistorical
        /// </summary>
        [Test]
        public void DexGetPricesHistoricalTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //long? startBlock = null;
            //long? endBlock = null;
            //DateTime? startDate = null;
            //DateTime? endDate = null;
            //string id = null;
            //var response = instance.DexGetPricesHistorical(startBlock, endBlock, startDate, endDate, id);
            //Assert.IsInstanceOf(typeof(List<DexPriceDTO>), response, "response is List<DexPriceDTO>");
        }
        
        /// <summary>
        /// Test DexGetSolutionsHistorical
        /// </summary>
        [Test]
        public void DexGetSolutionsHistoricalTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //long? startBlock = null;
            //long? endBlock = null;
            //DateTime? startDate = null;
            //DateTime? endDate = null;
            //string id = null;
            //var response = instance.DexGetSolutionsHistorical(startBlock, endBlock, startDate, endDate, id);
            //Assert.IsInstanceOf(typeof(List<DexSolutionDTO>), response, "response is List<DexSolutionDTO>");
        }
        
        /// <summary>
        /// Test DexGetStatsHistorical
        /// </summary>
        [Test]
        public void DexGetStatsHistoricalTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //long? startBlock = null;
            //long? endBlock = null;
            //DateTime? startDate = null;
            //DateTime? endDate = null;
            //string id = null;
            //var response = instance.DexGetStatsHistorical(startBlock, endBlock, startDate, endDate, id);
            //Assert.IsInstanceOf(typeof(List<DexStatsDTO>), response, "response is List<DexStatsDTO>");
        }
        
        /// <summary>
        /// Test DexGetTokensHistorical
        /// </summary>
        [Test]
        public void DexGetTokensHistoricalTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //long? startBlock = null;
            //long? endBlock = null;
            //DateTime? startDate = null;
            //DateTime? endDate = null;
            //string id = null;
            //string address = null;
            //string symbol = null;
            //string name = null;
            //var response = instance.DexGetTokensHistorical(startBlock, endBlock, startDate, endDate, id, address, symbol, name);
            //Assert.IsInstanceOf(typeof(List<DexTokenDTO>), response, "response is List<DexTokenDTO>");
        }
        
        /// <summary>
        /// Test DexGetTradesHistorical
        /// </summary>
        [Test]
        public void DexGetTradesHistoricalTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //long? startBlock = null;
            //long? endBlock = null;
            //DateTime? startDate = null;
            //DateTime? endDate = null;
            //string id = null;
            //string buyToken = null;
            //string sellToken = null;
            //var response = instance.DexGetTradesHistorical(startBlock, endBlock, startDate, endDate, id, buyToken, sellToken);
            //Assert.IsInstanceOf(typeof(List<DexTradeDTO>), response, "response is List<DexTradeDTO>");
        }
        
        /// <summary>
        /// Test DexGetUsersHistorical
        /// </summary>
        [Test]
        public void DexGetUsersHistoricalTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //long? startBlock = null;
            //long? endBlock = null;
            //DateTime? startDate = null;
            //DateTime? endDate = null;
            //string id = null;
            //var response = instance.DexGetUsersHistorical(startBlock, endBlock, startDate, endDate, id);
            //Assert.IsInstanceOf(typeof(List<DexUserDTO>), response, "response is List<DexUserDTO>");
        }
        
        /// <summary>
        /// Test DexGetWithdrawRequestsHistorical
        /// </summary>
        [Test]
        public void DexGetWithdrawRequestsHistoricalTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //long? startBlock = null;
            //long? endBlock = null;
            //DateTime? startDate = null;
            //DateTime? endDate = null;
            //string id = null;
            //string user = null;
            //var response = instance.DexGetWithdrawRequestsHistorical(startBlock, endBlock, startDate, endDate, id, user);
            //Assert.IsInstanceOf(typeof(List<DexWithdrawRequestDTO>), response, "response is List<DexWithdrawRequestDTO>");
        }
        
        /// <summary>
        /// Test DexGetWithdrawsHistorical
        /// </summary>
        [Test]
        public void DexGetWithdrawsHistoricalTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //long? startBlock = null;
            //long? endBlock = null;
            //DateTime? startDate = null;
            //DateTime? endDate = null;
            //string id = null;
            //string user = null;
            //var response = instance.DexGetWithdrawsHistorical(startBlock, endBlock, startDate, endDate, id, user);
            //Assert.IsInstanceOf(typeof(List<DexWithdrawDTO>), response, "response is List<DexWithdrawDTO>");
        }
        
        /// <summary>
        /// Test DexOrdersCurrent
        /// </summary>
        [Test]
        public void DexOrdersCurrentTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //var response = instance.DexOrdersCurrent();
            //Assert.IsInstanceOf(typeof(List<DexOrderDTO>), response, "response is List<DexOrderDTO>");
        }
        
        /// <summary>
        /// Test DexPricesCurrent
        /// </summary>
        [Test]
        public void DexPricesCurrentTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //var response = instance.DexPricesCurrent();
            //Assert.IsInstanceOf(typeof(List<DexPriceDTO>), response, "response is List<DexPriceDTO>");
        }
        
        /// <summary>
        /// Test DexSolutionsCurrent
        /// </summary>
        [Test]
        public void DexSolutionsCurrentTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //var response = instance.DexSolutionsCurrent();
            //Assert.IsInstanceOf(typeof(List<DexSolutionDTO>), response, "response is List<DexSolutionDTO>");
        }
        
        /// <summary>
        /// Test DexStatsCurrent
        /// </summary>
        [Test]
        public void DexStatsCurrentTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //var response = instance.DexStatsCurrent();
            //Assert.IsInstanceOf(typeof(List<DexStatsDTO>), response, "response is List<DexStatsDTO>");
        }
        
        /// <summary>
        /// Test DexTokensCurrent
        /// </summary>
        [Test]
        public void DexTokensCurrentTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //var response = instance.DexTokensCurrent();
            //Assert.IsInstanceOf(typeof(List<DexTokenDTO>), response, "response is List<DexTokenDTO>");
        }
        
        /// <summary>
        /// Test DexTradesCurrent
        /// </summary>
        [Test]
        public void DexTradesCurrentTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //var response = instance.DexTradesCurrent();
            //Assert.IsInstanceOf(typeof(List<DexTradeDTO>), response, "response is List<DexTradeDTO>");
        }
        
        /// <summary>
        /// Test DexUsersCurrent
        /// </summary>
        [Test]
        public void DexUsersCurrentTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //var response = instance.DexUsersCurrent();
            //Assert.IsInstanceOf(typeof(List<DexUserDTO>), response, "response is List<DexUserDTO>");
        }
        
        /// <summary>
        /// Test DexWithdrawRequestsCurrent
        /// </summary>
        [Test]
        public void DexWithdrawRequestsCurrentTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //var response = instance.DexWithdrawRequestsCurrent();
            //Assert.IsInstanceOf(typeof(List<DexWithdrawRequestDTO>), response, "response is List<DexWithdrawRequestDTO>");
        }
        
        /// <summary>
        /// Test DexWithdrawsCurrent
        /// </summary>
        [Test]
        public void DexWithdrawsCurrentTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //var response = instance.DexWithdrawsCurrent();
            //Assert.IsInstanceOf(typeof(List<DexWithdrawDTO>), response, "response is List<DexWithdrawDTO>");
        }
        
    }

}
