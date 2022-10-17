@isTest
private class OASPositionV3DTOTest {
    @isTest
    private static void equalsSameInstance() {
        OASPositionV3DTO positionV3DTO1 = OASPositionV3DTO.getExample();
        OASPositionV3DTO positionV3DTO2 = positionV3DTO1;
        OASPositionV3DTO positionV3DTO3 = new OASPositionV3DTO();
        OASPositionV3DTO positionV3DTO4 = positionV3DTO3;

        System.assert(positionV3DTO1.equals(positionV3DTO2));
        System.assert(positionV3DTO2.equals(positionV3DTO1));
        System.assert(positionV3DTO1.equals(positionV3DTO1));
        System.assert(positionV3DTO3.equals(positionV3DTO4));
        System.assert(positionV3DTO4.equals(positionV3DTO3));
        System.assert(positionV3DTO3.equals(positionV3DTO3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPositionV3DTO positionV3DTO1 = OASPositionV3DTO.getExample();
        OASPositionV3DTO positionV3DTO2 = OASPositionV3DTO.getExample();
        OASPositionV3DTO positionV3DTO3 = new OASPositionV3DTO();
        OASPositionV3DTO positionV3DTO4 = new OASPositionV3DTO();

        System.assert(positionV3DTO1.equals(positionV3DTO2));
        System.assert(positionV3DTO2.equals(positionV3DTO1));
        System.assert(positionV3DTO3.equals(positionV3DTO4));
        System.assert(positionV3DTO4.equals(positionV3DTO3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPositionV3DTO positionV3DTO1 = OASPositionV3DTO.getExample();
        OASPositionV3DTO positionV3DTO2 = new OASPositionV3DTO();

        System.assertEquals(false, positionV3DTO1.equals('foo'));
        System.assertEquals(false, positionV3DTO2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPositionV3DTO positionV3DTO1 = OASPositionV3DTO.getExample();
        OASPositionV3DTO positionV3DTO2 = new OASPositionV3DTO();
        OASPositionV3DTO positionV3DTO3;

        System.assertEquals(false, positionV3DTO1.equals(positionV3DTO3));
        System.assertEquals(false, positionV3DTO2.equals(positionV3DTO3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPositionV3DTO positionV3DTO1 = OASPositionV3DTO.getExample();
        OASPositionV3DTO positionV3DTO2 = new OASPositionV3DTO();

        System.assertEquals(positionV3DTO1.hashCode(), positionV3DTO1.hashCode());
        System.assertEquals(positionV3DTO2.hashCode(), positionV3DTO2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPositionV3DTO positionV3DTO1 = OASPositionV3DTO.getExample();
        OASPositionV3DTO positionV3DTO2 = OASPositionV3DTO.getExample();
        OASPositionV3DTO positionV3DTO3 = new OASPositionV3DTO();
        OASPositionV3DTO positionV3DTO4 = new OASPositionV3DTO();

        System.assert(positionV3DTO1.equals(positionV3DTO2));
        System.assert(positionV3DTO3.equals(positionV3DTO4));
        System.assertEquals(positionV3DTO1.hashCode(), positionV3DTO2.hashCode());
        System.assertEquals(positionV3DTO3.hashCode(), positionV3DTO4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPositionV3DTO positionV3DTO = new OASPositionV3DTO();
        Map<String, String> x-property-mappings = positionV3DTO.getx-property-mappings();
        System.assertEquals('entryTime', x-property-mappings.get('entry_time'));
        System.assertEquals('recvTime', x-property-mappings.get('recv_time'));
        System.assertEquals('blockNumber', x-property-mappings.get('block_number'));
        System.assertEquals('token0', x-property-mappings.get('token_0'));
        System.assertEquals('token1', x-property-mappings.get('token_1'));
        System.assertEquals('tickLower', x-property-mappings.get('tick_lower'));
        System.assertEquals('tickUpper', x-property-mappings.get('tick_upper'));
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
