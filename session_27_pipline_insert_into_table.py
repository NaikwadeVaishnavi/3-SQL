import psycopg2 as pg2
conn=pg2.connect(database='testme',user='postgres',password='ROOT')

cour=conn.cursor()

cour.execute('''insert into coures1 (coures_name,coure_instrctor,topic) 
                values('python','ram','tuple')''')

conn.commit()

cour.fetchone()
