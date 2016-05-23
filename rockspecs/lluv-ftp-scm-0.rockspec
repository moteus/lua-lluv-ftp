package = "lluv-ftp"
version = "scm-0"

source = {
  url = "https://github.com/moteus/lua-lluv-ftp/archive/master.zip",
  dir = "lua-lluv-ftp-master",
}

description = {
  summary    = "FTP client for lluv library",
  homepage   = "https://github.com/moteus/lua-lluv-ftp",
  license    = "MIT/X11",
  maintainer = "Alexey Melnichuk",
  detailed   = [[
  ]],
}

dependencies = {
  "lua >= 5.1, < 5.4",
  "lluv > 0.1.1",
  -- "vararg"
}

build = {
  copy_directories = {'test'},

  type = "builtin",

  modules = {
    ["lluv.ftp"] = "src/lua/lluv/ftp.lua",
  }
}
