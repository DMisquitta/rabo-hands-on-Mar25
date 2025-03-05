@IsTest
public class CalculatorTest {
    @IsTest
    static void testAddition() {
        Integer a = 10;
        Integer b = 5;
        Integer result = Calculator.add(a, b);
        System.assertEquals(15, result, 'The result should be 15 for addition');
    }

    @IsTest
    static void testSubtraction() {
        Integer a = 10;
        Integer b = 5;
        Integer result = Calculator.subtract(a, b);
        System.assertEquals(5, result, 'The result should be 5 for subtraction');
    }

    @IsTest
    static void testMultiplication() {
        Integer a = 10;
        Integer b = 5;
        Integer result = Calculator.multiply(a, b);
        System.assertEquals(50, result, 'The result should be 50 for multiplication');
    }

    @IsTest
    static void testDivision() {
        Integer a = 10;
        Integer b = 5;
        Decimal result = Calculator.divide(a, b);
        System.assertEquals(2, result, 'The result should be 2 for division');
    }

    @IsTest
    static void testMultiplyByZero() {
        Integer a = 10;
        Integer b = 0;
        try {
            Integer result = Calculator.multiply(a, b);
            // If no exception is thrown, the test should fail
            System.assert(false, 'Expected an exception to be thrown for multiplying by zero');
        } catch (Calculator.CalculatorException e) {
            // Expected exception, do nothing
        }
    }
}

