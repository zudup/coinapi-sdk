@isTest
private class OASUniswapV2TokenDayDataV2DTOTest {
    @isTest
    private static void equalsSameInstance() {
        OASUniswapV2TokenDayDataV2DTO uniswapV2TokenDayDataV2DTO1 = OASUniswapV2TokenDayDataV2DTO.getExample();
        OASUniswapV2TokenDayDataV2DTO uniswapV2TokenDayDataV2DTO2 = uniswapV2TokenDayDataV2DTO1;
        OASUniswapV2TokenDayDataV2DTO uniswapV2TokenDayDataV2DTO3 = new OASUniswapV2TokenDayDataV2DTO();
        OASUniswapV2TokenDayDataV2DTO uniswapV2TokenDayDataV2DTO4 = uniswapV2TokenDayDataV2DTO3;

        System.assert(uniswapV2TokenDayDataV2DTO1.equals(uniswapV2TokenDayDataV2DTO2));
        System.assert(uniswapV2TokenDayDataV2DTO2.equals(uniswapV2TokenDayDataV2DTO1));
        System.assert(uniswapV2TokenDayDataV2DTO1.equals(uniswapV2TokenDayDataV2DTO1));
        System.assert(uniswapV2TokenDayDataV2DTO3.equals(uniswapV2TokenDayDataV2DTO4));
        System.assert(uniswapV2TokenDayDataV2DTO4.equals(uniswapV2TokenDayDataV2DTO3));
        System.assert(uniswapV2TokenDayDataV2DTO3.equals(uniswapV2TokenDayDataV2DTO3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASUniswapV2TokenDayDataV2DTO uniswapV2TokenDayDataV2DTO1 = OASUniswapV2TokenDayDataV2DTO.getExample();
        OASUniswapV2TokenDayDataV2DTO uniswapV2TokenDayDataV2DTO2 = OASUniswapV2TokenDayDataV2DTO.getExample();
        OASUniswapV2TokenDayDataV2DTO uniswapV2TokenDayDataV2DTO3 = new OASUniswapV2TokenDayDataV2DTO();
        OASUniswapV2TokenDayDataV2DTO uniswapV2TokenDayDataV2DTO4 = new OASUniswapV2TokenDayDataV2DTO();

        System.assert(uniswapV2TokenDayDataV2DTO1.equals(uniswapV2TokenDayDataV2DTO2));
        System.assert(uniswapV2TokenDayDataV2DTO2.equals(uniswapV2TokenDayDataV2DTO1));
        System.assert(uniswapV2TokenDayDataV2DTO3.equals(uniswapV2TokenDayDataV2DTO4));
        System.assert(uniswapV2TokenDayDataV2DTO4.equals(uniswapV2TokenDayDataV2DTO3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASUniswapV2TokenDayDataV2DTO uniswapV2TokenDayDataV2DTO1 = OASUniswapV2TokenDayDataV2DTO.getExample();
        OASUniswapV2TokenDayDataV2DTO uniswapV2TokenDayDataV2DTO2 = new OASUniswapV2TokenDayDataV2DTO();

        System.assertEquals(false, uniswapV2TokenDayDataV2DTO1.equals('foo'));
        System.assertEquals(false, uniswapV2TokenDayDataV2DTO2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASUniswapV2TokenDayDataV2DTO uniswapV2TokenDayDataV2DTO1 = OASUniswapV2TokenDayDataV2DTO.getExample();
        OASUniswapV2TokenDayDataV2DTO uniswapV2TokenDayDataV2DTO2 = new OASUniswapV2TokenDayDataV2DTO();
        OASUniswapV2TokenDayDataV2DTO uniswapV2TokenDayDataV2DTO3;

        System.assertEquals(false, uniswapV2TokenDayDataV2DTO1.equals(uniswapV2TokenDayDataV2DTO3));
        System.assertEquals(false, uniswapV2TokenDayDataV2DTO2.equals(uniswapV2TokenDayDataV2DTO3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASUniswapV2TokenDayDataV2DTO uniswapV2TokenDayDataV2DTO1 = OASUniswapV2TokenDayDataV2DTO.getExample();
        OASUniswapV2TokenDayDataV2DTO uniswapV2TokenDayDataV2DTO2 = new OASUniswapV2TokenDayDataV2DTO();

        System.assertEquals(uniswapV2TokenDayDataV2DTO1.hashCode(), uniswapV2TokenDayDataV2DTO1.hashCode());
        System.assertEquals(uniswapV2TokenDayDataV2DTO2.hashCode(), uniswapV2TokenDayDataV2DTO2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASUniswapV2TokenDayDataV2DTO uniswapV2TokenDayDataV2DTO1 = OASUniswapV2TokenDayDataV2DTO.getExample();
        OASUniswapV2TokenDayDataV2DTO uniswapV2TokenDayDataV2DTO2 = OASUniswapV2TokenDayDataV2DTO.getExample();
        OASUniswapV2TokenDayDataV2DTO uniswapV2TokenDayDataV2DTO3 = new OASUniswapV2TokenDayDataV2DTO();
        OASUniswapV2TokenDayDataV2DTO uniswapV2TokenDayDataV2DTO4 = new OASUniswapV2TokenDayDataV2DTO();

        System.assert(uniswapV2TokenDayDataV2DTO1.equals(uniswapV2TokenDayDataV2DTO2));
        System.assert(uniswapV2TokenDayDataV2DTO3.equals(uniswapV2TokenDayDataV2DTO4));
        System.assertEquals(uniswapV2TokenDayDataV2DTO1.hashCode(), uniswapV2TokenDayDataV2DTO2.hashCode());
        System.assertEquals(uniswapV2TokenDayDataV2DTO3.hashCode(), uniswapV2TokenDayDataV2DTO4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASUniswapV2TokenDayDataV2DTO uniswapV2TokenDayDataV2DTO = new OASUniswapV2TokenDayDataV2DTO();
        Map<String, String> x-property-mappings = uniswapV2TokenDayDataV2DTO.getx-property-mappings();
        System.assertEquals('entryTime', x-property-mappings.get('entry_time'));
        System.assertEquals('recvTime', x-property-mappings.get('recv_time'));
        System.assertEquals('blockNumber', x-property-mappings.get('block_number'));
        System.assertEquals('r_date', x-property-mappings.get('date'));
        System.assertEquals('dailyVolumeToken', x-property-mappings.get('daily_volume_token'));
        System.assertEquals('dailyVolumeEth', x-property-mappings.get('daily_volume_eth'));
        System.assertEquals('dailyVolumeUsd', x-property-mappings.get('daily_volume_usd'));
        System.assertEquals('dailyTxns', x-property-mappings.get('daily_txns'));
        System.assertEquals('totalLiquidityToken', x-property-mappings.get('total_liquidity_token'));
        System.assertEquals('totalLiquidityEth', x-property-mappings.get('total_liquidity_eth'));
        System.assertEquals('totalLiquidityUsd', x-property-mappings.get('total_liquidity_usd'));
        System.assertEquals('priceUsd', x-property-mappings.get('price_usd'));
    }
}
