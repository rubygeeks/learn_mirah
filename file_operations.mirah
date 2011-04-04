import java.io.*;

filename = 'test.xml'
content="<xml>test data \n</xml>"

out = BufferedWriter.new(FileWriter.new(filename));
    out.write(content);
    out.close();