#!/usr/bin/env ruby

# file: liveblog_drb_client.rb

require 'drb'


class DRbLiveblogClient


  def initialize(host: 'localhost', port: '60500')
    DRb.start_service

    @lb = DRbObject.new nil, "druby://#{host}:#{port}"
    @date = @lb.date
  end

  def add_entry(s)
    @lb.new_day if Date.today > @date
    @lb.add_entry s
  end
  
  def date()
    @lb.date
  end
  
  def raw_view(tag)
    @lb.raw_view tag
  end

  def update(s)
    @lb.new_day if Date.today > @date
    @lb.update s
  end

end 
