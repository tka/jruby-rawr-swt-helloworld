$LOAD_PATH << 'src'

ruby_lib_path = File.join(File.dirname(File.dirname(File.dirname(File.dirname(__FILE__)))), "ruby").to_s()[5..-1] 
if File.exists?( ruby_lib_path ) 
    LIB_PATH = File.expand_path( File.join(File.dirname(File.dirname(File.dirname(File.dirname(__FILE__))))).to_s()[5..-1] )
else 
    LIB_PATH = File.expand_path 'lib' 
end

require "swt_wrapper"

class App
  def initialize
    @display  = Swt::Widgets::Display.get_current
    @shell    = Swt::Widgets::Shell.new(@display)
    @shell.layout = Swt::Layout::GridLayout.new(3, false)
    label = Swt::Widgets::Label.new(@shell, Swt::SWT::HORIZONTAL )
    label.text = 'Hello World!'
    @shell.open 
  end

  def run
    
    while(!@shell.is_disposed) do
      @display.sleep if(!@display.read_and_dispatch) 
    end

    @display.dispose

  end


  private 
end

App.new.run
