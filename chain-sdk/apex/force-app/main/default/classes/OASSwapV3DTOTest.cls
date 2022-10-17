@isTest
private class OASSwapV3DTOTest {
    @isTest
    private static void equalsSameInstance() {
        OASSwapV3DTO swapV3DTO1 = OASSwapV3DTO.getExample();
        OASSwapV3DTO swapV3DTO2 = swapV3DTO1;
        OASSwapV3DTO swapV3DTO3 = new OASSwapV3DTO();
        OASSwapV3DTO swapV3DTO4 = swapV3DTO3;

        System.assert(swapV3DTO1.equals(swapV3DTO2));
        System.assert(swapV3DTO2.equals(swapV3DTO1));
        System.assert(swapV3DTO1.equals(swapV3DTO1));
        System.assert(swapV3DTO3.equals(swapV3DTO4));
        System.assert(swapV3DTO4.equals(swapV3DTO3));
        System.assert(swapV3DTO3.equals(swapV3DTO3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSwapV3DTO swapV3DTO1 = OASSwapV3DTO.getExample();
        OASSwapV3DTO swapV3DTO2 = OASSwapV3DTO.getExample();
        OASSwapV3DTO swapV3DTO3 = new OASSwapV3DTO();
        OASSwapV3DTO swapV3DTO4 = new OASSwapV3DTO();

        System.assert(swapV3DTO1.equals(swapV3DTO2));
        System.assert(swapV3DTO2.equals(swapV3DTO1));
        System.assert(swapV3DTO3.equals(swapV3DTO4));
        System.assert(swapV3DTO4.equals(swapV3DTO3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSwapV3DTO swapV3DTO1 = OASSwapV3DTO.getExample();
        OASSwapV3DTO swapV3DTO2 = new OASSwapV3DTO();

        System.assertEquals(false, swapV3DTO1.equals('foo'));
        System.assertEquals(false, swapV3DTO2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSwapV3DTO swapV3DTO1 = OASSwapV3DTO.getExample();
        OASSwapV3DTO swapV3DTO2 = new OASSwapV3DTO();
        OASSwapV3DTO swapV3DTO3;

        System.assertEquals(false, swapV3DTO1.equals(swapV3DTO3));
        System.assertEquals(false, swapV3DTO2.equals(swapV3DTO3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSwapV3DTO swapV3DTO1 = OASSwapV3DTO.getExample();
        OASSwapV3DTO swapV3DTO2 = new OASSwapV3DTO();

        System.assertEquals(swapV3DTO1.hashCode(), swapV3DTO1.hashCode());
        System.assertEquals(swapV3DTO2.hashCode(), swapV3DTO2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSwapV3DTO swapV3DTO1 = OASSwapV3DTO.getExample();
        OASSwapV3DTO swapV3DTO2 = OASSwapV3DTO.getExample();
        OASSwapV3DTO swapV3DTO3 = new OASSwapV3DTO();
        OASSwapV3DTO swapV3DTO4 = new OASSwapV3DTO();

        System.assert(swapV3DTO1.equals(swapV3DTO2));
        System.assert(swapV3DTO3.equals(swapV3DTO4));
        System.assertEquals(swapV3DTO1.hashCode(), swapV3DTO2.hashCode());
        System.assertEquals(swapV3DTO3.hashCode(), swapV3DTO4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASSwapV3DTO swapV3DTO = new OASSwapV3DTO();
        Map<String, String> x-property-mappings = swapV3DTO.getx-property-mappings();
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
