@isTest
private class OASTickDayDataV3DTOTest {
    @isTest
    private static void equalsSameInstance() {
        OASTickDayDataV3DTO tickDayDataV3DTO1 = OASTickDayDataV3DTO.getExample();
        OASTickDayDataV3DTO tickDayDataV3DTO2 = tickDayDataV3DTO1;
        OASTickDayDataV3DTO tickDayDataV3DTO3 = new OASTickDayDataV3DTO();
        OASTickDayDataV3DTO tickDayDataV3DTO4 = tickDayDataV3DTO3;

        System.assert(tickDayDataV3DTO1.equals(tickDayDataV3DTO2));
        System.assert(tickDayDataV3DTO2.equals(tickDayDataV3DTO1));
        System.assert(tickDayDataV3DTO1.equals(tickDayDataV3DTO1));
        System.assert(tickDayDataV3DTO3.equals(tickDayDataV3DTO4));
        System.assert(tickDayDataV3DTO4.equals(tickDayDataV3DTO3));
        System.assert(tickDayDataV3DTO3.equals(tickDayDataV3DTO3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASTickDayDataV3DTO tickDayDataV3DTO1 = OASTickDayDataV3DTO.getExample();
        OASTickDayDataV3DTO tickDayDataV3DTO2 = OASTickDayDataV3DTO.getExample();
        OASTickDayDataV3DTO tickDayDataV3DTO3 = new OASTickDayDataV3DTO();
        OASTickDayDataV3DTO tickDayDataV3DTO4 = new OASTickDayDataV3DTO();

        System.assert(tickDayDataV3DTO1.equals(tickDayDataV3DTO2));
        System.assert(tickDayDataV3DTO2.equals(tickDayDataV3DTO1));
        System.assert(tickDayDataV3DTO3.equals(tickDayDataV3DTO4));
        System.assert(tickDayDataV3DTO4.equals(tickDayDataV3DTO3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASTickDayDataV3DTO tickDayDataV3DTO1 = OASTickDayDataV3DTO.getExample();
        OASTickDayDataV3DTO tickDayDataV3DTO2 = new OASTickDayDataV3DTO();

        System.assertEquals(false, tickDayDataV3DTO1.equals('foo'));
        System.assertEquals(false, tickDayDataV3DTO2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASTickDayDataV3DTO tickDayDataV3DTO1 = OASTickDayDataV3DTO.getExample();
        OASTickDayDataV3DTO tickDayDataV3DTO2 = new OASTickDayDataV3DTO();
        OASTickDayDataV3DTO tickDayDataV3DTO3;

        System.assertEquals(false, tickDayDataV3DTO1.equals(tickDayDataV3DTO3));
        System.assertEquals(false, tickDayDataV3DTO2.equals(tickDayDataV3DTO3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASTickDayDataV3DTO tickDayDataV3DTO1 = OASTickDayDataV3DTO.getExample();
        OASTickDayDataV3DTO tickDayDataV3DTO2 = new OASTickDayDataV3DTO();

        System.assertEquals(tickDayDataV3DTO1.hashCode(), tickDayDataV3DTO1.hashCode());
        System.assertEquals(tickDayDataV3DTO2.hashCode(), tickDayDataV3DTO2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASTickDayDataV3DTO tickDayDataV3DTO1 = OASTickDayDataV3DTO.getExample();
        OASTickDayDataV3DTO tickDayDataV3DTO2 = OASTickDayDataV3DTO.getExample();
        OASTickDayDataV3DTO tickDayDataV3DTO3 = new OASTickDayDataV3DTO();
        OASTickDayDataV3DTO tickDayDataV3DTO4 = new OASTickDayDataV3DTO();

        System.assert(tickDayDataV3DTO1.equals(tickDayDataV3DTO2));
        System.assert(tickDayDataV3DTO3.equals(tickDayDataV3DTO4));
        System.assertEquals(tickDayDataV3DTO1.hashCode(), tickDayDataV3DTO2.hashCode());
        System.assertEquals(tickDayDataV3DTO3.hashCode(), tickDayDataV3DTO4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASTickDayDataV3DTO tickDayDataV3DTO = new OASTickDayDataV3DTO();
        Map<String, String> x-property-mappings = tickDayDataV3DTO.getx-property-mappings();
        System.assertEquals('entryTime', x-property-mappings.get('entry_time'));
        System.assertEquals('recvTime', x-property-mappings.get('recv_time'));
        System.assertEquals('blockNumber', x-property-mappings.get('block_number'));
        System.assertEquals('r_date', x-property-mappings.get('date'));
        System.assertEquals('liquidityGross', x-property-mappings.get('liquidity_gross'));
        System.assertEquals('liquidityNet', x-property-mappings.get('liquidity_net'));
        System.assertEquals('volumeToken0', x-property-mappings.get('volume_token_0'));
        System.assertEquals('volumeToken1', x-property-mappings.get('volume_token_1'));
        System.assertEquals('volumeUsd', x-property-mappings.get('volume_usd'));
        System.assertEquals('feesUsd', x-property-mappings.get('fees_usd'));
        System.assertEquals('feeGrowthOutside0x128', x-property-mappings.get('fee_growth_outside_0x128'));
        System.assertEquals('feeGrowthOutside1x128', x-property-mappings.get('fee_growth_outside_1x128'));
    }
}
