@isTest
private class OASUniswapDayDataV3DTOTest {
    @isTest
    private static void equalsSameInstance() {
        OASUniswapDayDataV3DTO uniswapDayDataV3DTO1 = OASUniswapDayDataV3DTO.getExample();
        OASUniswapDayDataV3DTO uniswapDayDataV3DTO2 = uniswapDayDataV3DTO1;
        OASUniswapDayDataV3DTO uniswapDayDataV3DTO3 = new OASUniswapDayDataV3DTO();
        OASUniswapDayDataV3DTO uniswapDayDataV3DTO4 = uniswapDayDataV3DTO3;

        System.assert(uniswapDayDataV3DTO1.equals(uniswapDayDataV3DTO2));
        System.assert(uniswapDayDataV3DTO2.equals(uniswapDayDataV3DTO1));
        System.assert(uniswapDayDataV3DTO1.equals(uniswapDayDataV3DTO1));
        System.assert(uniswapDayDataV3DTO3.equals(uniswapDayDataV3DTO4));
        System.assert(uniswapDayDataV3DTO4.equals(uniswapDayDataV3DTO3));
        System.assert(uniswapDayDataV3DTO3.equals(uniswapDayDataV3DTO3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASUniswapDayDataV3DTO uniswapDayDataV3DTO1 = OASUniswapDayDataV3DTO.getExample();
        OASUniswapDayDataV3DTO uniswapDayDataV3DTO2 = OASUniswapDayDataV3DTO.getExample();
        OASUniswapDayDataV3DTO uniswapDayDataV3DTO3 = new OASUniswapDayDataV3DTO();
        OASUniswapDayDataV3DTO uniswapDayDataV3DTO4 = new OASUniswapDayDataV3DTO();

        System.assert(uniswapDayDataV3DTO1.equals(uniswapDayDataV3DTO2));
        System.assert(uniswapDayDataV3DTO2.equals(uniswapDayDataV3DTO1));
        System.assert(uniswapDayDataV3DTO3.equals(uniswapDayDataV3DTO4));
        System.assert(uniswapDayDataV3DTO4.equals(uniswapDayDataV3DTO3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASUniswapDayDataV3DTO uniswapDayDataV3DTO1 = OASUniswapDayDataV3DTO.getExample();
        OASUniswapDayDataV3DTO uniswapDayDataV3DTO2 = new OASUniswapDayDataV3DTO();

        System.assertEquals(false, uniswapDayDataV3DTO1.equals('foo'));
        System.assertEquals(false, uniswapDayDataV3DTO2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASUniswapDayDataV3DTO uniswapDayDataV3DTO1 = OASUniswapDayDataV3DTO.getExample();
        OASUniswapDayDataV3DTO uniswapDayDataV3DTO2 = new OASUniswapDayDataV3DTO();
        OASUniswapDayDataV3DTO uniswapDayDataV3DTO3;

        System.assertEquals(false, uniswapDayDataV3DTO1.equals(uniswapDayDataV3DTO3));
        System.assertEquals(false, uniswapDayDataV3DTO2.equals(uniswapDayDataV3DTO3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASUniswapDayDataV3DTO uniswapDayDataV3DTO1 = OASUniswapDayDataV3DTO.getExample();
        OASUniswapDayDataV3DTO uniswapDayDataV3DTO2 = new OASUniswapDayDataV3DTO();

        System.assertEquals(uniswapDayDataV3DTO1.hashCode(), uniswapDayDataV3DTO1.hashCode());
        System.assertEquals(uniswapDayDataV3DTO2.hashCode(), uniswapDayDataV3DTO2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASUniswapDayDataV3DTO uniswapDayDataV3DTO1 = OASUniswapDayDataV3DTO.getExample();
        OASUniswapDayDataV3DTO uniswapDayDataV3DTO2 = OASUniswapDayDataV3DTO.getExample();
        OASUniswapDayDataV3DTO uniswapDayDataV3DTO3 = new OASUniswapDayDataV3DTO();
        OASUniswapDayDataV3DTO uniswapDayDataV3DTO4 = new OASUniswapDayDataV3DTO();

        System.assert(uniswapDayDataV3DTO1.equals(uniswapDayDataV3DTO2));
        System.assert(uniswapDayDataV3DTO3.equals(uniswapDayDataV3DTO4));
        System.assertEquals(uniswapDayDataV3DTO1.hashCode(), uniswapDayDataV3DTO2.hashCode());
        System.assertEquals(uniswapDayDataV3DTO3.hashCode(), uniswapDayDataV3DTO4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASUniswapDayDataV3DTO uniswapDayDataV3DTO = new OASUniswapDayDataV3DTO();
        Map<String, String> x-property-mappings = uniswapDayDataV3DTO.getx-property-mappings();
        System.assertEquals('entryTime', x-property-mappings.get('entry_time'));
        System.assertEquals('recvTime', x-property-mappings.get('recv_time'));
        System.assertEquals('blockNumber', x-property-mappings.get('block_number'));
        System.assertEquals('r_date', x-property-mappings.get('date'));
        System.assertEquals('volumeEth', x-property-mappings.get('volume_eth'));
        System.assertEquals('volumeUsd', x-property-mappings.get('volume_usd'));
        System.assertEquals('volumeUsdUntracked', x-property-mappings.get('volume_usd_untracked'));
        System.assertEquals('feesUsd', x-property-mappings.get('fees_usd'));
        System.assertEquals('txCount', x-property-mappings.get('tx_count'));
        System.assertEquals('tvlUsd', x-property-mappings.get('tvl_usd'));
    }
}
