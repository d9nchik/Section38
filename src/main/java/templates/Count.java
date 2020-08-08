package templates;

public class Count {
    private int count = 0;

    public Count() {
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public void increaseCount() {
        count++;
    }
}
