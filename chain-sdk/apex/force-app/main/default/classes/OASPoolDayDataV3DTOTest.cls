@isTest
private class OASPoolDayDataV3DTOTest {
    @isTest
    private static void equalsSameInstance() {
        OASPoolDayDataV3DTO poolDayDataV3DTO1 = OASPoolDayDataV3DTO.getExample();
        OASPoolDayDataV3DTO poolDayDataV3DTO2 = poolDayDataV3DTO1;
        OASPoolDayDataV3DTO poolDayDataV3DTO3 = new OASPoolDayDataV3DTO();
        OASPoolDayDataV3DTO poolDayDataV3DTO4 = poolDayDataV3DTO3;

        System.assert(poolDayDataV3DTO1.equals(poolDayDataV3DTO2));
        System.assert(poolDayDataV3DTO2.equals(poolDayDataV3DTO1));
        System.assert(poolDayDataV3DTO1.equals(poolDayDataV3DTO1));
        System.assert(poolDayDataV3DTO3.equals(poolDayDataV3DTO4));
        System.assert(poolDayDataV3DTO4.equals(poolDayDataV3DTO3));
        System.assert(poolDayDataV3DTO3.equals(poolDayDataV3DTO3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPoolDayDataV3DTO poolDayDataV3DTO1 = OASPoolDayDataV3DTO.getExample();
        OASPoolDayDataV3DTO poolDayDataV3DTO2 = OASPoolDayDataV3DTO.getExample();
        OASPoolDayDataV3DTO poolDayDataV3DTO3 = new OASPoolDayDataV3DTO();
        OASPoolDayDataV3DTO poolDayDataV3DTO4 = new OASPoolDayDataV3DTO();

        System.assert(poolDayDataV3DTO1.equals(poolDayDataV3DTO2));
        System.assert(poolDayDataV3DTO2.equals(poolDayDataV3DTO1));
        System.assert(poolDayDataV3DTO3.equals(poolDayDataV3DTO4));
        System.assert(poolDayDataV3DTO4.equals(poolDayDataV3DTO3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPoolDayDataV3DTO poolDayDataV3DTO1 = OASPoolDayDataV3DTO.getExample();
        OASPoolDayDataV3DTO poolDayDataV3DTO2 = new OASPoolDayDataV3DTO();

        System.assertEquals(false, poolDayDataV3DTO1.equals('foo'));
        System.assertEquals(false, poolDayDataV3DTO2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPoolDayDataV3DTO poolDayDataV3DTO1 = OASPoolDayDataV3DTO.getExample();
        OASPoolDayDataV3DTO poolDayDataV3DTO2 = new OASPoolDayDataV3DTO();
        OASPoolDayDataV3DTO poolDayDataV3DTO3;

        System.assertEquals(false, poolDayDataV3DTO1.equals(poolDayDataV3DTO3));
        System.assertEquals(false, poolDayDataV3DTO2.equals(poolDayDataV3DTO3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPoolDayDataV3DTO poolDayDataV3DTO1 = OASPoolDayDataV3DTO.getExample();
        OASPoolDayDataV3DTO poolDayDataV3DTO2 = new OASPoolDayDataV3DTO();

        System.assertEquals(poolDayDataV3DTO1.hashCode(), poolDayDataV3DTO1.hashCode());
        System.assertEquals(poolDayDataV3DTO2.hashCode(), poolDayDataV3DTO2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPoolDayDataV3DTO poolDayDataV3DTO1 = OASPoolDayDataV3DTO.getExample();
        OASPoolDayDataV3DTO poolDayDataV3DTO2 = OASPoolDayDataV3DTO.getExample();
        OASPoolDayDataV3DTO poolDayDataV3DTO3 = new OASPoolDayDataV3DTO();
        OASPoolDayDataV3DTO poolDayDataV3DTO4 = new OASPoolDayDataV3DTO();

        System.assert(poolDayDataV3DTO1.equals(poolDayDataV3DTO2));
        System.assert(poolDayDataV3DTO3.equals(poolDayDataV3DTO4));
        System.assertEquals(poolDayDataV3DTO1.hashCode(), poolDayDataV3DTO2.hashCode());
        System.assertEquals(poolDayDataV3DTO3.hashCode(), poolDayDataV3DTO4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPoolDayDataV3DTO poolDayDataV3DTO = new OASPoolDayDataV3DTO();
        Map<String, String> x-property-mappings = poolDayDataV3DTO.getx-property-mappings();
        System.assertEquals('entryTime', x-property-mappings.get('entry_time'));
        System.assertEquals('recvTime', x-property-mappings.get('recv_time'));
        System.assertEquals('blockNumber', x-property-mappings.get('block_number'));
        System.assertEquals('r_date', x-property-mappings.get('date'));
        System.assertEquals('sqrtPrice', x-property-mappings.get('sqrt_price'));
        System.assertEquals('token0Price', x-property-mappings.get('token_0_price'));
        System.assertEquals('token1Price', x-property-mappings.get('token_1_price'));
        System.assertEquals('feeGrowthGlobal0x128', x-property-mappings.get('fee_growth_global_0x128'));
        System.assertEquals('feeGrowthGlobal1x128', x-property-mappings.get('fee_growth_global_1x128'));
        System.assertEquals('tvlUsd', x-property-mappings.get('tvl_usd'));
        System.assertEquals('volumeToken0', x-property-mappings.get('volume_token_0'));
        System.assertEquals('volumeToken1', x-property-mappings.get('volume_token_1'));
        System.assertEquals('volumeUsd', x-property-mappings.get('volume_usd'));
        System.assertEquals('feesUsd', x-property-mappings.get('fees_usd'));
        System.assertEquals('txCount', x-property-mappings.get('tx_count'));
    }
}
