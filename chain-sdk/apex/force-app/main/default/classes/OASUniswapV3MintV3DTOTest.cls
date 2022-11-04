@isTest
private class OASUniswapV3MintV3DTOTest {
    @isTest
    private static void equalsSameInstance() {
        OASUniswapV3MintV3DTO uniswapV3MintV3DTO1 = OASUniswapV3MintV3DTO.getExample();
        OASUniswapV3MintV3DTO uniswapV3MintV3DTO2 = uniswapV3MintV3DTO1;
        OASUniswapV3MintV3DTO uniswapV3MintV3DTO3 = new OASUniswapV3MintV3DTO();
        OASUniswapV3MintV3DTO uniswapV3MintV3DTO4 = uniswapV3MintV3DTO3;

        System.assert(uniswapV3MintV3DTO1.equals(uniswapV3MintV3DTO2));
        System.assert(uniswapV3MintV3DTO2.equals(uniswapV3MintV3DTO1));
        System.assert(uniswapV3MintV3DTO1.equals(uniswapV3MintV3DTO1));
        System.assert(uniswapV3MintV3DTO3.equals(uniswapV3MintV3DTO4));
        System.assert(uniswapV3MintV3DTO4.equals(uniswapV3MintV3DTO3));
        System.assert(uniswapV3MintV3DTO3.equals(uniswapV3MintV3DTO3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASUniswapV3MintV3DTO uniswapV3MintV3DTO1 = OASUniswapV3MintV3DTO.getExample();
        OASUniswapV3MintV3DTO uniswapV3MintV3DTO2 = OASUniswapV3MintV3DTO.getExample();
        OASUniswapV3MintV3DTO uniswapV3MintV3DTO3 = new OASUniswapV3MintV3DTO();
        OASUniswapV3MintV3DTO uniswapV3MintV3DTO4 = new OASUniswapV3MintV3DTO();

        System.assert(uniswapV3MintV3DTO1.equals(uniswapV3MintV3DTO2));
        System.assert(uniswapV3MintV3DTO2.equals(uniswapV3MintV3DTO1));
        System.assert(uniswapV3MintV3DTO3.equals(uniswapV3MintV3DTO4));
        System.assert(uniswapV3MintV3DTO4.equals(uniswapV3MintV3DTO3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASUniswapV3MintV3DTO uniswapV3MintV3DTO1 = OASUniswapV3MintV3DTO.getExample();
        OASUniswapV3MintV3DTO uniswapV3MintV3DTO2 = new OASUniswapV3MintV3DTO();

        System.assertEquals(false, uniswapV3MintV3DTO1.equals('foo'));
        System.assertEquals(false, uniswapV3MintV3DTO2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASUniswapV3MintV3DTO uniswapV3MintV3DTO1 = OASUniswapV3MintV3DTO.getExample();
        OASUniswapV3MintV3DTO uniswapV3MintV3DTO2 = new OASUniswapV3MintV3DTO();
        OASUniswapV3MintV3DTO uniswapV3MintV3DTO3;

        System.assertEquals(false, uniswapV3MintV3DTO1.equals(uniswapV3MintV3DTO3));
        System.assertEquals(false, uniswapV3MintV3DTO2.equals(uniswapV3MintV3DTO3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASUniswapV3MintV3DTO uniswapV3MintV3DTO1 = OASUniswapV3MintV3DTO.getExample();
        OASUniswapV3MintV3DTO uniswapV3MintV3DTO2 = new OASUniswapV3MintV3DTO();

        System.assertEquals(uniswapV3MintV3DTO1.hashCode(), uniswapV3MintV3DTO1.hashCode());
        System.assertEquals(uniswapV3MintV3DTO2.hashCode(), uniswapV3MintV3DTO2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASUniswapV3MintV3DTO uniswapV3MintV3DTO1 = OASUniswapV3MintV3DTO.getExample();
        OASUniswapV3MintV3DTO uniswapV3MintV3DTO2 = OASUniswapV3MintV3DTO.getExample();
        OASUniswapV3MintV3DTO uniswapV3MintV3DTO3 = new OASUniswapV3MintV3DTO();
        OASUniswapV3MintV3DTO uniswapV3MintV3DTO4 = new OASUniswapV3MintV3DTO();

        System.assert(uniswapV3MintV3DTO1.equals(uniswapV3MintV3DTO2));
        System.assert(uniswapV3MintV3DTO3.equals(uniswapV3MintV3DTO4));
        System.assertEquals(uniswapV3MintV3DTO1.hashCode(), uniswapV3MintV3DTO2.hashCode());
        System.assertEquals(uniswapV3MintV3DTO3.hashCode(), uniswapV3MintV3DTO4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASUniswapV3MintV3DTO uniswapV3MintV3DTO = new OASUniswapV3MintV3DTO();
        Map<String, String> x-property-mappings = uniswapV3MintV3DTO.getx-property-mappings();
        System.assertEquals('entryTime', x-property-mappings.get('entry_time'));
        System.assertEquals('recvTime', x-property-mappings.get('recv_time'));
        System.assertEquals('blockNumber', x-property-mappings.get('block_number'));
        System.assertEquals('r_transaction', x-property-mappings.get('transaction'));
        System.assertEquals('token0', x-property-mappings.get('token_0'));
        System.assertEquals('token1', x-property-mappings.get('token_1'));
        System.assertEquals('amount0', x-property-mappings.get('amount_0'));
        System.assertEquals('amount1', x-property-mappings.get('amount_1'));
        System.assertEquals('amountUsd', x-property-mappings.get('amount_usd'));
        System.assertEquals('tickLower', x-property-mappings.get('tick_lower'));
        System.assertEquals('tickUpper', x-property-mappings.get('tick_upper'));
        System.assertEquals('logIndex', x-property-mappings.get('log_index'));
    }
}
