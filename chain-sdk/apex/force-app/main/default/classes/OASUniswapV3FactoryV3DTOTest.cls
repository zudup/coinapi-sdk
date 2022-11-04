@isTest
private class OASUniswapV3FactoryV3DTOTest {
    @isTest
    private static void equalsSameInstance() {
        OASUniswapV3FactoryV3DTO uniswapV3FactoryV3DTO1 = OASUniswapV3FactoryV3DTO.getExample();
        OASUniswapV3FactoryV3DTO uniswapV3FactoryV3DTO2 = uniswapV3FactoryV3DTO1;
        OASUniswapV3FactoryV3DTO uniswapV3FactoryV3DTO3 = new OASUniswapV3FactoryV3DTO();
        OASUniswapV3FactoryV3DTO uniswapV3FactoryV3DTO4 = uniswapV3FactoryV3DTO3;

        System.assert(uniswapV3FactoryV3DTO1.equals(uniswapV3FactoryV3DTO2));
        System.assert(uniswapV3FactoryV3DTO2.equals(uniswapV3FactoryV3DTO1));
        System.assert(uniswapV3FactoryV3DTO1.equals(uniswapV3FactoryV3DTO1));
        System.assert(uniswapV3FactoryV3DTO3.equals(uniswapV3FactoryV3DTO4));
        System.assert(uniswapV3FactoryV3DTO4.equals(uniswapV3FactoryV3DTO3));
        System.assert(uniswapV3FactoryV3DTO3.equals(uniswapV3FactoryV3DTO3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASUniswapV3FactoryV3DTO uniswapV3FactoryV3DTO1 = OASUniswapV3FactoryV3DTO.getExample();
        OASUniswapV3FactoryV3DTO uniswapV3FactoryV3DTO2 = OASUniswapV3FactoryV3DTO.getExample();
        OASUniswapV3FactoryV3DTO uniswapV3FactoryV3DTO3 = new OASUniswapV3FactoryV3DTO();
        OASUniswapV3FactoryV3DTO uniswapV3FactoryV3DTO4 = new OASUniswapV3FactoryV3DTO();

        System.assert(uniswapV3FactoryV3DTO1.equals(uniswapV3FactoryV3DTO2));
        System.assert(uniswapV3FactoryV3DTO2.equals(uniswapV3FactoryV3DTO1));
        System.assert(uniswapV3FactoryV3DTO3.equals(uniswapV3FactoryV3DTO4));
        System.assert(uniswapV3FactoryV3DTO4.equals(uniswapV3FactoryV3DTO3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASUniswapV3FactoryV3DTO uniswapV3FactoryV3DTO1 = OASUniswapV3FactoryV3DTO.getExample();
        OASUniswapV3FactoryV3DTO uniswapV3FactoryV3DTO2 = new OASUniswapV3FactoryV3DTO();

        System.assertEquals(false, uniswapV3FactoryV3DTO1.equals('foo'));
        System.assertEquals(false, uniswapV3FactoryV3DTO2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASUniswapV3FactoryV3DTO uniswapV3FactoryV3DTO1 = OASUniswapV3FactoryV3DTO.getExample();
        OASUniswapV3FactoryV3DTO uniswapV3FactoryV3DTO2 = new OASUniswapV3FactoryV3DTO();
        OASUniswapV3FactoryV3DTO uniswapV3FactoryV3DTO3;

        System.assertEquals(false, uniswapV3FactoryV3DTO1.equals(uniswapV3FactoryV3DTO3));
        System.assertEquals(false, uniswapV3FactoryV3DTO2.equals(uniswapV3FactoryV3DTO3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASUniswapV3FactoryV3DTO uniswapV3FactoryV3DTO1 = OASUniswapV3FactoryV3DTO.getExample();
        OASUniswapV3FactoryV3DTO uniswapV3FactoryV3DTO2 = new OASUniswapV3FactoryV3DTO();

        System.assertEquals(uniswapV3FactoryV3DTO1.hashCode(), uniswapV3FactoryV3DTO1.hashCode());
        System.assertEquals(uniswapV3FactoryV3DTO2.hashCode(), uniswapV3FactoryV3DTO2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASUniswapV3FactoryV3DTO uniswapV3FactoryV3DTO1 = OASUniswapV3FactoryV3DTO.getExample();
        OASUniswapV3FactoryV3DTO uniswapV3FactoryV3DTO2 = OASUniswapV3FactoryV3DTO.getExample();
        OASUniswapV3FactoryV3DTO uniswapV3FactoryV3DTO3 = new OASUniswapV3FactoryV3DTO();
        OASUniswapV3FactoryV3DTO uniswapV3FactoryV3DTO4 = new OASUniswapV3FactoryV3DTO();

        System.assert(uniswapV3FactoryV3DTO1.equals(uniswapV3FactoryV3DTO2));
        System.assert(uniswapV3FactoryV3DTO3.equals(uniswapV3FactoryV3DTO4));
        System.assertEquals(uniswapV3FactoryV3DTO1.hashCode(), uniswapV3FactoryV3DTO2.hashCode());
        System.assertEquals(uniswapV3FactoryV3DTO3.hashCode(), uniswapV3FactoryV3DTO4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASUniswapV3FactoryV3DTO uniswapV3FactoryV3DTO = new OASUniswapV3FactoryV3DTO();
        Map<String, String> x-property-mappings = uniswapV3FactoryV3DTO.getx-property-mappings();
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
