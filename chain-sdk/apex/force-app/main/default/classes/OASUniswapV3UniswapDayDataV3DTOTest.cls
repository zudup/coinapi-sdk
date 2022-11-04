@isTest
private class OASUniswapV3UniswapDayDataV3DTOTest {
    @isTest
    private static void equalsSameInstance() {
        OASUniswapV3UniswapDayDataV3DTO uniswapV3UniswapDayDataV3DTO1 = OASUniswapV3UniswapDayDataV3DTO.getExample();
        OASUniswapV3UniswapDayDataV3DTO uniswapV3UniswapDayDataV3DTO2 = uniswapV3UniswapDayDataV3DTO1;
        OASUniswapV3UniswapDayDataV3DTO uniswapV3UniswapDayDataV3DTO3 = new OASUniswapV3UniswapDayDataV3DTO();
        OASUniswapV3UniswapDayDataV3DTO uniswapV3UniswapDayDataV3DTO4 = uniswapV3UniswapDayDataV3DTO3;

        System.assert(uniswapV3UniswapDayDataV3DTO1.equals(uniswapV3UniswapDayDataV3DTO2));
        System.assert(uniswapV3UniswapDayDataV3DTO2.equals(uniswapV3UniswapDayDataV3DTO1));
        System.assert(uniswapV3UniswapDayDataV3DTO1.equals(uniswapV3UniswapDayDataV3DTO1));
        System.assert(uniswapV3UniswapDayDataV3DTO3.equals(uniswapV3UniswapDayDataV3DTO4));
        System.assert(uniswapV3UniswapDayDataV3DTO4.equals(uniswapV3UniswapDayDataV3DTO3));
        System.assert(uniswapV3UniswapDayDataV3DTO3.equals(uniswapV3UniswapDayDataV3DTO3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASUniswapV3UniswapDayDataV3DTO uniswapV3UniswapDayDataV3DTO1 = OASUniswapV3UniswapDayDataV3DTO.getExample();
        OASUniswapV3UniswapDayDataV3DTO uniswapV3UniswapDayDataV3DTO2 = OASUniswapV3UniswapDayDataV3DTO.getExample();
        OASUniswapV3UniswapDayDataV3DTO uniswapV3UniswapDayDataV3DTO3 = new OASUniswapV3UniswapDayDataV3DTO();
        OASUniswapV3UniswapDayDataV3DTO uniswapV3UniswapDayDataV3DTO4 = new OASUniswapV3UniswapDayDataV3DTO();

        System.assert(uniswapV3UniswapDayDataV3DTO1.equals(uniswapV3UniswapDayDataV3DTO2));
        System.assert(uniswapV3UniswapDayDataV3DTO2.equals(uniswapV3UniswapDayDataV3DTO1));
        System.assert(uniswapV3UniswapDayDataV3DTO3.equals(uniswapV3UniswapDayDataV3DTO4));
        System.assert(uniswapV3UniswapDayDataV3DTO4.equals(uniswapV3UniswapDayDataV3DTO3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASUniswapV3UniswapDayDataV3DTO uniswapV3UniswapDayDataV3DTO1 = OASUniswapV3UniswapDayDataV3DTO.getExample();
        OASUniswapV3UniswapDayDataV3DTO uniswapV3UniswapDayDataV3DTO2 = new OASUniswapV3UniswapDayDataV3DTO();

        System.assertEquals(false, uniswapV3UniswapDayDataV3DTO1.equals('foo'));
        System.assertEquals(false, uniswapV3UniswapDayDataV3DTO2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASUniswapV3UniswapDayDataV3DTO uniswapV3UniswapDayDataV3DTO1 = OASUniswapV3UniswapDayDataV3DTO.getExample();
        OASUniswapV3UniswapDayDataV3DTO uniswapV3UniswapDayDataV3DTO2 = new OASUniswapV3UniswapDayDataV3DTO();
        OASUniswapV3UniswapDayDataV3DTO uniswapV3UniswapDayDataV3DTO3;

        System.assertEquals(false, uniswapV3UniswapDayDataV3DTO1.equals(uniswapV3UniswapDayDataV3DTO3));
        System.assertEquals(false, uniswapV3UniswapDayDataV3DTO2.equals(uniswapV3UniswapDayDataV3DTO3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASUniswapV3UniswapDayDataV3DTO uniswapV3UniswapDayDataV3DTO1 = OASUniswapV3UniswapDayDataV3DTO.getExample();
        OASUniswapV3UniswapDayDataV3DTO uniswapV3UniswapDayDataV3DTO2 = new OASUniswapV3UniswapDayDataV3DTO();

        System.assertEquals(uniswapV3UniswapDayDataV3DTO1.hashCode(), uniswapV3UniswapDayDataV3DTO1.hashCode());
        System.assertEquals(uniswapV3UniswapDayDataV3DTO2.hashCode(), uniswapV3UniswapDayDataV3DTO2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASUniswapV3UniswapDayDataV3DTO uniswapV3UniswapDayDataV3DTO1 = OASUniswapV3UniswapDayDataV3DTO.getExample();
        OASUniswapV3UniswapDayDataV3DTO uniswapV3UniswapDayDataV3DTO2 = OASUniswapV3UniswapDayDataV3DTO.getExample();
        OASUniswapV3UniswapDayDataV3DTO uniswapV3UniswapDayDataV3DTO3 = new OASUniswapV3UniswapDayDataV3DTO();
        OASUniswapV3UniswapDayDataV3DTO uniswapV3UniswapDayDataV3DTO4 = new OASUniswapV3UniswapDayDataV3DTO();

        System.assert(uniswapV3UniswapDayDataV3DTO1.equals(uniswapV3UniswapDayDataV3DTO2));
        System.assert(uniswapV3UniswapDayDataV3DTO3.equals(uniswapV3UniswapDayDataV3DTO4));
        System.assertEquals(uniswapV3UniswapDayDataV3DTO1.hashCode(), uniswapV3UniswapDayDataV3DTO2.hashCode());
        System.assertEquals(uniswapV3UniswapDayDataV3DTO3.hashCode(), uniswapV3UniswapDayDataV3DTO4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASUniswapV3UniswapDayDataV3DTO uniswapV3UniswapDayDataV3DTO = new OASUniswapV3UniswapDayDataV3DTO();
        Map<String, String> x-property-mappings = uniswapV3UniswapDayDataV3DTO.getx-property-mappings();
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
