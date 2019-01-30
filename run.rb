# frozen_string_literal: true

require 'dry-types'
require 'dry/types/compat'
require 'rom'
require 'rom-sql'

host = 'localhost'
port = 5434
db = 'whateverdb'
username = 'root'
password = 'pass'

configuration = ROM::Configuration.new(:sql, "postgres://#{host}:#{port}/#{db}", username: username, password: password)
configuration.auto_registration('./lib')
ROM_SQL = ROM.container(configuration)

p ROM_SQL.relations[:users].command(:create).call(name: 'a')
