require 'httparty'
require 'openssl'
OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

class Swapi
    include HTTParty
    :json

    read_timeout 10

    base_uri 'swapi.dev/api'
    
    def self.fetchAll
        get('/films/')
    end 

    def self.fetchDetail(detail)
        get('/films/'+ detail +'/')
    end
end