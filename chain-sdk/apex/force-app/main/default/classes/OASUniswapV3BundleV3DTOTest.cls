@isTest
private class OASUniswapV3BundleV3DTOTest {
    @isTest
    private static void equalsSameInstance() {
        OASUniswapV3BundleV3DTO uniswapV3BundleV3DTO1 = OASUniswapV3BundleV3DTO.getExample();
        OASUniswapV3BundleV3DTO uniswapV3BundleV3DTO2 = uniswapV3BundleV3DTO1;
        OASUniswapV3BundleV3DTO uniswapV3BundleV3DTO3 = new OASUniswapV3BundleV3DTO();
        OASUniswapV3BundleV3DTO uniswapV3BundleV3DTO4 = uniswapV3BundleV3DTO3;

        System.assert(uniswapV3BundleV3DTO1.equals(uniswapV3BundleV3DTO2));
        System.assert(uniswapV3BundleV3DTO2.equals(uniswapV3BundleV3DTO1));
        System.assert(uniswapV3BundleV3DTO1.equals(uniswapV3BundleV3DTO1));
        System.assert(uniswapV3BundleV3DTO3.equals(uniswapV3BundleV3DTO4));
        System.assert(uniswapV3BundleV3DTO4.equals(uniswapV3BundleV3DTO3));
        System.assert(uniswapV3BundleV3DTO3.equals(uniswapV3BundleV3DTO3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASUniswapV3BundleV3DTO uniswapV3BundleV3DTO1 = OASUniswapV3BundleV3DTO.getExample();
        OASUniswapV3BundleV3DTO uniswapV3BundleV3DTO2 = OASUniswapV3BundleV3DTO.getExample();
        OASUniswapV3BundleV3DTO uniswapV3BundleV3DTO3 = new OASUniswapV3BundleV3DTO();
        OASUniswapV3BundleV3DTO uniswapV3BundleV3DTO4 = new OASUniswapV3BundleV3DTO();

        System.assert(uniswapV3BundleV3DTO1.equals(uniswapV3BundleV3DTO2));
        System.assert(uniswapV3BundleV3DTO2.equals(uniswapV3BundleV3DTO1));
        System.assert(uniswapV3BundleV3DTO3.equals(uniswapV3BundleV3DTO4));
        System.assert(uniswapV3BundleV3DTO4.equals(uniswapV3BundleV3DTO3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASUniswapV3BundleV3DTO uniswapV3BundleV3DTO1 = OASUniswapV3BundleV3DTO.getExample();
        OASUniswapV3BundleV3DTO uniswapV3BundleV3DTO2 = new OASUniswapV3BundleV3DTO();

        System.assertEquals(false, uniswapV3BundleV3DTO1.equals('foo'));
        System.assertEquals(false, uniswapV3BundleV3DTO2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASUniswapV3BundleV3DTO uniswapV3BundleV3DTO1 = OASUniswapV3BundleV3DTO.getExample();
        OASUniswapV3BundleV3DTO uniswapV3BundleV3DTO2 = new OASUniswapV3BundleV3DTO();
        OASUniswapV3BundleV3DTO uniswapV3BundleV3DTO3;

        System.assertEquals(false, uniswapV3BundleV3DTO1.equals(uniswapV3BundleV3DTO3));
        System.assertEquals(false, uniswapV3BundleV3DTO2.equals(uniswapV3BundleV3DTO3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASUniswapV3BundleV3DTO uniswapV3BundleV3DTO1 = OASUniswapV3BundleV3DTO.getExample();
        OASUniswapV3BundleV3DTO uniswapV3BundleV3DTO2 = new OASUniswapV3BundleV3DTO();

        System.assertEquals(uniswapV3BundleV3DTO1.hashCode(), uniswapV3BundleV3DTO1.hashCode());
        System.assertEquals(uniswapV3BundleV3DTO2.hashCode(), uniswapV3BundleV3DTO2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASUniswapV3BundleV3DTO uniswapV3BundleV3DTO1 = OASUniswapV3BundleV3DTO.getExample();
        OASUniswapV3BundleV3DTO uniswapV3BundleV3DTO2 = OASUniswapV3BundleV3DTO.getExample();
        OASUniswapV3BundleV3DTO uniswapV3BundleV3DTO3 = new OASUniswapV3BundleV3DTO();
        OASUniswapV3BundleV3DTO uniswapV3BundleV3DTO4 = new OASUniswapV3BundleV3DTO();

        System.assert(uniswapV3BundleV3DTO1.equals(uniswapV3BundleV3DTO2));
        System.assert(uniswapV3BundleV3DTO3.equals(uniswapV3BundleV3DTO4));
        System.assertEquals(uniswapV3BundleV3DTO1.hashCode(), uniswapV3BundleV3DTO2.hashCode());
        System.assertEquals(uniswapV3BundleV3DTO3.hashCode(), uniswapV3BundleV3DTO4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASUniswapV3BundleV3DTO uniswapV3BundleV3DTO = new OASUniswapV3BundleV3DTO();
        Map<String, String> x-property-mappings = uniswapV3BundleV3DTO.getx-property-mappings();
        System.assertEquals('entryTime', x-property-mappings.get('entry_time'));
        System.assertEquals('recvTime', x-property-mappings.get('recv_time'));
        System.assertEquals('blockNumber', x-property-mappings.get('block_number'));
        System.assertEquals('ethPriceUsd', x-property-mappings.get('eth_price_usd'));
    }
}
