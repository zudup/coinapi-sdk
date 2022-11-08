@isTest
private class OASUniswapV2BurnV2DTOTest {
    @isTest
    private static void equalsSameInstance() {
        OASUniswapV2BurnV2DTO uniswapV2BurnV2DTO1 = OASUniswapV2BurnV2DTO.getExample();
        OASUniswapV2BurnV2DTO uniswapV2BurnV2DTO2 = uniswapV2BurnV2DTO1;
        OASUniswapV2BurnV2DTO uniswapV2BurnV2DTO3 = new OASUniswapV2BurnV2DTO();
        OASUniswapV2BurnV2DTO uniswapV2BurnV2DTO4 = uniswapV2BurnV2DTO3;

        System.assert(uniswapV2BurnV2DTO1.equals(uniswapV2BurnV2DTO2));
        System.assert(uniswapV2BurnV2DTO2.equals(uniswapV2BurnV2DTO1));
        System.assert(uniswapV2BurnV2DTO1.equals(uniswapV2BurnV2DTO1));
        System.assert(uniswapV2BurnV2DTO3.equals(uniswapV2BurnV2DTO4));
        System.assert(uniswapV2BurnV2DTO4.equals(uniswapV2BurnV2DTO3));
        System.assert(uniswapV2BurnV2DTO3.equals(uniswapV2BurnV2DTO3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASUniswapV2BurnV2DTO uniswapV2BurnV2DTO1 = OASUniswapV2BurnV2DTO.getExample();
        OASUniswapV2BurnV2DTO uniswapV2BurnV2DTO2 = OASUniswapV2BurnV2DTO.getExample();
        OASUniswapV2BurnV2DTO uniswapV2BurnV2DTO3 = new OASUniswapV2BurnV2DTO();
        OASUniswapV2BurnV2DTO uniswapV2BurnV2DTO4 = new OASUniswapV2BurnV2DTO();

        System.assert(uniswapV2BurnV2DTO1.equals(uniswapV2BurnV2DTO2));
        System.assert(uniswapV2BurnV2DTO2.equals(uniswapV2BurnV2DTO1));
        System.assert(uniswapV2BurnV2DTO3.equals(uniswapV2BurnV2DTO4));
        System.assert(uniswapV2BurnV2DTO4.equals(uniswapV2BurnV2DTO3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASUniswapV2BurnV2DTO uniswapV2BurnV2DTO1 = OASUniswapV2BurnV2DTO.getExample();
        OASUniswapV2BurnV2DTO uniswapV2BurnV2DTO2 = new OASUniswapV2BurnV2DTO();

        System.assertEquals(false, uniswapV2BurnV2DTO1.equals('foo'));
        System.assertEquals(false, uniswapV2BurnV2DTO2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASUniswapV2BurnV2DTO uniswapV2BurnV2DTO1 = OASUniswapV2BurnV2DTO.getExample();
        OASUniswapV2BurnV2DTO uniswapV2BurnV2DTO2 = new OASUniswapV2BurnV2DTO();
        OASUniswapV2BurnV2DTO uniswapV2BurnV2DTO3;

        System.assertEquals(false, uniswapV2BurnV2DTO1.equals(uniswapV2BurnV2DTO3));
        System.assertEquals(false, uniswapV2BurnV2DTO2.equals(uniswapV2BurnV2DTO3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASUniswapV2BurnV2DTO uniswapV2BurnV2DTO1 = OASUniswapV2BurnV2DTO.getExample();
        OASUniswapV2BurnV2DTO uniswapV2BurnV2DTO2 = new OASUniswapV2BurnV2DTO();

        System.assertEquals(uniswapV2BurnV2DTO1.hashCode(), uniswapV2BurnV2DTO1.hashCode());
        System.assertEquals(uniswapV2BurnV2DTO2.hashCode(), uniswapV2BurnV2DTO2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASUniswapV2BurnV2DTO uniswapV2BurnV2DTO1 = OASUniswapV2BurnV2DTO.getExample();
        OASUniswapV2BurnV2DTO uniswapV2BurnV2DTO2 = OASUniswapV2BurnV2DTO.getExample();
        OASUniswapV2BurnV2DTO uniswapV2BurnV2DTO3 = new OASUniswapV2BurnV2DTO();
        OASUniswapV2BurnV2DTO uniswapV2BurnV2DTO4 = new OASUniswapV2BurnV2DTO();

        System.assert(uniswapV2BurnV2DTO1.equals(uniswapV2BurnV2DTO2));
        System.assert(uniswapV2BurnV2DTO3.equals(uniswapV2BurnV2DTO4));
        System.assertEquals(uniswapV2BurnV2DTO1.hashCode(), uniswapV2BurnV2DTO2.hashCode());
        System.assertEquals(uniswapV2BurnV2DTO3.hashCode(), uniswapV2BurnV2DTO4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASUniswapV2BurnV2DTO uniswapV2BurnV2DTO = new OASUniswapV2BurnV2DTO();
        Map<String, String> x-property-mappings = uniswapV2BurnV2DTO.getx-property-mappings();
        System.assertEquals('entryTime', x-property-mappings.get('entry_time'));
        System.assertEquals('recvTime', x-property-mappings.get('recv_time'));
        System.assertEquals('blockNumber', x-property-mappings.get('block_number'));
        System.assertEquals('r_transaction', x-property-mappings.get('transaction'));
        System.assertEquals('amount0', x-property-mappings.get('amount_0'));
        System.assertEquals('amount1', x-property-mappings.get('amount_1'));
        System.assertEquals('logIndex', x-property-mappings.get('log_index'));
        System.assertEquals('amountUsd', x-property-mappings.get('amount_usd'));
        System.assertEquals('needsComplete', x-property-mappings.get('needs_complete'));
        System.assertEquals('feeTo', x-property-mappings.get('fee_to'));
        System.assertEquals('feeLiquidity', x-property-mappings.get('fee_liquidity'));
    }
}
