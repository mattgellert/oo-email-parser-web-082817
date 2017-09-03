class EmailParser
  attr_accessor :emails_string

  def initialize(emails_string)
    @emails_string = emails_string
  end

  def parse
    if self.emails_string.include?(", ") #CSV
      emails_array = self.emails_string.split(/[, ]/).reject!(&:empty?)
    else
      emails_array = self.emails_string.split(" ")
    end
    emails_array.uniq
  end
end
