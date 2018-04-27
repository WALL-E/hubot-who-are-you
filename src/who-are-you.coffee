# Description:
#   None
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot who are you - Hubot will tell you who I am
#   who are you hubot - Hubot will tell you who I am
#
# Author:
#   github.com/WALL-E
#

response = [
  "truly I am your servant",
  "I'm just a robot",
  "I don't know either",
  "I'm not zz",
  "It's too difficult for me"
]

module.exports = (robot) ->
  robot.respond /who( are you)?/i, (msg) ->
    msg.send msg.random response
  answers = new RegExp "who are you #{robot.name}", "i"
  robot.hear answers, (msg) ->
    msg.send msg.random response
