@isTest
private class OASPoolHourDataV3DTOTest {
    @isTest
    private static void equalsSameInstance() {
        OASPoolHourDataV3DTO poolHourDataV3DTO1 = OASPoolHourDataV3DTO.getExample();
        OASPoolHourDataV3DTO poolHourDataV3DTO2 = poolHourDataV3DTO1;
        OASPoolHourDataV3DTO poolHourDataV3DTO3 = new OASPoolHourDataV3DTO();
        OASPoolHourDataV3DTO poolHourDataV3DTO4 = poolHourDataV3DTO3;

        System.assert(poolHourDataV3DTO1.equals(poolHourDataV3DTO2));
        System.assert(poolHourDataV3DTO2.equals(poolHourDataV3DTO1));
        System.assert(poolHourDataV3DTO1.equals(poolHourDataV3DTO1));
        System.assert(poolHourDataV3DTO3.equals(poolHourDataV3DTO4));
        System.assert(poolHourDataV3DTO4.equals(poolHourDataV3DTO3));
        System.assert(poolHourDataV3DTO3.equals(poolHourDataV3DTO3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPoolHourDataV3DTO poolHourDataV3DTO1 = OASPoolHourDataV3DTO.getExample();
        OASPoolHourDataV3DTO poolHourDataV3DTO2 = OASPoolHourDataV3DTO.getExample();
        OASPoolHourDataV3DTO poolHourDataV3DTO3 = new OASPoolHourDataV3DTO();
        OASPoolHourDataV3DTO poolHourDataV3DTO4 = new OASPoolHourDataV3DTO();

        System.assert(poolHourDataV3DTO1.equals(poolHourDataV3DTO2));
        System.assert(poolHourDataV3DTO2.equals(poolHourDataV3DTO1));
        System.assert(poolHourDataV3DTO3.equals(poolHourDataV3DTO4));
        System.assert(poolHourDataV3DTO4.equals(poolHourDataV3DTO3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPoolHourDataV3DTO poolHourDataV3DTO1 = OASPoolHourDataV3DTO.getExample();
        OASPoolHourDataV3DTO poolHourDataV3DTO2 = new OASPoolHourDataV3DTO();

        System.assertEquals(false, poolHourDataV3DTO1.equals('foo'));
        System.assertEquals(false, poolHourDataV3DTO2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPoolHourDataV3DTO poolHourDataV3DTO1 = OASPoolHourDataV3DTO.getExample();
        OASPoolHourDataV3DTO poolHourDataV3DTO2 = new OASPoolHourDataV3DTO();
        OASPoolHourDataV3DTO poolHourDataV3DTO3;

        System.assertEquals(false, poolHourDataV3DTO1.equals(poolHourDataV3DTO3));
        System.assertEquals(false, poolHourDataV3DTO2.equals(poolHourDataV3DTO3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPoolHourDataV3DTO poolHourDataV3DTO1 = OASPoolHourDataV3DTO.getExample();
        OASPoolHourDataV3DTO poolHourDataV3DTO2 = new OASPoolHourDataV3DTO();

        System.assertEquals(poolHourDataV3DTO1.hashCode(), poolHourDataV3DTO1.hashCode());
        System.assertEquals(poolHourDataV3DTO2.hashCode(), poolHourDataV3DTO2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPoolHourDataV3DTO poolHourDataV3DTO1 = OASPoolHourDataV3DTO.getExample();
        OASPoolHourDataV3DTO poolHourDataV3DTO2 = OASPoolHourDataV3DTO.getExample();
        OASPoolHourDataV3DTO poolHourDataV3DTO3 = new OASPoolHourDataV3DTO();
        OASPoolHourDataV3DTO poolHourDataV3DTO4 = new OASPoolHourDataV3DTO();

        System.assert(poolHourDataV3DTO1.equals(poolHourDataV3DTO2));
        System.assert(poolHourDataV3DTO3.equals(poolHourDataV3DTO4));
        System.assertEquals(poolHourDataV3DTO1.hashCode(), poolHourDataV3DTO2.hashCode());
        System.assertEquals(poolHourDataV3DTO3.hashCode(), poolHourDataV3DTO4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPoolHourDataV3DTO poolHourDataV3DTO = new OASPoolHourDataV3DTO();
        Map<String, String> x-property-mappings = poolHourDataV3DTO.getx-property-mappings();
        System.assertEquals('entryTime', x-property-mappings.get('entry_time'));
        System.assertEquals('recvTime', x-property-mappings.get('recv_time'));
        System.assertEquals('blockNumber', x-property-mappings.get('block_number'));
        System.assertEquals('periodStartUnix', x-property-mappings.get('period_start_unix'));
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
