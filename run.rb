#!/usr/bin/env ruby
# frozen_string_literal: true

require 'webrick'

DOCUMENT_ROOT = './docs'

WEBrick::HTTPResponse.class_eval do
  def create_error_page
    @header['Content-Type'] = 'text/html'
    @body = File.read(File.join(DOCUMENT_ROOT, '404.html'))
  end
end

server = WEBrick::HTTPServer.new({
  DocumentRoot: DOCUMENT_ROOT,
  Port: 8080,
})

%w[TERM QUIT HUP INT].each do |signal|
  Signal.trap(signal, proc { server.shutdown })
end

server.start
