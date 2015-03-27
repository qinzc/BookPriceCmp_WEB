# -*- coding: utf-8 -*-

# Scrapy settings for jd project
#
# For simplicity, this file contains only the most important settings by
# default. All the other settings are documented here:
#
#     http://doc.scrapy.org/en/latest/topics/settings.html
#

BOT_NAME = 'jd'

SPIDER_MODULES = ['jd.spiders']
NEWSPIDER_MODULE = 'jd.spiders'

#cookie
COOKIE_ENABLED=True
ITEM_PIPELINES={
'jd.pipelines.JdPipeline':1
}
IMAGES_STORE='./images'

DOWNLOAD_DELAY=0.1
USER_AGENT ='Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.66 Safari/537.36' 

# Crawl responsibly by identifying yourself (and your website) on the user-agent
#USER_AGENT = 'jd (+http://www.yourdomain.com)'
