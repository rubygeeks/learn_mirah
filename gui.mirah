import javax.swing.JFrame
import javax.swing.JButton
import java.net.URI
import java.awt.Desktop

def self.run
  frame = JFrame.new "Welcome to The Future"
  frame.setSize 300, 300
  frame.setVisible true

  button = JButton.new "Press me to gain further enlightenment"
  frame.add button
  frame.show

  desktop = Desktop.getDesktop
  
  button.addActionListener do |event|
    desktop.browse(URI.new( "http://cogitations.arbia.co.uk/" ))
  end
end

run