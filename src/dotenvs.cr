require "dotenv"
require "./dotenvs/*"

module Dotenvs
  extend self

  def load(app_env : String, allow_production : Bool = false) : Nil
    if app_env != "production" || allow_production
      Dotenv.load
      Dotenv.load(".env." + app_env)
      Dotenv.load(".env." + app_env + ".local")
    end
  end
end
