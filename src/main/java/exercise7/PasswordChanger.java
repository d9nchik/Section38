package exercise7;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class PasswordChanger {
    private PreparedStatement getUser;
    private PreparedStatement updateUser;
    private String newPass;
    private String oldPass;
    private String retypePass;
    private String name;

    public PasswordChanger() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/javaBook?serverTimezone=UTC",
                    "scott", "&x8R#Bp9");
            getUser = connection.prepareStatement("SELECT password FROM userCredentials WHERE login=? and password=?");
            updateUser = connection.prepareStatement("UPDATE userCredentials SET password=? WHERE login=?");
        } catch (SQLException | ClassNotFoundException throwables) {
            throwables.printStackTrace();
        }
    }


    synchronized public boolean userExist() {
        try {
            getUser.setString(1, name);
            getUser.setString(2, oldPass);
            return getUser.executeQuery().next();
        } catch (SQLException throwables) {
            return false;
        }
    }

    synchronized public boolean update() {
        try {
            updateUser.setString(2, name);
            updateUser.setString(1, newPass);
            updateUser.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
            return false;
        }
        return true;
    }


    public String getNewPass() {
        return newPass;
    }

    public void setNewPass(String newPass) {
        this.newPass = newPass;
    }

    public String getOldPass() {
        return oldPass;
    }

    public void setOldPass(String oldPass) {
        this.oldPass = oldPass;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getRetypePass() {
        return retypePass;
    }

    public void setRetypePass(String retypePass) {
        this.retypePass = retypePass;
    }

    public boolean isPasswordRetypedCorrectly() {
        return retypePass.equals(newPass);
    }


}
