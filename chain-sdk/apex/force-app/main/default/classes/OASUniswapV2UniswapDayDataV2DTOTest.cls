@isTest
private class OASUniswapV2UniswapDayDataV2DTOTest {
    @isTest
    private static void equalsSameInstance() {
        OASUniswapV2UniswapDayDataV2DTO uniswapV2UniswapDayDataV2DTO1 = OASUniswapV2UniswapDayDataV2DTO.getExample();
        OASUniswapV2UniswapDayDataV2DTO uniswapV2UniswapDayDataV2DTO2 = uniswapV2UniswapDayDataV2DTO1;
        OASUniswapV2UniswapDayDataV2DTO uniswapV2UniswapDayDataV2DTO3 = new OASUniswapV2UniswapDayDataV2DTO();
        OASUniswapV2UniswapDayDataV2DTO uniswapV2UniswapDayDataV2DTO4 = uniswapV2UniswapDayDataV2DTO3;

        System.assert(uniswapV2UniswapDayDataV2DTO1.equals(uniswapV2UniswapDayDataV2DTO2));
        System.assert(uniswapV2UniswapDayDataV2DTO2.equals(uniswapV2UniswapDayDataV2DTO1));
        System.assert(uniswapV2UniswapDayDataV2DTO1.equals(uniswapV2UniswapDayDataV2DTO1));
        System.assert(uniswapV2UniswapDayDataV2DTO3.equals(uniswapV2UniswapDayDataV2DTO4));
        System.assert(uniswapV2UniswapDayDataV2DTO4.equals(uniswapV2UniswapDayDataV2DTO3));
        System.assert(uniswapV2UniswapDayDataV2DTO3.equals(uniswapV2UniswapDayDataV2DTO3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASUniswapV2UniswapDayDataV2DTO uniswapV2UniswapDayDataV2DTO1 = OASUniswapV2UniswapDayDataV2DTO.getExample();
        OASUniswapV2UniswapDayDataV2DTO uniswapV2UniswapDayDataV2DTO2 = OASUniswapV2UniswapDayDataV2DTO.getExample();
        OASUniswapV2UniswapDayDataV2DTO uniswapV2UniswapDayDataV2DTO3 = new OASUniswapV2UniswapDayDataV2DTO();
        OASUniswapV2UniswapDayDataV2DTO uniswapV2UniswapDayDataV2DTO4 = new OASUniswapV2UniswapDayDataV2DTO();

        System.assert(uniswapV2UniswapDayDataV2DTO1.equals(uniswapV2UniswapDayDataV2DTO2));
        System.assert(uniswapV2UniswapDayDataV2DTO2.equals(uniswapV2UniswapDayDataV2DTO1));
        System.assert(uniswapV2UniswapDayDataV2DTO3.equals(uniswapV2UniswapDayDataV2DTO4));
        System.assert(uniswapV2UniswapDayDataV2DTO4.equals(uniswapV2UniswapDayDataV2DTO3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASUniswapV2UniswapDayDataV2DTO uniswapV2UniswapDayDataV2DTO1 = OASUniswapV2UniswapDayDataV2DTO.getExample();
        OASUniswapV2UniswapDayDataV2DTO uniswapV2UniswapDayDataV2DTO2 = new OASUniswapV2UniswapDayDataV2DTO();

        System.assertEquals(false, uniswapV2UniswapDayDataV2DTO1.equals('foo'));
        System.assertEquals(false, uniswapV2UniswapDayDataV2DTO2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASUniswapV2UniswapDayDataV2DTO uniswapV2UniswapDayDataV2DTO1 = OASUniswapV2UniswapDayDataV2DTO.getExample();
        OASUniswapV2UniswapDayDataV2DTO uniswapV2UniswapDayDataV2DTO2 = new OASUniswapV2UniswapDayDataV2DTO();
        OASUniswapV2UniswapDayDataV2DTO uniswapV2UniswapDayDataV2DTO3;

        System.assertEquals(false, uniswapV2UniswapDayDataV2DTO1.equals(uniswapV2UniswapDayDataV2DTO3));
        System.assertEquals(false, uniswapV2UniswapDayDataV2DTO2.equals(uniswapV2UniswapDayDataV2DTO3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASUniswapV2UniswapDayDataV2DTO uniswapV2UniswapDayDataV2DTO1 = OASUniswapV2UniswapDayDataV2DTO.getExample();
        OASUniswapV2UniswapDayDataV2DTO uniswapV2UniswapDayDataV2DTO2 = new OASUniswapV2UniswapDayDataV2DTO();

        System.assertEquals(uniswapV2UniswapDayDataV2DTO1.hashCode(), uniswapV2UniswapDayDataV2DTO1.hashCode());
        System.assertEquals(uniswapV2UniswapDayDataV2DTO2.hashCode(), uniswapV2UniswapDayDataV2DTO2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASUniswapV2UniswapDayDataV2DTO uniswapV2UniswapDayDataV2DTO1 = OASUniswapV2UniswapDayDataV2DTO.getExample();
        OASUniswapV2UniswapDayDataV2DTO uniswapV2UniswapDayDataV2DTO2 = OASUniswapV2UniswapDayDataV2DTO.getExample();
        OASUniswapV2UniswapDayDataV2DTO uniswapV2UniswapDayDataV2DTO3 = new OASUniswapV2UniswapDayDataV2DTO();
        OASUniswapV2UniswapDayDataV2DTO uniswapV2UniswapDayDataV2DTO4 = new OASUniswapV2UniswapDayDataV2DTO();

        System.assert(uniswapV2UniswapDayDataV2DTO1.equals(uniswapV2UniswapDayDataV2DTO2));
        System.assert(uniswapV2UniswapDayDataV2DTO3.equals(uniswapV2UniswapDayDataV2DTO4));
        System.assertEquals(uniswapV2UniswapDayDataV2DTO1.hashCode(), uniswapV2UniswapDayDataV2DTO2.hashCode());
        System.assertEquals(uniswapV2UniswapDayDataV2DTO3.hashCode(), uniswapV2UniswapDayDataV2DTO4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASUniswapV2UniswapDayDataV2DTO uniswapV2UniswapDayDataV2DTO = new OASUniswapV2UniswapDayDataV2DTO();
        Map<String, String> x-property-mappings = uniswapV2UniswapDayDataV2DTO.getx-property-mappings();
        System.assertEquals('entryTime', x-property-mappings.get('entry_time'));
        System.assertEquals('recvTime', x-property-mappings.get('recv_time'));
        System.assertEquals('blockNumber', x-property-mappings.get('block_number'));
        System.assertEquals('r_date', x-property-mappings.get('date'));
        System.assertEquals('dailyVolumeEth', x-property-mappings.get('daily_volume_eth'));
        System.assertEquals('dailyVolumeUsd', x-property-mappings.get('daily_volume_usd'));
        System.assertEquals('dailyVolumeUntracked', x-property-mappings.get('daily_volume_untracked'));
        System.assertEquals('totalVolumeEth', x-property-mappings.get('total_volume_eth'));
        System.assertEquals('totalLiquidityEth', x-property-mappings.get('total_liquidity_eth'));
        System.assertEquals('totalVolumeUsd', x-property-mappings.get('total_volume_usd'));
        System.assertEquals('totalLiquidityUsd', x-property-mappings.get('total_liquidity_usd'));
        System.assertEquals('txCount', x-property-mappings.get('tx_count'));
    }
}
