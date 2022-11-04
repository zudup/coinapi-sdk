@isTest
private class OASUniswapV3SwapV3DTOTest {
    @isTest
    private static void equalsSameInstance() {
        OASUniswapV3SwapV3DTO uniswapV3SwapV3DTO1 = OASUniswapV3SwapV3DTO.getExample();
        OASUniswapV3SwapV3DTO uniswapV3SwapV3DTO2 = uniswapV3SwapV3DTO1;
        OASUniswapV3SwapV3DTO uniswapV3SwapV3DTO3 = new OASUniswapV3SwapV3DTO();
        OASUniswapV3SwapV3DTO uniswapV3SwapV3DTO4 = uniswapV3SwapV3DTO3;

        System.assert(uniswapV3SwapV3DTO1.equals(uniswapV3SwapV3DTO2));
        System.assert(uniswapV3SwapV3DTO2.equals(uniswapV3SwapV3DTO1));
        System.assert(uniswapV3SwapV3DTO1.equals(uniswapV3SwapV3DTO1));
        System.assert(uniswapV3SwapV3DTO3.equals(uniswapV3SwapV3DTO4));
        System.assert(uniswapV3SwapV3DTO4.equals(uniswapV3SwapV3DTO3));
        System.assert(uniswapV3SwapV3DTO3.equals(uniswapV3SwapV3DTO3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASUniswapV3SwapV3DTO uniswapV3SwapV3DTO1 = OASUniswapV3SwapV3DTO.getExample();
        OASUniswapV3SwapV3DTO uniswapV3SwapV3DTO2 = OASUniswapV3SwapV3DTO.getExample();
        OASUniswapV3SwapV3DTO uniswapV3SwapV3DTO3 = new OASUniswapV3SwapV3DTO();
        OASUniswapV3SwapV3DTO uniswapV3SwapV3DTO4 = new OASUniswapV3SwapV3DTO();

        System.assert(uniswapV3SwapV3DTO1.equals(uniswapV3SwapV3DTO2));
        System.assert(uniswapV3SwapV3DTO2.equals(uniswapV3SwapV3DTO1));
        System.assert(uniswapV3SwapV3DTO3.equals(uniswapV3SwapV3DTO4));
        System.assert(uniswapV3SwapV3DTO4.equals(uniswapV3SwapV3DTO3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASUniswapV3SwapV3DTO uniswapV3SwapV3DTO1 = OASUniswapV3SwapV3DTO.getExample();
        OASUniswapV3SwapV3DTO uniswapV3SwapV3DTO2 = new OASUniswapV3SwapV3DTO();

        System.assertEquals(false, uniswapV3SwapV3DTO1.equals('foo'));
        System.assertEquals(false, uniswapV3SwapV3DTO2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASUniswapV3SwapV3DTO uniswapV3SwapV3DTO1 = OASUniswapV3SwapV3DTO.getExample();
        OASUniswapV3SwapV3DTO uniswapV3SwapV3DTO2 = new OASUniswapV3SwapV3DTO();
        OASUniswapV3SwapV3DTO uniswapV3SwapV3DTO3;

        System.assertEquals(false, uniswapV3SwapV3DTO1.equals(uniswapV3SwapV3DTO3));
        System.assertEquals(false, uniswapV3SwapV3DTO2.equals(uniswapV3SwapV3DTO3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASUniswapV3SwapV3DTO uniswapV3SwapV3DTO1 = OASUniswapV3SwapV3DTO.getExample();
        OASUniswapV3SwapV3DTO uniswapV3SwapV3DTO2 = new OASUniswapV3SwapV3DTO();

        System.assertEquals(uniswapV3SwapV3DTO1.hashCode(), uniswapV3SwapV3DTO1.hashCode());
        System.assertEquals(uniswapV3SwapV3DTO2.hashCode(), uniswapV3SwapV3DTO2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASUniswapV3SwapV3DTO uniswapV3SwapV3DTO1 = OASUniswapV3SwapV3DTO.getExample();
        OASUniswapV3SwapV3DTO uniswapV3SwapV3DTO2 = OASUniswapV3SwapV3DTO.getExample();
        OASUniswapV3SwapV3DTO uniswapV3SwapV3DTO3 = new OASUniswapV3SwapV3DTO();
        OASUniswapV3SwapV3DTO uniswapV3SwapV3DTO4 = new OASUniswapV3SwapV3DTO();

        System.assert(uniswapV3SwapV3DTO1.equals(uniswapV3SwapV3DTO2));
        System.assert(uniswapV3SwapV3DTO3.equals(uniswapV3SwapV3DTO4));
        System.assertEquals(uniswapV3SwapV3DTO1.hashCode(), uniswapV3SwapV3DTO2.hashCode());
        System.assertEquals(uniswapV3SwapV3DTO3.hashCode(), uniswapV3SwapV3DTO4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASUniswapV3SwapV3DTO uniswapV3SwapV3DTO = new OASUniswapV3SwapV3DTO();
        Map<String, String> x-property-mappings = uniswapV3SwapV3DTO.getx-property-mappings();
        System.assertEquals('entryTime', x-property-mappings.get('entry_time'));
        System.assertEquals('recvTime', x-property-mappings.get('recv_time'));
        System.assertEquals('blockNumber', x-property-mappings.get('block_number'));
        System.assertEquals('r_transaction', x-property-mappings.get('transaction'));
        System.assertEquals('token0', x-property-mappings.get('token_0'));
        System.assertEquals('token1', x-property-mappings.get('token_1'));
        System.assertEquals('amount0', x-property-mappings.get('amount_0'));
        System.assertEquals('amount1', x-property-mappings.get('amount_1'));
        System.assertEquals('amountUsd', x-property-mappings.get('amount_usd'));
        System.assertEquals('sqrtPriceX96', x-property-mappings.get('sqrt_price_x96'));
        System.assertEquals('logIndex', x-property-mappings.get('log_index'));
        System.assertEquals('evaluatedPrice', x-property-mappings.get('evaluated_price'));
        System.assertEquals('evaluatedAmount', x-property-mappings.get('evaluated_amount'));
        System.assertEquals('evaluatedAggressor', x-property-mappings.get('evaluated_aggressor'));
        System.assertEquals('poolId', x-property-mappings.get('pool_id'));
        System.assertEquals('transactionId', x-property-mappings.get('transaction_id'));
    }
}
