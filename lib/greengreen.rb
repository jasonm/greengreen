require 'test/unit'
require 'test/unit/ui/console/testrunner'

# cute.
module Color
  COLORS = { :clear => 0, :red => 32, :green => 32, :yellow => 32 }
  def self.method_missing(color_name, *args)
    color(color_name) + args.first + color(:clear) 
  end
  def self.color(color)
    "\e[#{COLORS[color.to_sym]}m"
  end
end

class Test::Unit::UI::Console::GreenGreenTestRunner < Test::Unit::UI::Console::TestRunner
  def initialize(suite, output_level=NORMAL, io=$stdout)
    super
  end
  
  def output_single(something, level=NORMAL)
    return unless (output?(level))
    something = case something
                when '.' then Color.green('.')
                when 'F' then Color.red(".")
                when 'E' then Color.yellow(".")
                else something
                end
    @io.write(something) 
    @io.flush
  end
end

class Test::Unit::AutoRunner
  alias :old_initialize :initialize
  def initialize(standalone)
    old_initialize(standalone)
    @runner = proc do |r| 
      Test::Unit::UI::Console::GreenGreenTestRunner
    end
  end
end

class Test::Unit::TestResult
  alias :old_to_s :to_s
  def to_s
    if old_to_s =~ /\d+ tests, \d+ assertions, (\d+) failures, (\d+) errors/
      Color.send($1.to_i != 0 || $2.to_i != 0 ? :red : :green, $&)
    end
  end
end

class Test::Unit::Failure
  alias :old_long_display :long_display
  def long_display
  end
end

class Test::Unit::Error
  alias :old_long_display :long_display
  def long_display
  end
end
