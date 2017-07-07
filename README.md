# lluv-ftp - FTP client for lluv library
[![Licence](http://img.shields.io/badge/Licence-MIT-brightgreen.svg)](LICENSE)
[![Build Status](https://travis-ci.org/moteus/lua-lluv-ftp.svg?branch=master)](https://travis-ci.org/moteus/lua-lluv-ftp)
[![Coverage Status](https://coveralls.io/repos/github/moteus/lua-lluv-ftp/badge.svg?branch=master)](https://coveralls.io/github/moteus/lua-lluv-ftp?branch=master)

### Usage
```Lua
  local FTP = requrie "lluv.ftp"

  local ftp = FTP.Connection.new(server, {uid = user, pwd = pass})
  ftp:open(function(self, err)

  -- Upload file data from string
  ftp:stor('test.txt', 'hello world', function(self, err) ... end)

  -- Download file with offset and get result as string
  ftp:retr('test.txt', {type = "i", rest = 5}, function(self, err, code, data)
    -- here data is array of file parts
    data = table.concat(data)
  end

  -- Upload data from ltn12 source
  ftp:stor('test.txt', {source = ltn12.source.string('hello world')}, function(self, err) ... end)

  -- Download file to ltn12 sink
  local t = {}
  ftp:retr('test.txt', {sink = ltn12.sink.table(t)}, function(self, err, code, data)
    local data = table.concat(t)
  end
```
