module main

import vlua53 as lua

#flag -I /usr/local/include
#flag -L /usr/local/lib -l lua
#include "lua.h"
#include "lualib.h"
#include "lauxlib.h"

fn main() {
        mystate := lua.lual_newstate()
        lua.lual_openlibs(mystate)
        cmd := "print('Hello from Lua!')"
        result := lua.lual_dostring(mystate, cmd.str)
        if result == lua.LUA_OK {
                println("Lua code ran successfully!")
        }
}

