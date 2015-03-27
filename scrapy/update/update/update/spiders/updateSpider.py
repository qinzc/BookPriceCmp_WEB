#-*-coding:UTF-8-*-
from scrapy.spider import Spider
from scrapy.http import Request
from scrapy.selector import Selector
from update.items import  UpdateItem
from scrapy.contrib.linkextractors.sgml import SgmlLinkExtractor
from update.mysqlconnect import mysqlc
import MySQLdb

id=0
num=0

class updateSpider(Spider):
    name="updateSpider"
    allowed_domains=['dangdang.com','jd.com','amazon.cn']
    start_urls=['http://www.jd.com']
    
    def parse(self,response):        
        global num
        global id
        num+=1
        id +=1
        print '-'*15,num,'-'*15
        t=mysqlc()
        while  id < 1000000:
            selectstr='''select url from demo.books where id = %d''' % (id)
            rs=t.connectMysql(selectstr)
            if rs==0:
                break
            else:
              # print id+1
              #  print rs[0][0]
                yield Request(rs[0][0],meta={'item':id},callback=self.getPrice)
            id+=1
        
    def getPrice(self,response):
        newid=response.meta['item']
        sel=Selector(response)
        url=response.url            
        print '-'*29,'getprice'
        print newid
        print url
        selectstr='''select website from demo.books where id =%d''' % (newid)
        t=mysqlc()
        item =UpdateItem()
        rs=t.connectMysql(selectstr)        
        rs=rs[0][0]
        #print rs
        if rs == 1:
            item['price']=sel.xpath('//span[@class="a-color-price"]/text()').extract()
            if len(item['price'] )!=0:
                item['price']=item['price'][0]
            
        elif rs ==2:        
            item['price']=sel.xpath('//strong[@id="J_price_trigger"]/text()').extract()
            if type(item['price'] )!=type('1'):
                item['price']=item['price'][0]
        elif rs==3:
            item['price']=sel.xpath('//span[@id="salePriceTag"]/text()').extract()              
            if type(item['price'] )!=type('1'):
                item['price']=u'¥'+item['price'][0]
        #item['price']=u'¥'+item['price'][1:]
        item['price']=item['price'].replace(u'￥',u'¥')
        item['price']=item['price'].replace('\n','')
        item['price']=item['price'].replace(' ','')
        print item['price']
        item['id']=newid
        return item
