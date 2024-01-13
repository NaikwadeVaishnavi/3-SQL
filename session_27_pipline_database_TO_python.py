import psycopg2 as pg2

#create connnection with database
conn=pg2.connect(database='DVDrender',user='postgres',password='ROOT')

#establish connection and start cursor to be ready to quary
cur=conn.cursor()

#pass in a postgreSQl query as a string
cur.execute('SELECT * FROM PAYMENT')

#acces first row
cur.fetchone()

#acces some row
cur.fetchmany(10)

#acces all row
cur.fetchall()

#to save data in veribale
data=cur.fetchmany(10)

data

#close
conn.close()
