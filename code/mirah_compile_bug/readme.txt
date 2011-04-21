I have posted on mirah group


http://groups.google.com/group/mirah/browse_thread/thread/74e705cdff0233ca

if there is a puts statement before import then compile and execution 
fails 


you can reproduce it easily 
Senthil-3:stdin senthil$ cat test.mirah 
puts "test" 
import java.io.* 
inStream = InputStreamReader.new(System.in) 
puts "test" 
Senthil-3:stdin senthil$ mirah test.mirah 
Inference Error: 
test.mirah:3: Cannot find class InputStreamReader 
inStream = InputStreamReader.new(System.in) 
          ^^^^^^^^^^^^^^^^^^ 
Senthil-3:stdin senthil$ cat test1.mirah 
#puts "test1" 
import java.io.* 
inStream = InputStreamReader.new(System.in) 
puts "test1" 
Senthil-3:stdin senthil$ mirah test1.mirah 
test1