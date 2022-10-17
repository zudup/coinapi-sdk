@isTest
private class OASTokenV2DTOTest {
    @isTest
    private static void equalsSameInstance() {
        OASTokenV2DTO tokenV2DTO1 = OASTokenV2DTO.getExample();
        OASTokenV2DTO tokenV2DTO2 = tokenV2DTO1;
        OASTokenV2DTO tokenV2DTO3 = new OASTokenV2DTO();
        OASTokenV2DTO tokenV2DTO4 = tokenV2DTO3;

        System.assert(tokenV2DTO1.equals(tokenV2DTO2));
        System.assert(tokenV2DTO2.equals(tokenV2DTO1));
        System.assert(tokenV2DTO1.equals(tokenV2DTO1));
        System.assert(tokenV2DTO3.equals(tokenV2DTO4));
        System.assert(tokenV2DTO4.equals(tokenV2DTO3));
        System.assert(tokenV2DTO3.equals(tokenV2DTO3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASTokenV2DTO tokenV2DTO1 = OASTokenV2DTO.getExample();
        OASTokenV2DTO tokenV2DTO2 = OASTokenV2DTO.getExample();
        OASTokenV2DTO tokenV2DTO3 = new OASTokenV2DTO();
        OASTokenV2DTO tokenV2DTO4 = new OASTokenV2DTO();

        System.assert(tokenV2DTO1.equals(tokenV2DTO2));
        System.assert(tokenV2DTO2.equals(tokenV2DTO1));
        System.assert(tokenV2DTO3.equals(tokenV2DTO4));
        System.assert(tokenV2DTO4.equals(tokenV2DTO3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASTokenV2DTO tokenV2DTO1 = OASTokenV2DTO.getExample();
        OASTokenV2DTO tokenV2DTO2 = new OASTokenV2DTO();

        System.assertEquals(false, tokenV2DTO1.equals('foo'));
        System.assertEquals(false, tokenV2DTO2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASTokenV2DTO tokenV2DTO1 = OASTokenV2DTO.getExample();
        OASTokenV2DTO tokenV2DTO2 = new OASTokenV2DTO();
        OASTokenV2DTO tokenV2DTO3;

        System.assertEquals(false, tokenV2DTO1.equals(tokenV2DTO3));
        System.assertEquals(false, tokenV2DTO2.equals(tokenV2DTO3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASTokenV2DTO tokenV2DTO1 = OASTokenV2DTO.getExample();
        OASTokenV2DTO tokenV2DTO2 = new OASTokenV2DTO();

        System.assertEquals(tokenV2DTO1.hashCode(), tokenV2DTO1.hashCode());
        System.assertEquals(tokenV2DTO2.hashCode(), tokenV2DTO2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASTokenV2DTO tokenV2DTO1 = OASTokenV2DTO.getExample();
        OASTokenV2DTO tokenV2DTO2 = OASTokenV2DTO.getExample();
        OASTokenV2DTO tokenV2DTO3 = new OASTokenV2DTO();
        OASTokenV2DTO tokenV2DTO4 = new OASTokenV2DTO();

        System.assert(tokenV2DTO1.equals(tokenV2DTO2));
        System.assert(tokenV2DTO3.equals(tokenV2DTO4));
        System.assertEquals(tokenV2DTO1.hashCode(), tokenV2DTO2.hashCode());
        System.assertEquals(tokenV2DTO3.hashCode(), tokenV2DTO4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASTokenV2DTO tokenV2DTO = new OASTokenV2DTO();
        Map<String, String> x-property-mappings = tokenV2DTO.getx-property-mappings();
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
