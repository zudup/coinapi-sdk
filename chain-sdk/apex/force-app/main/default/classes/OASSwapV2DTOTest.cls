@isTest
private class OASSwapV2DTOTest {
    @isTest
    private static void equalsSameInstance() {
        OASSwapV2DTO swapV2DTO1 = OASSwapV2DTO.getExample();
        OASSwapV2DTO swapV2DTO2 = swapV2DTO1;
        OASSwapV2DTO swapV2DTO3 = new OASSwapV2DTO();
        OASSwapV2DTO swapV2DTO4 = swapV2DTO3;

        System.assert(swapV2DTO1.equals(swapV2DTO2));
        System.assert(swapV2DTO2.equals(swapV2DTO1));
        System.assert(swapV2DTO1.equals(swapV2DTO1));
        System.assert(swapV2DTO3.equals(swapV2DTO4));
        System.assert(swapV2DTO4.equals(swapV2DTO3));
        System.assert(swapV2DTO3.equals(swapV2DTO3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSwapV2DTO swapV2DTO1 = OASSwapV2DTO.getExample();
        OASSwapV2DTO swapV2DTO2 = OASSwapV2DTO.getExample();
        OASSwapV2DTO swapV2DTO3 = new OASSwapV2DTO();
        OASSwapV2DTO swapV2DTO4 = new OASSwapV2DTO();

        System.assert(swapV2DTO1.equals(swapV2DTO2));
        System.assert(swapV2DTO2.equals(swapV2DTO1));
        System.assert(swapV2DTO3.equals(swapV2DTO4));
        System.assert(swapV2DTO4.equals(swapV2DTO3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSwapV2DTO swapV2DTO1 = OASSwapV2DTO.getExample();
        OASSwapV2DTO swapV2DTO2 = new OASSwapV2DTO();

        System.assertEquals(false, swapV2DTO1.equals('foo'));
        System.assertEquals(false, swapV2DTO2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSwapV2DTO swapV2DTO1 = OASSwapV2DTO.getExample();
        OASSwapV2DTO swapV2DTO2 = new OASSwapV2DTO();
        OASSwapV2DTO swapV2DTO3;

        System.assertEquals(false, swapV2DTO1.equals(swapV2DTO3));
        System.assertEquals(false, swapV2DTO2.equals(swapV2DTO3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSwapV2DTO swapV2DTO1 = OASSwapV2DTO.getExample();
        OASSwapV2DTO swapV2DTO2 = new OASSwapV2DTO();

        System.assertEquals(swapV2DTO1.hashCode(), swapV2DTO1.hashCode());
        System.assertEquals(swapV2DTO2.hashCode(), swapV2DTO2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSwapV2DTO swapV2DTO1 = OASSwapV2DTO.getExample();
        OASSwapV2DTO swapV2DTO2 = OASSwapV2DTO.getExample();
        OASSwapV2DTO swapV2DTO3 = new OASSwapV2DTO();
        OASSwapV2DTO swapV2DTO4 = new OASSwapV2DTO();

        System.assert(swapV2DTO1.equals(swapV2DTO2));
        System.assert(swapV2DTO3.equals(swapV2DTO4));
        System.assertEquals(swapV2DTO1.hashCode(), swapV2DTO2.hashCode());
        System.assertEquals(swapV2DTO3.hashCode(), swapV2DTO4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASSwapV2DTO swapV2DTO = new OASSwapV2DTO();
        Map<String, String> x-property-mappings = swapV2DTO.getx-property-mappings();
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
