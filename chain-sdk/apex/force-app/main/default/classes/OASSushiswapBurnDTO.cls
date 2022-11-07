/*
 * OnChain API
 * \nThis section will provide necessary information about the `OnChain API` protocol. \n<br/><br/>\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.        \n                    
 *
 * The version of the OpenAPI document: v1
 * Contact: support@coinapi.io
 *
 * NOTE: This class is auto generated by the OAS code generator program.
 * https://github.com/OpenAPITools/openapi-generator
 * Do not edit the class manually.
 */

/**
 * Burn entities are created for every emitted Burn event on the Uniswap core contracts. The Burn entity stores key data about the event like token amounts, who burned LP tokens, who received tokens, and more. This entity can be used to track liquidity removals on pairs.
 */
public class OASSushiswapBurnDTO implements OAS.MappedProperties {
    /**
     * Get entryTime
     * @return entryTime
     */
    public Datetime entryTime { get; set; }

    /**
     * Get recvTime
     * @return recvTime
     */
    public Datetime recvTime { get; set; }

    /**
     * Number of block in which entity was recorded.
     * @return blockNumber
     */
    public Long blockNumber { get; set; }

    /**
     * Identifier, format: <transaction id>:<transaction.burns.length>.
     * @return id
     */
    public String id { get; set; }

    /**
     * Reference to the transaction Burn was included in.
     * @return r_transaction
     */
    public String r_transaction { get; set; }

    /**
     * Timestamp of Burn, used to sort recent liquidity removals.
     * @return timestamp
     */
    public String timestamp { get; set; }

    /**
     * Reference to pair.
     * @return pair
     */
    public String pair { get; set; }

    /**
     * Amount of liquidity tokens burned.
     * @return liquidity
     */
    public String liquidity { get; set; }

    /**
     * Address that initiated the liquidity removal.
     * @return sender
     */
    public String sender { get; set; }

    /**
     * Amount of token0 removed.
     * @return amount0
     */
    public String amount0 { get; set; }

    /**
     * Amount of token1 removed.
     * @return amount1
     */
    public String amount1 { get; set; }

    /**
     * Recipient of tokens.
     * @return to
     */
    public String to { get; set; }

    /**
     * Index in the transaction event was emitted.
     * @return logIndex
     */
    public String logIndex { get; set; }

    /**
     * Derived amount based on available prices of tokens.
     * @return amountUsd
     */
    public String amountUsd { get; set; }

    /**
     * 
     * @return complete
     */
    public Boolean complete { get; set; }

    /**
     * Address of fee recipient (if fee is on).
     * @return feeTo
     */
    public String feeTo { get; set; }

    /**
     * Amount of tokens sent to fee recipient (if fee is on).
     * @return feeLiquidity
     */
    public String feeLiquidity { get; set; }

