lui x2, 0x00104

lui x0, 0x00000
lui x31, 0xFFFFF
lui x0, 0xFFF00
lui x31, 0x000FF

p.sw x0, 1(x2!)
p.sw x31, 1(x2!)
p.sw x0, 1(x2!)
p.sw x31, 1(x2!)

lui x0, 0xF0F0F
lui x31, 0x0F0F0
lui x6, 0x33333

p.sw x0, 1(x2!)
p.sw x31, 1(x2!)
p.sw x6, 1(x2!)

lui x12, 0xCCCCC
lui x10, 0x55555
lui x5, 0xAAAAA

p.sw x12, 1(x2!)
p.sw x10, 1(x2!)
p.sw x5, 1(x2!)


