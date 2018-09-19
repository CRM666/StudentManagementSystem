package indi.crm.studentmanagement.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Connectionsql{
	
    
public static void main(String[] args) {
	 //����Connection����
	         Connection con;
	        //����������
	         String driver = "com.mysql.jdbc.Driver";
	         //URLָ��Ҫ���ʵ����ݿ���mydata
	         String url = "jdbc:mysql://localhost:3306/test";
	         //MySQL����ʱ���û���
	         String user = "root";
	         //MySQL����ʱ������
	        String password = "root";
	         //������ѯ�����
	         try {
	             //������������
	             Class.forName(driver);
	             //1.getConnection()����������MySQL���ݿ⣡��
	             con = DriverManager.getConnection(url,user,password);
	             if(!con.isClosed())
	                 System.out.println("Succeeded connecting to the Database!");
	             //2.����statement���������ִ��SQL��䣡��
	             Statement statement = con.createStatement();
	             //Ҫִ�е�SQL���
	            String sql = "select * from softwareclass2";
	             //3.ResultSet�࣬������Ż�ȡ�Ľ��������
	             ResultSet rs = statement.executeQuery(sql);
	            System.out.println("-----------------");
	             System.out.println("ִ�н��������ʾ:");  
	             System.out.println("-----------------");  
	            System.out.println("id" + "\t" + "����"+"\t"+"ѧ��");  
	             System.out.println("-----------------");  
	              
	             String job = null;
	            String id = null;
	             while(rs.next()){
	                //��ȡstuname��������
	                 job = rs.getString("job");
                 //��ȡstuid��������
	                id = rs.getString("ename");
	 
	                 //������
	                 System.out.println(id + "\t" + job);
	             }
	            rs.close();
	             con.close();
	         } catch(ClassNotFoundException e) {   
	             //���ݿ��������쳣����
	             System.out.println("Sorry,can`t find the Driver!");   
	             e.printStackTrace();   
	             } catch(SQLException e) {
	            //���ݿ�����ʧ���쳣����
	             e.printStackTrace();  
	             }catch (Exception e) {
	             // TODO: handle exception
	             e.printStackTrace();
	         }finally{
	             System.out.println("���ݿ����ݳɹ���ȡ����");
	         }
}
}