@isTest
private class OASUniswapV3TransactionV3DTOTest {
    @isTest
    private static void equalsSameInstance() {
        OASUniswapV3TransactionV3DTO uniswapV3TransactionV3DTO1 = OASUniswapV3TransactionV3DTO.getExample();
        OASUniswapV3TransactionV3DTO uniswapV3TransactionV3DTO2 = uniswapV3TransactionV3DTO1;
        OASUniswapV3TransactionV3DTO uniswapV3TransactionV3DTO3 = new OASUniswapV3TransactionV3DTO();
        OASUniswapV3TransactionV3DTO uniswapV3TransactionV3DTO4 = uniswapV3TransactionV3DTO3;

        System.assert(uniswapV3TransactionV3DTO1.equals(uniswapV3TransactionV3DTO2));
        System.assert(uniswapV3TransactionV3DTO2.equals(uniswapV3TransactionV3DTO1));
        System.assert(uniswapV3TransactionV3DTO1.equals(uniswapV3TransactionV3DTO1));
        System.assert(uniswapV3TransactionV3DTO3.equals(uniswapV3TransactionV3DTO4));
        System.assert(uniswapV3TransactionV3DTO4.equals(uniswapV3TransactionV3DTO3));
        System.assert(uniswapV3TransactionV3DTO3.equals(uniswapV3TransactionV3DTO3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASUniswapV3TransactionV3DTO uniswapV3TransactionV3DTO1 = OASUniswapV3TransactionV3DTO.getExample();
        OASUniswapV3TransactionV3DTO uniswapV3TransactionV3DTO2 = OASUniswapV3TransactionV3DTO.getExample();
        OASUniswapV3TransactionV3DTO uniswapV3TransactionV3DTO3 = new OASUniswapV3TransactionV3DTO();
        OASUniswapV3TransactionV3DTO uniswapV3TransactionV3DTO4 = new OASUniswapV3TransactionV3DTO();

        System.assert(uniswapV3TransactionV3DTO1.equals(uniswapV3TransactionV3DTO2));
        System.assert(uniswapV3TransactionV3DTO2.equals(uniswapV3TransactionV3DTO1));
        System.assert(uniswapV3TransactionV3DTO3.equals(uniswapV3TransactionV3DTO4));
        System.assert(uniswapV3TransactionV3DTO4.equals(uniswapV3TransactionV3DTO3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASUniswapV3TransactionV3DTO uniswapV3TransactionV3DTO1 = OASUniswapV3TransactionV3DTO.getExample();
        OASUniswapV3TransactionV3DTO uniswapV3TransactionV3DTO2 = new OASUniswapV3TransactionV3DTO();

        System.assertEquals(false, uniswapV3TransactionV3DTO1.equals('foo'));
        System.assertEquals(false, uniswapV3TransactionV3DTO2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASUniswapV3TransactionV3DTO uniswapV3TransactionV3DTO1 = OASUniswapV3TransactionV3DTO.getExample();
        OASUniswapV3TransactionV3DTO uniswapV3TransactionV3DTO2 = new OASUniswapV3TransactionV3DTO();
        OASUniswapV3TransactionV3DTO uniswapV3TransactionV3DTO3;

        System.assertEquals(false, uniswapV3TransactionV3DTO1.equals(uniswapV3TransactionV3DTO3));
        System.assertEquals(false, uniswapV3TransactionV3DTO2.equals(uniswapV3TransactionV3DTO3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASUniswapV3TransactionV3DTO uniswapV3TransactionV3DTO1 = OASUniswapV3TransactionV3DTO.getExample();
        OASUniswapV3TransactionV3DTO uniswapV3TransactionV3DTO2 = new OASUniswapV3TransactionV3DTO();

        System.assertEquals(uniswapV3TransactionV3DTO1.hashCode(), uniswapV3TransactionV3DTO1.hashCode());
        System.assertEquals(uniswapV3TransactionV3DTO2.hashCode(), uniswapV3TransactionV3DTO2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASUniswapV3TransactionV3DTO uniswapV3TransactionV3DTO1 = OASUniswapV3TransactionV3DTO.getExample();
        OASUniswapV3TransactionV3DTO uniswapV3TransactionV3DTO2 = OASUniswapV3TransactionV3DTO.getExample();
        OASUniswapV3TransactionV3DTO uniswapV3TransactionV3DTO3 = new OASUniswapV3TransactionV3DTO();
        OASUniswapV3TransactionV3DTO uniswapV3TransactionV3DTO4 = new OASUniswapV3TransactionV3DTO();

        System.assert(uniswapV3TransactionV3DTO1.equals(uniswapV3TransactionV3DTO2));
        System.assert(uniswapV3TransactionV3DTO3.equals(uniswapV3TransactionV3DTO4));
        System.assertEquals(uniswapV3TransactionV3DTO1.hashCode(), uniswapV3TransactionV3DTO2.hashCode());
        System.assertEquals(uniswapV3TransactionV3DTO3.hashCode(), uniswapV3TransactionV3DTO4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASUniswapV3TransactionV3DTO uniswapV3TransactionV3DTO = new OASUniswapV3TransactionV3DTO();
        Map<String, String> x-property-mappings = uniswapV3TransactionV3DTO.getx-property-mappings();
        System.assertEquals('entryTime', x-property-mappings.get('entry_time'));
        System.assertEquals('recvTime', x-property-mappings.get('recv_time'));
        System.assertEquals('blockNumber', x-property-mappings.get('block_number'));
        System.assertEquals('gasUsed', x-property-mappings.get('gas_used'));
        System.assertEquals('gasPrice', x-property-mappings.get('gas_price'));
    }
}
