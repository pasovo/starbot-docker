from starbot.core.bot import StarBot
from starbot.core.datasource import JsonDataSource
from starbot.utils import config

config.set_credential(sessdata="B站账号的sessdata", bili_jct="B站账号的bili_jct", buvid3="B站账号的buvid3")

datasource = JsonDataSource("推送配置.json")
bot = StarBot(datasource)
bot.run()
