class JarAntBuilder 

def self.main(argv:String[]):void 
 #puts "class name " + argv[0] 
 ant_xml(argv[0])
end 


def self.ant_xml(project_name:string)

puts "<project default=\"jar\">
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

end

end