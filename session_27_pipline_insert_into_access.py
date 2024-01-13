import psycopg2 as pg2
con=pg2.connect(database='testme',user='postgres',password='ROOT')
cur=con.cursor()
cur.execute('SELECT * FROM coures1')
cur.fetchone()
con.commit()
rows=cur.fetchall()
for row in rows:
    print(row)
con.close()
