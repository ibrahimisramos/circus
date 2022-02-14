package circus.animals;

public class Duck extends Bird {
    public Duck() {
        super();
    }

    @Override
    public String speak() {
        return "Quack Quack";
    }

    @Override
    public String toString() {
        return "I'm a Duck";
    }

    public void swim() {
        System.out.println("I'm swimming...");
    }
}
