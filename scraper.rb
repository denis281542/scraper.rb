require 'mechanize'

agent = Mechanize.new
agent.pluggable_parser.default = Mechanize::Download
agent.get('https://pravoslavnoe-duhovenstvo.ru/library/material/661/').save('a_file_name')