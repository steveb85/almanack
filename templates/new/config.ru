require 'almanack/server'

Almanack.config do |c|
  c.title = "My Calendar"

  # Your group's URL name is what you'd find at www.meetup.com/Your-Group-URL-Name/
  # You can get a Meetup API key from https://secure.meetup.com/meetup_api/key
  # c.add_meetup_group group_urlname: 'Christchurch-Ruby-Group', key: 'mysecretkey'

  # For a Google Calendar, find the "iCal" link under your Calendar's settings
  # c.add_ical_feed 'https://example.com/basic.ics'

  # Static events
  c.add_events [
    {
      title: "Edit my calendar's settings",
      description: "Edit the configuration at #{__FILE__}",
      start_date: Time.now + 30 * 60
    }
  ]
end

run Almanack::Server
