CC=gcc
IFLAG=-I./kernel/header
CFLAG=-c -Wall
FLAG=-g
RTX_SOURCE=api.c CCI.c init_table.c k_rtx.c msg.c pcb.c queue.c user_process.c main.c
RTX_OBJ=api.o CCI.o init_table.o k_rtx.o msg.o pcb.o queue.o user_process.o trace_buffer.o main.o
KB_SOURCE=kb.c
KB_OBJ=kb.o
CRT_SOURCE=crt.c
CRT_OBJ=crt.o

all: squishi KB CRT clean

squishi: $(RTX_OBJ)
	$(CC) -o squishi $(RTX_OBJ)
api.o:
	$(CC) $(FLAG) $(IFLAG) -c kernel/source/api.c
CCI.o:
	$(CC) $(FLAG) $(IFLAG) -c kernel/source/CCI.c
init_table.o:
	$(CC) $(FLAG) $(IFLAG) -c kernel/source/init_table.c
k_rtx.o:
	$(CC) $(FLAG) $(IFLAG) -c kernel/source/k_rtx.c
msg.o:
	$(CC) $(FLAG) $(IFLAG) -c kernel/source/msg.c
pcb.o:
	$(CC) $(FLAG) $(IFLAG) -c kernel/source/pcb.c
queue.o:
	$(CC) $(FLAG) $(IFLAG) -c kernel/source/queue.c
user_process.o:
	$(CC) $(FLAG) $(IFLAG) -c kernel/source/user_process.c
trace_buffer.o:
	$(CC) $(FLAG) $(IFLAG) -c kernel/source/trace_buffer.c
main.o:
	$(CC) $(FLAG) $(IFLAG) -c kernel/source/main.c

KB: $(KB_OBJ)
	$(CC) -o KB $(KB_OBJ)
kb.o:
	$(CC) $(FLAG) $(IFLAG) -c kb/kb.c

CRT: $(CRT_OBJ)
	$(CC) -o CRT $(CRT_OBJ)
crt.o:
	$(CC) $(FLAG) $(IFLAG) -c crt/crt.c

clean:
	rm -f $(RTX_OBJ) $(KB_OBJ) $(CRT_OBJ) *_map;
