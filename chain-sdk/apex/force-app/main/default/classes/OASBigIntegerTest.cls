@isTest
private class OASBigIntegerTest {
    @isTest
    private static void equalsSameInstance() {
        OASBigInteger bigInteger1 = OASBigInteger.getExample();
        OASBigInteger bigInteger2 = bigInteger1;
        OASBigInteger bigInteger3 = new OASBigInteger();
        OASBigInteger bigInteger4 = bigInteger3;

        System.assert(bigInteger1.equals(bigInteger2));
        System.assert(bigInteger2.equals(bigInteger1));
        System.assert(bigInteger1.equals(bigInteger1));
        System.assert(bigInteger3.equals(bigInteger4));
        System.assert(bigInteger4.equals(bigInteger3));
        System.assert(bigInteger3.equals(bigInteger3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBigInteger bigInteger1 = OASBigInteger.getExample();
        OASBigInteger bigInteger2 = OASBigInteger.getExample();
        OASBigInteger bigInteger3 = new OASBigInteger();
        OASBigInteger bigInteger4 = new OASBigInteger();

        System.assert(bigInteger1.equals(bigInteger2));
        System.assert(bigInteger2.equals(bigInteger1));
        System.assert(bigInteger3.equals(bigInteger4));
        System.assert(bigInteger4.equals(bigInteger3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBigInteger bigInteger1 = OASBigInteger.getExample();
        OASBigInteger bigInteger2 = new OASBigInteger();

        System.assertEquals(false, bigInteger1.equals('foo'));
        System.assertEquals(false, bigInteger2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBigInteger bigInteger1 = OASBigInteger.getExample();
        OASBigInteger bigInteger2 = new OASBigInteger();
        OASBigInteger bigInteger3;

        System.assertEquals(false, bigInteger1.equals(bigInteger3));
        System.assertEquals(false, bigInteger2.equals(bigInteger3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBigInteger bigInteger1 = OASBigInteger.getExample();
        OASBigInteger bigInteger2 = new OASBigInteger();

        System.assertEquals(bigInteger1.hashCode(), bigInteger1.hashCode());
        System.assertEquals(bigInteger2.hashCode(), bigInteger2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBigInteger bigInteger1 = OASBigInteger.getExample();
        OASBigInteger bigInteger2 = OASBigInteger.getExample();
        OASBigInteger bigInteger3 = new OASBigInteger();
        OASBigInteger bigInteger4 = new OASBigInteger();

        System.assert(bigInteger1.equals(bigInteger2));
        System.assert(bigInteger3.equals(bigInteger4));
        System.assertEquals(bigInteger1.hashCode(), bigInteger2.hashCode());
        System.assertEquals(bigInteger3.hashCode(), bigInteger4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASBigInteger bigInteger = new OASBigInteger();
        Map<String, String> x-property-mappings = bigInteger.getx-property-mappings();
        System.assertEquals('isPowerOfTwo', x-property-mappings.get('is_power_of_two'));
        System.assertEquals('isZero', x-property-mappings.get('is_zero'));
        System.assertEquals('isOne', x-property-mappings.get('is_one'));
        System.assertEquals('isEven', x-property-mappings.get('is_even'));
    }
}
