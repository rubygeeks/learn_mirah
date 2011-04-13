puts "parse stdin"

import java.io.*
import java.io.InputStreamReader
import java.io.BufferedReader

inStream = InputStreamReader.new(System.in)
stdin    = BufferedReader.new(inStream)

#stdin = BufferedReader.new(InputStreamReader.new(System.in))
#puts  stdin.readLine()
puts System.in.read