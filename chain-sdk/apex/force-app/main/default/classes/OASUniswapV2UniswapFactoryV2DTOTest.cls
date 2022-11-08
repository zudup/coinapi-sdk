@isTest
private class OASUniswapV2UniswapFactoryV2DTOTest {
    @isTest
    private static void equalsSameInstance() {
        OASUniswapV2UniswapFactoryV2DTO uniswapV2UniswapFactoryV2DTO1 = OASUniswapV2UniswapFactoryV2DTO.getExample();
        OASUniswapV2UniswapFactoryV2DTO uniswapV2UniswapFactoryV2DTO2 = uniswapV2UniswapFactoryV2DTO1;
        OASUniswapV2UniswapFactoryV2DTO uniswapV2UniswapFactoryV2DTO3 = new OASUniswapV2UniswapFactoryV2DTO();
        OASUniswapV2UniswapFactoryV2DTO uniswapV2UniswapFactoryV2DTO4 = uniswapV2UniswapFactoryV2DTO3;

        System.assert(uniswapV2UniswapFactoryV2DTO1.equals(uniswapV2UniswapFactoryV2DTO2));
        System.assert(uniswapV2UniswapFactoryV2DTO2.equals(uniswapV2UniswapFactoryV2DTO1));
        System.assert(uniswapV2UniswapFactoryV2DTO1.equals(uniswapV2UniswapFactoryV2DTO1));
        System.assert(uniswapV2UniswapFactoryV2DTO3.equals(uniswapV2UniswapFactoryV2DTO4));
        System.assert(uniswapV2UniswapFactoryV2DTO4.equals(uniswapV2UniswapFactoryV2DTO3));
        System.assert(uniswapV2UniswapFactoryV2DTO3.equals(uniswapV2UniswapFactoryV2DTO3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASUniswapV2UniswapFactoryV2DTO uniswapV2UniswapFactoryV2DTO1 = OASUniswapV2UniswapFactoryV2DTO.getExample();
        OASUniswapV2UniswapFactoryV2DTO uniswapV2UniswapFactoryV2DTO2 = OASUniswapV2UniswapFactoryV2DTO.getExample();
        OASUniswapV2UniswapFactoryV2DTO uniswapV2UniswapFactoryV2DTO3 = new OASUniswapV2UniswapFactoryV2DTO();
        OASUniswapV2UniswapFactoryV2DTO uniswapV2UniswapFactoryV2DTO4 = new OASUniswapV2UniswapFactoryV2DTO();

        System.assert(uniswapV2UniswapFactoryV2DTO1.equals(uniswapV2UniswapFactoryV2DTO2));
        System.assert(uniswapV2UniswapFactoryV2DTO2.equals(uniswapV2UniswapFactoryV2DTO1));
        System.assert(uniswapV2UniswapFactoryV2DTO3.equals(uniswapV2UniswapFactoryV2DTO4));
        System.assert(uniswapV2UniswapFactoryV2DTO4.equals(uniswapV2UniswapFactoryV2DTO3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASUniswapV2UniswapFactoryV2DTO uniswapV2UniswapFactoryV2DTO1 = OASUniswapV2UniswapFactoryV2DTO.getExample();
        OASUniswapV2UniswapFactoryV2DTO uniswapV2UniswapFactoryV2DTO2 = new OASUniswapV2UniswapFactoryV2DTO();

        System.assertEquals(false, uniswapV2UniswapFactoryV2DTO1.equals('foo'));
        System.assertEquals(false, uniswapV2UniswapFactoryV2DTO2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASUniswapV2UniswapFactoryV2DTO uniswapV2UniswapFactoryV2DTO1 = OASUniswapV2UniswapFactoryV2DTO.getExample();
        OASUniswapV2UniswapFactoryV2DTO uniswapV2UniswapFactoryV2DTO2 = new OASUniswapV2UniswapFactoryV2DTO();
        OASUniswapV2UniswapFactoryV2DTO uniswapV2UniswapFactoryV2DTO3;

        System.assertEquals(false, uniswapV2UniswapFactoryV2DTO1.equals(uniswapV2UniswapFactoryV2DTO3));
        System.assertEquals(false, uniswapV2UniswapFactoryV2DTO2.equals(uniswapV2UniswapFactoryV2DTO3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASUniswapV2UniswapFactoryV2DTO uniswapV2UniswapFactoryV2DTO1 = OASUniswapV2UniswapFactoryV2DTO.getExample();
        OASUniswapV2UniswapFactoryV2DTO uniswapV2UniswapFactoryV2DTO2 = new OASUniswapV2UniswapFactoryV2DTO();

        System.assertEquals(uniswapV2UniswapFactoryV2DTO1.hashCode(), uniswapV2UniswapFactoryV2DTO1.hashCode());
        System.assertEquals(uniswapV2UniswapFactoryV2DTO2.hashCode(), uniswapV2UniswapFactoryV2DTO2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASUniswapV2UniswapFactoryV2DTO uniswapV2UniswapFactoryV2DTO1 = OASUniswapV2UniswapFactoryV2DTO.getExample();
        OASUniswapV2UniswapFactoryV2DTO uniswapV2UniswapFactoryV2DTO2 = OASUniswapV2UniswapFactoryV2DTO.getExample();
        OASUniswapV2UniswapFactoryV2DTO uniswapV2UniswapFactoryV2DTO3 = new OASUniswapV2UniswapFactoryV2DTO();
        OASUniswapV2UniswapFactoryV2DTO uniswapV2UniswapFactoryV2DTO4 = new OASUniswapV2UniswapFactoryV2DTO();

        System.assert(uniswapV2UniswapFactoryV2DTO1.equals(uniswapV2UniswapFactoryV2DTO2));
        System.assert(uniswapV2UniswapFactoryV2DTO3.equals(uniswapV2UniswapFactoryV2DTO4));
        System.assertEquals(uniswapV2UniswapFactoryV2DTO1.hashCode(), uniswapV2UniswapFactoryV2DTO2.hashCode());
        System.assertEquals(uniswapV2UniswapFactoryV2DTO3.hashCode(), uniswapV2UniswapFactoryV2DTO4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASUniswapV2UniswapFactoryV2DTO uniswapV2UniswapFactoryV2DTO = new OASUniswapV2UniswapFactoryV2DTO();
        Map<String, String> x-property-mappings = uniswapV2UniswapFactoryV2DTO.getx-property-mappings();
        System.assertEquals('entryTime', x-property-mappings.get('entry_time'));
        System.assertEquals('recvTime', x-property-mappings.get('recv_time'));
        System.assertEquals('blockNumber', x-property-mappings.get('block_number'));
        System.assertEquals('pairCount', x-property-mappings.get('pair_count'));
        System.assertEquals('totalVolumeUsd', x-property-mappings.get('total_volume_usd'));
        System.assertEquals('totalVolumeEth', x-property-mappings.get('total_volume_eth'));
        System.assertEquals('untrackedVolumeUsd', x-property-mappings.get('untracked_volume_usd'));
        System.assertEquals('totalLiquidityUsd', x-property-mappings.get('total_liquidity_usd'));
        System.assertEquals('totalLiquidityEth', x-property-mappings.get('total_liquidity_eth'));
        System.assertEquals('txCount', x-property-mappings.get('tx_count'));
    }
}
