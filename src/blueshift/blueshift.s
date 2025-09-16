.equ NUM_ACCOUNTS, 0x00  
.equ DATA_LEN, 0x08     
.equ DATA, 0x10          
.globl entrypoint

entrypoint:
  ldxdw r2, [r1 + 0] # Get number of account 
  jne r2, 0, error # error if not 0 account , meet the first requirement 
  //Set r2 to the length of the instruction data, and r1 to the offset of the instruction data,
  ldxdw r2, [r1 + DATA_LEN]
  add64  r1, DATA 
  //ldxdw r1, DATA
  call sol_log_
  exit
  
error:
  mov r0, 1
  exit