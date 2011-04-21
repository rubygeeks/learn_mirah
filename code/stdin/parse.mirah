import java.io.*


inStream = InputStreamReader.new(System.in)
stdin    = BufferedReader.new(inStream)
filename = 'stdin.log'
out = BufferedWriter.new(FileWriter.new(filename));


stdin = BufferedReader.new(InputStreamReader.new(System.in))
while(stdin.ready()) do
content =  stdin.readLine()
out.write(content);
out.write("\n");
puts content
end


out.close();

  