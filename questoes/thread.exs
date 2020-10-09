my_threads = lambda do |a,b|

c = Thread.new{
    sleep 4
    a + b
}.join

d = Thread.new{
    sleep 4
    d = b * a
}.join
c