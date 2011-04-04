import java.io.*;

class MirahJarBuilder 

def self.main(argv:String[]):void 
 puts "class name " + argv[0] 
project_name = argv[0]
 ant_xml(project_name)
xmlfilename = "#{project_name}.xml"
mirahfile =  "#{project_name}.mirah"
command ="ant -f #{xmlfilename}"

execute(command)
command = "mirahc #{mirahfile}"
execute(command)
end 

def self.execute(command:string)
puts command
Runtime.getRuntime().exec(command);
end


def self.ant_xml(project_name:string)

antxml= "<project default=\"jar\">
  <target name=\"compile\">
    <javac srcdir=\".\" />
  </target>
  <target name=\"jar\" depends=\"compile\">
    <jar destfile=\"#{project_name}.jar\"
         basedir=\".\"
         includes=\"**/*.class\">
      <manifest>
        <attribute name=\"Main-Class\" value=\"#{project_name}\" />
      </manifest>
    </jar>
  </target>
</project>"
filename = "#{project_name}.xml"
out = BufferedWriter.new(FileWriter.new(filename));
    out.write(antxml);
    out.close();
puts filename
end

end