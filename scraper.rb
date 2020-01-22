require 'mechanize'

agent = Mechanize.new
agent.pluggable_parser.pdf = Mechanize::FileSaver
agent.get('https://pravoslavnoe-duhovenstvo.ru/library/material/661/').save('save_site')

