require 'sinatra'
require 'openssl'

class GenerateKeys
  def initialize
    OpenSSL::Random.seed(File.read("/dev/random", 16))

    @rsa = OpenSSL::PKey::RSA.generate(4096)
    @passphrase = ENV['PASSPHRASE']
  end

  def generate
    {
      private_key: generate_private_key,
      public_key: generate_public_key,
    }
  end

  private def generate_private_key
    @rsa.export(OpenSSL::Cipher::Cipher.new("aes256"), @passphrase)
  end

  private def generate_public_key
    @rsa.public_key.export
  end
end

get '/' do
  { message: 'Hello' }.to_json
end

get '/gen_key' do
  # https://docs.ruby-lang.org/ja/latest/class/OpenSSL=3a=3aPKey=3a=3aRSA.html
  GenerateKeys.new.generate.to_json
end