    /**
     * 
     * @return vid
     */
    public Long vid { get; set; }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'entry_time' => 'entryTime',
        'recv_time' => 'recvTime',
        'block_number' => 'blockNumber',
        'transaction' => 'r_transaction',
        'amount_0' => 'amount0',
        'amount_1' => 'amount1',
        'log_index' => 'logIndex',
        'amount_usd' => 'amountUsd',
        'fee_to' => 'feeTo',
        'fee_liquidity' => 'feeLiquidity'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'entry_time' => 'entryTime',
        'recv_time' => 'recvTime',
        'block_number' => 'blockNumber',
        'transaction' => 'r_transaction',
        'amount_0' => 'amount0',
        'amount_1' => 'amount1',
        'log_index' => 'logIndex',
        'amount_usd' => 'amountUsd',
        'fee_to' => 'feeTo',
        'fee_liquidity' => 'feeLiquidity'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'entry_time' => 'entryTime',
        'recv_time' => 'recvTime',
        'block_number' => 'blockNumber',
        'transaction' => 'r_transaction',
        'amount_0' => 'amount0',
        'amount_1' => 'amount1',
        'log_index' => 'logIndex',
        'amount_usd' => 'amountUsd',
        'fee_to' => 'feeTo',
        'fee_liquidity' => 'feeLiquidity'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'entry_time' => 'entryTime',
        'recv_time' => 'recvTime',
        'block_number' => 'blockNumber',
        'transaction' => 'r_transaction',
        'amount_0' => 'amount0',
        'amount_1' => 'amount1',
        'log_index' => 'logIndex',
        'amount_usd' => 'amountUsd',
        'fee_to' => 'feeTo',
        'fee_liquidity' => 'feeLiquidity'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'entry_time' => 'entryTime',
        'recv_time' => 'recvTime',
        'block_number' => 'blockNumber',
        'transaction' => 'r_transaction',
        'amount_0' => 'amount0',
        'amount_1' => 'amount1',
        'log_index' => 'logIndex',
        'amount_usd' => 'amountUsd',
        'fee_to' => 'feeTo',
        'fee_liquidity' => 'feeLiquidity'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'entry_time' => 'entryTime',
        'recv_time' => 'recvTime',
        'block_number' => 'blockNumber',
        'transaction' => 'r_transaction',
        'amount_0' => 'amount0',
        'amount_1' => 'amount1',
        'log_index' => 'logIndex',
        'amount_usd' => 'amountUsd',
        'fee_to' => 'feeTo',
        'fee_liquidity' => 'feeLiquidity'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'entry_time' => 'entryTime',
        'recv_time' => 'recvTime',
        'block_number' => 'blockNumber',
        'transaction' => 'r_transaction',
        'amount_0' => 'amount0',
        'amount_1' => 'amount1',
        'log_index' => 'logIndex',
        'amount_usd' => 'amountUsd',
        'fee_to' => 'feeTo',
        'fee_liquidity' => 'feeLiquidity'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'entry_time' => 'entryTime',
        'recv_time' => 'recvTime',
        'block_number' => 'blockNumber',
        'transaction' => 'r_transaction',
        'amount_0' => 'amount0',
        'amount_1' => 'amount1',
        'log_index' => 'logIndex',
        'amount_usd' => 'amountUsd',
        'fee_to' => 'feeTo',
        'fee_liquidity' => 'feeLiquidity'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'entry_time' => 'entryTime',
        'recv_time' => 'recvTime',
        'block_number' => 'blockNumber',
        'transaction' => 'r_transaction',
        'amount_0' => 'amount0',
        'amount_1' => 'amount1',
        'log_index' => 'logIndex',
        'amount_usd' => 'amountUsd',
        'fee_to' => 'feeTo',
        'fee_liquidity' => 'feeLiquidity'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'entry_time' => 'entryTime',
        'recv_time' => 'recvTime',
        'block_number' => 'blockNumber',
        'transaction' => 'r_transaction',
        'amount_0' => 'amount0',
        'amount_1' => 'amount1',
        'log_index' => 'logIndex',
        'amount_usd' => 'amountUsd',
        'fee_to' => 'feeTo',
        'fee_liquidity' => 'feeLiquidity'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    public static OASSushiswapBurnDTO getExample() {
        OASSushiswapBurnDTO sushiswapBurnDTO = new OASSushiswapBurnDTO();
          sushiswapBurnDTO.entryTime = Datetime.newInstanceGmt(2000, 1, 23, 4, 56, 7);
          sushiswapBurnDTO.recvTime = Datetime.newInstanceGmt(2000, 1, 23, 4, 56, 7);
          sushiswapBurnDTO.blockNumber = 123456789L;
          sushiswapBurnDTO.id = '';
          sushiswapBurnDTO.r_transaction = '';
          sushiswapBurnDTO.timestamp = '';
          sushiswapBurnDTO.pair = '';
          sushiswapBurnDTO.liquidity = '';
          sushiswapBurnDTO.sender = '';
          sushiswapBurnDTO.amount0 = '';
          sushiswapBurnDTO.amount1 = '';
          sushiswapBurnDTO.to = '';
          sushiswapBurnDTO.logIndex = '';
          sushiswapBurnDTO.amountUsd = '';
          sushiswapBurnDTO.complete = true;
          sushiswapBurnDTO.feeTo = '';
          sushiswapBurnDTO.feeLiquidity = '';
          sushiswapBurnDTO.vid = 123456789L;
        return sushiswapBurnDTO;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof OASSushiswapBurnDTO) {           
            OASSushiswapBurnDTO sushiswapBurnDTO = (OASSushiswapBurnDTO) obj;
            return this.entryTime == sushiswapBurnDTO.entryTime
                && this.recvTime == sushiswapBurnDTO.recvTime
                && this.blockNumber == sushiswapBurnDTO.blockNumber
                && this.id == sushiswapBurnDTO.id
                && this.r_transaction == sushiswapBurnDTO.r_transaction
                && this.timestamp == sushiswapBurnDTO.timestamp
                && this.pair == sushiswapBurnDTO.pair
                && this.liquidity == sushiswapBurnDTO.liquidity
                && this.sender == sushiswapBurnDTO.sender
                && this.amount0 == sushiswapBurnDTO.amount0
                && this.amount1 == sushiswapBurnDTO.amount1
                && this.to == sushiswapBurnDTO.to
                && this.logIndex == sushiswapBurnDTO.logIndex
                && this.amountUsd == sushiswapBurnDTO.amountUsd
                && this.complete == sushiswapBurnDTO.complete
                && this.feeTo == sushiswapBurnDTO.feeTo
                && this.feeLiquidity == sushiswapBurnDTO.feeLiquidity
                && this.vid == sushiswapBurnDTO.vid;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (entryTime == null ? 0 : System.hashCode(entryTime));
        hashCode = (17 * hashCode) + (recvTime == null ? 0 : System.hashCode(recvTime));
        hashCode = (17 * hashCode) + (blockNumber == null ? 0 : System.hashCode(blockNumber));
        hashCode = (17 * hashCode) + (id == null ? 0 : System.hashCode(id));
        hashCode = (17 * hashCode) + (r_transaction == null ? 0 : System.hashCode(r_transaction));
        hashCode = (17 * hashCode) + (timestamp == null ? 0 : System.hashCode(timestamp));
        hashCode = (17 * hashCode) + (pair == null ? 0 : System.hashCode(pair));
        hashCode = (17 * hashCode) + (liquidity == null ? 0 : System.hashCode(liquidity));
        hashCode = (17 * hashCode) + (sender == null ? 0 : System.hashCode(sender));
        hashCode = (17 * hashCode) + (amount0 == null ? 0 : System.hashCode(amount0));
        hashCode = (17 * hashCode) + (amount1 == null ? 0 : System.hashCode(amount1));
        hashCode = (17 * hashCode) + (to == null ? 0 : System.hashCode(to));
        hashCode = (17 * hashCode) + (logIndex == null ? 0 : System.hashCode(logIndex));
        hashCode = (17 * hashCode) + (amountUsd == null ? 0 : System.hashCode(amountUsd));
        hashCode = (17 * hashCode) + (complete == null ? 0 : System.hashCode(complete));
        hashCode = (17 * hashCode) + (feeTo == null ? 0 : System.hashCode(feeTo));
        hashCode = (17 * hashCode) + (feeLiquidity == null ? 0 : System.hashCode(feeLiquidity));
        hashCode = (17 * hashCode) + (vid == null ? 0 : System.hashCode(vid));
        return hashCode;
    }
}
