'use strict';

cron = require('cron').CronJob

module.exports = (robot) ->
  new cron '0 * * * *', () =>
    robot.send {room: "#abc"}, "ポケモン同行会の皆さん！ポケモン公式twitterの情報を持ってきますよ！ちなみにこの文章をコピー＆ペーストしてこのチャンネルの貼り付けても、公式twitterの新しいツイートを持ってくることができますよ！"
  ,null, true, "Asia/Tokyo"

# module.exports = (robot) ->
#   new cron '0 0 20 * * 2', () =>
#     robot.send {room: "#abc"}, "@here 皆さん!定例会の時間ですよ!"
#   ,null, true, "Asia/Tokyo"