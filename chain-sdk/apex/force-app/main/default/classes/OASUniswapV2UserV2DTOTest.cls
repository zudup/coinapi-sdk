@isTest
private class OASUniswapV2UserV2DTOTest {
    @isTest
    private static void equalsSameInstance() {
        OASUniswapV2UserV2DTO uniswapV2UserV2DTO1 = OASUniswapV2UserV2DTO.getExample();
        OASUniswapV2UserV2DTO uniswapV2UserV2DTO2 = uniswapV2UserV2DTO1;
        OASUniswapV2UserV2DTO uniswapV2UserV2DTO3 = new OASUniswapV2UserV2DTO();
        OASUniswapV2UserV2DTO uniswapV2UserV2DTO4 = uniswapV2UserV2DTO3;

        System.assert(uniswapV2UserV2DTO1.equals(uniswapV2UserV2DTO2));
        System.assert(uniswapV2UserV2DTO2.equals(uniswapV2UserV2DTO1));
        System.assert(uniswapV2UserV2DTO1.equals(uniswapV2UserV2DTO1));
        System.assert(uniswapV2UserV2DTO3.equals(uniswapV2UserV2DTO4));
        System.assert(uniswapV2UserV2DTO4.equals(uniswapV2UserV2DTO3));
        System.assert(uniswapV2UserV2DTO3.equals(uniswapV2UserV2DTO3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASUniswapV2UserV2DTO uniswapV2UserV2DTO1 = OASUniswapV2UserV2DTO.getExample();
        OASUniswapV2UserV2DTO uniswapV2UserV2DTO2 = OASUniswapV2UserV2DTO.getExample();
        OASUniswapV2UserV2DTO uniswapV2UserV2DTO3 = new OASUniswapV2UserV2DTO();
        OASUniswapV2UserV2DTO uniswapV2UserV2DTO4 = new OASUniswapV2UserV2DTO();

        System.assert(uniswapV2UserV2DTO1.equals(uniswapV2UserV2DTO2));
        System.assert(uniswapV2UserV2DTO2.equals(uniswapV2UserV2DTO1));
        System.assert(uniswapV2UserV2DTO3.equals(uniswapV2UserV2DTO4));
        System.assert(uniswapV2UserV2DTO4.equals(uniswapV2UserV2DTO3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASUniswapV2UserV2DTO uniswapV2UserV2DTO1 = OASUniswapV2UserV2DTO.getExample();
        OASUniswapV2UserV2DTO uniswapV2UserV2DTO2 = new OASUniswapV2UserV2DTO();

        System.assertEquals(false, uniswapV2UserV2DTO1.equals('foo'));
        System.assertEquals(false, uniswapV2UserV2DTO2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASUniswapV2UserV2DTO uniswapV2UserV2DTO1 = OASUniswapV2UserV2DTO.getExample();
        OASUniswapV2UserV2DTO uniswapV2UserV2DTO2 = new OASUniswapV2UserV2DTO();
        OASUniswapV2UserV2DTO uniswapV2UserV2DTO3;

        System.assertEquals(false, uniswapV2UserV2DTO1.equals(uniswapV2UserV2DTO3));
        System.assertEquals(false, uniswapV2UserV2DTO2.equals(uniswapV2UserV2DTO3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASUniswapV2UserV2DTO uniswapV2UserV2DTO1 = OASUniswapV2UserV2DTO.getExample();
        OASUniswapV2UserV2DTO uniswapV2UserV2DTO2 = new OASUniswapV2UserV2DTO();

        System.assertEquals(uniswapV2UserV2DTO1.hashCode(), uniswapV2UserV2DTO1.hashCode());
        System.assertEquals(uniswapV2UserV2DTO2.hashCode(), uniswapV2UserV2DTO2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASUniswapV2UserV2DTO uniswapV2UserV2DTO1 = OASUniswapV2UserV2DTO.getExample();
        OASUniswapV2UserV2DTO uniswapV2UserV2DTO2 = OASUniswapV2UserV2DTO.getExample();
        OASUniswapV2UserV2DTO uniswapV2UserV2DTO3 = new OASUniswapV2UserV2DTO();
        OASUniswapV2UserV2DTO uniswapV2UserV2DTO4 = new OASUniswapV2UserV2DTO();

        System.assert(uniswapV2UserV2DTO1.equals(uniswapV2UserV2DTO2));
        System.assert(uniswapV2UserV2DTO3.equals(uniswapV2UserV2DTO4));
        System.assertEquals(uniswapV2UserV2DTO1.hashCode(), uniswapV2UserV2DTO2.hashCode());
        System.assertEquals(uniswapV2UserV2DTO3.hashCode(), uniswapV2UserV2DTO4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASUniswapV2UserV2DTO uniswapV2UserV2DTO = new OASUniswapV2UserV2DTO();
        Map<String, String> x-property-mappings = uniswapV2UserV2DTO.getx-property-mappings();
        System.assertEquals('entryTime', x-property-mappings.get('entry_time'));
        System.assertEquals('recvTime', x-property-mappings.get('recv_time'));
        System.assertEquals('blockNumber', x-property-mappings.get('block_number'));
        System.assertEquals('usdSwapped', x-property-mappings.get('usd_swapped'));
    }
}
