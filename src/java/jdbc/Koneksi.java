package jdbc;

import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.SQLException;

public class Koneksi {
    public Connection bukaKoneksi() throws SQLException {
        Connection connect;
            try {
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/shop",
                        "root","");
                return connect;
            } catch(Exception exc) {
        }
        return null;
    }
}
