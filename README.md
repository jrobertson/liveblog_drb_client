# Introducing the Liveblog DRb client gem


## Usage

    require 'liveblog_drb_client'


    drb = DRbLiveblogClient.new host: '192.168.4.190'
    drb.add_entry '# Testing the Liveblog #liveblog'

    drb.add_entry 'Things seem to be working! #liveblog'


# Resources

* liveblog_drb_client https://rubygems.org/gems/liveblog_drb_client


liveblog drb client
