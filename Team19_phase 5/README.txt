How to connect to Oracle on Omega using your PC/laptop

1. Insert your oracle (sqlplus) username and password in the OracleJDBC.java file
   
2. Connect to UTA VPN (Important)
    
3. Compile the OracleJDBC.java using the command

    javac -cp ojdbc8-21.1.0.0.jar; OracleJDBC.java 
    
4. Execute the OracleJDBC using the command

    java -cp ojdbc8-21.1.0.0.jar; OracleJDBC

5. You should get the following output

-------- Oracle JDBC Connection Testing ------
Oracle JDBC Driver Registered!
You made it, take control of your database now!

Printing employee names from the sharmac.employee table stored on omega
John Smith
Franklin Wong
Alicia Zelaya
Jennifer Wallace
Ramesh Narayan
Joyce English
Ahmad Jabbar
James Borg

6. You have successfully connected to Oracle in Omega and executed a Java program using the JDBC driver!

7. Follow the same for your phase 5!