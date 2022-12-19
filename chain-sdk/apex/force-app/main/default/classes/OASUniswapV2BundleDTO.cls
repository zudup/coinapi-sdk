/*
 * On Chain Dapps - REST API
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
 * The Bundle is used as a global store of derived ETH price in USD. Because there is no guaranteed common base token across pairs, a global reference of USD price is useful for deriving other USD values. The Bundle entity stores an updated weighted average of ETH&lt;-&gt;Stablecoin pair prices. This provides a strong estimate for the USD price of ETH.
 */
public class OASUniswapV2BundleDTO implements OAS.MappedProperties {
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
     * Constant 1.
     * @return id
     */
    public String id { get; set; }

    /**
     * Derived price of ETH in USD based on stablecoin pairs.
     * @return ethPrice
     */
    public String ethPrice { get; set; }

    /**
     * 
     * @return vid
     */
    public Long vid { get; set; }

    /**
     * 
     * @return blockRange
     */
    public String blockRange { get; set; }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'entry_time' => 'entryTime',
        'recv_time' => 'recvTime',
        'block_number' => 'blockNumber',
        'eth_price' => 'ethPrice',
        'block_range' => 'blockRange'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'entry_time' => 'entryTime',
        'recv_time' => 'recvTime',
        'block_number' => 'blockNumber',
        'eth_price' => 'ethPrice',
        'block_range' => 'blockRange'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'entry_time' => 'entryTime',
        'recv_time' => 'recvTime',
        'block_number' => 'blockNumber',
        'eth_price' => 'ethPrice',
        'block_range' => 'blockRange'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'entry_time' => 'entryTime',
        'recv_time' => 'recvTime',
        'block_number' => 'blockNumber',
        'eth_price' => 'ethPrice',
        'block_range' => 'blockRange'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'entry_time' => 'entryTime',
        'recv_time' => 'recvTime',
        'block_number' => 'blockNumber',
        'eth_price' => 'ethPrice',
        'block_range' => 'blockRange'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    public static OASUniswapV2BundleDTO getExample() {
        OASUniswapV2BundleDTO uniswapV2BundleDTO = new OASUniswapV2BundleDTO();
          uniswapV2BundleDTO.entryTime = Datetime.newInstanceGmt(2000, 1, 23, 4, 56, 7);
          uniswapV2BundleDTO.recvTime = Datetime.newInstanceGmt(2000, 1, 23, 4, 56, 7);
          uniswapV2BundleDTO.blockNumber = 123456789L;
          uniswapV2BundleDTO.id = '';
          uniswapV2BundleDTO.ethPrice = '';
          uniswapV2BundleDTO.vid = 123456789L;
          uniswapV2BundleDTO.blockRange = '';
        return uniswapV2BundleDTO;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof OASUniswapV2BundleDTO) {           
            OASUniswapV2BundleDTO uniswapV2BundleDTO = (OASUniswapV2BundleDTO) obj;
            return this.entryTime == uniswapV2BundleDTO.entryTime
                && this.recvTime == uniswapV2BundleDTO.recvTime
                && this.blockNumber == uniswapV2BundleDTO.blockNumber
                && this.id == uniswapV2BundleDTO.id
                && this.ethPrice == uniswapV2BundleDTO.ethPrice
                && this.vid == uniswapV2BundleDTO.vid
                && this.blockRange == uniswapV2BundleDTO.blockRange;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (entryTime == null ? 0 : System.hashCode(entryTime));
        hashCode = (17 * hashCode) + (recvTime == null ? 0 : System.hashCode(recvTime));
        hashCode = (17 * hashCode) + (blockNumber == null ? 0 : System.hashCode(blockNumber));
        hashCode = (17 * hashCode) + (id == null ? 0 : System.hashCode(id));
        hashCode = (17 * hashCode) + (ethPrice == null ? 0 : System.hashCode(ethPrice));
        hashCode = (17 * hashCode) + (vid == null ? 0 : System.hashCode(vid));
        hashCode = (17 * hashCode) + (blockRange == null ? 0 : System.hashCode(blockRange));
        return hashCode;
    }
}
