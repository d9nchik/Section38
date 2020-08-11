package exercise20;

import java.util.Random;

public class GuessNumber {
    private final static Random random = new Random();
    private static final int MAX_NUMBER = 1_000;
    private static final int MIN_NUMBER = 1;

    private int number;

    public GuessNumber() {
        generateNumber();
    }

    private void generateNumber() {
        number = random.nextInt(MAX_NUMBER - MIN_NUMBER + 1) + MIN_NUMBER;
    }

    public String guessNumber(int userNumber) {
        if (userNumber > number)
            return "too high";
        else if (userNumber < number)
            return "too low";
        generateNumber();
        return "You guessed! Now computer prepared one more number)";
    }
}
