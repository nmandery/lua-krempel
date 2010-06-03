package="krempel"
version="0.1-1"
source = {
   url = "",
   dir = "."
}
description = {
   summary = "a few helper functions",
   homepage = "http://www.github.com/nmandery/lua-krempel/",
   license = "BSD"
}
dependencies = {
   "lua >= 5.1"
}
build = {
  type = "none",
  install = {
    lua = {
      "krempel.lua"
    }
  }
}
