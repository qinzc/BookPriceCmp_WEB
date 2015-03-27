# -*- coding: utf-8 -*-

# Scrapy settings for update project
#
# For simplicity, this file contains only the most important settings by
# default. All the other settings are documented here:
#
#     http://doc.scrapy.org/en/latest/topics/settings.html
#

BOT_NAME = 'update'

SPIDER_MODULES = ['update.spiders']
NEWSPIDER_MODULE = 'update.spiders'

#cookie
COOKIE_ENABLED=True
ITEM_PIPELINES={
'update.pipelines.UpdatePipeline':1
#,'priceCmp.imagepipelines.MyImagesPipeline':2  
}

DOWNLOAD_DELAY=0.1
USER_AGENT ='Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.66 Safari/537.36' 
# Crawl responsibly by identifying yourself (and your website) on the user-agent
#USER_AGENT = 'update (+http://www.yourdomain.com)'
