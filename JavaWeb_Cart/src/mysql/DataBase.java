package mysql;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import java.sql.Connection;


public class DataBase {
	private Connection con=null;
	public DataBase(){
		String url="jdbc:mysql://127.0.0.1:3306/cart?useUnicode=true&characterEncoding=utf-8&serverTimezone=UTC&useSSL=false";
		String un="root";
		String pwd="njnu123456";
		try{
			//1、注册JDBC驱动
			Class.forName("com.mysql.cj.jdbc.Driver");
			//2、获取数据库连接
			con=DriverManager.getConnection(url, un, pwd);
		}catch(ClassNotFoundException e){
			System.out.println("ClassCastException!!!");//类加载错误
			e.printStackTrace();
		}catch(SQLException e){
			System.out.println("SQLException");//数据库连接异常
			e.printStackTrace();
		}
	}
	public ResultSet getData(String sql){
		Statement stm=null;
		try{
			stm = con.createStatement();//获取操作数据库的对象
			ResultSet result = stm.executeQuery(sql);
			System.out.println("getData成功");
			return result;
		}catch(SQLException e){
			System.out.println("SQLException!!!");
			e.printStackTrace();
			return null;
		}
	}
	public void setData(String sql){
		Statement stm = null;
		try{
			stm = con.createStatement();
			stm.executeUpdate(sql);
			System.out.println("setData成功");
			
		}catch(SQLException e){
			System.out.println("SQLException!!!");
			e.printStackTrace();
			
		}finally {
			if(stm!=null) {
				try {
					stm.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
	}
	public void close() {
		try {
            con.close();
            System.out.println("con.close");
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
	}
	

}
