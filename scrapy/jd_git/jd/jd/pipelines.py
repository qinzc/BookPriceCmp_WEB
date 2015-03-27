# -*- coding: utf-8 -*-

# Define your item pipelines here
#
# Don't forget to add your pipeline to the ITEM_PIPELINES setting
# See: http://doc.scrapy.org/en/latest/topics/item-pipeline.html

from scrapy.contrib.pipeline.images import ImagesPipeline
from scrapy import log
from twisted.enterprise import adbapi
from scrapy.http import Request
from scrapy.exceptions import DropItem
from jd.mysqlconnect import mysqlc
import json
import codecs

class JdPipeline(ImagesPipeline):
    def get_media_requests(self,item,info):
        print '*******************'
        #for images_url in imageItem['image_urls']:   
        image_url=item['image_url'][0][1:]
        print image_url
        yield Request(image_url)
    
    def item_completed(self,results,item,info):
        image_paths=[x['path'] for ok,x in results if ok]
        print image_paths
        if not image_paths:
            raise DropItem("Item contain no images")
        item['image_name']=image_paths[0]
        print item['image_name']
        t=mysqlc()
        item['price']=item['price'].replace(u'￥',u'¥')
        item['price']=item['price'].replace('\n','')
        item['price']=item['price'].replace(' ','')
        sqlstr= '''insert into demo.books (name,author,price,website,url,flag,image_name) value ('%s','%s','%s','%s','%s','%s','%s');'''  % \
            (item['name'],item['author'],item['price'],item['website'],item['url'],item['flag'],item['image_name'])
        print sqlstr
        t.connectMysql(sqlstr)
        return item
