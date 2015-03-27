# -*- coding: utf-8 -*-

# Define here the models for your scraped items
#
# See documentation in:
# http://doc.scrapy.org/en/latest/topics/items.html

import scrapy
from  scrapy.item import Item,Field

class JdItem(scrapy.Item):
    # define the fields for your item here like:
    # name = scrapy.Field()
    name=Field()
    author=Field()
    price=Field()
    website=Field()
    url=Field()
    flag=Field()        

    image_url=Field()
    image=Field()
    image_name=Field()
