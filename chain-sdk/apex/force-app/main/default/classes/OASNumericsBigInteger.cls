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
 * OASNumericsBigInteger
 */
public class OASNumericsBigInteger implements OAS.MappedProperties {
    /**
     * Get isPowerOfTwo
     * @return isPowerOfTwo
     */
    public Boolean isPowerOfTwo { get; private set; }

    /**
     * Get isZero
     * @return isZero
     */
    public Boolean isZero { get; private set; }

    /**
     * Get isOne
     * @return isOne
     */
    public Boolean isOne { get; private set; }

    /**
     * Get isEven
     * @return isEven
     */
    public Boolean isEven { get; private set; }

    /**
     * Get sign
     * @return sign
     */
    public Integer sign { get; private set; }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'is_power_of_two' => 'isPowerOfTwo',
        'is_zero' => 'isZero',
        'is_one' => 'isOne',
        'is_even' => 'isEven'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'is_power_of_two' => 'isPowerOfTwo',
        'is_zero' => 'isZero',
        'is_one' => 'isOne',
        'is_even' => 'isEven'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'is_power_of_two' => 'isPowerOfTwo',
        'is_zero' => 'isZero',
        'is_one' => 'isOne',
        'is_even' => 'isEven'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'is_power_of_two' => 'isPowerOfTwo',
        'is_zero' => 'isZero',
        'is_one' => 'isOne',
        'is_even' => 'isEven'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    public static OASNumericsBigInteger getExample() {
        OASNumericsBigInteger numericsBigInteger = new OASNumericsBigInteger();
          numericsBigInteger.isPowerOfTwo = true;
          numericsBigInteger.isZero = true;
          numericsBigInteger.isOne = true;
          numericsBigInteger.isEven = true;
          numericsBigInteger.sign = 0;
        return numericsBigInteger;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof OASNumericsBigInteger) {           
            OASNumericsBigInteger numericsBigInteger = (OASNumericsBigInteger) obj;
            return this.isPowerOfTwo == numericsBigInteger.isPowerOfTwo
                && this.isZero == numericsBigInteger.isZero
                && this.isOne == numericsBigInteger.isOne
                && this.isEven == numericsBigInteger.isEven
                && this.sign == numericsBigInteger.sign;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (isPowerOfTwo == null ? 0 : System.hashCode(isPowerOfTwo));
        hashCode = (17 * hashCode) + (isZero == null ? 0 : System.hashCode(isZero));
        hashCode = (17 * hashCode) + (isOne == null ? 0 : System.hashCode(isOne));
        hashCode = (17 * hashCode) + (isEven == null ? 0 : System.hashCode(isEven));
        hashCode = (17 * hashCode) + (sign == null ? 0 : System.hashCode(sign));
        return hashCode;
    }
}
