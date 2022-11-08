@isTest
private class OASUniswapV2PairHourDataV2DTOTest {
    @isTest
    private static void equalsSameInstance() {
        OASUniswapV2PairHourDataV2DTO uniswapV2PairHourDataV2DTO1 = OASUniswapV2PairHourDataV2DTO.getExample();
        OASUniswapV2PairHourDataV2DTO uniswapV2PairHourDataV2DTO2 = uniswapV2PairHourDataV2DTO1;
        OASUniswapV2PairHourDataV2DTO uniswapV2PairHourDataV2DTO3 = new OASUniswapV2PairHourDataV2DTO();
        OASUniswapV2PairHourDataV2DTO uniswapV2PairHourDataV2DTO4 = uniswapV2PairHourDataV2DTO3;

        System.assert(uniswapV2PairHourDataV2DTO1.equals(uniswapV2PairHourDataV2DTO2));
        System.assert(uniswapV2PairHourDataV2DTO2.equals(uniswapV2PairHourDataV2DTO1));
        System.assert(uniswapV2PairHourDataV2DTO1.equals(uniswapV2PairHourDataV2DTO1));
        System.assert(uniswapV2PairHourDataV2DTO3.equals(uniswapV2PairHourDataV2DTO4));
        System.assert(uniswapV2PairHourDataV2DTO4.equals(uniswapV2PairHourDataV2DTO3));
        System.assert(uniswapV2PairHourDataV2DTO3.equals(uniswapV2PairHourDataV2DTO3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASUniswapV2PairHourDataV2DTO uniswapV2PairHourDataV2DTO1 = OASUniswapV2PairHourDataV2DTO.getExample();
        OASUniswapV2PairHourDataV2DTO uniswapV2PairHourDataV2DTO2 = OASUniswapV2PairHourDataV2DTO.getExample();
        OASUniswapV2PairHourDataV2DTO uniswapV2PairHourDataV2DTO3 = new OASUniswapV2PairHourDataV2DTO();
        OASUniswapV2PairHourDataV2DTO uniswapV2PairHourDataV2DTO4 = new OASUniswapV2PairHourDataV2DTO();

        System.assert(uniswapV2PairHourDataV2DTO1.equals(uniswapV2PairHourDataV2DTO2));
        System.assert(uniswapV2PairHourDataV2DTO2.equals(uniswapV2PairHourDataV2DTO1));
        System.assert(uniswapV2PairHourDataV2DTO3.equals(uniswapV2PairHourDataV2DTO4));
        System.assert(uniswapV2PairHourDataV2DTO4.equals(uniswapV2PairHourDataV2DTO3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASUniswapV2PairHourDataV2DTO uniswapV2PairHourDataV2DTO1 = OASUniswapV2PairHourDataV2DTO.getExample();
        OASUniswapV2PairHourDataV2DTO uniswapV2PairHourDataV2DTO2 = new OASUniswapV2PairHourDataV2DTO();

        System.assertEquals(false, uniswapV2PairHourDataV2DTO1.equals('foo'));
        System.assertEquals(false, uniswapV2PairHourDataV2DTO2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASUniswapV2PairHourDataV2DTO uniswapV2PairHourDataV2DTO1 = OASUniswapV2PairHourDataV2DTO.getExample();
        OASUniswapV2PairHourDataV2DTO uniswapV2PairHourDataV2DTO2 = new OASUniswapV2PairHourDataV2DTO();
        OASUniswapV2PairHourDataV2DTO uniswapV2PairHourDataV2DTO3;

        System.assertEquals(false, uniswapV2PairHourDataV2DTO1.equals(uniswapV2PairHourDataV2DTO3));
        System.assertEquals(false, uniswapV2PairHourDataV2DTO2.equals(uniswapV2PairHourDataV2DTO3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASUniswapV2PairHourDataV2DTO uniswapV2PairHourDataV2DTO1 = OASUniswapV2PairHourDataV2DTO.getExample();
        OASUniswapV2PairHourDataV2DTO uniswapV2PairHourDataV2DTO2 = new OASUniswapV2PairHourDataV2DTO();

        System.assertEquals(uniswapV2PairHourDataV2DTO1.hashCode(), uniswapV2PairHourDataV2DTO1.hashCode());
        System.assertEquals(uniswapV2PairHourDataV2DTO2.hashCode(), uniswapV2PairHourDataV2DTO2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASUniswapV2PairHourDataV2DTO uniswapV2PairHourDataV2DTO1 = OASUniswapV2PairHourDataV2DTO.getExample();
        OASUniswapV2PairHourDataV2DTO uniswapV2PairHourDataV2DTO2 = OASUniswapV2PairHourDataV2DTO.getExample();
        OASUniswapV2PairHourDataV2DTO uniswapV2PairHourDataV2DTO3 = new OASUniswapV2PairHourDataV2DTO();
        OASUniswapV2PairHourDataV2DTO uniswapV2PairHourDataV2DTO4 = new OASUniswapV2PairHourDataV2DTO();

        System.assert(uniswapV2PairHourDataV2DTO1.equals(uniswapV2PairHourDataV2DTO2));
        System.assert(uniswapV2PairHourDataV2DTO3.equals(uniswapV2PairHourDataV2DTO4));
        System.assertEquals(uniswapV2PairHourDataV2DTO1.hashCode(), uniswapV2PairHourDataV2DTO2.hashCode());
        System.assertEquals(uniswapV2PairHourDataV2DTO3.hashCode(), uniswapV2PairHourDataV2DTO4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASUniswapV2PairHourDataV2DTO uniswapV2PairHourDataV2DTO = new OASUniswapV2PairHourDataV2DTO();
        Map<String, String> x-property-mappings = uniswapV2PairHourDataV2DTO.getx-property-mappings();
        System.assertEquals('entryTime', x-property-mappings.get('entry_time'));
        System.assertEquals('recvTime', x-property-mappings.get('recv_time'));
        System.assertEquals('blockNumber', x-property-mappings.get('block_number'));
        System.assertEquals('hourStartUnix', x-property-mappings.get('hour_start_unix'));
        System.assertEquals('reserve0', x-property-mappings.get('reserve_0'));
        System.assertEquals('reserve1', x-property-mappings.get('reserve_1'));
        System.assertEquals('totalSupply', x-property-mappings.get('total_supply'));
        System.assertEquals('reserveUsd', x-property-mappings.get('reserve_usd'));
        System.assertEquals('hourlyVolumeToken0', x-property-mappings.get('hourly_volume_token_0'));
        System.assertEquals('hourlyVolumeToken1', x-property-mappings.get('hourly_volume_token_1'));
        System.assertEquals('hourlyVolumeUsd', x-property-mappings.get('hourly_volume_usd'));
        System.assertEquals('hourlyTxns', x-property-mappings.get('hourly_txns'));
    }
}
