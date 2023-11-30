class ApplicationController < ActionController::Base
    def hello
            render html: "Hello, World!"
    end
    Rails.application.routes.draw do
        root "application#hello"
    end
end
