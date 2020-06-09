Before do |scenario|
  $driver.start_driver(open_timeout: 36000, read_timeout: 36000)
  $driver.manage.timeouts.implicit_wait = 35
  call_driver
end

def call_driver
  Appium.promote_appium_methods Object
  update_settings(ignoreUnimportantViews: true)
  update_settings({fixImageFindScreenshotDims: true, fixImageTemplateSize: true,
                   autoUpdateImageElementPosition: true})
end

After do
  $driver.driver_quit
end
