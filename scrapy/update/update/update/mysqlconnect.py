from update.bookenv import init
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
        if num !=0 or  num!=1:
            num=cur.fetchall()
        conn.commit()
        cur.close()
        conn.close()
        return num
 
