@isTest
private class OASUniswapV2TokenV2DTOTest {
    @isTest
    private static void equalsSameInstance() {
        OASUniswapV2TokenV2DTO uniswapV2TokenV2DTO1 = OASUniswapV2TokenV2DTO.getExample();
        OASUniswapV2TokenV2DTO uniswapV2TokenV2DTO2 = uniswapV2TokenV2DTO1;
        OASUniswapV2TokenV2DTO uniswapV2TokenV2DTO3 = new OASUniswapV2TokenV2DTO();
        OASUniswapV2TokenV2DTO uniswapV2TokenV2DTO4 = uniswapV2TokenV2DTO3;

        System.assert(uniswapV2TokenV2DTO1.equals(uniswapV2TokenV2DTO2));
        System.assert(uniswapV2TokenV2DTO2.equals(uniswapV2TokenV2DTO1));
        System.assert(uniswapV2TokenV2DTO1.equals(uniswapV2TokenV2DTO1));
        System.assert(uniswapV2TokenV2DTO3.equals(uniswapV2TokenV2DTO4));
        System.assert(uniswapV2TokenV2DTO4.equals(uniswapV2TokenV2DTO3));
        System.assert(uniswapV2TokenV2DTO3.equals(uniswapV2TokenV2DTO3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASUniswapV2TokenV2DTO uniswapV2TokenV2DTO1 = OASUniswapV2TokenV2DTO.getExample();
        OASUniswapV2TokenV2DTO uniswapV2TokenV2DTO2 = OASUniswapV2TokenV2DTO.getExample();
        OASUniswapV2TokenV2DTO uniswapV2TokenV2DTO3 = new OASUniswapV2TokenV2DTO();
        OASUniswapV2TokenV2DTO uniswapV2TokenV2DTO4 = new OASUniswapV2TokenV2DTO();

        System.assert(uniswapV2TokenV2DTO1.equals(uniswapV2TokenV2DTO2));
        System.assert(uniswapV2TokenV2DTO2.equals(uniswapV2TokenV2DTO1));
        System.assert(uniswapV2TokenV2DTO3.equals(uniswapV2TokenV2DTO4));
        System.assert(uniswapV2TokenV2DTO4.equals(uniswapV2TokenV2DTO3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASUniswapV2TokenV2DTO uniswapV2TokenV2DTO1 = OASUniswapV2TokenV2DTO.getExample();
        OASUniswapV2TokenV2DTO uniswapV2TokenV2DTO2 = new OASUniswapV2TokenV2DTO();

        System.assertEquals(false, uniswapV2TokenV2DTO1.equals('foo'));
        System.assertEquals(false, uniswapV2TokenV2DTO2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASUniswapV2TokenV2DTO uniswapV2TokenV2DTO1 = OASUniswapV2TokenV2DTO.getExample();
        OASUniswapV2TokenV2DTO uniswapV2TokenV2DTO2 = new OASUniswapV2TokenV2DTO();
        OASUniswapV2TokenV2DTO uniswapV2TokenV2DTO3;

        System.assertEquals(false, uniswapV2TokenV2DTO1.equals(uniswapV2TokenV2DTO3));
        System.assertEquals(false, uniswapV2TokenV2DTO2.equals(uniswapV2TokenV2DTO3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASUniswapV2TokenV2DTO uniswapV2TokenV2DTO1 = OASUniswapV2TokenV2DTO.getExample();
        OASUniswapV2TokenV2DTO uniswapV2TokenV2DTO2 = new OASUniswapV2TokenV2DTO();

        System.assertEquals(uniswapV2TokenV2DTO1.hashCode(), uniswapV2TokenV2DTO1.hashCode());
        System.assertEquals(uniswapV2TokenV2DTO2.hashCode(), uniswapV2TokenV2DTO2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASUniswapV2TokenV2DTO uniswapV2TokenV2DTO1 = OASUniswapV2TokenV2DTO.getExample();
        OASUniswapV2TokenV2DTO uniswapV2TokenV2DTO2 = OASUniswapV2TokenV2DTO.getExample();
        OASUniswapV2TokenV2DTO uniswapV2TokenV2DTO3 = new OASUniswapV2TokenV2DTO();
        OASUniswapV2TokenV2DTO uniswapV2TokenV2DTO4 = new OASUniswapV2TokenV2DTO();

        System.assert(uniswapV2TokenV2DTO1.equals(uniswapV2TokenV2DTO2));
        System.assert(uniswapV2TokenV2DTO3.equals(uniswapV2TokenV2DTO4));
        System.assertEquals(uniswapV2TokenV2DTO1.hashCode(), uniswapV2TokenV2DTO2.hashCode());
        System.assertEquals(uniswapV2TokenV2DTO3.hashCode(), uniswapV2TokenV2DTO4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASUniswapV2TokenV2DTO uniswapV2TokenV2DTO = new OASUniswapV2TokenV2DTO();
        Map<String, String> x-property-mappings = uniswapV2TokenV2DTO.getx-property-mappings();
        System.assertEquals('entryTime', x-property-mappings.get('entry_time'));
        System.assertEquals('recvTime', x-property-mappings.get('recv_time'));
        System.assertEquals('blockNumber', x-property-mappings.get('block_number'));
        System.assertEquals('totalSupply', x-property-mappings.get('total_supply'));
        System.assertEquals('tradeVolume', x-property-mappings.get('trade_volume'));
        System.assertEquals('tradeVolumeUsd', x-property-mappings.get('trade_volume_usd'));
        System.assertEquals('untrackedVolumeUsd', x-property-mappings.get('untracked_volume_usd'));
        System.assertEquals('txCount', x-property-mappings.get('tx_count'));
        System.assertEquals('totalLiquidity', x-property-mappings.get('total_liquidity'));
        System.assertEquals('derivedEth', x-property-mappings.get('derived_eth'));
        System.assertEquals('tokenSymbol', x-property-mappings.get('token_symbol'));
    }
}
