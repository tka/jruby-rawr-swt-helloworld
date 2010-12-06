# for mac app bundle
ruby_lib_path = File.join(File.dirname(File.dirname(File.dirname(__FILE__))), "Ruby").to_s()[5..-1]
if File.exists?(ruby_lib_path )
  Dir.foreach(ruby_lib_path) do | x |
    next if x =~ /^\./
    $LOAD_PATH.unshift "#{ruby_lib_path}/#{x}/lib"
    puts "#{ruby_lib_path}/#{x}/lib"
  end

else
  Dir.foreach('lib/ruby') do | x |
    next if x =~ /^\./
    $LOAD_PATH.unshift "lib/ruby/#{x}/lib"
    puts "$LOAD_PATH.unshift 'lib/ruby/#{x}/lib'"
  end
end

=begin
CONFIG_DIR = File.join( java.lang.System.getProperty("user.home") , '.helloword' )
Dir.mkdir( CONFIG_DIR ) unless File.exists?( CONFIG_DIR )
=end

require "swt_wrapper.rb"

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
