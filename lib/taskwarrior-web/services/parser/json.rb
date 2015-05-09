require 'json'

module TaskwarriorWeb::Parser::Json
  def self.parse(json)
    json.strip!
    jsonStrings = json.split(/\r?\n/)
    json = '[' + jsonStrings.join(",") + ']'
    json == '[No matches.]' ? [] : ::JSON.parse(json)
  end
end
