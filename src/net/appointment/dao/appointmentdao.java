package net.appointment.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import net.appointment.model.Appointment;


public class appointmentdao 
{
	public int appointment(Appointment appointment) throws ClassNotFoundException {
		 String INSERT_USERS_SQL = "INSERT INTO APPOINTMENT" + "(Name, Age, DOB, Blood_Group, Address, Mobile_Number, Email, APPOINTMENT_DATE ) values"
		+"(?,?,?,?,?,?,?,?);";
		 
		 int result = 0;

	       Class.forName("com.mysql.jdbc.Driver");

	        try (Connection connection = 
	        		DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql_database?useSSL=false", "system", "Prashant");
	          
	            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
	            preparedStatement.setString(1,appointment.getName());
	            preparedStatement.setString(2, appointment.getAge());
	            preparedStatement.setString(3, appointment.getDOB());
	            preparedStatement.setString(4, appointment.getBlood_Group());
	            preparedStatement.setString(5, appointment.getAddress());
	            preparedStatement.setString(6, appointment.getMobile_Number());
	            preparedStatement.setString(7, appointment.getEmail());
	            preparedStatement.setString(8, appointment.getDate());

	            System.out.println(preparedStatement);
	            
	            result = preparedStatement.executeUpdate();
	            	        

	        } catch (SQLException e) {
	            
	            printSQLException(e);
	        }
	        return result;
	    }

	    private void printSQLException(SQLException ex) {
	        for (Throwable e: ex) {
	            if (e instanceof SQLException) {
	                e.printStackTrace(System.err);
	                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
	                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
	                System.err.println("Message: " + e.getMessage());
	                Throwable t = ex.getCause();
	                while (t != null) {
	                    System.out.println("Cause: " + t);
	                    t = t.getCause();
	                }
	            }
	        }
	    }
	}

