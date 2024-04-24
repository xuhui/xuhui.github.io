kill -9 $(ps aux | grep 'jekyll' | awk '{print $2}')
nohup bundle exec jekyll s -H 0.0.0.0 >/tmp/jekyll.log 2>&1 &
tail /tmp/jekyll.log
sleep 1
tail /tmp/jekyll.log

