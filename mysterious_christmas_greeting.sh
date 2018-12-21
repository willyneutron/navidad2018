#!/bin/bash

#          /$$$$$$$$ /$$$$$$$$ /$$       /$$$$$$ /$$$$$$$$                     
#         | $$_____/| $$_____/| $$      |_  $$_/|_____ $$                      
#         | $$      | $$      | $$        | $$       /$$/                      
#         | $$$$$   | $$$$$   | $$        | $$      /$$/                       
#         | $$__/   | $$__/   | $$        | $$     /$$/                        
#         | $$      | $$      | $$        | $$    /$$/                         
#         | $$      | $$$$$$$$| $$$$$$$$ /$$$$$$ /$$$$$$$$                     
#         |__/      |________/|________/|______/|________/                  

#  /$$   /$$  /$$$$$$  /$$    /$$ /$$$$$$ /$$$$$$$   /$$$$$$  /$$$$$$$ 
# | $$$ | $$ /$$__  $$| $$   | $$|_  $$_/| $$__  $$ /$$__  $$| $$__  $$
# | $$$$| $$| $$  \ $$| $$   | $$  | $$  | $$  \ $$| $$  \ $$| $$  \ $$
# | $$ $$ $$| $$$$$$$$|  $$ / $$/  | $$  | $$  | $$| $$$$$$$$| $$  | $$
# | $$  $$$$| $$__  $$ \  $$ $$/   | $$  | $$  | $$| $$__  $$| $$  | $$
# | $$\  $$$| $$  | $$  \  $$$/    | $$  | $$  | $$| $$  | $$| $$  | $$
# | $$ \  $$| $$  | $$   \  $/    /$$$$$$| $$$$$$$/| $$  | $$| $$$$$$$/
# |__/  \__/|__/  |__/    \_/    |______/|_______/ |__/  |__/|_______/ 

