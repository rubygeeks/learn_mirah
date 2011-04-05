def fib(a:int):int
  if a < 2
    a
  else
    fib(a - 1) + fib(a - 2)
  end
end

def bench(n:int)
  n.times do
    timeStart = System.currentTimeMillis
    puts "fib(40): #{fib(40)}\nTotal time: #{System.currentTimeMillis - timeStart}"
  end
end

bench 3