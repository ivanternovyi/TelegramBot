# coding: UTF-8

require 'telegram/bot'

TOKEN = '476505256:AAGOniuN-bBc4_ULiP33JlUbYhOSaV0imH8'


ANSWERS = [
  # Positive
  "Yes",
  "Of course",
  "All right",
  "No doubts",
  # Neutral
  "I do not now yet",
  "I think yes",
  # Negative
  "No",
  "It is forbidden",
  "I do not allow",
  "Hope you`re kidding"
]

Telegram::Bot::Client.run(TOKEN) do |bot|
  bot.listen do |message|
    case message.text
    when '/start', '/start start'
      bot.api.send_message(
      chat_id: message.chat.id,
      text: "Hi, #{message.from.first_name}!"
      )
    when 'Hi', 'Hello'
      bot.api.send_message(
      chat_id: message.chat.id,
      text: "Hi, you`re so polite)"
      )
    else
      bot.api.send_message(
      chat_id: message.chat.id,
      text: ANSWERS.sample
      )
    end
  end
end
