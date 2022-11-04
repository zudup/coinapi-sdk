@isTest
private class OASUniswapV3TickV3DTOTest {
    @isTest
    private static void equalsSameInstance() {
        OASUniswapV3TickV3DTO uniswapV3TickV3DTO1 = OASUniswapV3TickV3DTO.getExample();
        OASUniswapV3TickV3DTO uniswapV3TickV3DTO2 = uniswapV3TickV3DTO1;
        OASUniswapV3TickV3DTO uniswapV3TickV3DTO3 = new OASUniswapV3TickV3DTO();
        OASUniswapV3TickV3DTO uniswapV3TickV3DTO4 = uniswapV3TickV3DTO3;

        System.assert(uniswapV3TickV3DTO1.equals(uniswapV3TickV3DTO2));
        System.assert(uniswapV3TickV3DTO2.equals(uniswapV3TickV3DTO1));
        System.assert(uniswapV3TickV3DTO1.equals(uniswapV3TickV3DTO1));
        System.assert(uniswapV3TickV3DTO3.equals(uniswapV3TickV3DTO4));
        System.assert(uniswapV3TickV3DTO4.equals(uniswapV3TickV3DTO3));
        System.assert(uniswapV3TickV3DTO3.equals(uniswapV3TickV3DTO3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASUniswapV3TickV3DTO uniswapV3TickV3DTO1 = OASUniswapV3TickV3DTO.getExample();
        OASUniswapV3TickV3DTO uniswapV3TickV3DTO2 = OASUniswapV3TickV3DTO.getExample();
        OASUniswapV3TickV3DTO uniswapV3TickV3DTO3 = new OASUniswapV3TickV3DTO();
        OASUniswapV3TickV3DTO uniswapV3TickV3DTO4 = new OASUniswapV3TickV3DTO();

        System.assert(uniswapV3TickV3DTO1.equals(uniswapV3TickV3DTO2));
        System.assert(uniswapV3TickV3DTO2.equals(uniswapV3TickV3DTO1));
        System.assert(uniswapV3TickV3DTO3.equals(uniswapV3TickV3DTO4));
        System.assert(uniswapV3TickV3DTO4.equals(uniswapV3TickV3DTO3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASUniswapV3TickV3DTO uniswapV3TickV3DTO1 = OASUniswapV3TickV3DTO.getExample();
        OASUniswapV3TickV3DTO uniswapV3TickV3DTO2 = new OASUniswapV3TickV3DTO();

        System.assertEquals(false, uniswapV3TickV3DTO1.equals('foo'));
        System.assertEquals(false, uniswapV3TickV3DTO2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASUniswapV3TickV3DTO uniswapV3TickV3DTO1 = OASUniswapV3TickV3DTO.getExample();
        OASUniswapV3TickV3DTO uniswapV3TickV3DTO2 = new OASUniswapV3TickV3DTO();
        OASUniswapV3TickV3DTO uniswapV3TickV3DTO3;

        System.assertEquals(false, uniswapV3TickV3DTO1.equals(uniswapV3TickV3DTO3));
        System.assertEquals(false, uniswapV3TickV3DTO2.equals(uniswapV3TickV3DTO3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASUniswapV3TickV3DTO uniswapV3TickV3DTO1 = OASUniswapV3TickV3DTO.getExample();
        OASUniswapV3TickV3DTO uniswapV3TickV3DTO2 = new OASUniswapV3TickV3DTO();

        System.assertEquals(uniswapV3TickV3DTO1.hashCode(), uniswapV3TickV3DTO1.hashCode());
        System.assertEquals(uniswapV3TickV3DTO2.hashCode(), uniswapV3TickV3DTO2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASUniswapV3TickV3DTO uniswapV3TickV3DTO1 = OASUniswapV3TickV3DTO.getExample();
        OASUniswapV3TickV3DTO uniswapV3TickV3DTO2 = OASUniswapV3TickV3DTO.getExample();
        OASUniswapV3TickV3DTO uniswapV3TickV3DTO3 = new OASUniswapV3TickV3DTO();
        OASUniswapV3TickV3DTO uniswapV3TickV3DTO4 = new OASUniswapV3TickV3DTO();

        System.assert(uniswapV3TickV3DTO1.equals(uniswapV3TickV3DTO2));
        System.assert(uniswapV3TickV3DTO3.equals(uniswapV3TickV3DTO4));
        System.assertEquals(uniswapV3TickV3DTO1.hashCode(), uniswapV3TickV3DTO2.hashCode());
        System.assertEquals(uniswapV3TickV3DTO3.hashCode(), uniswapV3TickV3DTO4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASUniswapV3TickV3DTO uniswapV3TickV3DTO = new OASUniswapV3TickV3DTO();
        Map<String, String> x-property-mappings = uniswapV3TickV3DTO.getx-property-mappings();
        System.assertEquals('entryTime', x-property-mappings.get('entry_time'));
        System.assertEquals('recvTime', x-property-mappings.get('recv_time'));
        System.assertEquals('blockNumber', x-property-mappings.get('block_number'));
        System.assertEquals('poolAddress', x-property-mappings.get('pool_address'));
        System.assertEquals('tickIdx', x-property-mappings.get('tick_idx'));
        System.assertEquals('liquidityGross', x-property-mappings.get('liquidity_gross'));
        System.assertEquals('liquidityNet', x-property-mappings.get('liquidity_net'));
        System.assertEquals('price0', x-property-mappings.get('price_0'));
        System.assertEquals('price1', x-property-mappings.get('price_1'));
        System.assertEquals('volumeToken0', x-property-mappings.get('volume_token_0'));
        System.assertEquals('volumeToken1', x-property-mappings.get('volume_token_1'));
        System.assertEquals('volumeUsd', x-property-mappings.get('volume_usd'));
        System.assertEquals('untrackedVolumeUsd', x-property-mappings.get('untracked_volume_usd'));
        System.assertEquals('feesUsd', x-property-mappings.get('fees_usd'));
        System.assertEquals('collectedFeesToken0', x-property-mappings.get('collected_fees_token_0'));
        System.assertEquals('collectedFeesToken1', x-property-mappings.get('collected_fees_token_1'));
        System.assertEquals('collectedFeesUsd', x-property-mappings.get('collected_fees_usd'));
        System.assertEquals('createdAtTimestamp', x-property-mappings.get('created_at_timestamp'));
        System.assertEquals('liquidityProviderCount', x-property-mappings.get('liquidity_provider_count'));
        System.assertEquals('feeGrowthOutside0x128', x-property-mappings.get('fee_growth_outside_0x128'));
        System.assertEquals('feeGrowthOutside1x128', x-property-mappings.get('fee_growth_outside_1x128'));
    }
}
