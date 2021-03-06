module vlua53
                           
type FNK fn(&C.lua_State, int, C.lua_KContext) int
type Lua_KContext voidptr
type Lua_Number f32
                           
//lua.h
fn C.lua_absindex(L &C.lua_State, idx int) int
fn C.lua_arith(L &C.lua_State, op int)
fn C.lua_atpanic(L &C.lua_State, panicf fn(&C.lua_State) int) voidptr //lua_CFunction fn(&C.lua_State) int
fn C.lua_call(L &C.lua_State, nargs int, nresults int) void
fn C.lua_callk(L &C.lua_State, nargs int, nresults int, ctx Lua_KContext, k FNK) void
fn C.lua_checkstack(L &C.lua_State, n int) int
fn C.lua_close(L &C.lua_State)
fn C.lua_compare(L &C.lua_State, index1, index2, op int) int
fn C.lua_concat(L &C.lua_State, n int)
fn C.lua_copy(L &C.lua_State, fromidx, toidx int)
fn C.lua_createtable(L &C.lua_State, narr, nrec int)
fn C.lua_dump(L &C.lua_State, writer fn(&C.lua_State, voidptr, size_t, voidptr) int, data voidptr, strip int) int
fn C.lua_error(L &C.lua_State) int
fn C.lua_gc(L &C.lua_State, what, data int) int
fn C.lua_getallocf(L &C.lua_State, ud &voidptr) voidptr // Lua_Alloc fn(voidptr, voidptr, u32, u32) voidptr
fn C.lua_getfield(L &C.lua_State, index int, k byteptr) int
fn C.lua_getextraspace(L &C.lua_State) voidptr
fn C.lua_getglobal(L &C.lua_State, name byteptr) int
fn C.lua_geti(L &C.lua_State, index int, i i64) int // importing C.lua_Integer has compile issues, i64
fn C.lua_getmetatable(L &C.lua_State, index int) int
fn C.lua_gettable(L &C.lua_State, index int) int
fn C.lua_gettop(L &C.lua_State) int
fn C.lua_getuservalue(L &C.lua_State, index int) int
fn C.lua_insert(L &C.lua_State, index int)
fn C.lua_isboolean(L &C.lua_State, index int) int
fn C.lua_iscfunction(L &C.lua_State, index int) int
fn C.lua_isfunction(L &C.lua_State, index int) int
fn C.lua_isinteger(L &C.lua_State, index int) int
fn C.lua_islightuserdata(L &C.lua_State, index int) int
fn C.lua_isnil(L &C.lua_State, index int) int
fn C.lua_isnone(L &C.lua_State, index int) int
fn C.lua_isnoneornil(L &C.lua_State, index int) int
fn C.lua_isnumber(L &C.lua_State, index int) int
fn C.lua_isstring(L &C.lua_State, index int) int
fn C.lua_istable(L &C.lua_State, index int) int
fn C.lua_isthread(L &C.lua_State, index int) int
fn C.lua_isuserdata(L &C.lua_State, index int) int
fn C.lua_isyieldable(L &C.lua_State) int
fn C.lua_len(L &C.lua_State, index int)
fn C.lua_load(L &C.lua_State, reader fn(&C.lua_State, voidptr, u32, voidptr) int, data voidptr, chunkname, mode byteptr) int
fn C.lua_newstate(f fn(voidptr, voidptr, u32, u32) voidptr, ud voidptr) &C.lua_State
fn C.lua_newtable(L &C.lua_State)
fn C.lua_newthread(L &C.lua_State) &C.lua_State
fn C.lua_newuserdata(L &C.lua_State, size size_t) voidptr
fn C.lua_next(L &C.lua_State, index int) int
fn C.lua_numbertointeger(n Lua_Number, p &i64) int // importing C.lua_Integer has compile issues, i64
fn C.lua_pcall(L &C.lua_State, nargs, nresults, msgh int) int
fn C.lua_pcallk (L &C.lua_State, nargs, nresults, msgh int, ctx Lua_KContext, k fn(&C.lua_State, int, Lua_KContext) int) int
fn C.lua_pop(L &C.lua_State, n int)
fn C.lua_pushboolean(L &C.lua_State, b int)
fn C.lua_pushcclosure(L &C.lua_State, f fn(L &C.lua_State) int, n int)
fn C.lua_pushcfunction(L &C.lua_State, f fn(L &C.lua_State) int)
//fn C.lua_pushfstring(L &C.lua_State, fmt byteptr) V is weird with variable arguments right now.
fn C.lua_pushglobaltable(L &C.lua_State)
fn C.lua_pushinteger(L &C.lua_State, n i64) // importing C.lua_Integer has compile issues, i64
fn C.lua_pushlightuserdata(L &C.lua_State, p voidptr)
fn C.lua_pushliteral(L &C.lua_State, s byteptr) byteptr
fn C.lua_pushlstring(L &C.lua_State, s byteptr, len size_t) byteptr
fn C.lua_pushnil(L &C.lua_State)
fn C.lua_pushnumber(L &C.lua_State, n Lua_Number)
fn C.lua_pushstring(L &C.lua_State, s byteptr) byteptr
fn C.lua_pushthread(L &C.lua_State) int
fn C.lua_pushvalue(L &C.lua_State, index int)
fn C.lua_pushvfstring(L &C.lua_State, fmt byteptr, argp voidptr /* va_list */) byteptr
fn C.lua_rawequal(L &C.lua_State, index1, index2 int) int
fn C.lua_rawget(L &C.lua_State, index int) int
fn C.lua_rawgeti(L &C.lua_State, index int, n i64) int // importing C.lua_Integer has compile issues, i64
fn C.lua_rawgetp(L &C.lua_State, index int, p voidptr) int
fn C.lua_rawlen(L &C.lua_State, index int) size_t
fn C.lua_rawset(L &C.lua_State, index int)
fn C.lua_rawseti(L &C.lua_State, index int, i i64) // importing C.lua_Integer has compile issues, i64
fn C.lua_rawsetp(L &C.lua_State, index int, p voidptr)
fn C.lua_register(L &C.lua_State, name byteptr, f fn(L &C.lua_State) int)
fn C.lua_remove(L &C.lua_State, index int)
fn C.lua_replace(L &C.lua_State, index int)
fn C.lua_resume(L &C.lua_State, from &C.lua_State, nargs int) int
fn C.lua_rotate(L &C.lua_State, idx, n int)
fn C.lua_setallocf(L &C.lua_State, f fn(voidptr, voidptr, u32, u32) voidptr, ud voidptr)
fn C.lua_setfield(L &C.lua_State, index int, k byteptr)
fn C.lua_setglobal(L &C.lua_State, name byteptr)
fn C.lua_seti(L &C.lua_State, index int, n i64) // importing C.lua_Integer has compile issues, i64
fn C.lua_setmetatable(L &C.lua_State, index int)
fn C.lua_settable(L &C.lua_State, index int)
fn C.lua_settop(L &C.lua_State, index int)
fn C.lua_setuservalue(L &C.lua_State, index int)
fn C.lua_status(L &C.lua_State) int
fn C.lua_stringtonumber(L &C.lua_State, s byteptr) size_t
fn C.lua_toboolean(L &C.lua_State, index int) int
fn C.lua_tocfunction(L &C.lua_State, index int) voidptr // CFunction fn(L &C.lua_State) int
fn C.lua_tointeger(L &C.lua_State, index int) i64 // importing C.lua_Integer has compile issues, i64
fn C.lua_tointegerx(L &C.lua_State, index int, isnum &int) i64 // importing C.lua_Integer has compile issues, i64
fn C.lua_tolstring(L &C.lua_State, index int, len &size_t) byteptr
fn C.lua_tonumber(L &C.lua_State, index int) Lua_Number
fn C.lua_tonumberx(L &C.lua_State, index int, isnum &int) Lua_Number
fn C.lua_topointer(L &C.lua_State, index int) voidptr
fn C.lua_tostring(L &C.lua_State, index int) byteptr
fn C.lua_tothread(L &C.lua_State, index int) &C.lua_State
fn C.lua_touserdata(L &C.lua_State, index int) voidptr
fn C.lua_type(L &C.lua_State, index int) int
fn C.lua_typename(L &C.lua_State, tp int) byteptr
fn C.lua_upvalueindex(i int) int
fn C.lua_version(L &C.lua_State) &Lua_Number
fn C.lua_xmove(from &C.lua_State, to &C.lua_State, n int)
fn C.lua_yield(L &C.lua_State, nresults int) int
fn C.lua_yieldk(L &C.lua_State, nresults int, ctx Lua_KContext, k fn(&C.lua_State, int, Lua_KContext) int) int
fn C.lua_gethook(L &C.lua_State) voidptr // lua_Hook fn(&C.lua_State, &C.lua_Debug)
fn C.lua_gethookcount(L &C.lua_State) int
fn C.lua_gethookmask(L &C.lua_State) int
fn C.lua_getinfo(L &C.lua_State, what byteptr, ar &C.lua_Debug) int
fn C.lua_getlocal(L &C.lua_State, ar &C.lua_Debug, n int) byteptr
fn C.lua_getstack(L &C.lua_State, level int, ar &C.lua_Debug) int
fn C.lua_getupvalue(L &C.lua_State, funcindex, n int) byteptr
fn C.lua_sethook(L &C.lua_State, f fn(&C.lua_State, &C.lua_Debug), mask, count int)
fn C.lua_setlocal(L &C.lua_State, ar &C.lua_Debug, n int) byteptr
fn C.lua_setupvalue(L &C.lua_State, funcindex, n int) byteptr
fn C.lua_upvalueid(L &C.lua_State, funcindex, n int) voidptr
fn C.lua_upvaluejoin(L &C.lua_State, funcindex1, n1, funcindex2, n2 int)

