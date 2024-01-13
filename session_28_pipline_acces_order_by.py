import psycopg2 as pg2
con=pg2.connect(database='testme',user='postgres',password='ROOT')
cur=con.cursor()
cur.execute('SELECT * from coures1 order by coure_instrctor')
cur.fetchone()
con.commit()
rows=cur.fetchall()
for row in rows:
    print(row)
con.close()
