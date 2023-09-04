module Factory
    class Static
        def self.load_file
            YAML.load_file(File.dirname(__FILE__) + "/static/#{ENVIRONMENT}.yml")
        end

        def self.static_data(data)
            Static.load_file[data]
        end

        def self.static_data_two_args(data, data2)
            Static.load_file[data][data2]
        end    
    end
end