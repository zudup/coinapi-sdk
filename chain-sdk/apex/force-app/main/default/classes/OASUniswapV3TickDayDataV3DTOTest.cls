@isTest
private class OASUniswapV3TickDayDataV3DTOTest {
    @isTest
    private static void equalsSameInstance() {
        OASUniswapV3TickDayDataV3DTO uniswapV3TickDayDataV3DTO1 = OASUniswapV3TickDayDataV3DTO.getExample();
        OASUniswapV3TickDayDataV3DTO uniswapV3TickDayDataV3DTO2 = uniswapV3TickDayDataV3DTO1;
        OASUniswapV3TickDayDataV3DTO uniswapV3TickDayDataV3DTO3 = new OASUniswapV3TickDayDataV3DTO();
        OASUniswapV3TickDayDataV3DTO uniswapV3TickDayDataV3DTO4 = uniswapV3TickDayDataV3DTO3;

        System.assert(uniswapV3TickDayDataV3DTO1.equals(uniswapV3TickDayDataV3DTO2));
        System.assert(uniswapV3TickDayDataV3DTO2.equals(uniswapV3TickDayDataV3DTO1));
        System.assert(uniswapV3TickDayDataV3DTO1.equals(uniswapV3TickDayDataV3DTO1));
        System.assert(uniswapV3TickDayDataV3DTO3.equals(uniswapV3TickDayDataV3DTO4));
        System.assert(uniswapV3TickDayDataV3DTO4.equals(uniswapV3TickDayDataV3DTO3));
        System.assert(uniswapV3TickDayDataV3DTO3.equals(uniswapV3TickDayDataV3DTO3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASUniswapV3TickDayDataV3DTO uniswapV3TickDayDataV3DTO1 = OASUniswapV3TickDayDataV3DTO.getExample();
        OASUniswapV3TickDayDataV3DTO uniswapV3TickDayDataV3DTO2 = OASUniswapV3TickDayDataV3DTO.getExample();
        OASUniswapV3TickDayDataV3DTO uniswapV3TickDayDataV3DTO3 = new OASUniswapV3TickDayDataV3DTO();
        OASUniswapV3TickDayDataV3DTO uniswapV3TickDayDataV3DTO4 = new OASUniswapV3TickDayDataV3DTO();

        System.assert(uniswapV3TickDayDataV3DTO1.equals(uniswapV3TickDayDataV3DTO2));
        System.assert(uniswapV3TickDayDataV3DTO2.equals(uniswapV3TickDayDataV3DTO1));
        System.assert(uniswapV3TickDayDataV3DTO3.equals(uniswapV3TickDayDataV3DTO4));
        System.assert(uniswapV3TickDayDataV3DTO4.equals(uniswapV3TickDayDataV3DTO3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASUniswapV3TickDayDataV3DTO uniswapV3TickDayDataV3DTO1 = OASUniswapV3TickDayDataV3DTO.getExample();
        OASUniswapV3TickDayDataV3DTO uniswapV3TickDayDataV3DTO2 = new OASUniswapV3TickDayDataV3DTO();

        System.assertEquals(false, uniswapV3TickDayDataV3DTO1.equals('foo'));
        System.assertEquals(false, uniswapV3TickDayDataV3DTO2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASUniswapV3TickDayDataV3DTO uniswapV3TickDayDataV3DTO1 = OASUniswapV3TickDayDataV3DTO.getExample();
        OASUniswapV3TickDayDataV3DTO uniswapV3TickDayDataV3DTO2 = new OASUniswapV3TickDayDataV3DTO();
        OASUniswapV3TickDayDataV3DTO uniswapV3TickDayDataV3DTO3;

        System.assertEquals(false, uniswapV3TickDayDataV3DTO1.equals(uniswapV3TickDayDataV3DTO3));
        System.assertEquals(false, uniswapV3TickDayDataV3DTO2.equals(uniswapV3TickDayDataV3DTO3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASUniswapV3TickDayDataV3DTO uniswapV3TickDayDataV3DTO1 = OASUniswapV3TickDayDataV3DTO.getExample();
        OASUniswapV3TickDayDataV3DTO uniswapV3TickDayDataV3DTO2 = new OASUniswapV3TickDayDataV3DTO();

        System.assertEquals(uniswapV3TickDayDataV3DTO1.hashCode(), uniswapV3TickDayDataV3DTO1.hashCode());
        System.assertEquals(uniswapV3TickDayDataV3DTO2.hashCode(), uniswapV3TickDayDataV3DTO2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASUniswapV3TickDayDataV3DTO uniswapV3TickDayDataV3DTO1 = OASUniswapV3TickDayDataV3DTO.getExample();
        OASUniswapV3TickDayDataV3DTO uniswapV3TickDayDataV3DTO2 = OASUniswapV3TickDayDataV3DTO.getExample();
        OASUniswapV3TickDayDataV3DTO uniswapV3TickDayDataV3DTO3 = new OASUniswapV3TickDayDataV3DTO();
        OASUniswapV3TickDayDataV3DTO uniswapV3TickDayDataV3DTO4 = new OASUniswapV3TickDayDataV3DTO();

        System.assert(uniswapV3TickDayDataV3DTO1.equals(uniswapV3TickDayDataV3DTO2));
        System.assert(uniswapV3TickDayDataV3DTO3.equals(uniswapV3TickDayDataV3DTO4));
        System.assertEquals(uniswapV3TickDayDataV3DTO1.hashCode(), uniswapV3TickDayDataV3DTO2.hashCode());
        System.assertEquals(uniswapV3TickDayDataV3DTO3.hashCode(), uniswapV3TickDayDataV3DTO4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASUniswapV3TickDayDataV3DTO uniswapV3TickDayDataV3DTO = new OASUniswapV3TickDayDataV3DTO();
        Map<String, String> x-property-mappings = uniswapV3TickDayDataV3DTO.getx-property-mappings();
        System.assertEquals('entryTime', x-property-mappings.get('entry_time'));
        System.assertEquals('recvTime', x-property-mappings.get('recv_time'));
        System.assertEquals('blockNumber', x-property-mappings.get('block_number'));
        System.assertEquals('r_date', x-property-mappings.get('date'));
        System.assertEquals('liquidityGross', x-property-mappings.get('liquidity_gross'));
        System.assertEquals('liquidityNet', x-property-mappings.get('liquidity_net'));
        System.assertEquals('volumeToken0', x-property-mappings.get('volume_token_0'));
        System.assertEquals('volumeToken1', x-property-mappings.get('volume_token_1'));
        System.assertEquals('volumeUsd', x-property-mappings.get('volume_usd'));
        System.assertEquals('feesUsd', x-property-mappings.get('fees_usd'));
        System.assertEquals('feeGrowthOutside0x128', x-property-mappings.get('fee_growth_outside_0x128'));
        System.assertEquals('feeGrowthOutside1x128', x-property-mappings.get('fee_growth_outside_1x128'));
    }
}
