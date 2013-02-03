require "rubygems"

class AppConfig
  FILENAME = ".pt.yaml"
  
  def self.load
    require "yaml"

    # Read YAML config or quit.
    config = nil
    begin
      config = YAML.load_file FILENAME
    rescue Exception => e
      raise "No #{FILENAME} file found in current directory; please create one."
    end
    
    AppConfig.new :config => config
  end
  
  def initialize opts={:config => Hash.new}
    @config = opts[:config]
    
    raise "Config must include \"project\" key" if not @config.has_key? "project"
    raise "Config must include \"api_key\" key" if not @config.has_key? "api_key"
    raise "Config must include \"user\" key" if not @config.has_key? "user"
  end
  
  def project
    @config["project"]
  end
  
  def api_key
    @config["api_key"]
  end
  
  def user
    @config["user"]
  end
  
end