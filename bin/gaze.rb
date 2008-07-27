#!/usr/bin/ruby
$:.unshift File.dirname(__FILE__) + '/../sinatra/lib'
require 'rubygems'
require 'sinatra'
require 'maruku'

before do
  Dir.chdir(ARGV[0]) if ARGV[0]
end

helpers do
  def get_dir
    File.basename(Dir.getwd)
  end
  def pages
    @pages = Dir["*.markdown"]
  end
end

get '/' do
  redirect '/pages/'
end

get '/pages/' do
  haml :pages
end

get '/pages/:page.markdown' do
  begin
    filename = params[:page] + ".markdown"
    page = File.open(filename).read
    @output = Maruku.new(page).to_html
    haml :page
  rescue
    raise Sinatra::NotFound
  end
end

use_in_file_templates!
__END__

@@layout
!!!
%html
  %body
    = yield

@@pages
%h1= get_dir
%ul
  - pages.each do |page|
    %li
      %a{:href => "/pages/#{page}"}= page

@@page
%strong
  %a{:href => '/pages/'}= get_dir
- pages.each do |page|
  %a{:href => "/pages/#{page}"}= page
%hr
~@output
