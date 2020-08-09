package templates;

import java.math.BigInteger;

@SuppressWarnings("unused")
public class Factorial {
    private int number;

    /**
     * @return number installed in bean
     */
    public int getNumber() {
        return number;
    }

    /**
     * install value to JavaBean
     *
     * @param number value of which obtain factorial
     */
    public void setNumber(int number) {
        this.number = number;
    }

    /**
     * Obtain factorial
     *
     * @return result of calculation
     */
    public BigInteger getFactorial() {
        BigInteger factorial = BigInteger.ONE;
        for (int i = 1; i <= number; i++)
            factorial = factorial.multiply(new BigInteger("" + i));
        return factorial;
    }
}
