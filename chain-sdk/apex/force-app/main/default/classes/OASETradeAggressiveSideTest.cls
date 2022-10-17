@isTest
private class OASETradeAggressiveSideTest {
    @isTest
    private static void allowableValues() {
        Set<OASETradeAggressiveSide> expected = new Set<OASETradeAggressiveSide>{
            OASETradeAggressiveSide.BUY,
            OASETradeAggressiveSide.SELL,
            OASETradeAggressiveSide.ESTIMATEDBUY,
            OASETradeAggressiveSide.ESTIMATEDSELL,
            OASETradeAggressiveSide.UNKNOWN
        };
        Set<OASETradeAggressiveSide> actual  = new Set<OASETradeAggressiveSide>(OASETradeAggressiveSide.values());
        System.assertEquals(expected, actual);
    }
}
