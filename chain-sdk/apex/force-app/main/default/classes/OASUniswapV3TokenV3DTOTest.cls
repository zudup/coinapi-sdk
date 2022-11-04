@isTest
private class OASUniswapV3TokenV3DTOTest {
    @isTest
    private static void equalsSameInstance() {
        OASUniswapV3TokenV3DTO uniswapV3TokenV3DTO1 = OASUniswapV3TokenV3DTO.getExample();
        OASUniswapV3TokenV3DTO uniswapV3TokenV3DTO2 = uniswapV3TokenV3DTO1;
        OASUniswapV3TokenV3DTO uniswapV3TokenV3DTO3 = new OASUniswapV3TokenV3DTO();
        OASUniswapV3TokenV3DTO uniswapV3TokenV3DTO4 = uniswapV3TokenV3DTO3;

        System.assert(uniswapV3TokenV3DTO1.equals(uniswapV3TokenV3DTO2));
        System.assert(uniswapV3TokenV3DTO2.equals(uniswapV3TokenV3DTO1));
        System.assert(uniswapV3TokenV3DTO1.equals(uniswapV3TokenV3DTO1));
        System.assert(uniswapV3TokenV3DTO3.equals(uniswapV3TokenV3DTO4));
        System.assert(uniswapV3TokenV3DTO4.equals(uniswapV3TokenV3DTO3));
        System.assert(uniswapV3TokenV3DTO3.equals(uniswapV3TokenV3DTO3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASUniswapV3TokenV3DTO uniswapV3TokenV3DTO1 = OASUniswapV3TokenV3DTO.getExample();
        OASUniswapV3TokenV3DTO uniswapV3TokenV3DTO2 = OASUniswapV3TokenV3DTO.getExample();
        OASUniswapV3TokenV3DTO uniswapV3TokenV3DTO3 = new OASUniswapV3TokenV3DTO();
        OASUniswapV3TokenV3DTO uniswapV3TokenV3DTO4 = new OASUniswapV3TokenV3DTO();

        System.assert(uniswapV3TokenV3DTO1.equals(uniswapV3TokenV3DTO2));
        System.assert(uniswapV3TokenV3DTO2.equals(uniswapV3TokenV3DTO1));
        System.assert(uniswapV3TokenV3DTO3.equals(uniswapV3TokenV3DTO4));
        System.assert(uniswapV3TokenV3DTO4.equals(uniswapV3TokenV3DTO3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASUniswapV3TokenV3DTO uniswapV3TokenV3DTO1 = OASUniswapV3TokenV3DTO.getExample();
        OASUniswapV3TokenV3DTO uniswapV3TokenV3DTO2 = new OASUniswapV3TokenV3DTO();

        System.assertEquals(false, uniswapV3TokenV3DTO1.equals('foo'));
        System.assertEquals(false, uniswapV3TokenV3DTO2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASUniswapV3TokenV3DTO uniswapV3TokenV3DTO1 = OASUniswapV3TokenV3DTO.getExample();
        OASUniswapV3TokenV3DTO uniswapV3TokenV3DTO2 = new OASUniswapV3TokenV3DTO();
        OASUniswapV3TokenV3DTO uniswapV3TokenV3DTO3;

        System.assertEquals(false, uniswapV3TokenV3DTO1.equals(uniswapV3TokenV3DTO3));
        System.assertEquals(false, uniswapV3TokenV3DTO2.equals(uniswapV3TokenV3DTO3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASUniswapV3TokenV3DTO uniswapV3TokenV3DTO1 = OASUniswapV3TokenV3DTO.getExample();
        OASUniswapV3TokenV3DTO uniswapV3TokenV3DTO2 = new OASUniswapV3TokenV3DTO();

        System.assertEquals(uniswapV3TokenV3DTO1.hashCode(), uniswapV3TokenV3DTO1.hashCode());
        System.assertEquals(uniswapV3TokenV3DTO2.hashCode(), uniswapV3TokenV3DTO2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASUniswapV3TokenV3DTO uniswapV3TokenV3DTO1 = OASUniswapV3TokenV3DTO.getExample();
        OASUniswapV3TokenV3DTO uniswapV3TokenV3DTO2 = OASUniswapV3TokenV3DTO.getExample();
        OASUniswapV3TokenV3DTO uniswapV3TokenV3DTO3 = new OASUniswapV3TokenV3DTO();
        OASUniswapV3TokenV3DTO uniswapV3TokenV3DTO4 = new OASUniswapV3TokenV3DTO();

        System.assert(uniswapV3TokenV3DTO1.equals(uniswapV3TokenV3DTO2));
        System.assert(uniswapV3TokenV3DTO3.equals(uniswapV3TokenV3DTO4));
        System.assertEquals(uniswapV3TokenV3DTO1.hashCode(), uniswapV3TokenV3DTO2.hashCode());
        System.assertEquals(uniswapV3TokenV3DTO3.hashCode(), uniswapV3TokenV3DTO4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASUniswapV3TokenV3DTO uniswapV3TokenV3DTO = new OASUniswapV3TokenV3DTO();
        Map<String, String> x-property-mappings = uniswapV3TokenV3DTO.getx-property-mappings();
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
        OASUniswapV3TokenV3DTO uniswapV3TokenV3DTO = new OASUniswapV3TokenV3DTO();
        System.assertEquals(new List<String>(), uniswapV3TokenV3DTO.whitelistPools);
        System.assertEquals(null, uniswapV3TokenV3DTO.entryTime);
        System.assertEquals(null, uniswapV3TokenV3DTO.recvTime);
        System.assertEquals(null, uniswapV3TokenV3DTO.blockNumber);
        System.assertEquals(null, uniswapV3TokenV3DTO.vid);
        System.assertEquals(null, uniswapV3TokenV3DTO.id);
        System.assertEquals(null, uniswapV3TokenV3DTO.symbol);
        System.assertEquals(null, uniswapV3TokenV3DTO.name);
        System.assertEquals(null, uniswapV3TokenV3DTO.decimals);
        System.assertEquals(null, uniswapV3TokenV3DTO.totalSupply);
        System.assertEquals(null, uniswapV3TokenV3DTO.volume);
        System.assertEquals(null, uniswapV3TokenV3DTO.volumeUsd);
        System.assertEquals(null, uniswapV3TokenV3DTO.untrackedVolumeUsd);
        System.assertEquals(null, uniswapV3TokenV3DTO.feesUsd);
        System.assertEquals(null, uniswapV3TokenV3DTO.txCount);
        System.assertEquals(null, uniswapV3TokenV3DTO.poolCount);
        System.assertEquals(null, uniswapV3TokenV3DTO.totalValueLocked);
        System.assertEquals(null, uniswapV3TokenV3DTO.totalValueLockedUsd);
        System.assertEquals(null, uniswapV3TokenV3DTO.totalValueLockedUsdUntracked);
        System.assertEquals(null, uniswapV3TokenV3DTO.derivedEth);
        System.assertEquals(null, uniswapV3TokenV3DTO.tokenSymbol);
    }
}
