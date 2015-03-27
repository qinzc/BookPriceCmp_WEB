#encoding=utf-8
from scrapy.spider import Spider
from scrapy.http import Request
from scrapy.selector import Selector
from jd.items import JdItem
from scrapy.contrib.linkextractors.sgml import SgmlLinkExtractor
from jd.mysqlconnect import mysqlc
import MySQLdb
num=0

class jdSpider(Spider):
    name="jdSpider"
    allowed_domains=['jd.com']
    start_urls=[]
    for i in range(10600002,10800000,2):
        start_urls.append('http://item.jd.com/%d.html' % (i))
    
    print 1
    def getItem(self,response):
        item=JdItem()
        sel=Selector(response)
        item['name']=sel.xpath('//div[@id="name"]/h1/text()').extract()
        item['author']=sel.xpath('//div[@id="name"]/div[@id="product-authorinfo"]/a/text()').extract()
        item['price']=sel.xpath('//strong[@id="J_price_trigger"]/text()').extract()
        item['website']=2
        item['url']=response.url
        item['flag']='2'+item['url'].split('/')[-1][:-5]
        item['image_url']=sel.xpath('//div[@id="spec-n1"]/img/@src').extract()
        if type(item['author'] )!=type('1'):
            item['author']=''.join(item['author'])
        item['author']=item['author'].replace("'","''");
        if type(item['price'] )!=type('1'):
            item['price']=item['price'][0]
        if type(item['name'] )!=type('1'):
            item['name']=item['name'][0]
        item['name']=item['name'].replace("'","''");
        return item
        
        
    
    def parse(self,response):        
        global num
        num+=1
        print '-'*15,num,'-'*15
        sel=Selector(response)
        bookjudge=sel.xpath('//div[@class="breadcrumb"]/strong[@clstag="shangpin|keycount|bookitemnew|04"]/a/text()').extract()
        if len(bookjudge)>0:
            bookjudge=bookjudge[0]
        if bookjudge != '图书'.decode("utf-8"):
            pass;    
        else:
            item=self.getItem(response)
        #    print "----item-----"
        #    filec=open("1.txt","w")
        #    filec.write(response.body)
        #    filec.close()
            yield item
            unusestr="""            urls=sel.xpath('//div[@id="lookAlsoLook"]/div[@class="mc"]/div/ul/li/div[@class="p-img"]/a/@href').extract()
#            print urls
#            urls1=sel.xpath('//div[@id="buyAlsoBuy"]/div[@class="mc"]/div/ul/li/div[@class="p-img"]/a/@href').extract()
#            print urls1
#            urls2=sel.xpath('//div[@id="reco-rank-0"]/div[@class="rec-item"]/div/ul/li/div[@class="p-img"]/a/@href').extract()
#            print urls2
            #urls=sel.xpath('//a/@href').re("http://item.jd.com/\d*\.com")
#            print sel
#            urls=[]
           # print urls
#            print urls
#            t=mysqlc()
#            for url in urls:
#                selectstr='''select * from qin.books where flag='%s' and website=1''' % (item['flag'])
#                if t.connectMysql(selectstr)==0:
                    print urls
                    yield Request(url,self.parse)"""
        
