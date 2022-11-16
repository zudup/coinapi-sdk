@isTest
private class OASUniswapV2BundleV2DTOTest {
    @isTest
    private static void equalsSameInstance() {
        OASUniswapV2BundleV2DTO uniswapV2BundleV2DTO1 = OASUniswapV2BundleV2DTO.getExample();
        OASUniswapV2BundleV2DTO uniswapV2BundleV2DTO2 = uniswapV2BundleV2DTO1;
        OASUniswapV2BundleV2DTO uniswapV2BundleV2DTO3 = new OASUniswapV2BundleV2DTO();
        OASUniswapV2BundleV2DTO uniswapV2BundleV2DTO4 = uniswapV2BundleV2DTO3;

        System.assert(uniswapV2BundleV2DTO1.equals(uniswapV2BundleV2DTO2));
        System.assert(uniswapV2BundleV2DTO2.equals(uniswapV2BundleV2DTO1));
        System.assert(uniswapV2BundleV2DTO1.equals(uniswapV2BundleV2DTO1));
        System.assert(uniswapV2BundleV2DTO3.equals(uniswapV2BundleV2DTO4));
        System.assert(uniswapV2BundleV2DTO4.equals(uniswapV2BundleV2DTO3));
        System.assert(uniswapV2BundleV2DTO3.equals(uniswapV2BundleV2DTO3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASUniswapV2BundleV2DTO uniswapV2BundleV2DTO1 = OASUniswapV2BundleV2DTO.getExample();
        OASUniswapV2BundleV2DTO uniswapV2BundleV2DTO2 = OASUniswapV2BundleV2DTO.getExample();
        OASUniswapV2BundleV2DTO uniswapV2BundleV2DTO3 = new OASUniswapV2BundleV2DTO();
        OASUniswapV2BundleV2DTO uniswapV2BundleV2DTO4 = new OASUniswapV2BundleV2DTO();

        System.assert(uniswapV2BundleV2DTO1.equals(uniswapV2BundleV2DTO2));
        System.assert(uniswapV2BundleV2DTO2.equals(uniswapV2BundleV2DTO1));
        System.assert(uniswapV2BundleV2DTO3.equals(uniswapV2BundleV2DTO4));
        System.assert(uniswapV2BundleV2DTO4.equals(uniswapV2BundleV2DTO3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASUniswapV2BundleV2DTO uniswapV2BundleV2DTO1 = OASUniswapV2BundleV2DTO.getExample();
        OASUniswapV2BundleV2DTO uniswapV2BundleV2DTO2 = new OASUniswapV2BundleV2DTO();

        System.assertEquals(false, uniswapV2BundleV2DTO1.equals('foo'));
        System.assertEquals(false, uniswapV2BundleV2DTO2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASUniswapV2BundleV2DTO uniswapV2BundleV2DTO1 = OASUniswapV2BundleV2DTO.getExample();
        OASUniswapV2BundleV2DTO uniswapV2BundleV2DTO2 = new OASUniswapV2BundleV2DTO();
        OASUniswapV2BundleV2DTO uniswapV2BundleV2DTO3;

        System.assertEquals(false, uniswapV2BundleV2DTO1.equals(uniswapV2BundleV2DTO3));
        System.assertEquals(false, uniswapV2BundleV2DTO2.equals(uniswapV2BundleV2DTO3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASUniswapV2BundleV2DTO uniswapV2BundleV2DTO1 = OASUniswapV2BundleV2DTO.getExample();
        OASUniswapV2BundleV2DTO uniswapV2BundleV2DTO2 = new OASUniswapV2BundleV2DTO();

        System.assertEquals(uniswapV2BundleV2DTO1.hashCode(), uniswapV2BundleV2DTO1.hashCode());
        System.assertEquals(uniswapV2BundleV2DTO2.hashCode(), uniswapV2BundleV2DTO2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASUniswapV2BundleV2DTO uniswapV2BundleV2DTO1 = OASUniswapV2BundleV2DTO.getExample();
        OASUniswapV2BundleV2DTO uniswapV2BundleV2DTO2 = OASUniswapV2BundleV2DTO.getExample();
        OASUniswapV2BundleV2DTO uniswapV2BundleV2DTO3 = new OASUniswapV2BundleV2DTO();
        OASUniswapV2BundleV2DTO uniswapV2BundleV2DTO4 = new OASUniswapV2BundleV2DTO();

        System.assert(uniswapV2BundleV2DTO1.equals(uniswapV2BundleV2DTO2));
        System.assert(uniswapV2BundleV2DTO3.equals(uniswapV2BundleV2DTO4));
        System.assertEquals(uniswapV2BundleV2DTO1.hashCode(), uniswapV2BundleV2DTO2.hashCode());
        System.assertEquals(uniswapV2BundleV2DTO3.hashCode(), uniswapV2BundleV2DTO4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASUniswapV2BundleV2DTO uniswapV2BundleV2DTO = new OASUniswapV2BundleV2DTO();
        Map<String, String> x-property-mappings = uniswapV2BundleV2DTO.getx-property-mappings();
        System.assertEquals('entryTime', x-property-mappings.get('entry_time'));
        System.assertEquals('recvTime', x-property-mappings.get('recv_time'));
        System.assertEquals('blockNumber', x-property-mappings.get('block_number'));
        System.assertEquals('ethPrice', x-property-mappings.get('eth_price'));
        System.assertEquals('blockRange', x-property-mappings.get('block_range'));
    }
}
