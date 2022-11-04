@isTest
private class OASUniswapV2SwapV2DTOTest {
    @isTest
    private static void equalsSameInstance() {
        OASUniswapV2SwapV2DTO uniswapV2SwapV2DTO1 = OASUniswapV2SwapV2DTO.getExample();
        OASUniswapV2SwapV2DTO uniswapV2SwapV2DTO2 = uniswapV2SwapV2DTO1;
        OASUniswapV2SwapV2DTO uniswapV2SwapV2DTO3 = new OASUniswapV2SwapV2DTO();
        OASUniswapV2SwapV2DTO uniswapV2SwapV2DTO4 = uniswapV2SwapV2DTO3;

        System.assert(uniswapV2SwapV2DTO1.equals(uniswapV2SwapV2DTO2));
        System.assert(uniswapV2SwapV2DTO2.equals(uniswapV2SwapV2DTO1));
        System.assert(uniswapV2SwapV2DTO1.equals(uniswapV2SwapV2DTO1));
        System.assert(uniswapV2SwapV2DTO3.equals(uniswapV2SwapV2DTO4));
        System.assert(uniswapV2SwapV2DTO4.equals(uniswapV2SwapV2DTO3));
        System.assert(uniswapV2SwapV2DTO3.equals(uniswapV2SwapV2DTO3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASUniswapV2SwapV2DTO uniswapV2SwapV2DTO1 = OASUniswapV2SwapV2DTO.getExample();
        OASUniswapV2SwapV2DTO uniswapV2SwapV2DTO2 = OASUniswapV2SwapV2DTO.getExample();
        OASUniswapV2SwapV2DTO uniswapV2SwapV2DTO3 = new OASUniswapV2SwapV2DTO();
        OASUniswapV2SwapV2DTO uniswapV2SwapV2DTO4 = new OASUniswapV2SwapV2DTO();

        System.assert(uniswapV2SwapV2DTO1.equals(uniswapV2SwapV2DTO2));
        System.assert(uniswapV2SwapV2DTO2.equals(uniswapV2SwapV2DTO1));
        System.assert(uniswapV2SwapV2DTO3.equals(uniswapV2SwapV2DTO4));
        System.assert(uniswapV2SwapV2DTO4.equals(uniswapV2SwapV2DTO3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASUniswapV2SwapV2DTO uniswapV2SwapV2DTO1 = OASUniswapV2SwapV2DTO.getExample();
        OASUniswapV2SwapV2DTO uniswapV2SwapV2DTO2 = new OASUniswapV2SwapV2DTO();

        System.assertEquals(false, uniswapV2SwapV2DTO1.equals('foo'));
        System.assertEquals(false, uniswapV2SwapV2DTO2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASUniswapV2SwapV2DTO uniswapV2SwapV2DTO1 = OASUniswapV2SwapV2DTO.getExample();
        OASUniswapV2SwapV2DTO uniswapV2SwapV2DTO2 = new OASUniswapV2SwapV2DTO();
        OASUniswapV2SwapV2DTO uniswapV2SwapV2DTO3;

        System.assertEquals(false, uniswapV2SwapV2DTO1.equals(uniswapV2SwapV2DTO3));
        System.assertEquals(false, uniswapV2SwapV2DTO2.equals(uniswapV2SwapV2DTO3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASUniswapV2SwapV2DTO uniswapV2SwapV2DTO1 = OASUniswapV2SwapV2DTO.getExample();
        OASUniswapV2SwapV2DTO uniswapV2SwapV2DTO2 = new OASUniswapV2SwapV2DTO();

        System.assertEquals(uniswapV2SwapV2DTO1.hashCode(), uniswapV2SwapV2DTO1.hashCode());
        System.assertEquals(uniswapV2SwapV2DTO2.hashCode(), uniswapV2SwapV2DTO2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASUniswapV2SwapV2DTO uniswapV2SwapV2DTO1 = OASUniswapV2SwapV2DTO.getExample();
        OASUniswapV2SwapV2DTO uniswapV2SwapV2DTO2 = OASUniswapV2SwapV2DTO.getExample();
        OASUniswapV2SwapV2DTO uniswapV2SwapV2DTO3 = new OASUniswapV2SwapV2DTO();
        OASUniswapV2SwapV2DTO uniswapV2SwapV2DTO4 = new OASUniswapV2SwapV2DTO();

        System.assert(uniswapV2SwapV2DTO1.equals(uniswapV2SwapV2DTO2));
        System.assert(uniswapV2SwapV2DTO3.equals(uniswapV2SwapV2DTO4));
        System.assertEquals(uniswapV2SwapV2DTO1.hashCode(), uniswapV2SwapV2DTO2.hashCode());
        System.assertEquals(uniswapV2SwapV2DTO3.hashCode(), uniswapV2SwapV2DTO4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASUniswapV2SwapV2DTO uniswapV2SwapV2DTO = new OASUniswapV2SwapV2DTO();
        Map<String, String> x-property-mappings = uniswapV2SwapV2DTO.getx-property-mappings();
        System.assertEquals('entryTime', x-property-mappings.get('entry_time'));
        System.assertEquals('recvTime', x-property-mappings.get('recv_time'));
        System.assertEquals('blockNumber', x-property-mappings.get('block_number'));
        System.assertEquals('r_transaction', x-property-mappings.get('transaction'));
        System.assertEquals('r_from', x-property-mappings.get('from'));
        System.assertEquals('amount0In', x-property-mappings.get('amount_0_in'));
        System.assertEquals('amount1In', x-property-mappings.get('amount_1_in'));
        System.assertEquals('amount0Out', x-property-mappings.get('amount_0_out'));
        System.assertEquals('amount1Out', x-property-mappings.get('amount_1_out'));
        System.assertEquals('logIndex', x-property-mappings.get('log_index'));
        System.assertEquals('amountUsd', x-property-mappings.get('amount_usd'));
        System.assertEquals('evaluatedPrice', x-property-mappings.get('evaluated_price'));
        System.assertEquals('evaluatedAmount', x-property-mappings.get('evaluated_amount'));
        System.assertEquals('evaluatedAggressor', x-property-mappings.get('evaluated_aggressor'));
        System.assertEquals('poolId', x-property-mappings.get('pool_id'));
        System.assertEquals('transactionId', x-property-mappings.get('transaction_id'));
    }
}
