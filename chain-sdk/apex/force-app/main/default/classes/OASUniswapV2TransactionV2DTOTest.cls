@isTest
private class OASUniswapV2TransactionV2DTOTest {
    @isTest
    private static void equalsSameInstance() {
        OASUniswapV2TransactionV2DTO uniswapV2TransactionV2DTO1 = OASUniswapV2TransactionV2DTO.getExample();
        OASUniswapV2TransactionV2DTO uniswapV2TransactionV2DTO2 = uniswapV2TransactionV2DTO1;
        OASUniswapV2TransactionV2DTO uniswapV2TransactionV2DTO3 = new OASUniswapV2TransactionV2DTO();
        OASUniswapV2TransactionV2DTO uniswapV2TransactionV2DTO4 = uniswapV2TransactionV2DTO3;

        System.assert(uniswapV2TransactionV2DTO1.equals(uniswapV2TransactionV2DTO2));
        System.assert(uniswapV2TransactionV2DTO2.equals(uniswapV2TransactionV2DTO1));
        System.assert(uniswapV2TransactionV2DTO1.equals(uniswapV2TransactionV2DTO1));
        System.assert(uniswapV2TransactionV2DTO3.equals(uniswapV2TransactionV2DTO4));
        System.assert(uniswapV2TransactionV2DTO4.equals(uniswapV2TransactionV2DTO3));
        System.assert(uniswapV2TransactionV2DTO3.equals(uniswapV2TransactionV2DTO3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASUniswapV2TransactionV2DTO uniswapV2TransactionV2DTO1 = OASUniswapV2TransactionV2DTO.getExample();
        OASUniswapV2TransactionV2DTO uniswapV2TransactionV2DTO2 = OASUniswapV2TransactionV2DTO.getExample();
        OASUniswapV2TransactionV2DTO uniswapV2TransactionV2DTO3 = new OASUniswapV2TransactionV2DTO();
        OASUniswapV2TransactionV2DTO uniswapV2TransactionV2DTO4 = new OASUniswapV2TransactionV2DTO();

        System.assert(uniswapV2TransactionV2DTO1.equals(uniswapV2TransactionV2DTO2));
        System.assert(uniswapV2TransactionV2DTO2.equals(uniswapV2TransactionV2DTO1));
        System.assert(uniswapV2TransactionV2DTO3.equals(uniswapV2TransactionV2DTO4));
        System.assert(uniswapV2TransactionV2DTO4.equals(uniswapV2TransactionV2DTO3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASUniswapV2TransactionV2DTO uniswapV2TransactionV2DTO1 = OASUniswapV2TransactionV2DTO.getExample();
        OASUniswapV2TransactionV2DTO uniswapV2TransactionV2DTO2 = new OASUniswapV2TransactionV2DTO();

        System.assertEquals(false, uniswapV2TransactionV2DTO1.equals('foo'));
        System.assertEquals(false, uniswapV2TransactionV2DTO2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASUniswapV2TransactionV2DTO uniswapV2TransactionV2DTO1 = OASUniswapV2TransactionV2DTO.getExample();
        OASUniswapV2TransactionV2DTO uniswapV2TransactionV2DTO2 = new OASUniswapV2TransactionV2DTO();
        OASUniswapV2TransactionV2DTO uniswapV2TransactionV2DTO3;

        System.assertEquals(false, uniswapV2TransactionV2DTO1.equals(uniswapV2TransactionV2DTO3));
        System.assertEquals(false, uniswapV2TransactionV2DTO2.equals(uniswapV2TransactionV2DTO3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASUniswapV2TransactionV2DTO uniswapV2TransactionV2DTO1 = OASUniswapV2TransactionV2DTO.getExample();
        OASUniswapV2TransactionV2DTO uniswapV2TransactionV2DTO2 = new OASUniswapV2TransactionV2DTO();

        System.assertEquals(uniswapV2TransactionV2DTO1.hashCode(), uniswapV2TransactionV2DTO1.hashCode());
        System.assertEquals(uniswapV2TransactionV2DTO2.hashCode(), uniswapV2TransactionV2DTO2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASUniswapV2TransactionV2DTO uniswapV2TransactionV2DTO1 = OASUniswapV2TransactionV2DTO.getExample();
        OASUniswapV2TransactionV2DTO uniswapV2TransactionV2DTO2 = OASUniswapV2TransactionV2DTO.getExample();
        OASUniswapV2TransactionV2DTO uniswapV2TransactionV2DTO3 = new OASUniswapV2TransactionV2DTO();
        OASUniswapV2TransactionV2DTO uniswapV2TransactionV2DTO4 = new OASUniswapV2TransactionV2DTO();

        System.assert(uniswapV2TransactionV2DTO1.equals(uniswapV2TransactionV2DTO2));
        System.assert(uniswapV2TransactionV2DTO3.equals(uniswapV2TransactionV2DTO4));
        System.assertEquals(uniswapV2TransactionV2DTO1.hashCode(), uniswapV2TransactionV2DTO2.hashCode());
        System.assertEquals(uniswapV2TransactionV2DTO3.hashCode(), uniswapV2TransactionV2DTO4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASUniswapV2TransactionV2DTO uniswapV2TransactionV2DTO = new OASUniswapV2TransactionV2DTO();
        Map<String, String> x-property-mappings = uniswapV2TransactionV2DTO.getx-property-mappings();
        System.assertEquals('entryTime', x-property-mappings.get('entry_time'));
        System.assertEquals('recvTime', x-property-mappings.get('recv_time'));
        System.assertEquals('blockNumber', x-property-mappings.get('block_number'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASUniswapV2TransactionV2DTO uniswapV2TransactionV2DTO = new OASUniswapV2TransactionV2DTO();
        System.assertEquals(new List<String>(), uniswapV2TransactionV2DTO.mints);
        System.assertEquals(new List<String>(), uniswapV2TransactionV2DTO.burns);
        System.assertEquals(new List<String>(), uniswapV2TransactionV2DTO.swaps);
        System.assertEquals(null, uniswapV2TransactionV2DTO.entryTime);
        System.assertEquals(null, uniswapV2TransactionV2DTO.recvTime);
        System.assertEquals(null, uniswapV2TransactionV2DTO.blockNumber);
        System.assertEquals(null, uniswapV2TransactionV2DTO.id);
        System.assertEquals(null, uniswapV2TransactionV2DTO.timestamp);
        System.assertEquals(null, uniswapV2TransactionV2DTO.vid);
    }
}
