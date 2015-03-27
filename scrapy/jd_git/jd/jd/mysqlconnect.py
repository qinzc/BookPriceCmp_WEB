
from jd.bookenv import init
import MySQLdb
import MySQLdb.cursors
class mysqlc():
    def connectMysql(self,str):
        conn=MySQLdb.connect(
             host=init.DBhost,
             port=3306,
             user=init.DBuser,
             passwd=init.DBpasswd,
             db='qin',
             charset='utf8'
           )
        cur=conn.cursor()   
      #  print str
        num=cur.execute(str)
        conn.commit()
        cur.close()
        conn.close()
        return num
 
