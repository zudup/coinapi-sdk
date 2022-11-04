@isTest
private class OASUniswapV3PoolV3DTOTest {
    @isTest
    private static void equalsSameInstance() {
        OASUniswapV3PoolV3DTO uniswapV3PoolV3DTO1 = OASUniswapV3PoolV3DTO.getExample();
        OASUniswapV3PoolV3DTO uniswapV3PoolV3DTO2 = uniswapV3PoolV3DTO1;
        OASUniswapV3PoolV3DTO uniswapV3PoolV3DTO3 = new OASUniswapV3PoolV3DTO();
        OASUniswapV3PoolV3DTO uniswapV3PoolV3DTO4 = uniswapV3PoolV3DTO3;

        System.assert(uniswapV3PoolV3DTO1.equals(uniswapV3PoolV3DTO2));
        System.assert(uniswapV3PoolV3DTO2.equals(uniswapV3PoolV3DTO1));
        System.assert(uniswapV3PoolV3DTO1.equals(uniswapV3PoolV3DTO1));
        System.assert(uniswapV3PoolV3DTO3.equals(uniswapV3PoolV3DTO4));
        System.assert(uniswapV3PoolV3DTO4.equals(uniswapV3PoolV3DTO3));
        System.assert(uniswapV3PoolV3DTO3.equals(uniswapV3PoolV3DTO3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASUniswapV3PoolV3DTO uniswapV3PoolV3DTO1 = OASUniswapV3PoolV3DTO.getExample();
        OASUniswapV3PoolV3DTO uniswapV3PoolV3DTO2 = OASUniswapV3PoolV3DTO.getExample();
        OASUniswapV3PoolV3DTO uniswapV3PoolV3DTO3 = new OASUniswapV3PoolV3DTO();
        OASUniswapV3PoolV3DTO uniswapV3PoolV3DTO4 = new OASUniswapV3PoolV3DTO();

        System.assert(uniswapV3PoolV3DTO1.equals(uniswapV3PoolV3DTO2));
        System.assert(uniswapV3PoolV3DTO2.equals(uniswapV3PoolV3DTO1));
        System.assert(uniswapV3PoolV3DTO3.equals(uniswapV3PoolV3DTO4));
        System.assert(uniswapV3PoolV3DTO4.equals(uniswapV3PoolV3DTO3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASUniswapV3PoolV3DTO uniswapV3PoolV3DTO1 = OASUniswapV3PoolV3DTO.getExample();
        OASUniswapV3PoolV3DTO uniswapV3PoolV3DTO2 = new OASUniswapV3PoolV3DTO();

        System.assertEquals(false, uniswapV3PoolV3DTO1.equals('foo'));
        System.assertEquals(false, uniswapV3PoolV3DTO2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASUniswapV3PoolV3DTO uniswapV3PoolV3DTO1 = OASUniswapV3PoolV3DTO.getExample();
        OASUniswapV3PoolV3DTO uniswapV3PoolV3DTO2 = new OASUniswapV3PoolV3DTO();
        OASUniswapV3PoolV3DTO uniswapV3PoolV3DTO3;

        System.assertEquals(false, uniswapV3PoolV3DTO1.equals(uniswapV3PoolV3DTO3));
        System.assertEquals(false, uniswapV3PoolV3DTO2.equals(uniswapV3PoolV3DTO3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASUniswapV3PoolV3DTO uniswapV3PoolV3DTO1 = OASUniswapV3PoolV3DTO.getExample();
        OASUniswapV3PoolV3DTO uniswapV3PoolV3DTO2 = new OASUniswapV3PoolV3DTO();

        System.assertEquals(uniswapV3PoolV3DTO1.hashCode(), uniswapV3PoolV3DTO1.hashCode());
        System.assertEquals(uniswapV3PoolV3DTO2.hashCode(), uniswapV3PoolV3DTO2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASUniswapV3PoolV3DTO uniswapV3PoolV3DTO1 = OASUniswapV3PoolV3DTO.getExample();
        OASUniswapV3PoolV3DTO uniswapV3PoolV3DTO2 = OASUniswapV3PoolV3DTO.getExample();
        OASUniswapV3PoolV3DTO uniswapV3PoolV3DTO3 = new OASUniswapV3PoolV3DTO();
        OASUniswapV3PoolV3DTO uniswapV3PoolV3DTO4 = new OASUniswapV3PoolV3DTO();

        System.assert(uniswapV3PoolV3DTO1.equals(uniswapV3PoolV3DTO2));
        System.assert(uniswapV3PoolV3DTO3.equals(uniswapV3PoolV3DTO4));
        System.assertEquals(uniswapV3PoolV3DTO1.hashCode(), uniswapV3PoolV3DTO2.hashCode());
        System.assertEquals(uniswapV3PoolV3DTO3.hashCode(), uniswapV3PoolV3DTO4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASUniswapV3PoolV3DTO uniswapV3PoolV3DTO = new OASUniswapV3PoolV3DTO();
        Map<String, String> x-property-mappings = uniswapV3PoolV3DTO.getx-property-mappings();
        System.assertEquals('entryTime', x-property-mappings.get('entry_time'));
        System.assertEquals('recvTime', x-property-mappings.get('recv_time'));
        System.assertEquals('blockNumber', x-property-mappings.get('block_number'));
        System.assertEquals('createdAtTimestamp', x-property-mappings.get('created_at_timestamp'));
        System.assertEquals('token0', x-property-mappings.get('token_0'));
        System.assertEquals('token1', x-property-mappings.get('token_1'));
        System.assertEquals('feeTier', x-property-mappings.get('fee_tier'));
        System.assertEquals('sqrtPrice', x-property-mappings.get('sqrt_price'));
        System.assertEquals('feeGrowthGlobal0x128', x-property-mappings.get('fee_growth_global_0x128'));
        System.assertEquals('feeGrowthGlobal1x128', x-property-mappings.get('fee_growth_global_1x128'));
        System.assertEquals('token0Price', x-property-mappings.get('token_0_price'));
        System.assertEquals('token1Price', x-property-mappings.get('token_1_price'));
        System.assertEquals('observationIndex', x-property-mappings.get('observation_index'));
        System.assertEquals('volumeToken0', x-property-mappings.get('volume_token_0'));
        System.assertEquals('volumeToken1', x-property-mappings.get('volume_token_1'));
        System.assertEquals('volumeUsd', x-property-mappings.get('volume_usd'));
        System.assertEquals('untrackedVolumeUsd', x-property-mappings.get('untracked_volume_usd'));
        System.assertEquals('feesUsd', x-property-mappings.get('fees_usd'));
        System.assertEquals('txCount', x-property-mappings.get('tx_count'));
        System.assertEquals('collectedFeesToken0', x-property-mappings.get('collected_fees_token_0'));
        System.assertEquals('collectedFeesToken1', x-property-mappings.get('collected_fees_token_1'));
        System.assertEquals('collectedFeesUsd', x-property-mappings.get('collected_fees_usd'));
        System.assertEquals('totalValueLockedToken0', x-property-mappings.get('total_value_locked_token_0'));
        System.assertEquals('totalValueLockedToken1', x-property-mappings.get('total_value_locked_token_1'));
        System.assertEquals('totalValueLockedEth', x-property-mappings.get('total_value_locked_eth'));
        System.assertEquals('totalValueLockedUsd', x-property-mappings.get('total_value_locked_usd'));
        System.assertEquals('totalValueLockedUsdUntracked', x-property-mappings.get('total_value_locked_usd_untracked'));
        System.assertEquals('liquidityProviderCount', x-property-mappings.get('liquidity_provider_count'));
        System.assertEquals('evaluatedAsk', x-property-mappings.get('evaluated_ask'));
    }
}