script="\
IyEvYmluL2Jhc2gKCiMgWUVBSCEgVGhpcyB3aWxsIGJlIGJhc2U2NCBlbmNvZGVkCgojIENsZWFy\
IHRoZSBzY3JlZW4gZmlyc3QKY2xlYXIKCmZvciBpIGluIHsxLi4xMH07IGRvIHByaW50ZiAiXG4i\
OyBkb25lCgojIEFTQ0lJIGFydCBieSBodHRwOi8vcGF0b3Jqay5jb20vc29mdHdhcmUvdGFhZy8j\
cD1kaXNwbGF5JmY9RWxpdGUmdD1GZWxpeiUyMG5hdmlkYWQhISAgICAgICAgICAgICAKZWNobyAi\
ICAgIMK34paE4paE4paE4paE4paE4paEIC7iloTiloTilowgIOKWqiAgwrfiloTiloTiloTiloTi\
gKIgICAgIOKWkCDiloQgIOKWhOKWhOKWhMK3ICDilowg4paQwrfilqogIMK34paE4paE4paE4paE\
ICAg4paE4paE4paEwrcgwrfiloTiloTiloTiloQgIOKWhOKWhCDiloTiloQgIgplY2hvICIgICAg\
4paQ4paE4paEwrfiloDiloQu4paAwrfilojilojigKIgIOKWiOKWiCDilqriloDCty7ilojilowg\
ICAg4oCi4paI4paM4paQ4paI4paQ4paIIOKWgOKWiCDilqrilojCt+KWiOKWjOKWiOKWiCDiloji\
lojilqog4paI4paIIOKWkOKWiCDiloDilogg4paI4paI4paqIOKWiOKWiCDilojilojiloziloji\
lojilowiCmVjaG8gIiAgICDilojilojilqog4paQ4paA4paA4paq4paE4paI4paI4paqICDilpDi\
lojCt+KWhOKWiOKWgOKWgOKWgOKAoiAgICDilpDilojilpDilpDiloziloTilojiloDiloDilogg\
4paQ4paI4paQ4paI4oCi4paQ4paIwrfilpDilojCtyDilpDilojiloziloTilojiloDiloDilogg\
4paQ4paIwrcg4paQ4paI4paM4paQ4paIwrfilpDilojCtyIKZWNobyAiICAgIOKWiOKWiOKWjC7i\
lpDilojiloTiloTilozilpDilojilozilpDilozilpDilojilozilojilozilqriloTilojiloAg\
ICAg4paI4paI4paQ4paI4paM4paQ4paIIOKWquKWkOKWjCDilojilojilogg4paQ4paI4paM4paI\
4paILiDilojilogg4paQ4paIIOKWquKWkOKWjOKWiOKWiC4g4paI4paIIC7iloAgLuKWgCAiCmVj\
aG8gIiAgICDiloDiloDiloAgIOKWgOKWgOKWgCAu4paA4paA4paAIOKWgOKWgOKWgMK34paA4paA\
4paAIOKAoiAgICDiloDiloAg4paI4paqIOKWgCAg4paAIC4g4paAICDiloDiloDiloDiloDiloDi\
loDiloDiloDigKIgIOKWgCAg4paAIOKWgOKWgOKWgOKWgOKWgOKAoiAg4paAICDiloAgIgplY2hv\
ICIgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFkgUFJPU1BFUk8gQcORTyAyMDE5ISAgICAg\
ICAgICAgICAgICAgICAgICAgICAgICIKCiMgVGhpcyBpcyBkZXNpZ25lZCB0byB3b3JrIGluIGEg\
c3RhbmRhcmQgODB4MjQgY29uc29sZQpMSU5FUz0yNApDT0xVTU5TPTgwCgojIFNub3cgc2NyaXB0\
IHRha2VuIGZyb206CiMgaHR0cDovL2NsaW1hZ2ljLm9yZy9jb29sc3R1ZmYvbGV0LWl0LXNub3cu\
aHRtbAojIEJ1dCB3aXRob3V0IHRoZSBmaXJzdCBjbGVhciwgc28gdGhlIHNub3cgd2lsbCBzbG93\
bHkgZXJhc2UgdGhlIG1lc3NhZ2Ugd3JpdHRlbgojIGJlZm9yZS4Kd2hpbGUgOjtkbyBlY2hvICRM\
SU5FUyAkQ09MVU1OUyAkKCgkUkFORE9NJSRDT0xVTU5TKSkgJChwcmludGYgIlx1Mjc0NFxuIik7\
c2xlZXAgMC4xO2RvbmV8YXdrICd7YVskM109MDtmb3IoeCBpbiBhKSB7bz1hW3hdO2FbeF09YVt4\
XSsxO3ByaW50ZiAiXDAzM1slczslc0ggIixvLHg7cHJpbnRmICJcMDMzWyVzOyVzSCVzIFwwMzNb\
MDswSCIsYVt4XSx4LCQ0O319Jw=="

run=$(printf "\x65\x63\x68\x6F\x20\x24\x73\x63\x72\x69\x70\x74\x20\x7C\x20\
\x65\\x76\x61\x6C\x20\x22\x62\x61\x73\x65\x36\x34\x20\x2D\x64\x22\x20\x7C\
\x20\x2F\x62\x69\x6E\x2F\x62\x61\x73\x68")
eval $run

#             .--._.--.--.__.--.--.__.--.--.__.--.--._.--.
#           _(_      _Y_      _Y_      _Y_      _Y_      _)_
#          [___]    [___]    [___]    [___]    [___]    [___]
#          /:' \    /:' \    /:' \    /:' \    /:' \    /:' \
#         |::   |  |::   |  |::   |  |::   |  |::   |  |::   |
#         \::.  /  \::.  /  \::.  /  \::.  /  \::.  /  \::.  /
#     jgs  \::./    \::./    \::./    \::./    \::./    \::./
#           '='      '='      '='      '='      '='      '='

# These ASCII pics can be found at:
# https://asciiart.website/index.php?art=holiday/christmas/other
# 
# Text by:
# http://patorjk.com/software/taag/