import sqlite3
from  datetime  import  *  
import  time  

conn = sqlite3.connect('db/development.sqlite3')
#timestamp = time.time()
print "Opened database successfully"


conn.execute("INSERT INTO recommendations (id,user_id,deal_id, created_at, updated_at) \
      VALUES (2, 4, 1, 1, 1)");

conn.commit()
print "Done recommendation"
conn.close()