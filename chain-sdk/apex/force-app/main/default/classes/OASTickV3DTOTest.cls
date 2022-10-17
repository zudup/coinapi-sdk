@isTest
private class OASTickV3DTOTest {
    @isTest
    private static void equalsSameInstance() {
        OASTickV3DTO tickV3DTO1 = OASTickV3DTO.getExample();
        OASTickV3DTO tickV3DTO2 = tickV3DTO1;
        OASTickV3DTO tickV3DTO3 = new OASTickV3DTO();
        OASTickV3DTO tickV3DTO4 = tickV3DTO3;

        System.assert(tickV3DTO1.equals(tickV3DTO2));
        System.assert(tickV3DTO2.equals(tickV3DTO1));
        System.assert(tickV3DTO1.equals(tickV3DTO1));
        System.assert(tickV3DTO3.equals(tickV3DTO4));
        System.assert(tickV3DTO4.equals(tickV3DTO3));
        System.assert(tickV3DTO3.equals(tickV3DTO3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASTickV3DTO tickV3DTO1 = OASTickV3DTO.getExample();
        OASTickV3DTO tickV3DTO2 = OASTickV3DTO.getExample();
        OASTickV3DTO tickV3DTO3 = new OASTickV3DTO();
        OASTickV3DTO tickV3DTO4 = new OASTickV3DTO();

        System.assert(tickV3DTO1.equals(tickV3DTO2));
        System.assert(tickV3DTO2.equals(tickV3DTO1));
        System.assert(tickV3DTO3.equals(tickV3DTO4));
        System.assert(tickV3DTO4.equals(tickV3DTO3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASTickV3DTO tickV3DTO1 = OASTickV3DTO.getExample();
        OASTickV3DTO tickV3DTO2 = new OASTickV3DTO();

        System.assertEquals(false, tickV3DTO1.equals('foo'));
        System.assertEquals(false, tickV3DTO2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASTickV3DTO tickV3DTO1 = OASTickV3DTO.getExample();
        OASTickV3DTO tickV3DTO2 = new OASTickV3DTO();
        OASTickV3DTO tickV3DTO3;

        System.assertEquals(false, tickV3DTO1.equals(tickV3DTO3));
        System.assertEquals(false, tickV3DTO2.equals(tickV3DTO3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASTickV3DTO tickV3DTO1 = OASTickV3DTO.getExample();
        OASTickV3DTO tickV3DTO2 = new OASTickV3DTO();

        System.assertEquals(tickV3DTO1.hashCode(), tickV3DTO1.hashCode());
        System.assertEquals(tickV3DTO2.hashCode(), tickV3DTO2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASTickV3DTO tickV3DTO1 = OASTickV3DTO.getExample();
        OASTickV3DTO tickV3DTO2 = OASTickV3DTO.getExample();
        OASTickV3DTO tickV3DTO3 = new OASTickV3DTO();
        OASTickV3DTO tickV3DTO4 = new OASTickV3DTO();

        System.assert(tickV3DTO1.equals(tickV3DTO2));
        System.assert(tickV3DTO3.equals(tickV3DTO4));
        System.assertEquals(tickV3DTO1.hashCode(), tickV3DTO2.hashCode());
        System.assertEquals(tickV3DTO3.hashCode(), tickV3DTO4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASTickV3DTO tickV3DTO = new OASTickV3DTO();
        Map<String, String> x-property-mappings = tickV3DTO.getx-property-mappings();
        System.assertEquals('entryTime', x-property-mappings.get('entry_time'));
        System.assertEquals('recvTime', x-property-mappings.get('recv_time'));
        System.assertEquals('blockNumber', x-property-mappings.get('block_number'));
        System.assertEquals('poolAddress', x-property-mappings.get('pool_address'));
        System.assertEquals('tickIdx', x-property-mappings.get('tick_idx'));
        System.assertEquals('liquidityGross', x-property-mappings.get('liquidity_gross'));
        System.assertEquals('liquidityNet', x-property-mappings.get('liquidity_net'));
        System.assertEquals('price0', x-property-mappings.get('price_0'));
        System.assertEquals('price1', x-property-mappings.get('price_1'));
        System.assertEquals('volumeToken0', x-property-mappings.get('volume_token_0'));
        System.assertEquals('volumeToken1', x-property-mappings.get('volume_token_1'));
        System.assertEquals('volumeUsd', x-property-mappings.get('volume_usd'));
        System.assertEquals('untrackedVolumeUsd', x-property-mappings.get('untracked_volume_usd'));
        System.assertEquals('feesUsd', x-property-mappings.get('fees_usd'));
        System.assertEquals('collectedFeesToken0', x-property-mappings.get('collected_fees_token_0'));
        System.assertEquals('collectedFeesToken1', x-property-mappings.get('collected_fees_token_1'));
        System.assertEquals('collectedFeesUsd', x-property-mappings.get('collected_fees_usd'));
        System.assertEquals('createdAtTimestamp', x-property-mappings.get('created_at_timestamp'));
        System.assertEquals('liquidityProviderCount', x-property-mappings.get('liquidity_provider_count'));
        System.assertEquals('feeGrowthOutside0x128', x-property-mappings.get('fee_growth_outside_0x128'));
        System.assertEquals('feeGrowthOutside1x128', x-property-mappings.get('fee_growth_outside_1x128'));
    }
}
