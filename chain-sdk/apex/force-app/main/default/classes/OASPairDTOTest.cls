@isTest
private class OASPairDTOTest {
    @isTest
    private static void equalsSameInstance() {
        OASPairDTO pairDTO1 = OASPairDTO.getExample();
        OASPairDTO pairDTO2 = pairDTO1;
        OASPairDTO pairDTO3 = new OASPairDTO();
        OASPairDTO pairDTO4 = pairDTO3;

        System.assert(pairDTO1.equals(pairDTO2));
        System.assert(pairDTO2.equals(pairDTO1));
        System.assert(pairDTO1.equals(pairDTO1));
        System.assert(pairDTO3.equals(pairDTO4));
        System.assert(pairDTO4.equals(pairDTO3));
        System.assert(pairDTO3.equals(pairDTO3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPairDTO pairDTO1 = OASPairDTO.getExample();
        OASPairDTO pairDTO2 = OASPairDTO.getExample();
        OASPairDTO pairDTO3 = new OASPairDTO();
        OASPairDTO pairDTO4 = new OASPairDTO();

        System.assert(pairDTO1.equals(pairDTO2));
        System.assert(pairDTO2.equals(pairDTO1));
        System.assert(pairDTO3.equals(pairDTO4));
        System.assert(pairDTO4.equals(pairDTO3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPairDTO pairDTO1 = OASPairDTO.getExample();
        OASPairDTO pairDTO2 = new OASPairDTO();

        System.assertEquals(false, pairDTO1.equals('foo'));
        System.assertEquals(false, pairDTO2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPairDTO pairDTO1 = OASPairDTO.getExample();
        OASPairDTO pairDTO2 = new OASPairDTO();
        OASPairDTO pairDTO3;

        System.assertEquals(false, pairDTO1.equals(pairDTO3));
        System.assertEquals(false, pairDTO2.equals(pairDTO3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPairDTO pairDTO1 = OASPairDTO.getExample();
        OASPairDTO pairDTO2 = new OASPairDTO();

        System.assertEquals(pairDTO1.hashCode(), pairDTO1.hashCode());
        System.assertEquals(pairDTO2.hashCode(), pairDTO2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPairDTO pairDTO1 = OASPairDTO.getExample();
        OASPairDTO pairDTO2 = OASPairDTO.getExample();
        OASPairDTO pairDTO3 = new OASPairDTO();
        OASPairDTO pairDTO4 = new OASPairDTO();

        System.assert(pairDTO1.equals(pairDTO2));
        System.assert(pairDTO3.equals(pairDTO4));
        System.assertEquals(pairDTO1.hashCode(), pairDTO2.hashCode());
        System.assertEquals(pairDTO3.hashCode(), pairDTO4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPairDTO pairDTO = new OASPairDTO();
        Map<String, String> x-property-mappings = pairDTO.getx-property-mappings();
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
        System.assertEquals('liquidityProviderCount', x-property-mappings.get('liquidity_provider_count'));
        System.assertEquals('evaluatedAsk', x-property-mappings.get('evaluated_ask'));
    }
}
