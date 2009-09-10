class LoggedMessage < ActiveRecord::Base
  def self.log(options)
    severity = options[:error] ? 1 : 0
    self.create(:title => options[:title], :description => options[:description], :source => options[:source], :severity => severity)
  end
end