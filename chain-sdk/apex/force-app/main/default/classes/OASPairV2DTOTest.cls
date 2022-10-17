@isTest
private class OASPairV2DTOTest {
    @isTest
    private static void equalsSameInstance() {
        OASPairV2DTO pairV2DTO1 = OASPairV2DTO.getExample();
        OASPairV2DTO pairV2DTO2 = pairV2DTO1;
        OASPairV2DTO pairV2DTO3 = new OASPairV2DTO();
        OASPairV2DTO pairV2DTO4 = pairV2DTO3;

        System.assert(pairV2DTO1.equals(pairV2DTO2));
        System.assert(pairV2DTO2.equals(pairV2DTO1));
        System.assert(pairV2DTO1.equals(pairV2DTO1));
        System.assert(pairV2DTO3.equals(pairV2DTO4));
        System.assert(pairV2DTO4.equals(pairV2DTO3));
        System.assert(pairV2DTO3.equals(pairV2DTO3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPairV2DTO pairV2DTO1 = OASPairV2DTO.getExample();
        OASPairV2DTO pairV2DTO2 = OASPairV2DTO.getExample();
        OASPairV2DTO pairV2DTO3 = new OASPairV2DTO();
        OASPairV2DTO pairV2DTO4 = new OASPairV2DTO();

        System.assert(pairV2DTO1.equals(pairV2DTO2));
        System.assert(pairV2DTO2.equals(pairV2DTO1));
        System.assert(pairV2DTO3.equals(pairV2DTO4));
        System.assert(pairV2DTO4.equals(pairV2DTO3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPairV2DTO pairV2DTO1 = OASPairV2DTO.getExample();
        OASPairV2DTO pairV2DTO2 = new OASPairV2DTO();

        System.assertEquals(false, pairV2DTO1.equals('foo'));
        System.assertEquals(false, pairV2DTO2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPairV2DTO pairV2DTO1 = OASPairV2DTO.getExample();
        OASPairV2DTO pairV2DTO2 = new OASPairV2DTO();
        OASPairV2DTO pairV2DTO3;

        System.assertEquals(false, pairV2DTO1.equals(pairV2DTO3));
        System.assertEquals(false, pairV2DTO2.equals(pairV2DTO3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPairV2DTO pairV2DTO1 = OASPairV2DTO.getExample();
        OASPairV2DTO pairV2DTO2 = new OASPairV2DTO();

        System.assertEquals(pairV2DTO1.hashCode(), pairV2DTO1.hashCode());
        System.assertEquals(pairV2DTO2.hashCode(), pairV2DTO2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPairV2DTO pairV2DTO1 = OASPairV2DTO.getExample();
        OASPairV2DTO pairV2DTO2 = OASPairV2DTO.getExample();
        OASPairV2DTO pairV2DTO3 = new OASPairV2DTO();
        OASPairV2DTO pairV2DTO4 = new OASPairV2DTO();

        System.assert(pairV2DTO1.equals(pairV2DTO2));
        System.assert(pairV2DTO3.equals(pairV2DTO4));
        System.assertEquals(pairV2DTO1.hashCode(), pairV2DTO2.hashCode());
        System.assertEquals(pairV2DTO3.hashCode(), pairV2DTO4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPairV2DTO pairV2DTO = new OASPairV2DTO();
        Map<String, String> x-property-mappings = pairV2DTO.getx-property-mappings();
        System.assertEquals('entryTime', x-property-mappings.get('entry_time'));
        System.assertEquals('recvTime', x-property-mappings.get('recv_time'));
        System.assertEquals('blockNumber', x-property-mappings.get('block_number'));
        System.assertEquals('token0', x-property-mappings.get('token_0'));
        System.assertEquals('token1', x-property-mappings.get('token_1'));
        System.assertEquals('reserve0', x-property-mappings.get('reserve_0'));
        System.assertEquals('reserve1', x-property-mappings.get('reserve_1'));
        System.assertEquals('totalSupply', x-property-mappings.get('total_supply'));
        System.assertEquals('reserveEth', x-property-mappings.get('reserve_eth'));
        System.assertEquals('reserveUsd', x-property-mappings.get('reserve_usd'));
        System.assertEquals('trackedReserveEth', x-property-mappings.get('tracked_reserve_eth'));
        System.assertEquals('token0Price', x-property-mappings.get('token_0_price'));
        System.assertEquals('token1Price', x-property-mappings.get('token_1_price'));
        System.assertEquals('volumeToken0', x-property-mappings.get('volume_token_0'));
        System.assertEquals('volumeToken1', x-property-mappings.get('volume_token_1'));
        System.assertEquals('volumeUsd', x-property-mappings.get('volume_usd'));
        System.assertEquals('untrackedVolumeUsd', x-property-mappings.get('untracked_volume_usd'));
        System.assertEquals('txCount', x-property-mappings.get('tx_count'));
        System.assertEquals('createdAtTimestamp', x-property-mappings.get('created_at_timestamp'));
        System.assertEquals('liquidityProviderCount', x-property-mappings.get('liquidity_provider_count'));
        System.assertEquals('evaluatedAsk', x-property-mappings.get('evaluated_ask'));
    }
}
