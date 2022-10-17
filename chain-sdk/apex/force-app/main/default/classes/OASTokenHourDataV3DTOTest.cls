@isTest
private class OASTokenHourDataV3DTOTest {
    @isTest
    private static void equalsSameInstance() {
        OASTokenHourDataV3DTO tokenHourDataV3DTO1 = OASTokenHourDataV3DTO.getExample();
        OASTokenHourDataV3DTO tokenHourDataV3DTO2 = tokenHourDataV3DTO1;
        OASTokenHourDataV3DTO tokenHourDataV3DTO3 = new OASTokenHourDataV3DTO();
        OASTokenHourDataV3DTO tokenHourDataV3DTO4 = tokenHourDataV3DTO3;

        System.assert(tokenHourDataV3DTO1.equals(tokenHourDataV3DTO2));
        System.assert(tokenHourDataV3DTO2.equals(tokenHourDataV3DTO1));
        System.assert(tokenHourDataV3DTO1.equals(tokenHourDataV3DTO1));
        System.assert(tokenHourDataV3DTO3.equals(tokenHourDataV3DTO4));
        System.assert(tokenHourDataV3DTO4.equals(tokenHourDataV3DTO3));
        System.assert(tokenHourDataV3DTO3.equals(tokenHourDataV3DTO3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASTokenHourDataV3DTO tokenHourDataV3DTO1 = OASTokenHourDataV3DTO.getExample();
        OASTokenHourDataV3DTO tokenHourDataV3DTO2 = OASTokenHourDataV3DTO.getExample();
        OASTokenHourDataV3DTO tokenHourDataV3DTO3 = new OASTokenHourDataV3DTO();
        OASTokenHourDataV3DTO tokenHourDataV3DTO4 = new OASTokenHourDataV3DTO();

        System.assert(tokenHourDataV3DTO1.equals(tokenHourDataV3DTO2));
        System.assert(tokenHourDataV3DTO2.equals(tokenHourDataV3DTO1));
        System.assert(tokenHourDataV3DTO3.equals(tokenHourDataV3DTO4));
        System.assert(tokenHourDataV3DTO4.equals(tokenHourDataV3DTO3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASTokenHourDataV3DTO tokenHourDataV3DTO1 = OASTokenHourDataV3DTO.getExample();
        OASTokenHourDataV3DTO tokenHourDataV3DTO2 = new OASTokenHourDataV3DTO();

        System.assertEquals(false, tokenHourDataV3DTO1.equals('foo'));
        System.assertEquals(false, tokenHourDataV3DTO2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASTokenHourDataV3DTO tokenHourDataV3DTO1 = OASTokenHourDataV3DTO.getExample();
        OASTokenHourDataV3DTO tokenHourDataV3DTO2 = new OASTokenHourDataV3DTO();
        OASTokenHourDataV3DTO tokenHourDataV3DTO3;

        System.assertEquals(false, tokenHourDataV3DTO1.equals(tokenHourDataV3DTO3));
        System.assertEquals(false, tokenHourDataV3DTO2.equals(tokenHourDataV3DTO3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASTokenHourDataV3DTO tokenHourDataV3DTO1 = OASTokenHourDataV3DTO.getExample();
        OASTokenHourDataV3DTO tokenHourDataV3DTO2 = new OASTokenHourDataV3DTO();

        System.assertEquals(tokenHourDataV3DTO1.hashCode(), tokenHourDataV3DTO1.hashCode());
        System.assertEquals(tokenHourDataV3DTO2.hashCode(), tokenHourDataV3DTO2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASTokenHourDataV3DTO tokenHourDataV3DTO1 = OASTokenHourDataV3DTO.getExample();
        OASTokenHourDataV3DTO tokenHourDataV3DTO2 = OASTokenHourDataV3DTO.getExample();
        OASTokenHourDataV3DTO tokenHourDataV3DTO3 = new OASTokenHourDataV3DTO();
        OASTokenHourDataV3DTO tokenHourDataV3DTO4 = new OASTokenHourDataV3DTO();

        System.assert(tokenHourDataV3DTO1.equals(tokenHourDataV3DTO2));
        System.assert(tokenHourDataV3DTO3.equals(tokenHourDataV3DTO4));
        System.assertEquals(tokenHourDataV3DTO1.hashCode(), tokenHourDataV3DTO2.hashCode());
        System.assertEquals(tokenHourDataV3DTO3.hashCode(), tokenHourDataV3DTO4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASTokenHourDataV3DTO tokenHourDataV3DTO = new OASTokenHourDataV3DTO();
        Map<String, String> x-property-mappings = tokenHourDataV3DTO.getx-property-mappings();
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
