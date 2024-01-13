import psycopg2 as pg2

con=pg2.connect(database='testme',user='postgres',password='ROOT')

cur=con.cursor()

cur.execute('''select * from coures1 inner join coures_info 
            on coures1.coures_id=coures_info.coures_id ''')
rows=cur.fetchall()
for row in rows:
    print(row)
con.close()
