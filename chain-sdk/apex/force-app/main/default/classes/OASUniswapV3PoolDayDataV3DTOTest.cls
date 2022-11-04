@isTest
private class OASUniswapV3PoolDayDataV3DTOTest {
    @isTest
    private static void equalsSameInstance() {
        OASUniswapV3PoolDayDataV3DTO uniswapV3PoolDayDataV3DTO1 = OASUniswapV3PoolDayDataV3DTO.getExample();
        OASUniswapV3PoolDayDataV3DTO uniswapV3PoolDayDataV3DTO2 = uniswapV3PoolDayDataV3DTO1;
        OASUniswapV3PoolDayDataV3DTO uniswapV3PoolDayDataV3DTO3 = new OASUniswapV3PoolDayDataV3DTO();
        OASUniswapV3PoolDayDataV3DTO uniswapV3PoolDayDataV3DTO4 = uniswapV3PoolDayDataV3DTO3;

        System.assert(uniswapV3PoolDayDataV3DTO1.equals(uniswapV3PoolDayDataV3DTO2));
        System.assert(uniswapV3PoolDayDataV3DTO2.equals(uniswapV3PoolDayDataV3DTO1));
        System.assert(uniswapV3PoolDayDataV3DTO1.equals(uniswapV3PoolDayDataV3DTO1));
        System.assert(uniswapV3PoolDayDataV3DTO3.equals(uniswapV3PoolDayDataV3DTO4));
        System.assert(uniswapV3PoolDayDataV3DTO4.equals(uniswapV3PoolDayDataV3DTO3));
        System.assert(uniswapV3PoolDayDataV3DTO3.equals(uniswapV3PoolDayDataV3DTO3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASUniswapV3PoolDayDataV3DTO uniswapV3PoolDayDataV3DTO1 = OASUniswapV3PoolDayDataV3DTO.getExample();
        OASUniswapV3PoolDayDataV3DTO uniswapV3PoolDayDataV3DTO2 = OASUniswapV3PoolDayDataV3DTO.getExample();
        OASUniswapV3PoolDayDataV3DTO uniswapV3PoolDayDataV3DTO3 = new OASUniswapV3PoolDayDataV3DTO();
        OASUniswapV3PoolDayDataV3DTO uniswapV3PoolDayDataV3DTO4 = new OASUniswapV3PoolDayDataV3DTO();

        System.assert(uniswapV3PoolDayDataV3DTO1.equals(uniswapV3PoolDayDataV3DTO2));
        System.assert(uniswapV3PoolDayDataV3DTO2.equals(uniswapV3PoolDayDataV3DTO1));
        System.assert(uniswapV3PoolDayDataV3DTO3.equals(uniswapV3PoolDayDataV3DTO4));
        System.assert(uniswapV3PoolDayDataV3DTO4.equals(uniswapV3PoolDayDataV3DTO3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASUniswapV3PoolDayDataV3DTO uniswapV3PoolDayDataV3DTO1 = OASUniswapV3PoolDayDataV3DTO.getExample();
        OASUniswapV3PoolDayDataV3DTO uniswapV3PoolDayDataV3DTO2 = new OASUniswapV3PoolDayDataV3DTO();

        System.assertEquals(false, uniswapV3PoolDayDataV3DTO1.equals('foo'));
        System.assertEquals(false, uniswapV3PoolDayDataV3DTO2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASUniswapV3PoolDayDataV3DTO uniswapV3PoolDayDataV3DTO1 = OASUniswapV3PoolDayDataV3DTO.getExample();
        OASUniswapV3PoolDayDataV3DTO uniswapV3PoolDayDataV3DTO2 = new OASUniswapV3PoolDayDataV3DTO();
        OASUniswapV3PoolDayDataV3DTO uniswapV3PoolDayDataV3DTO3;

        System.assertEquals(false, uniswapV3PoolDayDataV3DTO1.equals(uniswapV3PoolDayDataV3DTO3));
        System.assertEquals(false, uniswapV3PoolDayDataV3DTO2.equals(uniswapV3PoolDayDataV3DTO3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASUniswapV3PoolDayDataV3DTO uniswapV3PoolDayDataV3DTO1 = OASUniswapV3PoolDayDataV3DTO.getExample();
        OASUniswapV3PoolDayDataV3DTO uniswapV3PoolDayDataV3DTO2 = new OASUniswapV3PoolDayDataV3DTO();

        System.assertEquals(uniswapV3PoolDayDataV3DTO1.hashCode(), uniswapV3PoolDayDataV3DTO1.hashCode());
        System.assertEquals(uniswapV3PoolDayDataV3DTO2.hashCode(), uniswapV3PoolDayDataV3DTO2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASUniswapV3PoolDayDataV3DTO uniswapV3PoolDayDataV3DTO1 = OASUniswapV3PoolDayDataV3DTO.getExample();
        OASUniswapV3PoolDayDataV3DTO uniswapV3PoolDayDataV3DTO2 = OASUniswapV3PoolDayDataV3DTO.getExample();
        OASUniswapV3PoolDayDataV3DTO uniswapV3PoolDayDataV3DTO3 = new OASUniswapV3PoolDayDataV3DTO();
        OASUniswapV3PoolDayDataV3DTO uniswapV3PoolDayDataV3DTO4 = new OASUniswapV3PoolDayDataV3DTO();

        System.assert(uniswapV3PoolDayDataV3DTO1.equals(uniswapV3PoolDayDataV3DTO2));
        System.assert(uniswapV3PoolDayDataV3DTO3.equals(uniswapV3PoolDayDataV3DTO4));
        System.assertEquals(uniswapV3PoolDayDataV3DTO1.hashCode(), uniswapV3PoolDayDataV3DTO2.hashCode());
        System.assertEquals(uniswapV3PoolDayDataV3DTO3.hashCode(), uniswapV3PoolDayDataV3DTO4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASUniswapV3PoolDayDataV3DTO uniswapV3PoolDayDataV3DTO = new OASUniswapV3PoolDayDataV3DTO();
        Map<String, String> x-property-mappings = uniswapV3PoolDayDataV3DTO.getx-property-mappings();
        System.assertEquals('entryTime', x-property-mappings.get('entry_time'));
        System.assertEquals('recvTime', x-property-mappings.get('recv_time'));
        System.assertEquals('blockNumber', x-property-mappings.get('block_number'));
        System.assertEquals('r_date', x-property-mappings.get('date'));
        System.assertEquals('sqrtPrice', x-property-mappings.get('sqrt_price'));
        System.assertEquals('token0Price', x-property-mappings.get('token_0_price'));
        System.assertEquals('token1Price', x-property-mappings.get('token_1_price'));
        System.assertEquals('feeGrowthGlobal0x128', x-property-mappings.get('fee_growth_global_0x128'));
        System.assertEquals('feeGrowthGlobal1x128', x-property-mappings.get('fee_growth_global_1x128'));
        System.assertEquals('tvlUsd', x-property-mappings.get('tvl_usd'));
        System.assertEquals('volumeToken0', x-property-mappings.get('volume_token_0'));
        System.assertEquals('volumeToken1', x-property-mappings.get('volume_token_1'));
        System.assertEquals('volumeUsd', x-property-mappings.get('volume_usd'));
        System.assertEquals('feesUsd', x-property-mappings.get('fees_usd'));
        System.assertEquals('txCount', x-property-mappings.get('tx_count'));
    }
}
