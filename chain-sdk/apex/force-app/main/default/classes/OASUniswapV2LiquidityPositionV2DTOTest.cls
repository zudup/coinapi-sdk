@isTest
private class OASUniswapV2LiquidityPositionV2DTOTest {
    @isTest
    private static void equalsSameInstance() {
        OASUniswapV2LiquidityPositionV2DTO uniswapV2LiquidityPositionV2DTO1 = OASUniswapV2LiquidityPositionV2DTO.getExample();
        OASUniswapV2LiquidityPositionV2DTO uniswapV2LiquidityPositionV2DTO2 = uniswapV2LiquidityPositionV2DTO1;
        OASUniswapV2LiquidityPositionV2DTO uniswapV2LiquidityPositionV2DTO3 = new OASUniswapV2LiquidityPositionV2DTO();
        OASUniswapV2LiquidityPositionV2DTO uniswapV2LiquidityPositionV2DTO4 = uniswapV2LiquidityPositionV2DTO3;

        System.assert(uniswapV2LiquidityPositionV2DTO1.equals(uniswapV2LiquidityPositionV2DTO2));
        System.assert(uniswapV2LiquidityPositionV2DTO2.equals(uniswapV2LiquidityPositionV2DTO1));
        System.assert(uniswapV2LiquidityPositionV2DTO1.equals(uniswapV2LiquidityPositionV2DTO1));
        System.assert(uniswapV2LiquidityPositionV2DTO3.equals(uniswapV2LiquidityPositionV2DTO4));
        System.assert(uniswapV2LiquidityPositionV2DTO4.equals(uniswapV2LiquidityPositionV2DTO3));
        System.assert(uniswapV2LiquidityPositionV2DTO3.equals(uniswapV2LiquidityPositionV2DTO3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASUniswapV2LiquidityPositionV2DTO uniswapV2LiquidityPositionV2DTO1 = OASUniswapV2LiquidityPositionV2DTO.getExample();
        OASUniswapV2LiquidityPositionV2DTO uniswapV2LiquidityPositionV2DTO2 = OASUniswapV2LiquidityPositionV2DTO.getExample();
        OASUniswapV2LiquidityPositionV2DTO uniswapV2LiquidityPositionV2DTO3 = new OASUniswapV2LiquidityPositionV2DTO();
        OASUniswapV2LiquidityPositionV2DTO uniswapV2LiquidityPositionV2DTO4 = new OASUniswapV2LiquidityPositionV2DTO();

        System.assert(uniswapV2LiquidityPositionV2DTO1.equals(uniswapV2LiquidityPositionV2DTO2));
        System.assert(uniswapV2LiquidityPositionV2DTO2.equals(uniswapV2LiquidityPositionV2DTO1));
        System.assert(uniswapV2LiquidityPositionV2DTO3.equals(uniswapV2LiquidityPositionV2DTO4));
        System.assert(uniswapV2LiquidityPositionV2DTO4.equals(uniswapV2LiquidityPositionV2DTO3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASUniswapV2LiquidityPositionV2DTO uniswapV2LiquidityPositionV2DTO1 = OASUniswapV2LiquidityPositionV2DTO.getExample();
        OASUniswapV2LiquidityPositionV2DTO uniswapV2LiquidityPositionV2DTO2 = new OASUniswapV2LiquidityPositionV2DTO();

        System.assertEquals(false, uniswapV2LiquidityPositionV2DTO1.equals('foo'));
        System.assertEquals(false, uniswapV2LiquidityPositionV2DTO2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASUniswapV2LiquidityPositionV2DTO uniswapV2LiquidityPositionV2DTO1 = OASUniswapV2LiquidityPositionV2DTO.getExample();
        OASUniswapV2LiquidityPositionV2DTO uniswapV2LiquidityPositionV2DTO2 = new OASUniswapV2LiquidityPositionV2DTO();
        OASUniswapV2LiquidityPositionV2DTO uniswapV2LiquidityPositionV2DTO3;

        System.assertEquals(false, uniswapV2LiquidityPositionV2DTO1.equals(uniswapV2LiquidityPositionV2DTO3));
        System.assertEquals(false, uniswapV2LiquidityPositionV2DTO2.equals(uniswapV2LiquidityPositionV2DTO3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASUniswapV2LiquidityPositionV2DTO uniswapV2LiquidityPositionV2DTO1 = OASUniswapV2LiquidityPositionV2DTO.getExample();
        OASUniswapV2LiquidityPositionV2DTO uniswapV2LiquidityPositionV2DTO2 = new OASUniswapV2LiquidityPositionV2DTO();

        System.assertEquals(uniswapV2LiquidityPositionV2DTO1.hashCode(), uniswapV2LiquidityPositionV2DTO1.hashCode());
        System.assertEquals(uniswapV2LiquidityPositionV2DTO2.hashCode(), uniswapV2LiquidityPositionV2DTO2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASUniswapV2LiquidityPositionV2DTO uniswapV2LiquidityPositionV2DTO1 = OASUniswapV2LiquidityPositionV2DTO.getExample();
        OASUniswapV2LiquidityPositionV2DTO uniswapV2LiquidityPositionV2DTO2 = OASUniswapV2LiquidityPositionV2DTO.getExample();
        OASUniswapV2LiquidityPositionV2DTO uniswapV2LiquidityPositionV2DTO3 = new OASUniswapV2LiquidityPositionV2DTO();
        OASUniswapV2LiquidityPositionV2DTO uniswapV2LiquidityPositionV2DTO4 = new OASUniswapV2LiquidityPositionV2DTO();

        System.assert(uniswapV2LiquidityPositionV2DTO1.equals(uniswapV2LiquidityPositionV2DTO2));
        System.assert(uniswapV2LiquidityPositionV2DTO3.equals(uniswapV2LiquidityPositionV2DTO4));
        System.assertEquals(uniswapV2LiquidityPositionV2DTO1.hashCode(), uniswapV2LiquidityPositionV2DTO2.hashCode());
        System.assertEquals(uniswapV2LiquidityPositionV2DTO3.hashCode(), uniswapV2LiquidityPositionV2DTO4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASUniswapV2LiquidityPositionV2DTO uniswapV2LiquidityPositionV2DTO = new OASUniswapV2LiquidityPositionV2DTO();
        Map<String, String> x-property-mappings = uniswapV2LiquidityPositionV2DTO.getx-property-mappings();
        System.assertEquals('entryTime', x-property-mappings.get('entry_time'));
        System.assertEquals('recvTime', x-property-mappings.get('recv_time'));
        System.assertEquals('blockNumber', x-property-mappings.get('block_number'));
        System.assertEquals('liquidityTokenBalance', x-property-mappings.get('liquidity_token_balance'));
    }
}
