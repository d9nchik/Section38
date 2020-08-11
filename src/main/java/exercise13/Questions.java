package exercise13;

import java.sql.*;
import java.util.ArrayList;
import java.util.Arrays;

public class Questions {
    private final ArrayList<String> question = new ArrayList<>();

    public Questions() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/javaBook?serverTimezone=UTC",
                    "scott", "&x8R#Bp9");
            ResultSet resultSet = connection.createStatement().executeQuery(
                    "SELECT question FROM javaBook.Poll ORDER BY question");
            while (resultSet.next())
                question.add(resultSet.getString(1));
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }

    public String[] getQuestion() {
        return question.toArray(new String[0]);
    }

    public static void main(String[] args) {
        Questions questions = new Questions();
        System.out.println(Arrays.toString(questions.getQuestion()));
    }
}
