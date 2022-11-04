@isTest
private class OASUniswapV3TokenHourDataV3DTOTest {
    @isTest
    private static void equalsSameInstance() {
        OASUniswapV3TokenHourDataV3DTO uniswapV3TokenHourDataV3DTO1 = OASUniswapV3TokenHourDataV3DTO.getExample();
        OASUniswapV3TokenHourDataV3DTO uniswapV3TokenHourDataV3DTO2 = uniswapV3TokenHourDataV3DTO1;
        OASUniswapV3TokenHourDataV3DTO uniswapV3TokenHourDataV3DTO3 = new OASUniswapV3TokenHourDataV3DTO();
        OASUniswapV3TokenHourDataV3DTO uniswapV3TokenHourDataV3DTO4 = uniswapV3TokenHourDataV3DTO3;

        System.assert(uniswapV3TokenHourDataV3DTO1.equals(uniswapV3TokenHourDataV3DTO2));
        System.assert(uniswapV3TokenHourDataV3DTO2.equals(uniswapV3TokenHourDataV3DTO1));
        System.assert(uniswapV3TokenHourDataV3DTO1.equals(uniswapV3TokenHourDataV3DTO1));
        System.assert(uniswapV3TokenHourDataV3DTO3.equals(uniswapV3TokenHourDataV3DTO4));
        System.assert(uniswapV3TokenHourDataV3DTO4.equals(uniswapV3TokenHourDataV3DTO3));
        System.assert(uniswapV3TokenHourDataV3DTO3.equals(uniswapV3TokenHourDataV3DTO3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASUniswapV3TokenHourDataV3DTO uniswapV3TokenHourDataV3DTO1 = OASUniswapV3TokenHourDataV3DTO.getExample();
        OASUniswapV3TokenHourDataV3DTO uniswapV3TokenHourDataV3DTO2 = OASUniswapV3TokenHourDataV3DTO.getExample();
        OASUniswapV3TokenHourDataV3DTO uniswapV3TokenHourDataV3DTO3 = new OASUniswapV3TokenHourDataV3DTO();
        OASUniswapV3TokenHourDataV3DTO uniswapV3TokenHourDataV3DTO4 = new OASUniswapV3TokenHourDataV3DTO();

        System.assert(uniswapV3TokenHourDataV3DTO1.equals(uniswapV3TokenHourDataV3DTO2));
        System.assert(uniswapV3TokenHourDataV3DTO2.equals(uniswapV3TokenHourDataV3DTO1));
        System.assert(uniswapV3TokenHourDataV3DTO3.equals(uniswapV3TokenHourDataV3DTO4));
        System.assert(uniswapV3TokenHourDataV3DTO4.equals(uniswapV3TokenHourDataV3DTO3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASUniswapV3TokenHourDataV3DTO uniswapV3TokenHourDataV3DTO1 = OASUniswapV3TokenHourDataV3DTO.getExample();
        OASUniswapV3TokenHourDataV3DTO uniswapV3TokenHourDataV3DTO2 = new OASUniswapV3TokenHourDataV3DTO();

        System.assertEquals(false, uniswapV3TokenHourDataV3DTO1.equals('foo'));
        System.assertEquals(false, uniswapV3TokenHourDataV3DTO2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASUniswapV3TokenHourDataV3DTO uniswapV3TokenHourDataV3DTO1 = OASUniswapV3TokenHourDataV3DTO.getExample();
        OASUniswapV3TokenHourDataV3DTO uniswapV3TokenHourDataV3DTO2 = new OASUniswapV3TokenHourDataV3DTO();
        OASUniswapV3TokenHourDataV3DTO uniswapV3TokenHourDataV3DTO3;

        System.assertEquals(false, uniswapV3TokenHourDataV3DTO1.equals(uniswapV3TokenHourDataV3DTO3));
        System.assertEquals(false, uniswapV3TokenHourDataV3DTO2.equals(uniswapV3TokenHourDataV3DTO3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASUniswapV3TokenHourDataV3DTO uniswapV3TokenHourDataV3DTO1 = OASUniswapV3TokenHourDataV3DTO.getExample();
        OASUniswapV3TokenHourDataV3DTO uniswapV3TokenHourDataV3DTO2 = new OASUniswapV3TokenHourDataV3DTO();

        System.assertEquals(uniswapV3TokenHourDataV3DTO1.hashCode(), uniswapV3TokenHourDataV3DTO1.hashCode());
        System.assertEquals(uniswapV3TokenHourDataV3DTO2.hashCode(), uniswapV3TokenHourDataV3DTO2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASUniswapV3TokenHourDataV3DTO uniswapV3TokenHourDataV3DTO1 = OASUniswapV3TokenHourDataV3DTO.getExample();
        OASUniswapV3TokenHourDataV3DTO uniswapV3TokenHourDataV3DTO2 = OASUniswapV3TokenHourDataV3DTO.getExample();
        OASUniswapV3TokenHourDataV3DTO uniswapV3TokenHourDataV3DTO3 = new OASUniswapV3TokenHourDataV3DTO();
        OASUniswapV3TokenHourDataV3DTO uniswapV3TokenHourDataV3DTO4 = new OASUniswapV3TokenHourDataV3DTO();

        System.assert(uniswapV3TokenHourDataV3DTO1.equals(uniswapV3TokenHourDataV3DTO2));
        System.assert(uniswapV3TokenHourDataV3DTO3.equals(uniswapV3TokenHourDataV3DTO4));
        System.assertEquals(uniswapV3TokenHourDataV3DTO1.hashCode(), uniswapV3TokenHourDataV3DTO2.hashCode());
        System.assertEquals(uniswapV3TokenHourDataV3DTO3.hashCode(), uniswapV3TokenHourDataV3DTO4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASUniswapV3TokenHourDataV3DTO uniswapV3TokenHourDataV3DTO = new OASUniswapV3TokenHourDataV3DTO();
        Map<String, String> x-property-mappings = uniswapV3TokenHourDataV3DTO.getx-property-mappings();
        System.assertEquals('entryTime', x-property-mappings.get('entry_time'));
        System.assertEquals('recvTime', x-property-mappings.get('recv_time'));
        System.assertEquals('blockNumber', x-property-mappings.get('block_number'));
        System.assertEquals('periodStartUnix', x-property-mappings.get('period_start_unix'));
        System.assertEquals('volumeUsd', x-property-mappings.get('volume_usd'));
        System.assertEquals('untrackedVolumeUsd', x-property-mappings.get('untracked_volume_usd'));
        System.assertEquals('totalValueLocked', x-property-mappings.get('total_value_locked'));
        System.assertEquals('totalValueLockedUsd', x-property-mappings.get('total_value_locked_usd'));
        System.assertEquals('priceUsd', x-property-mappings.get('price_usd'));
        System.assertEquals('feesUsd', x-property-mappings.get('fees_usd'));
    }
}
