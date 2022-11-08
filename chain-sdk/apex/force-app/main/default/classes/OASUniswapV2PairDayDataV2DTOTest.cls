@isTest
private class OASUniswapV2PairDayDataV2DTOTest {
    @isTest
    private static void equalsSameInstance() {
        OASUniswapV2PairDayDataV2DTO uniswapV2PairDayDataV2DTO1 = OASUniswapV2PairDayDataV2DTO.getExample();
        OASUniswapV2PairDayDataV2DTO uniswapV2PairDayDataV2DTO2 = uniswapV2PairDayDataV2DTO1;
        OASUniswapV2PairDayDataV2DTO uniswapV2PairDayDataV2DTO3 = new OASUniswapV2PairDayDataV2DTO();
        OASUniswapV2PairDayDataV2DTO uniswapV2PairDayDataV2DTO4 = uniswapV2PairDayDataV2DTO3;

        System.assert(uniswapV2PairDayDataV2DTO1.equals(uniswapV2PairDayDataV2DTO2));
        System.assert(uniswapV2PairDayDataV2DTO2.equals(uniswapV2PairDayDataV2DTO1));
        System.assert(uniswapV2PairDayDataV2DTO1.equals(uniswapV2PairDayDataV2DTO1));
        System.assert(uniswapV2PairDayDataV2DTO3.equals(uniswapV2PairDayDataV2DTO4));
        System.assert(uniswapV2PairDayDataV2DTO4.equals(uniswapV2PairDayDataV2DTO3));
        System.assert(uniswapV2PairDayDataV2DTO3.equals(uniswapV2PairDayDataV2DTO3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASUniswapV2PairDayDataV2DTO uniswapV2PairDayDataV2DTO1 = OASUniswapV2PairDayDataV2DTO.getExample();
        OASUniswapV2PairDayDataV2DTO uniswapV2PairDayDataV2DTO2 = OASUniswapV2PairDayDataV2DTO.getExample();
        OASUniswapV2PairDayDataV2DTO uniswapV2PairDayDataV2DTO3 = new OASUniswapV2PairDayDataV2DTO();
        OASUniswapV2PairDayDataV2DTO uniswapV2PairDayDataV2DTO4 = new OASUniswapV2PairDayDataV2DTO();

        System.assert(uniswapV2PairDayDataV2DTO1.equals(uniswapV2PairDayDataV2DTO2));
        System.assert(uniswapV2PairDayDataV2DTO2.equals(uniswapV2PairDayDataV2DTO1));
        System.assert(uniswapV2PairDayDataV2DTO3.equals(uniswapV2PairDayDataV2DTO4));
        System.assert(uniswapV2PairDayDataV2DTO4.equals(uniswapV2PairDayDataV2DTO3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASUniswapV2PairDayDataV2DTO uniswapV2PairDayDataV2DTO1 = OASUniswapV2PairDayDataV2DTO.getExample();
        OASUniswapV2PairDayDataV2DTO uniswapV2PairDayDataV2DTO2 = new OASUniswapV2PairDayDataV2DTO();

        System.assertEquals(false, uniswapV2PairDayDataV2DTO1.equals('foo'));
        System.assertEquals(false, uniswapV2PairDayDataV2DTO2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASUniswapV2PairDayDataV2DTO uniswapV2PairDayDataV2DTO1 = OASUniswapV2PairDayDataV2DTO.getExample();
        OASUniswapV2PairDayDataV2DTO uniswapV2PairDayDataV2DTO2 = new OASUniswapV2PairDayDataV2DTO();
        OASUniswapV2PairDayDataV2DTO uniswapV2PairDayDataV2DTO3;

        System.assertEquals(false, uniswapV2PairDayDataV2DTO1.equals(uniswapV2PairDayDataV2DTO3));
        System.assertEquals(false, uniswapV2PairDayDataV2DTO2.equals(uniswapV2PairDayDataV2DTO3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASUniswapV2PairDayDataV2DTO uniswapV2PairDayDataV2DTO1 = OASUniswapV2PairDayDataV2DTO.getExample();
        OASUniswapV2PairDayDataV2DTO uniswapV2PairDayDataV2DTO2 = new OASUniswapV2PairDayDataV2DTO();

        System.assertEquals(uniswapV2PairDayDataV2DTO1.hashCode(), uniswapV2PairDayDataV2DTO1.hashCode());
        System.assertEquals(uniswapV2PairDayDataV2DTO2.hashCode(), uniswapV2PairDayDataV2DTO2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASUniswapV2PairDayDataV2DTO uniswapV2PairDayDataV2DTO1 = OASUniswapV2PairDayDataV2DTO.getExample();
        OASUniswapV2PairDayDataV2DTO uniswapV2PairDayDataV2DTO2 = OASUniswapV2PairDayDataV2DTO.getExample();
        OASUniswapV2PairDayDataV2DTO uniswapV2PairDayDataV2DTO3 = new OASUniswapV2PairDayDataV2DTO();
        OASUniswapV2PairDayDataV2DTO uniswapV2PairDayDataV2DTO4 = new OASUniswapV2PairDayDataV2DTO();

        System.assert(uniswapV2PairDayDataV2DTO1.equals(uniswapV2PairDayDataV2DTO2));
        System.assert(uniswapV2PairDayDataV2DTO3.equals(uniswapV2PairDayDataV2DTO4));
        System.assertEquals(uniswapV2PairDayDataV2DTO1.hashCode(), uniswapV2PairDayDataV2DTO2.hashCode());
        System.assertEquals(uniswapV2PairDayDataV2DTO3.hashCode(), uniswapV2PairDayDataV2DTO4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASUniswapV2PairDayDataV2DTO uniswapV2PairDayDataV2DTO = new OASUniswapV2PairDayDataV2DTO();
        Map<String, String> x-property-mappings = uniswapV2PairDayDataV2DTO.getx-property-mappings();
        System.assertEquals('entryTime', x-property-mappings.get('entry_time'));
        System.assertEquals('recvTime', x-property-mappings.get('recv_time'));
        System.assertEquals('blockNumber', x-property-mappings.get('block_number'));
        System.assertEquals('r_date', x-property-mappings.get('date'));
        System.assertEquals('pairAddress', x-property-mappings.get('pair_address'));
        System.assertEquals('token0', x-property-mappings.get('token_0'));
        System.assertEquals('token1', x-property-mappings.get('token_1'));
        System.assertEquals('reserve0', x-property-mappings.get('reserve_0'));
        System.assertEquals('reserve1', x-property-mappings.get('reserve_1'));
        System.assertEquals('totalSupply', x-property-mappings.get('total_supply'));
        System.assertEquals('reserveUsd', x-property-mappings.get('reserve_usd'));
        System.assertEquals('dailyVolumeToken0', x-property-mappings.get('daily_volume_token_0'));
        System.assertEquals('dailyVolumeToken1', x-property-mappings.get('daily_volume_token_1'));
        System.assertEquals('dailyVolumeUsd', x-property-mappings.get('daily_volume_usd'));
        System.assertEquals('dailyTxns', x-property-mappings.get('daily_txns'));
    }
}
