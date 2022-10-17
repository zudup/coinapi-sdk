@isTest
private class OASTokenDTOTest {
    @isTest
    private static void equalsSameInstance() {
        OASTokenDTO tokenDTO1 = OASTokenDTO.getExample();
        OASTokenDTO tokenDTO2 = tokenDTO1;
        OASTokenDTO tokenDTO3 = new OASTokenDTO();
        OASTokenDTO tokenDTO4 = tokenDTO3;

        System.assert(tokenDTO1.equals(tokenDTO2));
        System.assert(tokenDTO2.equals(tokenDTO1));
        System.assert(tokenDTO1.equals(tokenDTO1));
        System.assert(tokenDTO3.equals(tokenDTO4));
        System.assert(tokenDTO4.equals(tokenDTO3));
        System.assert(tokenDTO3.equals(tokenDTO3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASTokenDTO tokenDTO1 = OASTokenDTO.getExample();
        OASTokenDTO tokenDTO2 = OASTokenDTO.getExample();
        OASTokenDTO tokenDTO3 = new OASTokenDTO();
        OASTokenDTO tokenDTO4 = new OASTokenDTO();

        System.assert(tokenDTO1.equals(tokenDTO2));
        System.assert(tokenDTO2.equals(tokenDTO1));
        System.assert(tokenDTO3.equals(tokenDTO4));
        System.assert(tokenDTO4.equals(tokenDTO3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASTokenDTO tokenDTO1 = OASTokenDTO.getExample();
        OASTokenDTO tokenDTO2 = new OASTokenDTO();

        System.assertEquals(false, tokenDTO1.equals('foo'));
        System.assertEquals(false, tokenDTO2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASTokenDTO tokenDTO1 = OASTokenDTO.getExample();
        OASTokenDTO tokenDTO2 = new OASTokenDTO();
        OASTokenDTO tokenDTO3;

        System.assertEquals(false, tokenDTO1.equals(tokenDTO3));
        System.assertEquals(false, tokenDTO2.equals(tokenDTO3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASTokenDTO tokenDTO1 = OASTokenDTO.getExample();
        OASTokenDTO tokenDTO2 = new OASTokenDTO();

        System.assertEquals(tokenDTO1.hashCode(), tokenDTO1.hashCode());
        System.assertEquals(tokenDTO2.hashCode(), tokenDTO2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASTokenDTO tokenDTO1 = OASTokenDTO.getExample();
        OASTokenDTO tokenDTO2 = OASTokenDTO.getExample();
        OASTokenDTO tokenDTO3 = new OASTokenDTO();
        OASTokenDTO tokenDTO4 = new OASTokenDTO();

        System.assert(tokenDTO1.equals(tokenDTO2));
        System.assert(tokenDTO3.equals(tokenDTO4));
        System.assertEquals(tokenDTO1.hashCode(), tokenDTO2.hashCode());
        System.assertEquals(tokenDTO3.hashCode(), tokenDTO4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASTokenDTO tokenDTO = new OASTokenDTO();
        Map<String, String> x-property-mappings = tokenDTO.getx-property-mappings();
        System.assertEquals('entryTime', x-property-mappings.get('entry_time'));
        System.assertEquals('recvTime', x-property-mappings.get('recv_time'));
        System.assertEquals('blockNumber', x-property-mappings.get('block_number'));
        System.assertEquals('totalSupply', x-property-mappings.get('total_supply'));
        System.assertEquals('volumeUsd', x-property-mappings.get('volume_usd'));
        System.assertEquals('untrackedVolumeUsd', x-property-mappings.get('untracked_volume_usd'));
        System.assertEquals('txCount', x-property-mappings.get('tx_count'));
        System.assertEquals('derivedEth', x-property-mappings.get('derived_eth'));
        System.assertEquals('whitelistPairs', x-property-mappings.get('whitelist_pairs'));
        System.assertEquals('tokenSymbol', x-property-mappings.get('token_symbol'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASTokenDTO tokenDTO = new OASTokenDTO();
        System.assertEquals(new List<String>(), tokenDTO.whitelistPairs);
        System.assertEquals(null, tokenDTO.entryTime);
        System.assertEquals(null, tokenDTO.recvTime);
        System.assertEquals(null, tokenDTO.blockNumber);
        System.assertEquals(null, tokenDTO.id);
        System.assertEquals(null, tokenDTO.factory);
        System.assertEquals(null, tokenDTO.symbol);
        System.assertEquals(null, tokenDTO.name);
        System.assertEquals(null, tokenDTO.decimals);
        System.assertEquals(null, tokenDTO.totalSupply);
        System.assertEquals(null, tokenDTO.volume);
        System.assertEquals(null, tokenDTO.volumeUsd);
        System.assertEquals(null, tokenDTO.untrackedVolumeUsd);
        System.assertEquals(null, tokenDTO.txCount);
        System.assertEquals(null, tokenDTO.liquidity);
        System.assertEquals(null, tokenDTO.derivedEth);
        System.assertEquals(null, tokenDTO.vid);
        System.assertEquals(null, tokenDTO.tokenSymbol);
    }
}
