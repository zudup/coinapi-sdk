@isTest
private class OASMintV3DTOTest {
    @isTest
    private static void equalsSameInstance() {
        OASMintV3DTO mintV3DTO1 = OASMintV3DTO.getExample();
        OASMintV3DTO mintV3DTO2 = mintV3DTO1;
        OASMintV3DTO mintV3DTO3 = new OASMintV3DTO();
        OASMintV3DTO mintV3DTO4 = mintV3DTO3;

        System.assert(mintV3DTO1.equals(mintV3DTO2));
        System.assert(mintV3DTO2.equals(mintV3DTO1));
        System.assert(mintV3DTO1.equals(mintV3DTO1));
        System.assert(mintV3DTO3.equals(mintV3DTO4));
        System.assert(mintV3DTO4.equals(mintV3DTO3));
        System.assert(mintV3DTO3.equals(mintV3DTO3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASMintV3DTO mintV3DTO1 = OASMintV3DTO.getExample();
        OASMintV3DTO mintV3DTO2 = OASMintV3DTO.getExample();
        OASMintV3DTO mintV3DTO3 = new OASMintV3DTO();
        OASMintV3DTO mintV3DTO4 = new OASMintV3DTO();

        System.assert(mintV3DTO1.equals(mintV3DTO2));
        System.assert(mintV3DTO2.equals(mintV3DTO1));
        System.assert(mintV3DTO3.equals(mintV3DTO4));
        System.assert(mintV3DTO4.equals(mintV3DTO3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASMintV3DTO mintV3DTO1 = OASMintV3DTO.getExample();
        OASMintV3DTO mintV3DTO2 = new OASMintV3DTO();

        System.assertEquals(false, mintV3DTO1.equals('foo'));
        System.assertEquals(false, mintV3DTO2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASMintV3DTO mintV3DTO1 = OASMintV3DTO.getExample();
        OASMintV3DTO mintV3DTO2 = new OASMintV3DTO();
        OASMintV3DTO mintV3DTO3;

        System.assertEquals(false, mintV3DTO1.equals(mintV3DTO3));
        System.assertEquals(false, mintV3DTO2.equals(mintV3DTO3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASMintV3DTO mintV3DTO1 = OASMintV3DTO.getExample();
        OASMintV3DTO mintV3DTO2 = new OASMintV3DTO();

        System.assertEquals(mintV3DTO1.hashCode(), mintV3DTO1.hashCode());
        System.assertEquals(mintV3DTO2.hashCode(), mintV3DTO2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASMintV3DTO mintV3DTO1 = OASMintV3DTO.getExample();
        OASMintV3DTO mintV3DTO2 = OASMintV3DTO.getExample();
        OASMintV3DTO mintV3DTO3 = new OASMintV3DTO();
        OASMintV3DTO mintV3DTO4 = new OASMintV3DTO();

        System.assert(mintV3DTO1.equals(mintV3DTO2));
        System.assert(mintV3DTO3.equals(mintV3DTO4));
        System.assertEquals(mintV3DTO1.hashCode(), mintV3DTO2.hashCode());
        System.assertEquals(mintV3DTO3.hashCode(), mintV3DTO4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASMintV3DTO mintV3DTO = new OASMintV3DTO();
        Map<String, String> x-property-mappings = mintV3DTO.getx-property-mappings();
        System.assertEquals('entryTime', x-property-mappings.get('entry_time'));
        System.assertEquals('recvTime', x-property-mappings.get('recv_time'));
        System.assertEquals('blockNumber', x-property-mappings.get('block_number'));
        System.assertEquals('r_transaction', x-property-mappings.get('transaction'));
        System.assertEquals('token0', x-property-mappings.get('token_0'));
        System.assertEquals('token1', x-property-mappings.get('token_1'));
        System.assertEquals('amount0', x-property-mappings.get('amount_0'));
        System.assertEquals('amount1', x-property-mappings.get('amount_1'));
        System.assertEquals('amountUsd', x-property-mappings.get('amount_usd'));
        System.assertEquals('tickLower', x-property-mappings.get('tick_lower'));
        System.assertEquals('tickUpper', x-property-mappings.get('tick_upper'));
        System.assertEquals('logIndex', x-property-mappings.get('log_index'));
    }
}
