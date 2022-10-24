/*
 * OnChain API
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

namespace CoinAPI.EMS.REST.V1.Test.Api
{
    /// <summary>
    ///  Class for testing PoiApi
    /// </summary>
    /// <remarks>
    /// This file is automatically generated by OpenAPI Generator (https://openapi-generator.tech).
    /// Please update the test case below to test the API endpoint.
    /// </remarks>
    public class PoiApiTests : IDisposable
    {
        private PoiApi instance;

        public PoiApiTests()
        {
            instance = new PoiApi();
        }

        public void Dispose()
        {
            // Cleanup when everything is done.
        }

        /// <summary>
        /// Test an instance of PoiApi
        /// </summary>
        [Fact]
        public void InstanceTest()
        {
            // TODO uncomment below to test 'IsType' PoiApi
            //Assert.IsType<PoiApi>(instance);
        }

        /// <summary>
        /// Test ChainsChainIdDappsCowPoiHistoricalGet
        /// </summary>
        [Fact]
        public void ChainsChainIdDappsCowPoiHistoricalGetTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string chainId = null;
            //long? startBlock = null;
            //long? endBlock = null;
            //DateTime? startDate = null;
            //DateTime? endDate = null;
            //instance.ChainsChainIdDappsCowPoiHistoricalGet(chainId, startBlock, endBlock, startDate, endDate);
        }

        /// <summary>
        /// Test ChainsChainIdDappsSushiswapPoiHistoricalGet
        /// </summary>
        [Fact]
        public void ChainsChainIdDappsSushiswapPoiHistoricalGetTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string chainId = null;
            //long? startBlock = null;
            //long? endBlock = null;
            //DateTime? startDate = null;
            //DateTime? endDate = null;
            //instance.ChainsChainIdDappsSushiswapPoiHistoricalGet(chainId, startBlock, endBlock, startDate, endDate);
        }

        /// <summary>
        /// Test ChainsChainIdDappsUniswapv2PoiHistoricalGet
        /// </summary>
        [Fact]
        public void ChainsChainIdDappsUniswapv2PoiHistoricalGetTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string chainId = null;
            //long? startBlock = null;
            //long? endBlock = null;
            //DateTime? startDate = null;
            //DateTime? endDate = null;
            //instance.ChainsChainIdDappsUniswapv2PoiHistoricalGet(chainId, startBlock, endBlock, startDate, endDate);
        }

        /// <summary>
        /// Test ChainsChainIdDappsUniswapv3PoiHistoricalGet
        /// </summary>
        [Fact]
        public void ChainsChainIdDappsUniswapv3PoiHistoricalGetTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string chainId = null;
            //long? startBlock = null;
            //long? endBlock = null;
            //DateTime? startDate = null;
            //DateTime? endDate = null;
            //instance.ChainsChainIdDappsUniswapv3PoiHistoricalGet(chainId, startBlock, endBlock, startDate, endDate);
        }
    }
}
