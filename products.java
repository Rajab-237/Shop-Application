package handler;
import java.sql.*;

/**
 * @author Lenovo
 */
public class products  implements java.io.Serializable{
    private  String pname = null;
    private  String pdesc =null;
    private  double price=0;
    private  String image=null;
    private  Statement st =null;
    private   ResultSet rs = null;
    public products(){
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydba?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC","root","");
            st = con.createStatement();

        }
        catch(Exception e){
            e.printStackTrace();
        }


    }

    public String getpname (int _id) throws SQLException{
        rs =st.executeQuery("select name  from products where id=" + _id);
        rs.next();
        pname =rs.getString("name");
        return pname;
    }

    public double getprice (int _id) throws SQLException{

        rs =st.executeQuery("select price  from products where id=" + _id);
        rs.next();
        price =Double.parseDouble(rs.getString("price"));

        return price;
    }


    public String getimage (int _id) throws SQLException {
        rs =st.executeQuery("select image  from products where id=" + _id);
        rs.next();
        image =rs.getString("image");
        return image;
    }
}
