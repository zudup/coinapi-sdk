@isTest
private class OASUniswapV3PositionV3DTOTest {
    @isTest
    private static void equalsSameInstance() {
        OASUniswapV3PositionV3DTO uniswapV3PositionV3DTO1 = OASUniswapV3PositionV3DTO.getExample();
        OASUniswapV3PositionV3DTO uniswapV3PositionV3DTO2 = uniswapV3PositionV3DTO1;
        OASUniswapV3PositionV3DTO uniswapV3PositionV3DTO3 = new OASUniswapV3PositionV3DTO();
        OASUniswapV3PositionV3DTO uniswapV3PositionV3DTO4 = uniswapV3PositionV3DTO3;

        System.assert(uniswapV3PositionV3DTO1.equals(uniswapV3PositionV3DTO2));
        System.assert(uniswapV3PositionV3DTO2.equals(uniswapV3PositionV3DTO1));
        System.assert(uniswapV3PositionV3DTO1.equals(uniswapV3PositionV3DTO1));
        System.assert(uniswapV3PositionV3DTO3.equals(uniswapV3PositionV3DTO4));
        System.assert(uniswapV3PositionV3DTO4.equals(uniswapV3PositionV3DTO3));
        System.assert(uniswapV3PositionV3DTO3.equals(uniswapV3PositionV3DTO3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASUniswapV3PositionV3DTO uniswapV3PositionV3DTO1 = OASUniswapV3PositionV3DTO.getExample();
        OASUniswapV3PositionV3DTO uniswapV3PositionV3DTO2 = OASUniswapV3PositionV3DTO.getExample();
        OASUniswapV3PositionV3DTO uniswapV3PositionV3DTO3 = new OASUniswapV3PositionV3DTO();
        OASUniswapV3PositionV3DTO uniswapV3PositionV3DTO4 = new OASUniswapV3PositionV3DTO();

        System.assert(uniswapV3PositionV3DTO1.equals(uniswapV3PositionV3DTO2));
        System.assert(uniswapV3PositionV3DTO2.equals(uniswapV3PositionV3DTO1));
        System.assert(uniswapV3PositionV3DTO3.equals(uniswapV3PositionV3DTO4));
        System.assert(uniswapV3PositionV3DTO4.equals(uniswapV3PositionV3DTO3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASUniswapV3PositionV3DTO uniswapV3PositionV3DTO1 = OASUniswapV3PositionV3DTO.getExample();
        OASUniswapV3PositionV3DTO uniswapV3PositionV3DTO2 = new OASUniswapV3PositionV3DTO();

        System.assertEquals(false, uniswapV3PositionV3DTO1.equals('foo'));
        System.assertEquals(false, uniswapV3PositionV3DTO2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASUniswapV3PositionV3DTO uniswapV3PositionV3DTO1 = OASUniswapV3PositionV3DTO.getExample();
        OASUniswapV3PositionV3DTO uniswapV3PositionV3DTO2 = new OASUniswapV3PositionV3DTO();
        OASUniswapV3PositionV3DTO uniswapV3PositionV3DTO3;

        System.assertEquals(false, uniswapV3PositionV3DTO1.equals(uniswapV3PositionV3DTO3));
        System.assertEquals(false, uniswapV3PositionV3DTO2.equals(uniswapV3PositionV3DTO3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASUniswapV3PositionV3DTO uniswapV3PositionV3DTO1 = OASUniswapV3PositionV3DTO.getExample();
        OASUniswapV3PositionV3DTO uniswapV3PositionV3DTO2 = new OASUniswapV3PositionV3DTO();

        System.assertEquals(uniswapV3PositionV3DTO1.hashCode(), uniswapV3PositionV3DTO1.hashCode());
        System.assertEquals(uniswapV3PositionV3DTO2.hashCode(), uniswapV3PositionV3DTO2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASUniswapV3PositionV3DTO uniswapV3PositionV3DTO1 = OASUniswapV3PositionV3DTO.getExample();
        OASUniswapV3PositionV3DTO uniswapV3PositionV3DTO2 = OASUniswapV3PositionV3DTO.getExample();
        OASUniswapV3PositionV3DTO uniswapV3PositionV3DTO3 = new OASUniswapV3PositionV3DTO();
        OASUniswapV3PositionV3DTO uniswapV3PositionV3DTO4 = new OASUniswapV3PositionV3DTO();

        System.assert(uniswapV3PositionV3DTO1.equals(uniswapV3PositionV3DTO2));
        System.assert(uniswapV3PositionV3DTO3.equals(uniswapV3PositionV3DTO4));
        System.assertEquals(uniswapV3PositionV3DTO1.hashCode(), uniswapV3PositionV3DTO2.hashCode());
        System.assertEquals(uniswapV3PositionV3DTO3.hashCode(), uniswapV3PositionV3DTO4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASUniswapV3PositionV3DTO uniswapV3PositionV3DTO = new OASUniswapV3PositionV3DTO();
        Map<String, String> x-property-mappings = uniswapV3PositionV3DTO.getx-property-mappings();
        System.assertEquals('entryTime', x-property-mappings.get('entry_time'));
        System.assertEquals('recvTime', x-property-mappings.get('recv_time'));
        System.assertEquals('blockNumber', x-property-mappings.get('block_number'));
        System.assertEquals('token0', x-property-mappings.get('token_0'));
        System.assertEquals('token1', x-property-mappings.get('token_1'));
        System.assertEquals('tickLower', x-property-mappings.get('tick_lower'));
        System.assertEquals('tickUpper', x-property-mappings.get('tick_upper'));
        System.assertEquals('depositedToken0', x-property-mappings.get('deposited_token_0'));
        System.assertEquals('depositedToken1', x-property-mappings.get('deposited_token_1'));
        System.assertEquals('withdrawnToken0', x-property-mappings.get('withdrawn_token_0'));
        System.assertEquals('withdrawnToken1', x-property-mappings.get('withdrawn_token_1'));
        System.assertEquals('collectedFeesToken0', x-property-mappings.get('collected_fees_token_0'));
        System.assertEquals('collectedFeesToken1', x-property-mappings.get('collected_fees_token_1'));
        System.assertEquals('r_transaction', x-property-mappings.get('transaction'));
        System.assertEquals('feeGrowthInside0LastX128', x-property-mappings.get('fee_growth_inside_0_last_x128'));
        System.assertEquals('feeGrowthInside1LastX128', x-property-mappings.get('fee_growth_inside_1_last_x128'));
    }
}
