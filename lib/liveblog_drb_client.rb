#!/usr/bin/env ruby

# file: liveblog_drb_client.rb

require 'drb'


class LiveblogDRbClient


  def initialize(host: 'localhost', port: '60500')
    DRb.start_service

    @lb = DRbObject.new nil, "druby://#{host}:#{port}"
    @date = @lb.date
  end

  def add_entry(s)
    if Date.today > @date
      @date = Date.today
      @lb.new_day date: Date.today 
    end
    @lb.add_entry s
  end
  
  def date()
    @lb.date
  end
    
  def load_file(filepath)
    @lb.load_file(filepath)
  end
  
  def new_day()
    if Date.today > @date
      @date = Date.today
      @lb.new_day date: Date.today
    end
  end
  
  def new_file()
    @lb.new_file
  end
  
  def import(s)
    @lb.import(s)
  end
  
  def raw_view(tag)
    @lb.raw_view tag
  end
  
  def restart()
    @lb.restart
  end
  
  def tags()
    @lb.tags()
  end  

  def update(s)
    @lb.new_day if Date.today > @date
    @lb.update s
  end
  
  def valid_entry?(s)
    @lb.valid_entry?(s)
  end
  
  def valid_entry(s)
    @lb.valid(s)
  end  

end 