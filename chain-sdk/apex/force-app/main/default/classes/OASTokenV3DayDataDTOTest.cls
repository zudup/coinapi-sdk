@isTest
private class OASTokenV3DayDataDTOTest {
    @isTest
    private static void equalsSameInstance() {
        OASTokenV3DayDataDTO tokenV3DayDataDTO1 = OASTokenV3DayDataDTO.getExample();
        OASTokenV3DayDataDTO tokenV3DayDataDTO2 = tokenV3DayDataDTO1;
        OASTokenV3DayDataDTO tokenV3DayDataDTO3 = new OASTokenV3DayDataDTO();
        OASTokenV3DayDataDTO tokenV3DayDataDTO4 = tokenV3DayDataDTO3;

        System.assert(tokenV3DayDataDTO1.equals(tokenV3DayDataDTO2));
        System.assert(tokenV3DayDataDTO2.equals(tokenV3DayDataDTO1));
        System.assert(tokenV3DayDataDTO1.equals(tokenV3DayDataDTO1));
        System.assert(tokenV3DayDataDTO3.equals(tokenV3DayDataDTO4));
        System.assert(tokenV3DayDataDTO4.equals(tokenV3DayDataDTO3));
        System.assert(tokenV3DayDataDTO3.equals(tokenV3DayDataDTO3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASTokenV3DayDataDTO tokenV3DayDataDTO1 = OASTokenV3DayDataDTO.getExample();
        OASTokenV3DayDataDTO tokenV3DayDataDTO2 = OASTokenV3DayDataDTO.getExample();
        OASTokenV3DayDataDTO tokenV3DayDataDTO3 = new OASTokenV3DayDataDTO();
        OASTokenV3DayDataDTO tokenV3DayDataDTO4 = new OASTokenV3DayDataDTO();

        System.assert(tokenV3DayDataDTO1.equals(tokenV3DayDataDTO2));
        System.assert(tokenV3DayDataDTO2.equals(tokenV3DayDataDTO1));
        System.assert(tokenV3DayDataDTO3.equals(tokenV3DayDataDTO4));
        System.assert(tokenV3DayDataDTO4.equals(tokenV3DayDataDTO3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASTokenV3DayDataDTO tokenV3DayDataDTO1 = OASTokenV3DayDataDTO.getExample();
        OASTokenV3DayDataDTO tokenV3DayDataDTO2 = new OASTokenV3DayDataDTO();

        System.assertEquals(false, tokenV3DayDataDTO1.equals('foo'));
        System.assertEquals(false, tokenV3DayDataDTO2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASTokenV3DayDataDTO tokenV3DayDataDTO1 = OASTokenV3DayDataDTO.getExample();
        OASTokenV3DayDataDTO tokenV3DayDataDTO2 = new OASTokenV3DayDataDTO();
        OASTokenV3DayDataDTO tokenV3DayDataDTO3;

        System.assertEquals(false, tokenV3DayDataDTO1.equals(tokenV3DayDataDTO3));
        System.assertEquals(false, tokenV3DayDataDTO2.equals(tokenV3DayDataDTO3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASTokenV3DayDataDTO tokenV3DayDataDTO1 = OASTokenV3DayDataDTO.getExample();
        OASTokenV3DayDataDTO tokenV3DayDataDTO2 = new OASTokenV3DayDataDTO();

        System.assertEquals(tokenV3DayDataDTO1.hashCode(), tokenV3DayDataDTO1.hashCode());
        System.assertEquals(tokenV3DayDataDTO2.hashCode(), tokenV3DayDataDTO2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASTokenV3DayDataDTO tokenV3DayDataDTO1 = OASTokenV3DayDataDTO.getExample();
        OASTokenV3DayDataDTO tokenV3DayDataDTO2 = OASTokenV3DayDataDTO.getExample();
        OASTokenV3DayDataDTO tokenV3DayDataDTO3 = new OASTokenV3DayDataDTO();
        OASTokenV3DayDataDTO tokenV3DayDataDTO4 = new OASTokenV3DayDataDTO();

        System.assert(tokenV3DayDataDTO1.equals(tokenV3DayDataDTO2));
        System.assert(tokenV3DayDataDTO3.equals(tokenV3DayDataDTO4));
        System.assertEquals(tokenV3DayDataDTO1.hashCode(), tokenV3DayDataDTO2.hashCode());
        System.assertEquals(tokenV3DayDataDTO3.hashCode(), tokenV3DayDataDTO4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASTokenV3DayDataDTO tokenV3DayDataDTO = new OASTokenV3DayDataDTO();
        Map<String, String> x-property-mappings = tokenV3DayDataDTO.getx-property-mappings();
        System.assertEquals('entryTime', x-property-mappings.get('entry_time'));
        System.assertEquals('recvTime', x-property-mappings.get('recv_time'));
        System.assertEquals('blockNumber', x-property-mappings.get('block_number'));
        System.assertEquals('r_date', x-property-mappings.get('date'));
        System.assertEquals('volumeUsd', x-property-mappings.get('volume_usd'));
        System.assertEquals('untrackedVolumeUsd', x-property-mappings.get('untracked_volume_usd'));
        System.assertEquals('totalValueLocked', x-property-mappings.get('total_value_locked'));
        System.assertEquals('totalValueLockedUsd', x-property-mappings.get('total_value_locked_usd'));
        System.assertEquals('priceUsd', x-property-mappings.get('price_usd'));
        System.assertEquals('feesUsd', x-property-mappings.get('fees_usd'));
    }
}
