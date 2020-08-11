package exercise13;

import java.sql.*;

public class AddVotes {
    private PreparedStatement updateVote;
    private PreparedStatement getVote;

    public AddVotes() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/javaBook?serverTimezone=UTC",
                    "scott", "&x8R#Bp9");
            getVote = connection.prepareStatement("SELECT yesCount, noCount FROM javaBook.Poll WHERE question=?");
            updateVote = connection.prepareStatement("UPDATE javaBook.Poll SET yesCount=?, noCount=? WHERE question=?");
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }

    public YesNoCounts getYesNoCounts(String question) {
        try {
            getVote.setString(1, question);
            ResultSet resultSet = getVote.executeQuery();
            if (resultSet.next()) {
                return new YesNoCounts(resultSet.getInt(1), resultSet.getInt(2));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return new YesNoCounts(0, 0);
    }

    public void update(int yesCount, int noCount, String question){
        try{
            updateVote.setInt(1, yesCount);
            updateVote.setInt(2, noCount);
            updateVote.setString(3, question);
            updateVote.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    private static class YesNoCounts {
        private int yes;
        private int no;

        public YesNoCounts(int yes, int no) {
            this.yes = yes;
            this.no = no;
        }

        public int getYes() {
            return yes;
        }

        public void setYes(int yes) {
            this.yes = yes;
        }

        public int getNo() {
            return no;
        }

        public void setNo(int no) {
            this.no = no;
        }
    }
}
