import psycopg2 as pg2
con=pg2.connect(database='testme',user='postgres',password='ROOT')
cur=con.cursor()
cur.execute('''create table coures_info(coures_id  serial primary key,
            coures_fees int,
            coures_duration varchar(30))''')
con.commit()

cur.execute('''insert into coures_info (coures_fees,coures_duration)
            values(2000,'20days')''')
con.commit()

cur.execute('''insert into coures_info (coures_fees,coures_duration)
            values(4000,'60days')''')
            

cur.execute('''insert into coures_info (coures_fees,coures_duration)
            values(4000,'60days')''')
con.commit()

cur.fetchone()
con.close()
