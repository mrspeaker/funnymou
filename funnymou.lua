--------------- General helpers ----------------

function dump(o)
   if type(o) == 'table' then
      local s = '{ '
      for k,v in pairs(o) do
         if type(k) ~= 'number' then k = '"'..k..'"' end
         s = s .. '['..k..'] = ' .. dump(v) .. ','
      end
      return s .. '} '
   else
      return tostring(o)
   end
end

function flatten(list)
  if type(list) ~= "table" then return { list } end
  local flat = {}
  for _, el in ipairs(list) do
    for _, val in ipairs(flatten(el)) do
      flat[#flat + 1] = val
    end
  end
  return flat
end

function print_pairs(o)
   for tag, device in pairs(o) do print(tag) end
end
function yn(v)
   if v == true then
      return "Y"
   end
   return "N"
end


local evs = {
   game_start = {},
   game_over = {},
   screen_change = {},
   died = {}
}
function add_ev(name, func)
   local ev = evs[name]
   ev[#ev+1]=func
end
function fire_ev(name, ...)
   for _, f in ipairs(evs[name]) do
      f(...)
   end
end

------------------- MAME machine -----------------------

local debug_mame = true

cpu = manager.machine.devices[":maincpu"]
cpudebug = cpu.debug
mem = cpu.spaces["program"]
io = cpu.spaces["io"]
gfx1 = manager.machine.memory.regions[":gfx1"]

if debug_mame == true then
   print("=== funny mouse trainer dbg ===")
   print_pairs(manager.machine.devices)
   print("gfx size: "..dump(gfx1.size))
   print("io:"..dump(io.map.entries))
   --print_pairs(cpu.state) -- prints all cpu flags, regs

   -- cpudebug:wpset(mem, "rw", 0xc080, 1, "1","{ printf \"Read @ %08X\n\",wpaddr ; g }")
   -- cpudebug:wpset(mem, "rw", 0x10d4bc, 1, 'printf "Read @ %08X\n",wpaddr ; g')
   print("=== end dbg ===")
end

------------------- MAME Helpers ---------------------

function poke(addr, bytes)
   if type(bytes)=="number" then bytes = {bytes} end
   bytes = flatten(bytes) -- you should be scared by now...
   for i = 1, #bytes do
      mem:write_u8(addr + (i - 1), bytes[i])
   end
end

function poke_rom(addr, bytes)
   if type(bytes) == "number" then bytes = {bytes} end
   bytes = flatten(bytes)
   for i = 1, #bytes do
      mem:write_direct_u8(addr + (i - 1), bytes[i])
   end
end

function peek(addr)
   return mem:read_u8(addr)
end

function peek_rom(addr)
   return mem:read_direct_u8(addr)
end

function poke_gfx(color, addr, byte)
   if color & 1 == 1 then
      gfx1:write_u8(addr, byte)
   end

   if color & 2 == 2 then
      gfx1:write_u8(addr + 0x1000, byte)
   end
end

function get_pc()
   return cpu.state["PC"].value
end

function set_pc(addr)
   cpu.state["PC"].value = addr
end
function set_sp(addr)
   cpu.state["SP"].value = addr
end

-- return an array with hi/lo bytes of a 16bit value
function x(v)
   return { v & 0xff, v >> 8 }
end

function is_on_game_screen()
   return peek(0x93a9) == 0xFE -- platform tile in top left
end


----------------- Scratch pad -------------------

-- poke_rom(0x069D, 0x20); -- autojump

-- try colorizing player
--poke_rom(0x8a2,8)
--poke_rom(0x1811,8)
--nope. poke_rom(0x149b,{0x3d,col,0x32,0x42,0x81,0x32,0x46,0x81,0xc9}


------------------ z/80 opcodes -----------------

NOP = 0x00
JR = 0x18
JR_NZ = 0x20
LD_HL = 0x21
INC_HL = 0x23
JR_Z = 0x28
LD_MEM_A = 0x32
LD_HLP = 0x36
SCF = 0x37
JR_C = 0x38
LD_A_MEM = 0x3a
INC_A = 0x3c
DEC_A = 0x3d
LD_A = 0x3e
CCF = 0x3f
LD_B_A = 0x47
LD_HL_A = 0x77
LD_A_B = 0x78
LD_A_L = 0x7d
LD_A_HL = 0x7e
AND_A = 0xA7
RET_NZ = 0xC0
JP = 0xC3
ADD_A = 0xC6
RET_Z = 0xC8
RET = 0xC9
CALL = 0xCD
SUB = 0xD6
RET_C = 0xD8
XOR_A = 0xAF
AND = 0xE6
OR = 0xF6
CP = 0xFE

---------------------------

is_playing = 0x830

poke_rom(0x0008, { 0, 0, 0 }) -- skip RAM check

--[[
tap_cat1 = mem:install_write_tap(0x8500, 0x8500, "writes", function(offset, data)
   if data == 1 and peek(0x8030) == 1 then
      return 0
   end
end)
--]]

tap_cat2 = mem:install_write_tap(0x8504, 0x8504, "writes", function(offset, data)
   if data == 1 and peek(0x8030) == 1 then
      return 0
   end
end)

tap_cat3 = mem:install_write_tap(0x8506, 0x8506, "writes", function(offset, data)
   if data == 1 and peek(0x8030) == 1 then
      return 0
   end
end)

tap_snake1 = mem:install_write_tap(0x8600, 0x8600, "writes", function(offset, data)
   if data == 1 and peek(0x8030) == 1 then
      return 0
   end
end)


tap_snake2 = mem:install_write_tap(0x8602, 0x8602, "writes", function(offset, data)
   if data == 1 and peek(0x8030) == 1 then
      return 0
   end
end)
