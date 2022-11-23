/*
 * On Chain - REST API
 *  This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                             
 *
 * The version of the OpenAPI document: v1
 * Contact: support@coinapi.io
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package org.openapitools.client.api;

import org.openapitools.client.ApiException;
import org.openapitools.client.model.DexBatchDTO;
import org.openapitools.client.model.DexDepositDTO;
import org.openapitools.client.model.DexOrderDTO;
import org.openapitools.client.model.DexPriceDTO;
import org.openapitools.client.model.DexSolutionDTO;
import org.openapitools.client.model.DexStatsDTO;
import org.openapitools.client.model.DexTokenDTO;
import org.openapitools.client.model.DexTradeDTO;
import org.openapitools.client.model.DexUserDTO;
import org.openapitools.client.model.DexWithdrawDTO;
import org.openapitools.client.model.DexWithdrawRequestDTO;
import java.time.OffsetDateTime;
import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.Test;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * API tests for DexApi
 */
@Disabled
public class DexApiTest {

    private final DexApi api = new DexApi();

    /**
     * Batches (current)
     *
     * Gets batches.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void dexBatchesCurrentTest() throws ApiException {
        List<DexBatchDTO> response = api.dexBatchesCurrent();
        // TODO: test validations
    }

    /**
     * Deposits (current)
     *
     * Gets deposits.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void dexDepositsCurrentTest() throws ApiException {
        List<DexDepositDTO> response = api.dexDepositsCurrent();
        // TODO: test validations
    }

    /**
     * Batches (historical)
     *
     * Gets batches.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void dexGetBatchesHistoricalTest() throws ApiException {
        Long startBlock = null;
        Long endBlock = null;
        OffsetDateTime startDate = null;
        OffsetDateTime endDate = null;
        String id = null;
        List<DexBatchDTO> response = api.dexGetBatchesHistorical(startBlock, endBlock, startDate, endDate, id);
        // TODO: test validations
    }

    /**
     * Deposits (historical)
     *
     * Gets deposits.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void dexGetDepositsHistoricalTest() throws ApiException {
        Long startBlock = null;
        Long endBlock = null;
        OffsetDateTime startDate = null;
        OffsetDateTime endDate = null;
        String id = null;
        String user = null;
        List<DexDepositDTO> response = api.dexGetDepositsHistorical(startBlock, endBlock, startDate, endDate, id, user);
        // TODO: test validations
    }

    /**
     * Orders (historical)
     *
     * Gets orders.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void dexGetOrdersHistoricalTest() throws ApiException {
        Long startBlock = null;
        Long endBlock = null;
        OffsetDateTime startDate = null;
        OffsetDateTime endDate = null;
        String id = null;
        String buyToken = null;
        String sellToken = null;
        List<DexOrderDTO> response = api.dexGetOrdersHistorical(startBlock, endBlock, startDate, endDate, id, buyToken, sellToken);
        // TODO: test validations
    }

    /**
     * Prices (historical)
     *
     * Gets prices.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void dexGetPricesHistoricalTest() throws ApiException {
        Long startBlock = null;
        Long endBlock = null;
        OffsetDateTime startDate = null;
        OffsetDateTime endDate = null;
        String id = null;
        List<DexPriceDTO> response = api.dexGetPricesHistorical(startBlock, endBlock, startDate, endDate, id);
        // TODO: test validations
    }

    /**
     * Solutions (historical)
     *
     * Gets solutions.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void dexGetSolutionsHistoricalTest() throws ApiException {
        Long startBlock = null;
        Long endBlock = null;
        OffsetDateTime startDate = null;
        OffsetDateTime endDate = null;
        String id = null;
        List<DexSolutionDTO> response = api.dexGetSolutionsHistorical(startBlock, endBlock, startDate, endDate, id);
        // TODO: test validations
    }

    /**
     * Stats (historical)
     *
     * Gets stats.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void dexGetStatsHistoricalTest() throws ApiException {
        Long startBlock = null;
        Long endBlock = null;
        OffsetDateTime startDate = null;
        OffsetDateTime endDate = null;
        String id = null;
        List<DexStatsDTO> response = api.dexGetStatsHistorical(startBlock, endBlock, startDate, endDate, id);
        // TODO: test validations
    }

    /**
     * Tokens (historical)
     *
     * Gets tokens.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void dexGetTokensHistoricalTest() throws ApiException {
        Long startBlock = null;
        Long endBlock = null;
        OffsetDateTime startDate = null;
        OffsetDateTime endDate = null;
        String id = null;
        String address = null;
        String symbol = null;
        String name = null;
        List<DexTokenDTO> response = api.dexGetTokensHistorical(startBlock, endBlock, startDate, endDate, id, address, symbol, name);
        // TODO: test validations
    }

    /**
     * Trades (historical)
     *
     * Gets trades.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void dexGetTradesHistoricalTest() throws ApiException {
        Long startBlock = null;
        Long endBlock = null;
        OffsetDateTime startDate = null;
        OffsetDateTime endDate = null;
        String id = null;
        String buyToken = null;
        String sellToken = null;
        List<DexTradeDTO> response = api.dexGetTradesHistorical(startBlock, endBlock, startDate, endDate, id, buyToken, sellToken);
        // TODO: test validations
    }

    /**
     * Users (historical)
     *
     * Gets users.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void dexGetUsersHistoricalTest() throws ApiException {
        Long startBlock = null;
        Long endBlock = null;
        OffsetDateTime startDate = null;
        OffsetDateTime endDate = null;
        String id = null;
        List<DexUserDTO> response = api.dexGetUsersHistorical(startBlock, endBlock, startDate, endDate, id);
        // TODO: test validations
    }

    /**
     * WithdrawRequests (historical)
     *
     * Gets withdrawRequests.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void dexGetWithdrawRequestsHistoricalTest() throws ApiException {
        Long startBlock = null;
        Long endBlock = null;
        OffsetDateTime startDate = null;
        OffsetDateTime endDate = null;
        String id = null;
        String user = null;
        List<DexWithdrawRequestDTO> response = api.dexGetWithdrawRequestsHistorical(startBlock, endBlock, startDate, endDate, id, user);
        // TODO: test validations
    }

    /**
     * Withdraws (historical)
     *
     * Gets withdraws.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void dexGetWithdrawsHistoricalTest() throws ApiException {
        Long startBlock = null;
        Long endBlock = null;
        OffsetDateTime startDate = null;
        OffsetDateTime endDate = null;
        String id = null;
        String user = null;
        List<DexWithdrawDTO> response = api.dexGetWithdrawsHistorical(startBlock, endBlock, startDate, endDate, id, user);
        // TODO: test validations
    }

    /**
     * Orders (current)
     *
     * Gets orders.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void dexOrdersCurrentTest() throws ApiException {
        List<DexOrderDTO> response = api.dexOrdersCurrent();
        // TODO: test validations
    }

    /**
     * Prices (current)
     *
     * Gets prices.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void dexPricesCurrentTest() throws ApiException {
        List<DexPriceDTO> response = api.dexPricesCurrent();
        // TODO: test validations
    }

    /**
     * Solutions (current)
     *
     * Gets solutions.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void dexSolutionsCurrentTest() throws ApiException {
        List<DexSolutionDTO> response = api.dexSolutionsCurrent();
        // TODO: test validations
    }

    /**
     * Stats (current)
     *
     * Gets stats.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void dexStatsCurrentTest() throws ApiException {
        List<DexStatsDTO> response = api.dexStatsCurrent();
        // TODO: test validations
    }

    /**
     * Tokens (current)
     *
     * Gets tokens.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void dexTokensCurrentTest() throws ApiException {
        List<DexTokenDTO> response = api.dexTokensCurrent();
        // TODO: test validations
    }

    /**
     * Trades (current)
     *
     * Gets trades.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void dexTradesCurrentTest() throws ApiException {
        List<DexTradeDTO> response = api.dexTradesCurrent();
        // TODO: test validations
    }

    /**
     * Users (current)
     *
     * Gets users.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void dexUsersCurrentTest() throws ApiException {
        List<DexUserDTO> response = api.dexUsersCurrent();
        // TODO: test validations
    }

    /**
     * WithdrawRequests (current)
     *
     * Gets withdrawRequests.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void dexWithdrawRequestsCurrentTest() throws ApiException {
        List<DexWithdrawRequestDTO> response = api.dexWithdrawRequestsCurrent();
        // TODO: test validations
    }

    /**
     * Withdraws (current)
     *
     * Gets withdraws.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void dexWithdrawsCurrentTest() throws ApiException {
        List<DexWithdrawDTO> response = api.dexWithdrawsCurrent();
        // TODO: test validations
    }

}
