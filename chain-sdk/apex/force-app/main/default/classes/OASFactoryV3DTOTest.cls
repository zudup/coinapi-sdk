@isTest
private class OASFactoryV3DTOTest {
    @isTest
    private static void equalsSameInstance() {
        OASFactoryV3DTO factoryV3DTO1 = OASFactoryV3DTO.getExample();
        OASFactoryV3DTO factoryV3DTO2 = factoryV3DTO1;
        OASFactoryV3DTO factoryV3DTO3 = new OASFactoryV3DTO();
        OASFactoryV3DTO factoryV3DTO4 = factoryV3DTO3;

        System.assert(factoryV3DTO1.equals(factoryV3DTO2));
        System.assert(factoryV3DTO2.equals(factoryV3DTO1));
        System.assert(factoryV3DTO1.equals(factoryV3DTO1));
        System.assert(factoryV3DTO3.equals(factoryV3DTO4));
        System.assert(factoryV3DTO4.equals(factoryV3DTO3));
        System.assert(factoryV3DTO3.equals(factoryV3DTO3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASFactoryV3DTO factoryV3DTO1 = OASFactoryV3DTO.getExample();
        OASFactoryV3DTO factoryV3DTO2 = OASFactoryV3DTO.getExample();
        OASFactoryV3DTO factoryV3DTO3 = new OASFactoryV3DTO();
        OASFactoryV3DTO factoryV3DTO4 = new OASFactoryV3DTO();

        System.assert(factoryV3DTO1.equals(factoryV3DTO2));
        System.assert(factoryV3DTO2.equals(factoryV3DTO1));
        System.assert(factoryV3DTO3.equals(factoryV3DTO4));
        System.assert(factoryV3DTO4.equals(factoryV3DTO3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASFactoryV3DTO factoryV3DTO1 = OASFactoryV3DTO.getExample();
        OASFactoryV3DTO factoryV3DTO2 = new OASFactoryV3DTO();

        System.assertEquals(false, factoryV3DTO1.equals('foo'));
        System.assertEquals(false, factoryV3DTO2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASFactoryV3DTO factoryV3DTO1 = OASFactoryV3DTO.getExample();
        OASFactoryV3DTO factoryV3DTO2 = new OASFactoryV3DTO();
        OASFactoryV3DTO factoryV3DTO3;

        System.assertEquals(false, factoryV3DTO1.equals(factoryV3DTO3));
        System.assertEquals(false, factoryV3DTO2.equals(factoryV3DTO3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASFactoryV3DTO factoryV3DTO1 = OASFactoryV3DTO.getExample();
        OASFactoryV3DTO factoryV3DTO2 = new OASFactoryV3DTO();

        System.assertEquals(factoryV3DTO1.hashCode(), factoryV3DTO1.hashCode());
        System.assertEquals(factoryV3DTO2.hashCode(), factoryV3DTO2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASFactoryV3DTO factoryV3DTO1 = OASFactoryV3DTO.getExample();
        OASFactoryV3DTO factoryV3DTO2 = OASFactoryV3DTO.getExample();
        OASFactoryV3DTO factoryV3DTO3 = new OASFactoryV3DTO();
        OASFactoryV3DTO factoryV3DTO4 = new OASFactoryV3DTO();

        System.assert(factoryV3DTO1.equals(factoryV3DTO2));
        System.assert(factoryV3DTO3.equals(factoryV3DTO4));
        System.assertEquals(factoryV3DTO1.hashCode(), factoryV3DTO2.hashCode());
        System.assertEquals(factoryV3DTO3.hashCode(), factoryV3DTO4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASFactoryV3DTO factoryV3DTO = new OASFactoryV3DTO();
        Map<String, String> x-property-mappings = factoryV3DTO.getx-property-mappings();
        System.assertEquals('entryTime', x-property-mappings.get('entry_time'));
        System.assertEquals('recvTime', x-property-mappings.get('recv_time'));
        System.assertEquals('blockNumber', x-property-mappings.get('block_number'));
        System.assertEquals('poolCount', x-property-mappings.get('pool_count'));
        System.assertEquals('txCount', x-property-mappings.get('tx_count'));
        System.assertEquals('totalVolumeUsd', x-property-mappings.get('total_volume_usd'));
        System.assertEquals('totalVolumeEth', x-property-mappings.get('total_volume_eth'));
        System.assertEquals('totalFeesUsd', x-property-mappings.get('total_fees_usd'));
        System.assertEquals('totalFeesEth', x-property-mappings.get('total_fees_eth'));
        System.assertEquals('untrackedVolumeUsd', x-property-mappings.get('untracked_volume_usd'));
        System.assertEquals('totalValueLockedUsd', x-property-mappings.get('total_value_locked_usd'));
        System.assertEquals('totalValueLockedEth', x-property-mappings.get('total_value_locked_eth'));
        System.assertEquals('totalValueLockedUsdUntracked', x-property-mappings.get('total_value_locked_usd_untracked'));
        System.assertEquals('totalValueLockedEthUntracked', x-property-mappings.get('total_value_locked_eth_untracked'));
    }
}
