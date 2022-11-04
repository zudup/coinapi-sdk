@isTest
private class OASUniswapV2PairV2DTOTest {
    @isTest
    private static void equalsSameInstance() {
        OASUniswapV2PairV2DTO uniswapV2PairV2DTO1 = OASUniswapV2PairV2DTO.getExample();
        OASUniswapV2PairV2DTO uniswapV2PairV2DTO2 = uniswapV2PairV2DTO1;
        OASUniswapV2PairV2DTO uniswapV2PairV2DTO3 = new OASUniswapV2PairV2DTO();
        OASUniswapV2PairV2DTO uniswapV2PairV2DTO4 = uniswapV2PairV2DTO3;

        System.assert(uniswapV2PairV2DTO1.equals(uniswapV2PairV2DTO2));
        System.assert(uniswapV2PairV2DTO2.equals(uniswapV2PairV2DTO1));
        System.assert(uniswapV2PairV2DTO1.equals(uniswapV2PairV2DTO1));
        System.assert(uniswapV2PairV2DTO3.equals(uniswapV2PairV2DTO4));
        System.assert(uniswapV2PairV2DTO4.equals(uniswapV2PairV2DTO3));
        System.assert(uniswapV2PairV2DTO3.equals(uniswapV2PairV2DTO3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASUniswapV2PairV2DTO uniswapV2PairV2DTO1 = OASUniswapV2PairV2DTO.getExample();
        OASUniswapV2PairV2DTO uniswapV2PairV2DTO2 = OASUniswapV2PairV2DTO.getExample();
        OASUniswapV2PairV2DTO uniswapV2PairV2DTO3 = new OASUniswapV2PairV2DTO();
        OASUniswapV2PairV2DTO uniswapV2PairV2DTO4 = new OASUniswapV2PairV2DTO();

        System.assert(uniswapV2PairV2DTO1.equals(uniswapV2PairV2DTO2));
        System.assert(uniswapV2PairV2DTO2.equals(uniswapV2PairV2DTO1));
        System.assert(uniswapV2PairV2DTO3.equals(uniswapV2PairV2DTO4));
        System.assert(uniswapV2PairV2DTO4.equals(uniswapV2PairV2DTO3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASUniswapV2PairV2DTO uniswapV2PairV2DTO1 = OASUniswapV2PairV2DTO.getExample();
        OASUniswapV2PairV2DTO uniswapV2PairV2DTO2 = new OASUniswapV2PairV2DTO();

        System.assertEquals(false, uniswapV2PairV2DTO1.equals('foo'));
        System.assertEquals(false, uniswapV2PairV2DTO2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASUniswapV2PairV2DTO uniswapV2PairV2DTO1 = OASUniswapV2PairV2DTO.getExample();
        OASUniswapV2PairV2DTO uniswapV2PairV2DTO2 = new OASUniswapV2PairV2DTO();
        OASUniswapV2PairV2DTO uniswapV2PairV2DTO3;

        System.assertEquals(false, uniswapV2PairV2DTO1.equals(uniswapV2PairV2DTO3));
        System.assertEquals(false, uniswapV2PairV2DTO2.equals(uniswapV2PairV2DTO3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASUniswapV2PairV2DTO uniswapV2PairV2DTO1 = OASUniswapV2PairV2DTO.getExample();
        OASUniswapV2PairV2DTO uniswapV2PairV2DTO2 = new OASUniswapV2PairV2DTO();

        System.assertEquals(uniswapV2PairV2DTO1.hashCode(), uniswapV2PairV2DTO1.hashCode());
        System.assertEquals(uniswapV2PairV2DTO2.hashCode(), uniswapV2PairV2DTO2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASUniswapV2PairV2DTO uniswapV2PairV2DTO1 = OASUniswapV2PairV2DTO.getExample();
        OASUniswapV2PairV2DTO uniswapV2PairV2DTO2 = OASUniswapV2PairV2DTO.getExample();
        OASUniswapV2PairV2DTO uniswapV2PairV2DTO3 = new OASUniswapV2PairV2DTO();
        OASUniswapV2PairV2DTO uniswapV2PairV2DTO4 = new OASUniswapV2PairV2DTO();

        System.assert(uniswapV2PairV2DTO1.equals(uniswapV2PairV2DTO2));
        System.assert(uniswapV2PairV2DTO3.equals(uniswapV2PairV2DTO4));
        System.assertEquals(uniswapV2PairV2DTO1.hashCode(), uniswapV2PairV2DTO2.hashCode());
        System.assertEquals(uniswapV2PairV2DTO3.hashCode(), uniswapV2PairV2DTO4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASUniswapV2PairV2DTO uniswapV2PairV2DTO = new OASUniswapV2PairV2DTO();
        Map<String, String> x-property-mappings = uniswapV2PairV2DTO.getx-property-mappings();
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
