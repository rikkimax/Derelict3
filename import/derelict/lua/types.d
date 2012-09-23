module derelict.lua.types;

//lua.h
const string LUA_VERSION_MAJOR ="5";
const string LUA_VERSION_MINOR ="2";
const int LUA_VERSION_NUM = 502;
const string LUA_VERSION_RELEASE = "1";

const string LUA_VERSION = "Lua " ~ LUA_VERSION_MAJOR ~ "." ~ LUA_VERSION_MINOR;
const string LUA_RELEASE = LUA_VERSION ~ "." ~ LUA_VERSION_RELEASE;
const string LUA_COPYRIGHT = LUA_RELEASE ~ "  Copyright (C) 1994-2012 Lua.org, PUC-Rio";
const string LUA_AUTHORS = "R. Ierusalimschy, L. H. de Figueiredo, W. Celes";

const string LUA_SIGNATURE = "\033Lua";
const int LUA_MULTRET = -1;

const int LUA_REGISTRYINDEX = LUAI_FIRSTPSEUDOIDX;

int lua_upvalueindex(int i) {
	return LUA_REGISTRYINDEX - i;
}

const int LUA_OK = 0;
const int LUA_YIELD = 1;
const int LUA_ERRRUN = 2;
const int LUA_ERRSYNTAX = 3;
const int LUA_ERRMEM = 4;
const int LUA_ERRGCMM = 5;
const int LUA_ERRERR = 6;

struct lua_State;

alias int function(lua_State* L) lua_CFunction;
alias const(char)* function(lua_State* L, void* ud, size_t* sz) lua_Reader;
alias int function(lua_State* L, const(void)* p, size_t sz, void* ud) lua_Writer;
alias void* function(void* ud, void* ptr, size_t osize, size_t nsize) lua_Alloc;
	
const int LUA_TNONE = -1;
const int LUA_TNIL = 0;
const int LUA_TBOOLEAN = 1;
const int LUA_TLIGHTUSERDATA = 2;
const int LUA_TNUMBER = 3;
const int LUA_TSTRING = 4;
const int LUA_TTABLE = 5;
const int LUA_TFUNCTION = 6;
const int LUA_TUSERDATA = 7;
const int LUA_TTHREAD = 8;
const int LUA_NUMTAGS = 9;

const int LUA_MINSTACK = 20;

const int LUA_RIDX_MAINTHREAD = 1;
const int LUA_RIDX_GLOBALS = 2;
const int LUA_RIDX_LAST = LUA_RIDX_GLOBALS;

alias double lua_Number;
alias ptrdiff_t lua_Integer;
alias uint lua_Unsigned;

const int LUA_OPADD = 0;
const int LUA_OPSUB = 1;
const int LUA_OPMUL = 2;
const int LUA_OPDIV = 3;
const int LUA_OPMOD = 4;
const int LUA_OPPOW = 5;
const int LUA_OPUNM = 6;

const int LUA_OPWQ = 0;
const int LUA_OPLT = 1;
const int LUA_OPLE = 2;

const int LUA_GCSTOP = 0;
const int LUA_GCRESTART = 1;
const int LUA_GCCOLLECT = 2;
const int LUA_GCCOUNT = 3;
const int LUA_GCCOUNTB = 4;
const int LUA_GCSTEP = 5;
const int LUA_GCSETPAUSE = 6;
const int LUA_GCSETSTEPMUL = 7;
const int LUA_GCSETMAJORINC = 8;
const int LUA_GCISRUNNING = 9;
const int LUA_GCGEN = 10;
const int LUA_GCINC = 11;

const int LUA_HOOKCALL = 0;
const int LUA_HOOKRET = 1;
const int LUA_HOOKLINE = 2;
const int LUA_HOOKCOUNT = 3;
const int LUA_HOOKTAILCALL = 4;

const int LUA_MASKCALL = 1 << LUA_HOOKCALL;
const int LUA_MASKRET = 1 << LUA_HOOKRET;
const int LUA_MASKLINE = 1 << LUA_HOOKLINE;
const int LUA_MASKCOUNT = 1 << LUA_HOOKCOUNT;

struct lua_Debug;

alias void function(lua_State *L, lua_Debug *ar) lua_Hook;
//lauxlib.h
struct luaL_Reg {
	const char *name;
	lua_CFunction func;
}

const int LUA_NOREF = -2;
const int LUA_REFNIL = -1;

struct luaL_Buffer {
	char* b;
	size_t size;
	size_t n;
	lua_State* L;
	char initb[];
}
struct luaL_Stream;
//lualib.h
const string LUA_COLIBNAME = "coroutine";
const string LUA_TABLIBNAME = "table";
const string LUA_IOLIBNAME = "io";
const string LUA_OSLIBNAME = "os";
const string LUA_STRLIBNAME = "string";
const string LUA_BITLIBNAME = "bit32";
const string LUA_MATHLIBNAME = "math";
const string LUA_DBLIBNAME = "debug";
const string LUA_LOADLIBNAME = "package";
//luaconf.h
alias int LUA_INT32;
alias size_t LUAI_UMEM;
alias ptrdiff_t LUAI_MEM;
alias double LUA_NUMBER;
alias double LUAI_UACNUMBER;
alias ptrdiff_t LUA_INTEGER;
alias uint LUA_UNSIGNED;

const string LUA_NUMBER_SCAN = "%lf";
const string LUA_NUMBER_FMT = "%.14g";
const int LUAI_MAXSTACK = 1000000;
const int LUAI_FIRSTPSEUDOIDX = -LUAI_MAXSTACK - 1000;
//c stuff
struct va_list;