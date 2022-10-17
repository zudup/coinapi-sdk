@isTest
private class OASSwapDTOTest {
    @isTest
    private static void equalsSameInstance() {
        OASSwapDTO swapDTO1 = OASSwapDTO.getExample();
        OASSwapDTO swapDTO2 = swapDTO1;
        OASSwapDTO swapDTO3 = new OASSwapDTO();
        OASSwapDTO swapDTO4 = swapDTO3;

        System.assert(swapDTO1.equals(swapDTO2));
        System.assert(swapDTO2.equals(swapDTO1));
        System.assert(swapDTO1.equals(swapDTO1));
        System.assert(swapDTO3.equals(swapDTO4));
        System.assert(swapDTO4.equals(swapDTO3));
        System.assert(swapDTO3.equals(swapDTO3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSwapDTO swapDTO1 = OASSwapDTO.getExample();
        OASSwapDTO swapDTO2 = OASSwapDTO.getExample();
        OASSwapDTO swapDTO3 = new OASSwapDTO();
        OASSwapDTO swapDTO4 = new OASSwapDTO();

        System.assert(swapDTO1.equals(swapDTO2));
        System.assert(swapDTO2.equals(swapDTO1));
        System.assert(swapDTO3.equals(swapDTO4));
        System.assert(swapDTO4.equals(swapDTO3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSwapDTO swapDTO1 = OASSwapDTO.getExample();
        OASSwapDTO swapDTO2 = new OASSwapDTO();

        System.assertEquals(false, swapDTO1.equals('foo'));
        System.assertEquals(false, swapDTO2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSwapDTO swapDTO1 = OASSwapDTO.getExample();
        OASSwapDTO swapDTO2 = new OASSwapDTO();
        OASSwapDTO swapDTO3;

        System.assertEquals(false, swapDTO1.equals(swapDTO3));
        System.assertEquals(false, swapDTO2.equals(swapDTO3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSwapDTO swapDTO1 = OASSwapDTO.getExample();
        OASSwapDTO swapDTO2 = new OASSwapDTO();

        System.assertEquals(swapDTO1.hashCode(), swapDTO1.hashCode());
        System.assertEquals(swapDTO2.hashCode(), swapDTO2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSwapDTO swapDTO1 = OASSwapDTO.getExample();
        OASSwapDTO swapDTO2 = OASSwapDTO.getExample();
        OASSwapDTO swapDTO3 = new OASSwapDTO();
        OASSwapDTO swapDTO4 = new OASSwapDTO();

        System.assert(swapDTO1.equals(swapDTO2));
        System.assert(swapDTO3.equals(swapDTO4));
        System.assertEquals(swapDTO1.hashCode(), swapDTO2.hashCode());
        System.assertEquals(swapDTO3.hashCode(), swapDTO4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASSwapDTO swapDTO = new OASSwapDTO();
        Map<String, String> x-property-mappings = swapDTO.getx-property-mappings();
        System.assertEquals('entryTime', x-property-mappings.get('entry_time'));
        System.assertEquals('recvTime', x-property-mappings.get('recv_time'));
        System.assertEquals('blockNumber', x-property-mappings.get('block_number'));
        System.assertEquals('r_transaction', x-property-mappings.get('transaction'));
        System.assertEquals('amount0In', x-property-mappings.get('amount_0_in'));
        System.assertEquals('amount1In', x-property-mappings.get('amount_1_in'));
        System.assertEquals('amount0Out', x-property-mappings.get('amount_0_out'));
        System.assertEquals('amount1Out', x-property-mappings.get('amount_1_out'));
        System.assertEquals('logIndex', x-property-mappings.get('log_index'));
        System.assertEquals('amountUsd', x-property-mappings.get('amount_usd'));
        System.assertEquals('poolId', x-property-mappings.get('pool_id'));
        System.assertEquals('transactionId', x-property-mappings.get('transaction_id'));
        System.assertEquals('evaluatedPrice', x-property-mappings.get('evaluated_price'));
        System.assertEquals('evaluatedAmount', x-property-mappings.get('evaluated_amount'));
        System.assertEquals('evaluatedAggressor', x-property-mappings.get('evaluated_aggressor'));
    }
}
