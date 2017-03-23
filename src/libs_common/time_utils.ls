require! {
  moment
}

export get_days_since_epoch = ->
  start_of_epoch = moment().year(2016).month(0).date(1).hours(0).minutes(0).seconds(0).milliseconds(0)
  return moment().diff(start_of_epoch, 'days')

export printable_time_spent = (seconds) ->
  if seconds < 60
    return seconds + ' seconds'
  return moment().add(seconds, 'seconds').fromNow(true)
