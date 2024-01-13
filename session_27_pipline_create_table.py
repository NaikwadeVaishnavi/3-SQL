import psycopg2 as pg2

conn=pg2.connect(database='testme' , user='postgres',password='ROOT')

cur=conn.cursor()

cur.execute('''create table if not exists coures1 (coures_id serial primary key,
            coures_name varchar(30) not null,
            coure_instrctor varchar(30) not null,
            topic varchar(30) not null);
            ''')
conn.commit()           
conn.close()
