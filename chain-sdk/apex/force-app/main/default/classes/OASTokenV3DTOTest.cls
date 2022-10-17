@isTest
private class OASTokenV3DTOTest {
    @isTest
    private static void equalsSameInstance() {
        OASTokenV3DTO tokenV3DTO1 = OASTokenV3DTO.getExample();
        OASTokenV3DTO tokenV3DTO2 = tokenV3DTO1;
        OASTokenV3DTO tokenV3DTO3 = new OASTokenV3DTO();
        OASTokenV3DTO tokenV3DTO4 = tokenV3DTO3;

        System.assert(tokenV3DTO1.equals(tokenV3DTO2));
        System.assert(tokenV3DTO2.equals(tokenV3DTO1));
        System.assert(tokenV3DTO1.equals(tokenV3DTO1));
        System.assert(tokenV3DTO3.equals(tokenV3DTO4));
        System.assert(tokenV3DTO4.equals(tokenV3DTO3));
        System.assert(tokenV3DTO3.equals(tokenV3DTO3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASTokenV3DTO tokenV3DTO1 = OASTokenV3DTO.getExample();
        OASTokenV3DTO tokenV3DTO2 = OASTokenV3DTO.getExample();
        OASTokenV3DTO tokenV3DTO3 = new OASTokenV3DTO();
        OASTokenV3DTO tokenV3DTO4 = new OASTokenV3DTO();

        System.assert(tokenV3DTO1.equals(tokenV3DTO2));
        System.assert(tokenV3DTO2.equals(tokenV3DTO1));
        System.assert(tokenV3DTO3.equals(tokenV3DTO4));
        System.assert(tokenV3DTO4.equals(tokenV3DTO3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASTokenV3DTO tokenV3DTO1 = OASTokenV3DTO.getExample();
        OASTokenV3DTO tokenV3DTO2 = new OASTokenV3DTO();

        System.assertEquals(false, tokenV3DTO1.equals('foo'));
        System.assertEquals(false, tokenV3DTO2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASTokenV3DTO tokenV3DTO1 = OASTokenV3DTO.getExample();
        OASTokenV3DTO tokenV3DTO2 = new OASTokenV3DTO();
        OASTokenV3DTO tokenV3DTO3;

        System.assertEquals(false, tokenV3DTO1.equals(tokenV3DTO3));
        System.assertEquals(false, tokenV3DTO2.equals(tokenV3DTO3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASTokenV3DTO tokenV3DTO1 = OASTokenV3DTO.getExample();
        OASTokenV3DTO tokenV3DTO2 = new OASTokenV3DTO();

        System.assertEquals(tokenV3DTO1.hashCode(), tokenV3DTO1.hashCode());
        System.assertEquals(tokenV3DTO2.hashCode(), tokenV3DTO2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASTokenV3DTO tokenV3DTO1 = OASTokenV3DTO.getExample();
        OASTokenV3DTO tokenV3DTO2 = OASTokenV3DTO.getExample();
        OASTokenV3DTO tokenV3DTO3 = new OASTokenV3DTO();
        OASTokenV3DTO tokenV3DTO4 = new OASTokenV3DTO();

        System.assert(tokenV3DTO1.equals(tokenV3DTO2));
        System.assert(tokenV3DTO3.equals(tokenV3DTO4));
        System.assertEquals(tokenV3DTO1.hashCode(), tokenV3DTO2.hashCode());
        System.assertEquals(tokenV3DTO3.hashCode(), tokenV3DTO4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASTokenV3DTO tokenV3DTO = new OASTokenV3DTO();
        Map<String, String> x-property-mappings = tokenV3DTO.getx-property-mappings();
        System.assertEquals('entryTime', x-property-mappings.get('entry_time'));
        System.assertEquals('recvTime', x-property-mappings.get('recv_time'));
        System.assertEquals('blockNumber', x-property-mappings.get('block_number'));
        System.assertEquals('totalSupply', x-property-mappings.get('total_supply'));
        System.assertEquals('volumeUsd', x-property-mappings.get('volume_usd'));
        System.assertEquals('untrackedVolumeUsd', x-property-mappings.get('untracked_volume_usd'));
        System.assertEquals('feesUsd', x-property-mappings.get('fees_usd'));
        System.assertEquals('txCount', x-property-mappings.get('tx_count'));
        System.assertEquals('poolCount', x-property-mappings.get('pool_count'));
        System.assertEquals('totalValueLocked', x-property-mappings.get('total_value_locked'));
        System.assertEquals('totalValueLockedUsd', x-property-mappings.get('total_value_locked_usd'));
        System.assertEquals('totalValueLockedUsdUntracked', x-property-mappings.get('total_value_locked_usd_untracked'));
        System.assertEquals('derivedEth', x-property-mappings.get('derived_eth'));
        System.assertEquals('whitelistPools', x-property-mappings.get('whitelist_pools'));
        System.assertEquals('tokenSymbol', x-property-mappings.get('token_symbol'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASTokenV3DTO tokenV3DTO = new OASTokenV3DTO();
        System.assertEquals(new List<String>(), tokenV3DTO.whitelistPools);
        System.assertEquals(null, tokenV3DTO.entryTime);
        System.assertEquals(null, tokenV3DTO.recvTime);
        System.assertEquals(null, tokenV3DTO.blockNumber);
        System.assertEquals(null, tokenV3DTO.vid);
        System.assertEquals(null, tokenV3DTO.id);
        System.assertEquals(null, tokenV3DTO.symbol);
        System.assertEquals(null, tokenV3DTO.name);
        System.assertEquals(null, tokenV3DTO.decimals);
        System.assertEquals(null, tokenV3DTO.totalSupply);
        System.assertEquals(null, tokenV3DTO.volume);
        System.assertEquals(null, tokenV3DTO.volumeUsd);
        System.assertEquals(null, tokenV3DTO.untrackedVolumeUsd);
        System.assertEquals(null, tokenV3DTO.feesUsd);
        System.assertEquals(null, tokenV3DTO.txCount);
        System.assertEquals(null, tokenV3DTO.poolCount);
        System.assertEquals(null, tokenV3DTO.totalValueLocked);
        System.assertEquals(null, tokenV3DTO.totalValueLockedUsd);
        System.assertEquals(null, tokenV3DTO.totalValueLockedUsdUntracked);
        System.assertEquals(null, tokenV3DTO.derivedEth);
        System.assertEquals(null, tokenV3DTO.tokenSymbol);
    }
}