//lauxlib.h
fn C.luaL_addchar(B &C.luaL_Buffer, c byte)
fn C.luaL_addlstring(B &C.luaL_Buffer, s byteptr, l size_t)
fn C.luaL_addsize(B &C.luaL_Buffer, n size_t)
fn C.luaL_addstring(B &C.luaL_Buffer, s byteptr)
fn C.luaL_addvalue(B &C.luaL_Buffer)
fn C.luaL_argcheck(L &C.lua_State, cond, arg int, extramsg byteptr)
fn C.luaL_argerror(L &C.lua_State, arg int, extramsg byteptr) int
fn C.luaL_buffinit(L &C.lua_State, B &C.luaL_Buffer)
fn C.luaL_buffinitsize(L &C.lua_State, B &C.luaL_Buffer, sz size_t) byteptr
fn C.luaL_callmeta(L &C.lua_State, obj int, e byteptr) int
fn C.luaL_checkany(L &C.lua_State, arg int)
fn C.luaL_checkinteger(L &C.lua_State, arg int) i64 // importing C.lua_Integer has compile issues, i64
fn C.luaL_checklstring(L &C.lua_State, arg int, l &size_t) byteptr
fn C.luaL_checknumber(L &C.lua_State, arg int) Lua_Number
fn C.luaL_checkoption(L &C.lua_State, arg int, def byteptr, lst byteptr) int
fn C.luaL_checkstack(L &C.lua_State, sz int, msg byteptr)
fn C.luaL_checkstring(L &C.lua_State, arg int) byteptr
fn C.luaL_checktype(L &C.lua_State, arg, t int)
fn C.luaL_checkudata(L &C.lua_State, arg int, tname byteptr) voidptr
fn C.luaL_checkversion(L &C.lua_State)
fn C.luaL_dofile(L &C.lua_State, filename byteptr) int
fn C.luaL_dostring(L &C.lua_State, str byteptr) int
//fn C.luaL_error(L &C.lua_State, fmt byteptr) int //V weird with variable arguments
fn C.luaL_execresult(L &C.lua_State, stat int) int
fn C.luaL_fileresult(L &C.lua_State, stat int, fname byteptr) int
fn C.luaL_getmetafield(L &C.lua_State, obj int, e byteptr) int
fn C.luaL_getmetatable(L &C.lua_State, tname byteptr) int
fn C.luaL_getsubtable(L &C.lua_State, idx int, fname byteptr) int
fn C.luaL_gsub(L &C.lua_State, s, p, r byteptr) byteptr
fn C.luaL_len(L &C.lua_State, index int) i64 // importing C.lua_Integer has compile issues, i64
fn C.luaL_loadbuffer(L &C.lua_State, buff byteptr, sz size_t, name byteptr) int
fn C.luaL_loadbufferx(L &C.lua_State, buff byteptr, sz size_t, name, mode byteptr) int
fn C.luaL_loadfile(L &C.lua_State, filename byteptr) int
fn C.luaL_loadfilex(L &C.lua_State, filename, mode byteptr) int
fn C.luaL_loadstring(L &C.lua_State, s byteptr) int
fn C.luaL_newlib(L &C.lua_State, l &C.luaL_Reg)
fn C.luaL_newlibtable(L &C.lua_State, l &C.luaL_Reg)
fn C.luaL_newmetatable(L &C.lua_State, tname byteptr) int
fn C.luaL_newstate() &C.lua_State
fn C.luaL_openlibs(L &C.lua_State)
//fn C.luaL_opt(L &C.lua_State, arg, d int) int not sure about translation
fn C.luaL_optinteger(L &C.lua_State, arg int, d i64) i64 // importing C.lua_Integer has compile issues, i64
fn C.luaL_optlstring(L &C.lua_State, arg int, d byteptr, l &size_t) byteptr
fn C.luaL_optnumber(L &C.lua_State, arg int, d Lua_Number) Lua_Number
fn C.luaL_optstring(L &C.lua_State, arg int, d byteptr) byteptr
fn C.luaL_prepbuffer(B &C.luaL_Buffer) byteptr
fn C.luaL_prepbuffsize(B &C.luaL_Buffer, sz size_t) byteptr
fn C.luaL_pushresult(B &C.luaL_Buffer)
fn C.luaL_pushresultsize(B &C.luaL_Buffer, sz size_t)
fn C.luaL_ref(L &C.lua_State, t int) int
fn C.luaL_requiref(L &C.lua_State, modname byteptr, openf fn(L &C.lua_State), glb int)
fn C.luaL_setfuncs(L &C.lua_State, l &C.luaL_Reg, nup int)
fn C.luaL_setmetatable(L &C.lua_State, tname byteptr)
fn C.luaL_testudata(L &C.lua_State, arg int, tname byteptr) voidptr
fn C.luaL_tolstring(L &C.lua_State, idx int, len &size_t) byteptr
fn C.luaL_traceback(L &C.lua_State, L1 &C.lua_State, msg byteptr, level int)
fn C.luaL_typename(L &C.lua_State, index int) byteptr
fn C.luaL_unref(L &C.lua_State, t, ref int)
fn C.luaL_where(L &C.lua_State, lvl int)

//lualib.h
fn C.luaopen_base(L &C.lua_State) int
fn C.luaopen_package(L &C.lua_State) int
fn C.luaopen_coroutine(L &C.lua_State) int
fn C.luaopen_string(L &C.lua_State) int
fn C.luaopen_utf8(L &C.lua_State) int
fn C.luaopen_table(L &C.lua_State) int
fn C.luaopen_math(L &C.lua_State) int
fn C.luaopen_bit32(L &C.lua_State) int
fn C.luaopen_io(L &C.lua_State) int
fn C.luaopen_os(L &C.lua_State) int
fn C.luaopen_debug(L &C.lua_State) int
