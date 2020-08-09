package templates;

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
    public long getFactorial() {
        long factorial = 1;
        for (int i = 1; i <= number; i++)
            factorial *= i;
        return factorial;
    }
}
