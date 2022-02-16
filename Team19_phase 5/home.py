# @author: Saahil pralhad Anande(1001855308)

#https://cx-oracle.readthedocs.io/en/latest/user_guide/connection_handling.html#jdbc-and-oracle-sql-developer-connection-strings

# from flask import Flask, render_template, request,redirect,url_for
import cx_Oracle


connection = cx_Oracle.connect(user="spa5308", password="Spaspring2021",
                               dsn="acaddbprod-2.uta.edu:1523/pcse1p.data.uta.edu",
                               encoding="UTF-8")

# connection = cx_Oracle.connect('spa5308/Spaspring2021@acaddbprod-2.uta.edu:1523/pcse1p.data.uta.edu')

cursor = cx_Oracle.cursor()
cursor.execute("select count(*) from sharmac.TITLE_BASICS")

rows = cursor.fetchone()

print(rows)