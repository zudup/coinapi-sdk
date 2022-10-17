@isTest
private class OASPositionSnapshotV3DTOTest {
    @isTest
    private static void equalsSameInstance() {
        OASPositionSnapshotV3DTO positionSnapshotV3DTO1 = OASPositionSnapshotV3DTO.getExample();
        OASPositionSnapshotV3DTO positionSnapshotV3DTO2 = positionSnapshotV3DTO1;
        OASPositionSnapshotV3DTO positionSnapshotV3DTO3 = new OASPositionSnapshotV3DTO();
        OASPositionSnapshotV3DTO positionSnapshotV3DTO4 = positionSnapshotV3DTO3;

        System.assert(positionSnapshotV3DTO1.equals(positionSnapshotV3DTO2));
        System.assert(positionSnapshotV3DTO2.equals(positionSnapshotV3DTO1));
        System.assert(positionSnapshotV3DTO1.equals(positionSnapshotV3DTO1));
        System.assert(positionSnapshotV3DTO3.equals(positionSnapshotV3DTO4));
        System.assert(positionSnapshotV3DTO4.equals(positionSnapshotV3DTO3));
        System.assert(positionSnapshotV3DTO3.equals(positionSnapshotV3DTO3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPositionSnapshotV3DTO positionSnapshotV3DTO1 = OASPositionSnapshotV3DTO.getExample();
        OASPositionSnapshotV3DTO positionSnapshotV3DTO2 = OASPositionSnapshotV3DTO.getExample();
        OASPositionSnapshotV3DTO positionSnapshotV3DTO3 = new OASPositionSnapshotV3DTO();
        OASPositionSnapshotV3DTO positionSnapshotV3DTO4 = new OASPositionSnapshotV3DTO();

        System.assert(positionSnapshotV3DTO1.equals(positionSnapshotV3DTO2));
        System.assert(positionSnapshotV3DTO2.equals(positionSnapshotV3DTO1));
        System.assert(positionSnapshotV3DTO3.equals(positionSnapshotV3DTO4));
        System.assert(positionSnapshotV3DTO4.equals(positionSnapshotV3DTO3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPositionSnapshotV3DTO positionSnapshotV3DTO1 = OASPositionSnapshotV3DTO.getExample();
        OASPositionSnapshotV3DTO positionSnapshotV3DTO2 = new OASPositionSnapshotV3DTO();

        System.assertEquals(false, positionSnapshotV3DTO1.equals('foo'));
        System.assertEquals(false, positionSnapshotV3DTO2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPositionSnapshotV3DTO positionSnapshotV3DTO1 = OASPositionSnapshotV3DTO.getExample();
        OASPositionSnapshotV3DTO positionSnapshotV3DTO2 = new OASPositionSnapshotV3DTO();
        OASPositionSnapshotV3DTO positionSnapshotV3DTO3;

        System.assertEquals(false, positionSnapshotV3DTO1.equals(positionSnapshotV3DTO3));
        System.assertEquals(false, positionSnapshotV3DTO2.equals(positionSnapshotV3DTO3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPositionSnapshotV3DTO positionSnapshotV3DTO1 = OASPositionSnapshotV3DTO.getExample();
        OASPositionSnapshotV3DTO positionSnapshotV3DTO2 = new OASPositionSnapshotV3DTO();

        System.assertEquals(positionSnapshotV3DTO1.hashCode(), positionSnapshotV3DTO1.hashCode());
        System.assertEquals(positionSnapshotV3DTO2.hashCode(), positionSnapshotV3DTO2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPositionSnapshotV3DTO positionSnapshotV3DTO1 = OASPositionSnapshotV3DTO.getExample();
        OASPositionSnapshotV3DTO positionSnapshotV3DTO2 = OASPositionSnapshotV3DTO.getExample();
        OASPositionSnapshotV3DTO positionSnapshotV3DTO3 = new OASPositionSnapshotV3DTO();
        OASPositionSnapshotV3DTO positionSnapshotV3DTO4 = new OASPositionSnapshotV3DTO();

        System.assert(positionSnapshotV3DTO1.equals(positionSnapshotV3DTO2));
        System.assert(positionSnapshotV3DTO3.equals(positionSnapshotV3DTO4));
        System.assertEquals(positionSnapshotV3DTO1.hashCode(), positionSnapshotV3DTO2.hashCode());
        System.assertEquals(positionSnapshotV3DTO3.hashCode(), positionSnapshotV3DTO4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPositionSnapshotV3DTO positionSnapshotV3DTO = new OASPositionSnapshotV3DTO();
        Map<String, String> x-property-mappings = positionSnapshotV3DTO.getx-property-mappings();
        System.assertEquals('entryTime', x-property-mappings.get('entry_time'));
        System.assertEquals('recvTime', x-property-mappings.get('recv_time'));
        System.assertEquals('blockNumber', x-property-mappings.get('block_number'));
        System.assertEquals('depositedToken0', x-property-mappings.get('deposited_token_0'));
        System.assertEquals('depositedToken1', x-property-mappings.get('deposited_token_1'));
        System.assertEquals('withdrawnToken0', x-property-mappings.get('withdrawn_token_0'));
        System.assertEquals('withdrawnToken1', x-property-mappings.get('withdrawn_token_1'));
        System.assertEquals('collectedFeesToken0', x-property-mappings.get('collected_fees_token_0'));
        System.assertEquals('collectedFeesToken1', x-property-mappings.get('collected_fees_token_1'));
        System.assertEquals('r_transaction', x-property-mappings.get('transaction'));
        System.assertEquals('feeGrowthInside0LastX128', x-property-mappings.get('fee_growth_inside_0_last_x128'));
        System.assertEquals('feeGrowthInside1LastX128', x-property-mappings.get('fee_growth_inside_1_last_x128'));
    }
}
