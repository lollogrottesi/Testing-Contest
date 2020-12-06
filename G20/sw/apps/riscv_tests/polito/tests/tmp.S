xor x1,x1,x1
addi x1,x1,-1

csrrs x2,instret,x0
sw x2, 0(x31)
csrrs x2,instreth,x0
sw x2, 0(x31)
csrrs x2,cycle,x0
sw x2, 0(x31)
csrrs x2,cycleh,x0
sw x2, 0(x31)
csrrs x2,time,x0
sw x2, 0(x31)
csrrs x2,timeh,x0
sw x2, 0(x31)

csrrs x2,csr,x0
sw x2, 0(x31)

csrw csr,x1
csrrs x2,csr,x0
sw x2, 0(x31)


csrrsi x0,csr,1
csrrs x2,csr,x0
sw x2, 0(x31)
csrrsi x0,csr,2
csrrs x2,csr,x0
sw x2, 0(x31)
csrrsi x0,csr,3
csrrs x2,csr,x0
sw x2, 0(x31)
csrrsi x0,csr,4
csrrs x2,csr,x0
sw x2, 0(x31)
csrrsi x0,csr,5
csrrs x2,csr,x0
sw x2, 0(x31)
csrrsi x0,csr,6
csrrs x2,csr,x0
sw x2, 0(x31)
csrrsi x0,csr,7
csrrs x2,csr,x0
sw x2, 0(x31)
csrrsi x0,csr,8
csrrs x2,csr,x0
sw x2, 0(x31)
csrrsi x0,csr,9
csrrs x2,csr,x0
sw x2, 0(x31)
csrrsi x0,csr,10
csrrs x2,csr,x0
sw x2, 0(x31)
csrrsi x0,csr,11
csrrs x2,csr,x0
sw x2, 0(x31)
csrrsi x0,csr,12
csrrs x2,csr,x0
sw x2, 0(x31)
csrrsi x0,csr,13
csrrs x2,csr,x0
sw x2, 0(x31)
csrrsi x0,csr,14
csrrs x2,csr,x0
sw x2, 0(x31)
csrrsi x0,csr,15
csrrs x2,csr,x0
sw x2, 0(x31)
csrrsi x0,csr,16
csrrs x2,csr,x0
sw x2, 0(x31)
csrrsi x0,csr,17
csrrs x2,csr,x0
sw x2, 0(x31)
csrrsi x0,csr,18
csrrs x2,csr,x0
sw x2, 0(x31)
csrrsi x0,csr,19
csrrs x2,csr,x0
sw x2, 0(x31)
csrrsi x0,csr,20
csrrs x2,csr,x0
sw x2, 0(x31)
csrrsi x0,csr,21
csrrs x2,csr,x0
sw x2, 0(x31)
csrrsi x0,csr,22
csrrs x2,csr,x0
sw x2, 0(x31)
csrrsi x0,csr,23
csrrs x2,csr,x0
sw x2, 0(x31)
csrrsi x0,csr,24
csrrs x2,csr,x0
sw x2, 0(x31)
csrrsi x0,csr,25
csrrs x2,csr,x0
sw x2, 0(x31)
csrrsi x0,csr,26
csrrs x2,csr,x0
sw x2, 0(x31)
csrrsi x0,csr,27
csrrs x2,csr,x0
sw x2, 0(x31)
csrrsi x0,csr,28
csrrs x2,csr,x0
sw x2, 0(x31)
csrrsi x0,csr,29
csrrs x2,csr,x0
sw x2, 0(x31)
csrrsi x0,csr,30
csrrs x2,csr,x0
sw x2, 0(x31)
csrrsi x0,csr,31
csrrs x2,csr,x0
sw x2, 0(x31)


csrrci x0,csr,1
csrrs x2,csr,x0
sw x2, 0(x31)
csrrci x0,csr,2
csrrs x2,csr,x0
sw x2, 0(x31)
csrrci x0,csr,3
csrrs x2,csr,x0
sw x2, 0(x31)
csrrci x0,csr,4
csrrs x2,csr,x0
sw x2, 0(x31)
csrrci x0,csr,5
csrrs x2,csr,x0
sw x2, 0(x31)
csrrci x0,csr,6
csrrs x2,csr,x0
sw x2, 0(x31)
csrrci x0,csr,7
csrrs x2,csr,x0
sw x2, 0(x31)
csrrci x0,csr,8
csrrs x2,csr,x0
sw x2, 0(x31)
csrrci x0,csr,9
csrrs x2,csr,x0
sw x2, 0(x31)
csrrci x0,csr,10
csrrs x2,csr,x0
sw x2, 0(x31)
csrrci x0,csr,11
csrrs x2,csr,x0
sw x2, 0(x31)
csrrci x0,csr,12
csrrs x2,csr,x0
sw x2, 0(x31)
csrrci x0,csr,13
csrrs x2,csr,x0
sw x2, 0(x31)
csrrci x0,csr,14
csrrs x2,csr,x0
sw x2, 0(x31)
csrrci x0,csr,15
csrrs x2,csr,x0
sw x2, 0(x31)
csrrci x0,csr,16
csrrs x2,csr,x0
sw x2, 0(x31)
csrrci x0,csr,17
csrrs x2,csr,x0
sw x2, 0(x31)
csrrci x0,csr,18
csrrs x2,csr,x0
sw x2, 0(x31)
csrrci x0,csr,19
csrrs x2,csr,x0
sw x2, 0(x31)
csrrci x0,csr,20
csrrs x2,csr,x0
sw x2, 0(x31)
csrrci x0,csr,21
csrrs x2,csr,x0
sw x2, 0(x31)
csrrci x0,csr,22
csrrs x2,csr,x0
sw x2, 0(x31)
csrrci x0,csr,23
csrrs x2,csr,x0
sw x2, 0(x31)
csrrci x0,csr,24
csrrs x2,csr,x0
sw x2, 0(x31)
csrrci x0,csr,25
csrrs x2,csr,x0
sw x2, 0(x31)
csrrci x0,csr,26
csrrs x2,csr,x0
sw x2, 0(x31)
csrrci x0,csr,27
csrrs x2,csr,x0
sw x2, 0(x31)
csrrci x0,csr,28
csrrs x2,csr,x0
sw x2, 0(x31)
csrrci x0,csr,29
csrrs x2,csr,x0
sw x2, 0(x31)
csrrci x0,csr,30
csrrs x2,csr,x0
sw x2, 0(x31)
csrrci x0,csr,31
csrrs x2,csr,x0
sw x2, 0(x31)


csrrw x0,csr,x0
csrrs x2,csr,x0
sw x2, 0(x31)


