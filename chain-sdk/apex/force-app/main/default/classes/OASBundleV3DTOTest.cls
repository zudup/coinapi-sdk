@isTest
private class OASBundleV3DTOTest {
    @isTest
    private static void equalsSameInstance() {
        OASBundleV3DTO bundleV3DTO1 = OASBundleV3DTO.getExample();
        OASBundleV3DTO bundleV3DTO2 = bundleV3DTO1;
        OASBundleV3DTO bundleV3DTO3 = new OASBundleV3DTO();
        OASBundleV3DTO bundleV3DTO4 = bundleV3DTO3;

        System.assert(bundleV3DTO1.equals(bundleV3DTO2));
        System.assert(bundleV3DTO2.equals(bundleV3DTO1));
        System.assert(bundleV3DTO1.equals(bundleV3DTO1));
        System.assert(bundleV3DTO3.equals(bundleV3DTO4));
        System.assert(bundleV3DTO4.equals(bundleV3DTO3));
        System.assert(bundleV3DTO3.equals(bundleV3DTO3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBundleV3DTO bundleV3DTO1 = OASBundleV3DTO.getExample();
        OASBundleV3DTO bundleV3DTO2 = OASBundleV3DTO.getExample();
        OASBundleV3DTO bundleV3DTO3 = new OASBundleV3DTO();
        OASBundleV3DTO bundleV3DTO4 = new OASBundleV3DTO();

        System.assert(bundleV3DTO1.equals(bundleV3DTO2));
        System.assert(bundleV3DTO2.equals(bundleV3DTO1));
        System.assert(bundleV3DTO3.equals(bundleV3DTO4));
        System.assert(bundleV3DTO4.equals(bundleV3DTO3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBundleV3DTO bundleV3DTO1 = OASBundleV3DTO.getExample();
        OASBundleV3DTO bundleV3DTO2 = new OASBundleV3DTO();

        System.assertEquals(false, bundleV3DTO1.equals('foo'));
        System.assertEquals(false, bundleV3DTO2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBundleV3DTO bundleV3DTO1 = OASBundleV3DTO.getExample();
        OASBundleV3DTO bundleV3DTO2 = new OASBundleV3DTO();
        OASBundleV3DTO bundleV3DTO3;

        System.assertEquals(false, bundleV3DTO1.equals(bundleV3DTO3));
        System.assertEquals(false, bundleV3DTO2.equals(bundleV3DTO3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBundleV3DTO bundleV3DTO1 = OASBundleV3DTO.getExample();
        OASBundleV3DTO bundleV3DTO2 = new OASBundleV3DTO();

        System.assertEquals(bundleV3DTO1.hashCode(), bundleV3DTO1.hashCode());
        System.assertEquals(bundleV3DTO2.hashCode(), bundleV3DTO2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBundleV3DTO bundleV3DTO1 = OASBundleV3DTO.getExample();
        OASBundleV3DTO bundleV3DTO2 = OASBundleV3DTO.getExample();
        OASBundleV3DTO bundleV3DTO3 = new OASBundleV3DTO();
        OASBundleV3DTO bundleV3DTO4 = new OASBundleV3DTO();

        System.assert(bundleV3DTO1.equals(bundleV3DTO2));
        System.assert(bundleV3DTO3.equals(bundleV3DTO4));
        System.assertEquals(bundleV3DTO1.hashCode(), bundleV3DTO2.hashCode());
        System.assertEquals(bundleV3DTO3.hashCode(), bundleV3DTO4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASBundleV3DTO bundleV3DTO = new OASBundleV3DTO();
        Map<String, String> x-property-mappings = bundleV3DTO.getx-property-mappings();
        System.assertEquals('entryTime', x-property-mappings.get('entry_time'));
        System.assertEquals('recvTime', x-property-mappings.get('recv_time'));
        System.assertEquals('blockNumber', x-property-mappings.get('block_number'));
        System.assertEquals('ethPriceUsd', x-property-mappings.get('eth_price_usd'));
    }
}
