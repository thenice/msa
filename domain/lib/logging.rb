# extending basic obect to include logger
class Object
    def logger
        require 'logger'
        @@log ||= Logger.new(STDOUT)
    end
end