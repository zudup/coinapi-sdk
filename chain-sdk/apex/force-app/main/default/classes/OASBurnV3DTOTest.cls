@isTest
private class OASBurnV3DTOTest {
    @isTest
    private static void equalsSameInstance() {
        OASBurnV3DTO burnV3DTO1 = OASBurnV3DTO.getExample();
        OASBurnV3DTO burnV3DTO2 = burnV3DTO1;
        OASBurnV3DTO burnV3DTO3 = new OASBurnV3DTO();
        OASBurnV3DTO burnV3DTO4 = burnV3DTO3;

        System.assert(burnV3DTO1.equals(burnV3DTO2));
        System.assert(burnV3DTO2.equals(burnV3DTO1));
        System.assert(burnV3DTO1.equals(burnV3DTO1));
        System.assert(burnV3DTO3.equals(burnV3DTO4));
        System.assert(burnV3DTO4.equals(burnV3DTO3));
        System.assert(burnV3DTO3.equals(burnV3DTO3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBurnV3DTO burnV3DTO1 = OASBurnV3DTO.getExample();
        OASBurnV3DTO burnV3DTO2 = OASBurnV3DTO.getExample();
        OASBurnV3DTO burnV3DTO3 = new OASBurnV3DTO();
        OASBurnV3DTO burnV3DTO4 = new OASBurnV3DTO();

        System.assert(burnV3DTO1.equals(burnV3DTO2));
        System.assert(burnV3DTO2.equals(burnV3DTO1));
        System.assert(burnV3DTO3.equals(burnV3DTO4));
        System.assert(burnV3DTO4.equals(burnV3DTO3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBurnV3DTO burnV3DTO1 = OASBurnV3DTO.getExample();
        OASBurnV3DTO burnV3DTO2 = new OASBurnV3DTO();

        System.assertEquals(false, burnV3DTO1.equals('foo'));
        System.assertEquals(false, burnV3DTO2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBurnV3DTO burnV3DTO1 = OASBurnV3DTO.getExample();
        OASBurnV3DTO burnV3DTO2 = new OASBurnV3DTO();
        OASBurnV3DTO burnV3DTO3;

        System.assertEquals(false, burnV3DTO1.equals(burnV3DTO3));
        System.assertEquals(false, burnV3DTO2.equals(burnV3DTO3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBurnV3DTO burnV3DTO1 = OASBurnV3DTO.getExample();
        OASBurnV3DTO burnV3DTO2 = new OASBurnV3DTO();

        System.assertEquals(burnV3DTO1.hashCode(), burnV3DTO1.hashCode());
        System.assertEquals(burnV3DTO2.hashCode(), burnV3DTO2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBurnV3DTO burnV3DTO1 = OASBurnV3DTO.getExample();
        OASBurnV3DTO burnV3DTO2 = OASBurnV3DTO.getExample();
        OASBurnV3DTO burnV3DTO3 = new OASBurnV3DTO();
        OASBurnV3DTO burnV3DTO4 = new OASBurnV3DTO();

        System.assert(burnV3DTO1.equals(burnV3DTO2));
        System.assert(burnV3DTO3.equals(burnV3DTO4));
        System.assertEquals(burnV3DTO1.hashCode(), burnV3DTO2.hashCode());
        System.assertEquals(burnV3DTO3.hashCode(), burnV3DTO4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASBurnV3DTO burnV3DTO = new OASBurnV3DTO();
        Map<String, String> x-property-mappings = burnV3DTO.getx-property-mappings();
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
