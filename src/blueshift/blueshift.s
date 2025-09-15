.equ NUM_ACCOUNTS, 0x00
.equ DATA_LEN, 0x08
.equ DATA, 0x10

.globl entrypoint
entrypoint:
  ldxdw r0, [r1 + NUM_ACCOUNTS]   
  jne r0, 0, fail                 
  ldxdw r2, [r1 + DATA_LEN]       
  add64 r1, DATA                
  call sol_log_                   
  mov r0, 0                       
  exit

fail:
  exit                            