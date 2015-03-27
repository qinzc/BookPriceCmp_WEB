# -*- coding: utf-8 -*-

# Define your item pipelines here
#
# Don't forget to add your pipeline to the ITEM_PIPELINES setting
# See: http://doc.scrapy.org/en/latest/topics/item-pipeline.html

from scrapy import log
from twisted.enterprise import adbapi
from scrapy.http import Request
from scrapy.exceptions import DropItem
from update.mysqlconnect import mysqlc
import json
import codecs

class UpdatePipeline(object):
    def process_item(self, item, spider):
        t=mysqlc()
        print 'pipeline' 
        print item
        if len(item['price']) > 0: 
            sqlstr= '''update demo.books set price='%s' where id =%d ''' \
                                  % (item['price'],item['id'])
            print sqlstr
            t.connectMysql(sqlstr)
            print "writed in database" 
