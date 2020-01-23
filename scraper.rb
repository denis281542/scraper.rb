require 'mechanize'

agent = Mechanize.new
agent.pluggable_parser.pdf = Mechanize::FileSaver4
agent.get('https://pravoslavnoe-duhovenstvo.ru/media/priestdb/materialattachment/attachment/25/5a/255a7e0c-4a45-44b1-96c2-1344636742e3.pdf').save('save_site1')

