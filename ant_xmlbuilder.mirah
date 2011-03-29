def ant_xml(project_name:string)

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

ant_xml('senthil')