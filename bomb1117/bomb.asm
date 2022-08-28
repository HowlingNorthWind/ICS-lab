
bomb：     文件格式 elf64-x86-64


Disassembly of section .init:

0000000000000f18 <_init>:
 f18:	48 83 ec 08          	sub    $0x8,%rsp
 f1c:	48 8b 05 c5 30 20 00 	mov    0x2030c5(%rip),%rax        # 203fe8 <_GLOBAL_OFFSET_TABLE_+0x108>
 f23:	48 85 c0             	test   %rax,%rax
 f26:	74 02                	je     f2a <_init+0x12>
 f28:	ff d0                	callq  *%rax
 f2a:	48 83 c4 08          	add    $0x8,%rsp
 f2e:	c3                   	retq   

Disassembly of section .plt:

0000000000000f30 <getenv@plt-0x10>:
     f30:	ff 35 b2 2f 20 00    	pushq  0x202fb2(%rip)        # 203ee8 <_GLOBAL_OFFSET_TABLE_+0x8>
     f36:	ff 25 b4 2f 20 00    	jmpq   *0x202fb4(%rip)        # 203ef0 <_GLOBAL_OFFSET_TABLE_+0x10>
     f3c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000f40 <getenv@plt>:
     f40:	ff 25 b2 2f 20 00    	jmpq   *0x202fb2(%rip)        # 203ef8 <_GLOBAL_OFFSET_TABLE_+0x18>
     f46:	68 00 00 00 00       	pushq  $0x0
     f4b:	e9 e0 ff ff ff       	jmpq   f30 <_init+0x18>

0000000000000f50 <strcasecmp@plt>:
     f50:	ff 25 aa 2f 20 00    	jmpq   *0x202faa(%rip)        # 203f00 <_GLOBAL_OFFSET_TABLE_+0x20>
     f56:	68 01 00 00 00       	pushq  $0x1
     f5b:	e9 d0 ff ff ff       	jmpq   f30 <_init+0x18>

0000000000000f60 <__errno_location@plt>:
     f60:	ff 25 a2 2f 20 00    	jmpq   *0x202fa2(%rip)        # 203f08 <_GLOBAL_OFFSET_TABLE_+0x28>
     f66:	68 02 00 00 00       	pushq  $0x2
     f6b:	e9 c0 ff ff ff       	jmpq   f30 <_init+0x18>

0000000000000f70 <strcpy@plt>:
     f70:	ff 25 9a 2f 20 00    	jmpq   *0x202f9a(%rip)        # 203f10 <_GLOBAL_OFFSET_TABLE_+0x30>
     f76:	68 03 00 00 00       	pushq  $0x3
     f7b:	e9 b0 ff ff ff       	jmpq   f30 <_init+0x18>

0000000000000f80 <puts@plt>:
     f80:	ff 25 92 2f 20 00    	jmpq   *0x202f92(%rip)        # 203f18 <_GLOBAL_OFFSET_TABLE_+0x38>
     f86:	68 04 00 00 00       	pushq  $0x4
     f8b:	e9 a0 ff ff ff       	jmpq   f30 <_init+0x18>

0000000000000f90 <write@plt>:
     f90:	ff 25 8a 2f 20 00    	jmpq   *0x202f8a(%rip)        # 203f20 <_GLOBAL_OFFSET_TABLE_+0x40>
     f96:	68 05 00 00 00       	pushq  $0x5
     f9b:	e9 90 ff ff ff       	jmpq   f30 <_init+0x18>

0000000000000fa0 <__stack_chk_fail@plt>:
     fa0:	ff 25 82 2f 20 00    	jmpq   *0x202f82(%rip)        # 203f28 <_GLOBAL_OFFSET_TABLE_+0x48>
     fa6:	68 06 00 00 00       	pushq  $0x6
     fab:	e9 80 ff ff ff       	jmpq   f30 <_init+0x18>

0000000000000fb0 <alarm@plt>:
     fb0:	ff 25 7a 2f 20 00    	jmpq   *0x202f7a(%rip)        # 203f30 <_GLOBAL_OFFSET_TABLE_+0x50>
     fb6:	68 07 00 00 00       	pushq  $0x7
     fbb:	e9 70 ff ff ff       	jmpq   f30 <_init+0x18>

0000000000000fc0 <close@plt>:
     fc0:	ff 25 72 2f 20 00    	jmpq   *0x202f72(%rip)        # 203f38 <_GLOBAL_OFFSET_TABLE_+0x58>
     fc6:	68 08 00 00 00       	pushq  $0x8
     fcb:	e9 60 ff ff ff       	jmpq   f30 <_init+0x18>

0000000000000fd0 <read@plt>:
     fd0:	ff 25 6a 2f 20 00    	jmpq   *0x202f6a(%rip)        # 203f40 <_GLOBAL_OFFSET_TABLE_+0x60>
     fd6:	68 09 00 00 00       	pushq  $0x9
     fdb:	e9 50 ff ff ff       	jmpq   f30 <_init+0x18>

0000000000000fe0 <fgets@plt>:
     fe0:	ff 25 62 2f 20 00    	jmpq   *0x202f62(%rip)        # 203f48 <_GLOBAL_OFFSET_TABLE_+0x68>
     fe6:	68 0a 00 00 00       	pushq  $0xa
     feb:	e9 40 ff ff ff       	jmpq   f30 <_init+0x18>

0000000000000ff0 <signal@plt>:
     ff0:	ff 25 5a 2f 20 00    	jmpq   *0x202f5a(%rip)        # 203f50 <_GLOBAL_OFFSET_TABLE_+0x70>
     ff6:	68 0b 00 00 00       	pushq  $0xb
     ffb:	e9 30 ff ff ff       	jmpq   f30 <_init+0x18>

0000000000001000 <gethostbyname@plt>:
    1000:	ff 25 52 2f 20 00    	jmpq   *0x202f52(%rip)        # 203f58 <_GLOBAL_OFFSET_TABLE_+0x78>
    1006:	68 0c 00 00 00       	pushq  $0xc
    100b:	e9 20 ff ff ff       	jmpq   f30 <_init+0x18>

0000000000001010 <__memmove_chk@plt>:
    1010:	ff 25 4a 2f 20 00    	jmpq   *0x202f4a(%rip)        # 203f60 <_GLOBAL_OFFSET_TABLE_+0x80>
    1016:	68 0d 00 00 00       	pushq  $0xd
    101b:	e9 10 ff ff ff       	jmpq   f30 <_init+0x18>

0000000000001020 <strtol@plt>:
    1020:	ff 25 42 2f 20 00    	jmpq   *0x202f42(%rip)        # 203f68 <_GLOBAL_OFFSET_TABLE_+0x88>
    1026:	68 0e 00 00 00       	pushq  $0xe
    102b:	e9 00 ff ff ff       	jmpq   f30 <_init+0x18>

0000000000001030 <memcpy@plt>:
    1030:	ff 25 3a 2f 20 00    	jmpq   *0x202f3a(%rip)        # 203f70 <_GLOBAL_OFFSET_TABLE_+0x90>
    1036:	68 0f 00 00 00       	pushq  $0xf
    103b:	e9 f0 fe ff ff       	jmpq   f30 <_init+0x18>

0000000000001040 <fflush@plt>:
    1040:	ff 25 32 2f 20 00    	jmpq   *0x202f32(%rip)        # 203f78 <_GLOBAL_OFFSET_TABLE_+0x98>
    1046:	68 10 00 00 00       	pushq  $0x10
    104b:	e9 e0 fe ff ff       	jmpq   f30 <_init+0x18>

0000000000001050 <__isoc99_sscanf@plt>:
    1050:	ff 25 2a 2f 20 00    	jmpq   *0x202f2a(%rip)        # 203f80 <_GLOBAL_OFFSET_TABLE_+0xa0>
    1056:	68 11 00 00 00       	pushq  $0x11
    105b:	e9 d0 fe ff ff       	jmpq   f30 <_init+0x18>

0000000000001060 <__printf_chk@plt>:
    1060:	ff 25 22 2f 20 00    	jmpq   *0x202f22(%rip)        # 203f88 <_GLOBAL_OFFSET_TABLE_+0xa8>
    1066:	68 12 00 00 00       	pushq  $0x12
    106b:	e9 c0 fe ff ff       	jmpq   f30 <_init+0x18>

0000000000001070 <fopen@plt>:
    1070:	ff 25 1a 2f 20 00    	jmpq   *0x202f1a(%rip)        # 203f90 <_GLOBAL_OFFSET_TABLE_+0xb0>
    1076:	68 13 00 00 00       	pushq  $0x13
    107b:	e9 b0 fe ff ff       	jmpq   f30 <_init+0x18>

0000000000001080 <gethostname@plt>:
    1080:	ff 25 12 2f 20 00    	jmpq   *0x202f12(%rip)        # 203f98 <_GLOBAL_OFFSET_TABLE_+0xb8>
    1086:	68 14 00 00 00       	pushq  $0x14
    108b:	e9 a0 fe ff ff       	jmpq   f30 <_init+0x18>

0000000000001090 <exit@plt>:
    1090:	ff 25 0a 2f 20 00    	jmpq   *0x202f0a(%rip)        # 203fa0 <_GLOBAL_OFFSET_TABLE_+0xc0>
    1096:	68 15 00 00 00       	pushq  $0x15
    109b:	e9 90 fe ff ff       	jmpq   f30 <_init+0x18>

00000000000010a0 <connect@plt>:
    10a0:	ff 25 02 2f 20 00    	jmpq   *0x202f02(%rip)        # 203fa8 <_GLOBAL_OFFSET_TABLE_+0xc8>
    10a6:	68 16 00 00 00       	pushq  $0x16
    10ab:	e9 80 fe ff ff       	jmpq   f30 <_init+0x18>

00000000000010b0 <__fprintf_chk@plt>:
    10b0:	ff 25 fa 2e 20 00    	jmpq   *0x202efa(%rip)        # 203fb0 <_GLOBAL_OFFSET_TABLE_+0xd0>
    10b6:	68 17 00 00 00       	pushq  $0x17
    10bb:	e9 70 fe ff ff       	jmpq   f30 <_init+0x18>

00000000000010c0 <sleep@plt>:
    10c0:	ff 25 f2 2e 20 00    	jmpq   *0x202ef2(%rip)        # 203fb8 <_GLOBAL_OFFSET_TABLE_+0xd8>
    10c6:	68 18 00 00 00       	pushq  $0x18
    10cb:	e9 60 fe ff ff       	jmpq   f30 <_init+0x18>

00000000000010d0 <__ctype_b_loc@plt>:
    10d0:	ff 25 ea 2e 20 00    	jmpq   *0x202eea(%rip)        # 203fc0 <_GLOBAL_OFFSET_TABLE_+0xe0>
    10d6:	68 19 00 00 00       	pushq  $0x19
    10db:	e9 50 fe ff ff       	jmpq   f30 <_init+0x18>

00000000000010e0 <__sprintf_chk@plt>:
    10e0:	ff 25 e2 2e 20 00    	jmpq   *0x202ee2(%rip)        # 203fc8 <_GLOBAL_OFFSET_TABLE_+0xe8>
    10e6:	68 1a 00 00 00       	pushq  $0x1a
    10eb:	e9 40 fe ff ff       	jmpq   f30 <_init+0x18>

00000000000010f0 <socket@plt>:
    10f0:	ff 25 da 2e 20 00    	jmpq   *0x202eda(%rip)        # 203fd0 <_GLOBAL_OFFSET_TABLE_+0xf0>
    10f6:	68 1b 00 00 00       	pushq  $0x1b
    10fb:	e9 30 fe ff ff       	jmpq   f30 <_init+0x18>

Disassembly of section .plt.got:

0000000000001100 <.plt.got>:
    1100:	ff 25 f2 2e 20 00    	jmpq   *0x202ef2(%rip)        # 203ff8 <_GLOBAL_OFFSET_TABLE_+0x118>
    1106:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000001110 <_start>:
    1110:	31 ed                	xor    %ebp,%ebp
    1112:	49 89 d1             	mov    %rdx,%r9
    1115:	5e                   	pop    %rsi
    1116:	48 89 e2             	mov    %rsp,%rdx
    1119:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    111d:	50                   	push   %rax
    111e:	54                   	push   %rsp
    111f:	4c 8d 05 6a 1a 00 00 	lea    0x1a6a(%rip),%r8        # 2b90 <__libc_csu_fini>
    1126:	48 8d 0d f3 19 00 00 	lea    0x19f3(%rip),%rcx        # 2b20 <__libc_csu_init>
    112d:	48 8d 3d e6 00 00 00 	lea    0xe6(%rip),%rdi        # 121a <main>
    1134:	ff 15 a6 2e 20 00    	callq  *0x202ea6(%rip)        # 203fe0 <_GLOBAL_OFFSET_TABLE_+0x100>
    113a:	f4                   	hlt    
    113b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001140 <deregister_tm_clones>:
    1140:	48 8d 3d b9 43 20 00 	lea    0x2043b9(%rip),%rdi        # 205500 <__TMC_END__>
    1147:	55                   	push   %rbp
    1148:	48 8d 05 b1 43 20 00 	lea    0x2043b1(%rip),%rax        # 205500 <__TMC_END__>
    114f:	48 39 f8             	cmp    %rdi,%rax
    1152:	48 89 e5             	mov    %rsp,%rbp
    1155:	74 19                	je     1170 <deregister_tm_clones+0x30>
    1157:	48 8b 05 7a 2e 20 00 	mov    0x202e7a(%rip),%rax        # 203fd8 <_GLOBAL_OFFSET_TABLE_+0xf8>
    115e:	48 85 c0             	test   %rax,%rax
    1161:	74 0d                	je     1170 <deregister_tm_clones+0x30>
    1163:	5d                   	pop    %rbp
    1164:	ff e0                	jmpq   *%rax
    1166:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    116d:	00 00 00 
    1170:	5d                   	pop    %rbp
    1171:	c3                   	retq   
    1172:	0f 1f 40 00          	nopl   0x0(%rax)
    1176:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    117d:	00 00 00 

0000000000001180 <register_tm_clones>:
    1180:	48 8d 3d 79 43 20 00 	lea    0x204379(%rip),%rdi        # 205500 <__TMC_END__>
    1187:	48 8d 35 72 43 20 00 	lea    0x204372(%rip),%rsi        # 205500 <__TMC_END__>
    118e:	55                   	push   %rbp
    118f:	48 29 fe             	sub    %rdi,%rsi
    1192:	48 89 e5             	mov    %rsp,%rbp
    1195:	48 c1 fe 03          	sar    $0x3,%rsi
    1199:	48 89 f0             	mov    %rsi,%rax
    119c:	48 c1 e8 3f          	shr    $0x3f,%rax
    11a0:	48 01 c6             	add    %rax,%rsi
    11a3:	48 d1 fe             	sar    %rsi
    11a6:	74 18                	je     11c0 <register_tm_clones+0x40>
    11a8:	48 8b 05 41 2e 20 00 	mov    0x202e41(%rip),%rax        # 203ff0 <_GLOBAL_OFFSET_TABLE_+0x110>
    11af:	48 85 c0             	test   %rax,%rax
    11b2:	74 0c                	je     11c0 <register_tm_clones+0x40>
    11b4:	5d                   	pop    %rbp
    11b5:	ff e0                	jmpq   *%rax
    11b7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    11be:	00 00 
    11c0:	5d                   	pop    %rbp
    11c1:	c3                   	retq   
    11c2:	0f 1f 40 00          	nopl   0x0(%rax)
    11c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    11cd:	00 00 00 

00000000000011d0 <__do_global_dtors_aux>:
    11d0:	80 3d 51 43 20 00 00 	cmpb   $0x0,0x204351(%rip)        # 205528 <completed.7697>
    11d7:	75 2f                	jne    1208 <__do_global_dtors_aux+0x38>
    11d9:	48 83 3d 17 2e 20 00 	cmpq   $0x0,0x202e17(%rip)        # 203ff8 <_GLOBAL_OFFSET_TABLE_+0x118>
    11e0:	00 
    11e1:	55                   	push   %rbp
    11e2:	48 89 e5             	mov    %rsp,%rbp
    11e5:	74 0c                	je     11f3 <__do_global_dtors_aux+0x23>
    11e7:	48 8b 3d 1a 2e 20 00 	mov    0x202e1a(%rip),%rdi        # 204008 <__dso_handle>
    11ee:	e8 0d ff ff ff       	callq  1100 <socket@plt+0x10>
    11f3:	e8 48 ff ff ff       	callq  1140 <deregister_tm_clones>
    11f8:	c6 05 29 43 20 00 01 	movb   $0x1,0x204329(%rip)        # 205528 <completed.7697>
    11ff:	5d                   	pop    %rbp
    1200:	c3                   	retq   
    1201:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1208:	f3 c3                	repz retq 
    120a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001210 <frame_dummy>:
    1210:	55                   	push   %rbp
    1211:	48 89 e5             	mov    %rsp,%rbp
    1214:	5d                   	pop    %rbp
    1215:	e9 66 ff ff ff       	jmpq   1180 <register_tm_clones>

000000000000121a <main>:
    121a:	53                   	push   %rbx
    121b:	83 ff 01             	cmp    $0x1,%edi
    121e:	0f 84 f8 00 00 00    	je     131c <main+0x102>
    1224:	48 89 f3             	mov    %rsi,%rbx
    1227:	83 ff 02             	cmp    $0x2,%edi
    122a:	0f 85 21 01 00 00    	jne    1351 <main+0x137>
    1230:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    1234:	48 8d 35 3d 1e 00 00 	lea    0x1e3d(%rip),%rsi        # 3078 <array.3421+0x318>
    123b:	e8 30 fe ff ff       	callq  1070 <fopen@plt>
    1240:	48 89 05 e9 42 20 00 	mov    %rax,0x2042e9(%rip)        # 205530 <infile>
    1247:	48 85 c0             	test   %rax,%rax
    124a:	0f 84 df 00 00 00    	je     132f <main+0x115>
    1250:	e8 38 06 00 00       	callq  188d <initialize_bomb>
    1255:	48 8d 3d cc 19 00 00 	lea    0x19cc(%rip),%rdi        # 2c28 <_IO_stdin_used+0x88>
    125c:	e8 1f fd ff ff       	callq  f80 <puts@plt>
    1261:	48 8d 3d 00 1a 00 00 	lea    0x1a00(%rip),%rdi        # 2c68 <_IO_stdin_used+0xc8>
    1268:	e8 13 fd ff ff       	callq  f80 <puts@plt>
    126d:	e8 4e 09 00 00       	callq  1bc0 <read_line>
    1272:	48 89 c7             	mov    %rax,%rdi
    1275:	e8 fa 00 00 00       	callq  1374 <phase_1>
    127a:	e8 88 0a 00 00       	callq  1d07 <phase_defused>
    127f:	48 8d 3d 12 1a 00 00 	lea    0x1a12(%rip),%rdi        # 2c98 <_IO_stdin_used+0xf8>
    1286:	e8 f5 fc ff ff       	callq  f80 <puts@plt>
    128b:	e8 30 09 00 00       	callq  1bc0 <read_line>
    1290:	48 89 c7             	mov    %rax,%rdi
    1293:	e8 fc 00 00 00       	callq  1394 <phase_2>
    1298:	e8 6a 0a 00 00       	callq  1d07 <phase_defused>
    129d:	48 8d 3d 37 19 00 00 	lea    0x1937(%rip),%rdi        # 2bdb <_IO_stdin_used+0x3b>
    12a4:	e8 d7 fc ff ff       	callq  f80 <puts@plt>
    12a9:	e8 12 09 00 00       	callq  1bc0 <read_line>
    12ae:	48 89 c7             	mov    %rax,%rdi
    12b1:	e8 57 01 00 00       	callq  140d <phase_3>
    12b6:	e8 4c 0a 00 00       	callq  1d07 <phase_defused>
    12bb:	48 8d 3d 37 19 00 00 	lea    0x1937(%rip),%rdi        # 2bf9 <_IO_stdin_used+0x59>
    12c2:	e8 b9 fc ff ff       	callq  f80 <puts@plt>
    12c7:	e8 f4 08 00 00       	callq  1bc0 <read_line>
    12cc:	48 89 c7             	mov    %rax,%rdi
    12cf:	e8 52 02 00 00       	callq  1526 <phase_4>
    12d4:	e8 2e 0a 00 00       	callq  1d07 <phase_defused>
    12d9:	48 8d 3d e8 19 00 00 	lea    0x19e8(%rip),%rdi        # 2cc8 <_IO_stdin_used+0x128>
    12e0:	e8 9b fc ff ff       	callq  f80 <puts@plt>
    12e5:	e8 d6 08 00 00       	callq  1bc0 <read_line>
    12ea:	48 89 c7             	mov    %rax,%rdi
    12ed:	e8 af 02 00 00       	callq  15a1 <phase_5>
    12f2:	e8 10 0a 00 00       	callq  1d07 <phase_defused>
    12f7:	48 8d 3d 0a 19 00 00 	lea    0x190a(%rip),%rdi        # 2c08 <_IO_stdin_used+0x68>
    12fe:	e8 7d fc ff ff       	callq  f80 <puts@plt>
    1303:	e8 b8 08 00 00       	callq  1bc0 <read_line>
    1308:	48 89 c7             	mov    %rax,%rdi
    130b:	e8 da 02 00 00       	callq  15ea <phase_6>
    1310:	e8 f2 09 00 00       	callq  1d07 <phase_defused>
    1315:	b8 00 00 00 00       	mov    $0x0,%eax
    131a:	5b                   	pop    %rbx
    131b:	c3                   	retq   
    131c:	48 8b 05 ed 41 20 00 	mov    0x2041ed(%rip),%rax        # 205510 <stdin@@GLIBC_2.2.5>
    1323:	48 89 05 06 42 20 00 	mov    %rax,0x204206(%rip)        # 205530 <infile>
    132a:	e9 21 ff ff ff       	jmpq   1250 <main+0x36>
    132f:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
    1333:	48 8b 13             	mov    (%rbx),%rdx
    1336:	48 8d 35 67 18 00 00 	lea    0x1867(%rip),%rsi        # 2ba4 <_IO_stdin_used+0x4>
    133d:	bf 01 00 00 00       	mov    $0x1,%edi
    1342:	e8 19 fd ff ff       	callq  1060 <__printf_chk@plt>
    1347:	bf 08 00 00 00       	mov    $0x8,%edi
    134c:	e8 3f fd ff ff       	callq  1090 <exit@plt>
    1351:	48 8b 16             	mov    (%rsi),%rdx
    1354:	48 8d 35 66 18 00 00 	lea    0x1866(%rip),%rsi        # 2bc1 <_IO_stdin_used+0x21>
    135b:	bf 01 00 00 00       	mov    $0x1,%edi
    1360:	b8 00 00 00 00       	mov    $0x0,%eax
    1365:	e8 f6 fc ff ff       	callq  1060 <__printf_chk@plt>
    136a:	bf 08 00 00 00       	mov    $0x8,%edi
    136f:	e8 1c fd ff ff       	callq  1090 <exit@plt>

0000000000001374 <phase_1>:
    1374:	48 83 ec 08          	sub    $0x8,%rsp
    1378:	48 8d 35 71 19 00 00 	lea    0x1971(%rip),%rsi        # 2cf0 <_IO_stdin_used+0x150>//加载一个地址到%rsi，根据下边猜测是字符串，读取地址发现一个字符串，“The future will be better tomorrow.”
    137f:	e8 bc 04 00 00       	callq  1840 <strings_not_equal>//比较字符串是否相等，不相等引爆，所以我们应该输入上边读取的字符串
    1384:	85 c0                	test   %eax,%eax
    1386:	75 05                	jne    138d <phase_1+0x19>
    1388:	48 83 c4 08          	add    $0x8,%rsp
    138c:	c3                   	retq   
    138d:	e8 b1 07 00 00       	callq  1b43 <explode_bomb>
    1392:	eb f4                	jmp    1388 <phase_1+0x14>

0000000000001394 <phase_2>:
    1394:	53                   	push   %rbx
    1395:	48 83 ec 20          	sub    $0x20,%rsp
    1399:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    13a0:	00 00 
    13a2:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    13a7:	31 c0                	xor    %eax,%eax
    13a9:	48 89 e6             	mov    %rsp,%rsi
    13ac:	e8 ce 07 00 00       	callq  1b7f <read_six_numbers>//应该输入6个数字
    13b1:	83 3c 24 00          	cmpl   $0x0,(%rsp)//第一个是0
    13b5:	75 07                	jne    13be <phase_2+0x2a>
    13b7:	83 7c 24 04 01       	cmpl   $0x1,0x4(%rsp)//第二个是1
    13bc:	74 05                	je     13c3 <phase_2+0x2f>
    13be:	e8 80 07 00 00       	callq  1b43 <explode_bomb>
    13c3:	bb 02 00 00 00       	mov    $0x2,%ebx
    13c8:	eb 03                	jmp    13cd <phase_2+0x39>
    13ca:	83 c3 01             	add    $0x1,%ebx//跳回到这里，加一，是一个循环
    13cd:	83 fb 05             	cmp    $0x5,%ebx//跳到这里，比较%ebx和5的大小
    13d0:	7f 20                	jg     13f2 <phase_2+0x5e>//如果大，跳出
    13d2:	48 63 d3             	movslq %ebx,%rdx//i
    13d5:	8d 4b fe             	lea    -0x2(%rbx),%ecx//i-2
    13d8:	48 63 c9             	movslq %ecx,%rcx
    13db:	8d 43 ff             	lea    -0x1(%rbx),%eax//i-1
    13de:	48 98                	cltq   
    13e0:	8b 04 84             	mov    (%rsp,%rax,4),%eax
    13e3:	03 04 8c             	add    (%rsp,%rcx,4),%eax//前面两个数的和
    13e6:	39 04 94             	cmp    %eax,(%rsp,%rdx,4)//和第i个数比较，相等跳回，不等引爆，所以是斐波那契数列
    13e9:	74 df                	je     13ca <phase_2+0x36>//跳回
    13eb:	e8 53 07 00 00       	callq  1b43 <explode_bomb>
    13f0:	eb d8                	jmp    13ca <phase_2+0x36>
    13f2:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    13f7:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    13fe:	00 00 
    1400:	75 06                	jne    1408 <phase_2+0x74>
    1402:	48 83 c4 20          	add    $0x20,%rsp
    1406:	5b                   	pop    %rbx
    1407:	c3                   	retq   
    1408:	e8 93 fb ff ff       	callq  fa0 <__stack_chk_fail@plt>

000000000000140d <phase_3>:
    140d:	48 83 ec 28          	sub    $0x28,%rsp
    1411:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1418:	00 00 
    141a:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    141f:	31 c0                	xor    %eax,%eax
    1421:	48 8d 4c 24 10       	lea    0x10(%rsp),%rcx
    1426:	48 8d 54 24 0c       	lea    0xc(%rsp),%rdx
    142b:	4c 8d 44 24 14       	lea    0x14(%rsp),%r8
    1430:	48 8d 35 b6 1b 00 00 	lea    0x1bb6(%rip),%rsi        # 2fed <array.3421+0x28d>//0x2fed:"%d %d %d"读三个数
    1437:	e8 14 fc ff ff       	callq  1050 <__isoc99_sscanf@plt>
    143c:	83 f8 02             	cmp    $0x2,%eax
    143f:	7e 1f                	jle    1460 <phase_3+0x53>//小于等于两个就引爆
    1441:	83 7c 24 0c 07       	cmpl   $0x7,0xc(%rsp)//读取0xc(%rsp)发现是输入的第一个数，小于7
    1446:	0f 87 92 00 00 00    	ja     14de <phase_3+0xd1>
    144c:	8b 44 24 0c          	mov    0xc(%rsp),%eax//读到%eax
    1450:	48 8d 15 e9 18 00 00 	lea    0x18e9(%rip),%rdx        # 2d40 <_IO_stdin_used+0x1a0>
    1457:	48 63 04 82          	movslq (%rdx,%rax,4),%rax//得到一个数
    145b:	48 01 d0             	add    %rdx,%rax//由%rdx和第一个数得到一个地址，第一个数不同地址不同
    145e:	ff e0                	jmpq   *%rax//根据地址跳转，地址与第一个数有关，switch的结构
    1460:	e8 de 06 00 00       	callq  1b43 <explode_bomb>
    1465:	eb da                	jmp    1441 <phase_3+0x34>//
    1467:	8b 44 24 10          	mov    0x10(%rsp),%eax//第一个数为0,跳转到这里，读取发现是第二个数
    146b:	05 29 01 00 00       	add    $0x129,%eax
    1470:	3d 1a 02 00 00       	cmp    $0x21a,%eax//得到第二个数，241
    1475:	74 05                	je     147c <phase_3+0x6f>
    1477:	e8 c7 06 00 00       	callq  1b43 <explode_bomb>
    147c:	48 8b 44 24 18       	mov    0x18(%rsp),%rax//跳到这里
    1481:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1488:	00 00 
    148a:	75 61                	jne    14ed <phase_3+0xe0>//跳出
    148c:	48 83 c4 28          	add    $0x28,%rsp
    1490:	c3                   	retq   
    1491:	8b 44 24 10          	mov    0x10(%rsp),%eax
    1495:	05 28 03 00 00       	add    $0x328,%eax
    149a:	eb d4                	jmp    1470 <phase_3+0x63>
    149c:	8b 44 24 10          	mov    0x10(%rsp),%eax
    14a0:	05 0e 02 00 00       	add    $0x20e,%eax
    14a5:	eb c9                	jmp    1470 <phase_3+0x63>
    14a7:	8b 44 24 10          	mov    0x10(%rsp),%eax
    14ab:	05 6f 02 00 00       	add    $0x26f,%eax
    14b0:	eb be                	jmp    1470 <phase_3+0x63>
    14b2:	8b 44 24 10          	mov    0x10(%rsp),%eax
    14b6:	05 8f 00 00 00       	add    $0x8f,%eax
    14bb:	eb b3                	jmp    1470 <phase_3+0x63>
    14bd:	8b 44 24 10          	mov    0x10(%rsp),%eax
    14c1:	05 bc 03 00 00       	add    $0x3bc,%eax
    14c6:	eb a8                	jmp    1470 <phase_3+0x63>
    14c8:	8b 44 24 10          	mov    0x10(%rsp),%eax
    14cc:	05 0d 01 00 00       	add    $0x10d,%eax
    14d1:	eb 9d                	jmp    1470 <phase_3+0x63>
    14d3:	8b 44 24 10          	mov    0x10(%rsp),%eax
    14d7:	05 2e 01 00 00       	add    $0x12e,%eax
    14dc:	eb 92                	jmp    1470 <phase_3+0x63>
    14de:	e8 60 06 00 00       	callq  1b43 <explode_bomb>
    14e3:	bf ff ff ff ff       	mov    $0xffffffff,%edi
    14e8:	e8 a3 fb ff ff       	callq  1090 <exit@plt>
    14ed:	e8 ae fa ff ff       	callq  fa0 <__stack_chk_fail@plt>

00000000000014f2 <func4>:
    14f2:	53                   	push   %rbx//%edx上界，%esi下界
    14f3:	89 d0                	mov    %edx,%eax
    14f5:	29 f0                	sub    %esi,%eax//相减
    14f7:	89 c3                	mov    %eax,%ebx
    14f9:	c1 eb 1f             	shr    $0x1f,%ebx//右移31位，符号位
    14fc:	01 c3                	add    %eax,%ebx//加上符号位，向0舍入
    14fe:	d1 fb                	sar    %ebx//除二
    1500:	01 f3                	add    %esi,%ebx//下界加上上下界距离的一半
    1502:	39 fb                	cmp    %edi,%ebx//相比较
    1504:	7f 08                	jg     150e <func4+0x1c>
    1506:	39 fb                	cmp    %edi,%ebx
    1508:	7c 10                	jl     151a <func4+0x28>
    150a:	89 d8                	mov    %ebx,%eax
    150c:	5b                   	pop    %rbx
    150d:	c3                   	retq   
    150e:	8d 53 ff             	lea    -0x1(%rbx),%edx//中点作为新的上界且新的上界上界减一
    1511:	e8 dc ff ff ff       	callq  14f2 <func4>//递归
    1516:	01 c3                	add    %eax,%ebx//返回的结果加上未减一的上界
    1518:	eb f0                	jmp    150a <func4+0x18>
    151a:	8d 73 01             	lea    0x1(%rbx),%esi//中点作为新的下界且新的下界加一
    151d:	e8 d0 ff ff ff       	callq  14f2 <func4>//递归
    1522:	01 c3                	add    %eax,%ebx//返回的结果加上未加一的下界
    1524:	eb e4                	jmp    150a <func4+0x18>

0000000000001526 <phase_4>:
    1526:	48 83 ec 18          	sub    $0x18,%rsp
    152a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1531:	00 00 
    1533:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    1538:	31 c0                	xor    %eax,%eax
    153a:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx
    153f:	48 89 e2             	mov    %rsp,%rdx
    1542:	48 8d 35 a7 1a 00 00 	lea    0x1aa7(%rip),%rsi        # 2ff0 <array.3421+0x290>
    1549:	e8 02 fb ff ff       	callq  1050 <__isoc99_sscanf@plt>
    154e:	83 f8 02             	cmp    $0x2,%eax//读两个数
    1551:	75 0c                	jne    155f <phase_4+0x39>
    1553:	8b 04 24             	mov    (%rsp),%eax//第一个数
    1556:	85 c0                	test   %eax,%eax
    1558:	78 05                	js     155f <phase_4+0x39>//负数引爆
    155a:	83 f8 0e             	cmp    $0xe,%eax
    155d:	7e 05                	jle    1564 <phase_4+0x3e>//小于等于0xe
    155f:	e8 df 05 00 00       	callq  1b43 <explode_bomb>
    1564:	ba 0e 00 00 00       	mov    $0xe,%edx
    1569:	be 00 00 00 00       	mov    $0x0,%esi
    156e:	8b 3c 24             	mov    (%rsp),%edi//第一个数
    1571:	e8 7c ff ff ff       	callq  14f2 <func4>
    1576:	83 f8 0f             	cmp    $0xf,%eax//结果等于15
    1579:	75 07                	jne    1582 <phase_4+0x5c>
    157b:	83 7c 24 04 0f       	cmpl   $0xf,0x4(%rsp)//第二个数等于15
    1580:	74 05                	je     1587 <phase_4+0x61>
    1582:	e8 bc 05 00 00       	callq  1b43 <explode_bomb>
    1587:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    158c:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1593:	00 00 
    1595:	75 05                	jne    159c <phase_4+0x76>
    1597:	48 83 c4 18          	add    $0x18,%rsp
    159b:	c3                   	retq   
    159c:	e8 ff f9 ff ff       	callq  fa0 <__stack_chk_fail@plt>

00000000000015a1 <phase_5>:
    15a1:	53                   	push   %rbx
    15a2:	48 89 fb             	mov    %rdi,%rbx
    15a5:	e8 81 02 00 00       	callq  182b <string_length>
    15aa:	83 f8 06             	cmp    $0x6,%eax//字符串长度为6，%rbx是输入的字符串
    15ad:	75 0c                	jne    15bb <phase_5+0x1a>
    15af:	b9 00 00 00 00       	mov    $0x0,%ecx
    15b4:	b8 00 00 00 00       	mov    $0x0,%eax
    15b9:	eb 1e                	jmp    15d9 <phase_5+0x38>
    15bb:	e8 83 05 00 00       	callq  1b43 <explode_bomb>
    15c0:	eb ed                	jmp    15af <phase_5+0xe>
    15c2:	48 63 d0             	movslq %eax,%rdx//循环体开始
    15c5:	0f b6 14 13          	movzbl (%rbx,%rdx,1),%edx//读取第一个字符
    15c9:	83 e2 0f             	and    $0xf,%edx//取后四位
    15cc:	48 8d 35 8d 17 00 00 	lea    0x178d(%rip),%rsi        # 2d60 <array.3421>
    15d3:	03 0c 96             	add    (%rsi,%rdx,4),%ecx//将对应地址的值加到%ecx里
    15d6:	83 c0 01             	add    $0x1,%eax
    15d9:	83 f8 05             	cmp    $0x5,%eax//%eax和5比较，循环
    15dc:	7e e4                	jle    15c2 <phase_5+0x21>//循环判断条件
    15de:	83 f9 3e             	cmp    $0x3e,%ecx//总和和0x3e比较，62=5×10+12,5个a，一个d
    15e1:	74 05                	je     15e8 <phase_5+0x47>
    15e3:	e8 5b 05 00 00       	callq  1b43 <explode_bomb>
    15e8:	5b                   	pop    %rbx
    15e9:	c3                   	retq   

00000000000015ea <phase_6>:
    15ea:	41 54                	push   %r12
    15ec:	55                   	push   %rbp
    15ed:	53                   	push   %rbx
    15ee:	48 83 ec 60          	sub    $0x60,%rsp
    15f2:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    15f9:	00 00 
    15fb:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    1600:	31 c0                	xor    %eax,%eax
    1602:	48 89 e6             	mov    %rsp,%rsi
    1605:	e8 75 05 00 00       	callq  1b7f <read_six_numbers>//读六个数字
    160a:	bd 00 00 00 00       	mov    $0x0,%ebp
    160f:	eb 27                	jmp    1638 <phase_6+0x4e>
    1611:	e8 2d 05 00 00       	callq  1b43 <explode_bomb>
    1616:	eb 33                	jmp    164b <phase_6+0x61>
    1618:	83 c3 01             	add    $0x1,%ebx
    161b:	83 fb 05             	cmp    $0x5,%ebx//第一个循环
    161e:	7f 15                	jg     1635 <phase_6+0x4b>//比较完第六个数跳出
    1620:	48 63 c5             	movslq %ebp,%rax
    1623:	48 63 d3             	movslq %ebx,%rdx
    1626:	8b 3c 94             	mov    (%rsp,%rdx,4),%edi//%ebx每次加一，如果%ebx和%ebp对应的数相等，则引爆
    1629:	39 3c 84             	cmp    %edi,(%rsp,%rax,4)
    162c:	75 ea                	jne    1618 <phase_6+0x2e>
    162e:	e8 10 05 00 00       	callq  1b43 <explode_bomb>
    1633:	eb e3                	jmp    1618 <phase_6+0x2e>
    1635:	44 89 e5             	mov    %r12d,%ebp//内层循环跳出到这里，将%ebp+1
    1638:	83 fd 05             	cmp    $0x5,%ebp//第一次跳到这里
    163b:	7f 17                	jg     1654 <phase_6+0x6a>//外层循环结束条件
    163d:	48 63 c5             	movslq %ebp,%rax
    1640:	8b 04 84             	mov    (%rsp,%rax,4),%eax
    1643:	83 e8 01             	sub    $0x1,%eax
    1646:	83 f8 05             	cmp    $0x5,%eax
    1649:	77 c6                	ja     1611 <phase_6+0x27>//每个数小于等于6
    164b:	44 8d 65 01          	lea    0x1(%rbp),%r12d
    164f:	44 89 e3             	mov    %r12d,%ebx//%ebx每次从%ebp的下一个数开始，内层循环使得每两个数不等
    1652:	eb c7                	jmp    161b <phase_6+0x31>//跳回第一个循环，是第一个循环的外层循环
    1654:	b8 00 00 00 00       	mov    $0x0,%eax//第一个循环跳出到这里
    1659:	eb 11                	jmp    166c <phase_6+0x82>
    165b:	48 63 c8             	movslq %eax,%rcx//第二个循环开始
    165e:	ba 07 00 00 00       	mov    $0x7,%edx
    1663:	2b 14 8c             	sub    (%rsp,%rcx,4),%edx
    1666:	89 14 8c             	mov    %edx,(%rsp,%rcx,4)//把读入的数变成7减它本身
    1669:	83 c0 01             	add    $0x1,%eax
    166c:	83 f8 05             	cmp    $0x5,%eax//进入第二个循环
    166f:	7e ea                	jle    165b <phase_6+0x71>
    1671:	be 00 00 00 00       	mov    $0x0,%esi
    1676:	eb 17                	jmp    168f <phase_6+0xa5>//跳出第二个循环
    1678:	48 8b 52 08          	mov    0x8(%rdx),%rdx
    167c:	83 c0 01             	add    $0x1,%eax
    167f:	48 63 ce             	movslq %esi,%rcx//读链表后跳转到这里
    1682:	39 04 8c             	cmp    %eax,(%rsp,%rcx,4)//输入的第%rcx个数字与%eax做比较，要是%eax就加一，把%rdx往后移，整体来说是把输入每个数字对应的node找出来，存到对应的内存位置
    1685:	7f f1                	jg     1678 <phase_6+0x8e>
    1687:	48 89 54 cc 20       	mov    %rdx,0x20(%rsp,%rcx,8)
    168c:	83 c6 01             	add    $0x1,%esi
    168f:	83 fe 05             	cmp    $0x5,%esi//进入第三个循环
    1692:	7f 0e                	jg     16a2 <phase_6+0xb8>//6个数处理完，跳出
    1694:	b8 01 00 00 00       	mov    $0x1,%eax
    1699:	48 8d 15 90 3b 20 00 	lea    0x203b90(%rip),%rdx        # 205230 <node1>
    16a0:	eb dd                	jmp    167f <phase_6+0x95>//读取链表，跳转
    16a2:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx//第三个循环跳出后
    16a7:	48 89 d9             	mov    %rbx,%rcx
    16aa:	b8 01 00 00 00       	mov    $0x1,%eax
    16af:	eb 12                	jmp    16c3 <phase_6+0xd9>//跳入第四个循环
    16b1:	48 63 d0             	movslq %eax,%rdx//跳到这里
    16b4:	48 8b 54 d4 20       	mov    0x20(%rsp,%rdx,8),%rdx//将对应的node地址写到上一个node地址的高八位,并把写入的地址放到%rcx便于下一次循环
    16b9:	48 89 51 08          	mov    %rdx,0x8(%rcx)
    16bd:	83 c0 01             	add    $0x1,%eax
    16c0:	48 89 d1             	mov    %rdx,%rcx
    16c3:	83 f8 05             	cmp    $0x5,%eax//第四个循环
    16c6:	7e e9                	jle    16b1 <phase_6+0xc7>
    16c8:	48 c7 41 08 00 00 00 	movq   $0x0,0x8(%rcx)
    16cf:	00 
    16d0:	bd 00 00 00 00       	mov    $0x0,%ebp
    16d5:	eb 07                	jmp    16de <phase_6+0xf4>
    16d7:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
    16db:	83 c5 01             	add    $0x1,%ebp
    16de:	83 fd 04             	cmp    $0x4,%ebp//第五个循环
    16e1:	7f 11                	jg     16f4 <phase_6+0x10a>//读取后一位的node和这一位比较，每一位比后一位的node大或相等
    16e3:	48 8b 43 08          	mov    0x8(%rbx),%rax
    16e7:	8b 00                	mov    (%rax),%eax
    16e9:	39 03                	cmp    %eax,(%rbx)
    16eb:	7d ea                	jge    16d7 <phase_6+0xed>
    16ed:	e8 51 04 00 00       	callq  1b43 <explode_bomb>
    16f2:	eb e3                	jmp    16d7 <phase_6+0xed>
    16f4:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    16f9:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1700:	00 00 
    1702:	75 09                	jne    170d <phase_6+0x123>
    1704:	48 83 c4 60          	add    $0x60,%rsp
    1708:	5b                   	pop    %rbx
    1709:	5d                   	pop    %rbp
    170a:	41 5c                	pop    %r12
    170c:	c3                   	retq   
    170d:	e8 8e f8 ff ff       	callq  fa0 <__stack_chk_fail@plt>

0000000000001712 <fun7>:
    1712:	48 85 ff             	test   %rdi,%rdi
    1715:	74 34                	je     174b <fun7+0x39>
    1717:	48 83 ec 08          	sub    $0x8,%rsp
    171b:	8b 07                	mov    (%rdi),%eax
    171d:	39 f0                	cmp    %esi,%eax
    171f:	7f 0e                	jg     172f <fun7+0x1d>
    1721:	39 f0                	cmp    %esi,%eax
    1723:	75 17                	jne    173c <fun7+0x2a>
    1725:	b8 00 00 00 00       	mov    $0x0,%eax
    172a:	48 83 c4 08          	add    $0x8,%rsp
    172e:	c3                   	retq   
    172f:	48 8b 7f 08          	mov    0x8(%rdi),%rdi
    1733:	e8 da ff ff ff       	callq  1712 <fun7>
    1738:	01 c0                	add    %eax,%eax
    173a:	eb ee                	jmp    172a <fun7+0x18>
    173c:	48 8b 7f 10          	mov    0x10(%rdi),%rdi
    1740:	e8 cd ff ff ff       	callq  1712 <fun7>
    1745:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
    1749:	eb df                	jmp    172a <fun7+0x18>
    174b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1750:	c3                   	retq   

0000000000001751 <secret_phase>:
    1751:	53                   	push   %rbx
    1752:	e8 69 04 00 00       	callq  1bc0 <read_line>
    1757:	ba 0a 00 00 00       	mov    $0xa,%edx
    175c:	be 00 00 00 00       	mov    $0x0,%esi
    1761:	48 89 c7             	mov    %rax,%rdi
    1764:	e8 b7 f8 ff ff       	callq  1020 <strtol@plt>
    1769:	48 89 c3             	mov    %rax,%rbx
    176c:	8d 40 ff             	lea    -0x1(%rax),%eax
    176f:	3d e8 03 00 00       	cmp    $0x3e8,%eax//输入小于1001
    1774:	77 2b                	ja     17a1 <secret_phase+0x50>
    1776:	89 de                	mov    %ebx,%esi
    1778:	48 8d 3d d1 39 20 00 	lea    0x2039d1(%rip),%rdi        # 205150 <n1>
    177f:	e8 8e ff ff ff       	callq  1712 <fun7>//调用fun7
    1784:	83 f8 06             	cmp    $0x6,%eax//最后返回结果是6
    1787:	74 05                	je     178e <secret_phase+0x3d>
    1789:	e8 b5 03 00 00       	callq  1b43 <explode_bomb>
    178e:	48 8d 3d 83 15 00 00 	lea    0x1583(%rip),%rdi        # 2d18 <_IO_stdin_used+0x178>
    1795:	e8 e6 f7 ff ff       	callq  f80 <puts@plt>
    179a:	e8 68 05 00 00       	callq  1d07 <phase_defused>
    179f:	5b                   	pop    %rbx
    17a0:	c3                   	retq   
    17a1:	e8 9d 03 00 00       	callq  1b43 <explode_bomb>
    17a6:	eb ce                	jmp    1776 <secret_phase+0x25>

00000000000017a8 <sig_handler>:
    17a8:	48 83 ec 08          	sub    $0x8,%rsp
    17ac:	48 8d 3d ed 15 00 00 	lea    0x15ed(%rip),%rdi        # 2da0 <array.3421+0x40>
    17b3:	e8 c8 f7 ff ff       	callq  f80 <puts@plt>
    17b8:	bf 03 00 00 00       	mov    $0x3,%edi
    17bd:	e8 fe f8 ff ff       	callq  10c0 <sleep@plt>
    17c2:	48 8d 35 a0 17 00 00 	lea    0x17a0(%rip),%rsi        # 2f69 <array.3421+0x209>
    17c9:	bf 01 00 00 00       	mov    $0x1,%edi
    17ce:	b8 00 00 00 00       	mov    $0x0,%eax
    17d3:	e8 88 f8 ff ff       	callq  1060 <__printf_chk@plt>
    17d8:	48 8b 3d 21 3d 20 00 	mov    0x203d21(%rip),%rdi        # 205500 <__TMC_END__>
    17df:	e8 5c f8 ff ff       	callq  1040 <fflush@plt>
    17e4:	bf 01 00 00 00       	mov    $0x1,%edi
    17e9:	e8 d2 f8 ff ff       	callq  10c0 <sleep@plt>
    17ee:	48 8d 3d 7c 17 00 00 	lea    0x177c(%rip),%rdi        # 2f71 <array.3421+0x211>
    17f5:	e8 86 f7 ff ff       	callq  f80 <puts@plt>
    17fa:	bf 10 00 00 00       	mov    $0x10,%edi
    17ff:	e8 8c f8 ff ff       	callq  1090 <exit@plt>

0000000000001804 <invalid_phase>:
    1804:	48 83 ec 08          	sub    $0x8,%rsp
    1808:	48 89 fa             	mov    %rdi,%rdx
    180b:	48 8d 35 67 17 00 00 	lea    0x1767(%rip),%rsi        # 2f79 <array.3421+0x219>
    1812:	bf 01 00 00 00       	mov    $0x1,%edi
    1817:	b8 00 00 00 00       	mov    $0x0,%eax
    181c:	e8 3f f8 ff ff       	callq  1060 <__printf_chk@plt>
    1821:	bf 08 00 00 00       	mov    $0x8,%edi
    1826:	e8 65 f8 ff ff       	callq  1090 <exit@plt>

000000000000182b <string_length>:
    182b:	b8 00 00 00 00       	mov    $0x0,%eax
    1830:	eb 07                	jmp    1839 <string_length+0xe>
    1832:	48 83 c7 01          	add    $0x1,%rdi
    1836:	83 c0 01             	add    $0x1,%eax
    1839:	80 3f 00             	cmpb   $0x0,(%rdi)
    183c:	75 f4                	jne    1832 <string_length+0x7>
    183e:	f3 c3                	repz retq 

0000000000001840 <strings_not_equal>:
    1840:	41 54                	push   %r12
    1842:	55                   	push   %rbp
    1843:	53                   	push   %rbx
    1844:	48 89 fb             	mov    %rdi,%rbx
    1847:	48 89 f5             	mov    %rsi,%rbp
    184a:	e8 dc ff ff ff       	callq  182b <string_length>
    184f:	41 89 c4             	mov    %eax,%r12d
    1852:	48 89 ef             	mov    %rbp,%rdi
    1855:	e8 d1 ff ff ff       	callq  182b <string_length>
    185a:	41 39 c4             	cmp    %eax,%r12d
    185d:	74 0a                	je     1869 <strings_not_equal+0x29>
    185f:	b8 01 00 00 00       	mov    $0x1,%eax
    1864:	5b                   	pop    %rbx
    1865:	5d                   	pop    %rbp
    1866:	41 5c                	pop    %r12
    1868:	c3                   	retq   
    1869:	0f b6 03             	movzbl (%rbx),%eax
    186c:	84 c0                	test   %al,%al
    186e:	74 0f                	je     187f <strings_not_equal+0x3f>
    1870:	38 45 00             	cmp    %al,0x0(%rbp)
    1873:	75 11                	jne    1886 <strings_not_equal+0x46>
    1875:	48 83 c3 01          	add    $0x1,%rbx
    1879:	48 83 c5 01          	add    $0x1,%rbp
    187d:	eb ea                	jmp    1869 <strings_not_equal+0x29>
    187f:	b8 00 00 00 00       	mov    $0x0,%eax
    1884:	eb de                	jmp    1864 <strings_not_equal+0x24>
    1886:	b8 01 00 00 00       	mov    $0x1,%eax
    188b:	eb d7                	jmp    1864 <strings_not_equal+0x24>

000000000000188d <initialize_bomb>:
    188d:	55                   	push   %rbp
    188e:	53                   	push   %rbx
    188f:	48 81 ec 58 20 00 00 	sub    $0x2058,%rsp
    1896:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    189d:	00 00 
    189f:	48 89 84 24 48 20 00 	mov    %rax,0x2048(%rsp)
    18a6:	00 
    18a7:	31 c0                	xor    %eax,%eax
    18a9:	48 8d 35 f8 fe ff ff 	lea    -0x108(%rip),%rsi        # 17a8 <sig_handler>
    18b0:	bf 02 00 00 00       	mov    $0x2,%edi
    18b5:	e8 36 f7 ff ff       	callq  ff0 <signal@plt>
    18ba:	48 89 e7             	mov    %rsp,%rdi
    18bd:	be 40 00 00 00       	mov    $0x40,%esi
    18c2:	e8 b9 f7 ff ff       	callq  1080 <gethostname@plt>
    18c7:	85 c0                	test   %eax,%eax
    18c9:	75 28                	jne    18f3 <initialize_bomb+0x66>
    18cb:	89 c5                	mov    %eax,%ebp
    18cd:	89 c3                	mov    %eax,%ebx
    18cf:	48 63 c3             	movslq %ebx,%rax
    18d2:	48 8d 15 a7 39 20 00 	lea    0x2039a7(%rip),%rdx        # 205280 <host_table>
    18d9:	48 8b 3c c2          	mov    (%rdx,%rax,8),%rdi
    18dd:	48 85 ff             	test   %rdi,%rdi
    18e0:	74 2c                	je     190e <initialize_bomb+0x81>
    18e2:	48 89 e6             	mov    %rsp,%rsi
    18e5:	e8 66 f6 ff ff       	callq  f50 <strcasecmp@plt>
    18ea:	85 c0                	test   %eax,%eax
    18ec:	74 1b                	je     1909 <initialize_bomb+0x7c>
    18ee:	83 c3 01             	add    $0x1,%ebx
    18f1:	eb dc                	jmp    18cf <initialize_bomb+0x42>
    18f3:	48 8d 3d de 14 00 00 	lea    0x14de(%rip),%rdi        # 2dd8 <array.3421+0x78>
    18fa:	e8 81 f6 ff ff       	callq  f80 <puts@plt>
    18ff:	bf 08 00 00 00       	mov    $0x8,%edi
    1904:	e8 87 f7 ff ff       	callq  1090 <exit@plt>
    1909:	bd 01 00 00 00       	mov    $0x1,%ebp
    190e:	85 ed                	test   %ebp,%ebp
    1910:	74 2b                	je     193d <initialize_bomb+0xb0>
    1912:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    1917:	e8 5d 0f 00 00       	callq  2879 <init_driver>
    191c:	85 c0                	test   %eax,%eax
    191e:	78 33                	js     1953 <initialize_bomb+0xc6>
    1920:	48 8b 84 24 48 20 00 	mov    0x2048(%rsp),%rax
    1927:	00 
    1928:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    192f:	00 00 
    1931:	75 45                	jne    1978 <initialize_bomb+0xeb>
    1933:	48 81 c4 58 20 00 00 	add    $0x2058,%rsp
    193a:	5b                   	pop    %rbx
    193b:	5d                   	pop    %rbp
    193c:	c3                   	retq   
    193d:	48 8d 3d cc 14 00 00 	lea    0x14cc(%rip),%rdi        # 2e10 <array.3421+0xb0>
    1944:	e8 37 f6 ff ff       	callq  f80 <puts@plt>
    1949:	bf 08 00 00 00       	mov    $0x8,%edi
    194e:	e8 3d f7 ff ff       	callq  1090 <exit@plt>
    1953:	48 8d 54 24 40       	lea    0x40(%rsp),%rdx
    1958:	48 8d 35 2b 16 00 00 	lea    0x162b(%rip),%rsi        # 2f8a <array.3421+0x22a>
    195f:	bf 01 00 00 00       	mov    $0x1,%edi
    1964:	b8 00 00 00 00       	mov    $0x0,%eax
    1969:	e8 f2 f6 ff ff       	callq  1060 <__printf_chk@plt>
    196e:	bf 08 00 00 00       	mov    $0x8,%edi
    1973:	e8 18 f7 ff ff       	callq  1090 <exit@plt>
    1978:	e8 23 f6 ff ff       	callq  fa0 <__stack_chk_fail@plt>

000000000000197d <initialize_bomb_solve>:
    197d:	f3 c3                	repz retq 

000000000000197f <blank_line>:
    197f:	55                   	push   %rbp
    1980:	53                   	push   %rbx
    1981:	48 83 ec 08          	sub    $0x8,%rsp
    1985:	48 89 fd             	mov    %rdi,%rbp
    1988:	0f b6 5d 00          	movzbl 0x0(%rbp),%ebx
    198c:	84 db                	test   %bl,%bl
    198e:	74 1e                	je     19ae <blank_line+0x2f>
    1990:	e8 3b f7 ff ff       	callq  10d0 <__ctype_b_loc@plt>
    1995:	48 8b 00             	mov    (%rax),%rax
    1998:	48 83 c5 01          	add    $0x1,%rbp
    199c:	48 0f be db          	movsbq %bl,%rbx
    19a0:	f6 44 58 01 20       	testb  $0x20,0x1(%rax,%rbx,2)
    19a5:	75 e1                	jne    1988 <blank_line+0x9>
    19a7:	b8 00 00 00 00       	mov    $0x0,%eax
    19ac:	eb 05                	jmp    19b3 <blank_line+0x34>
    19ae:	b8 01 00 00 00       	mov    $0x1,%eax
    19b3:	48 83 c4 08          	add    $0x8,%rsp
    19b7:	5b                   	pop    %rbx
    19b8:	5d                   	pop    %rbp
    19b9:	c3                   	retq   

00000000000019ba <skip>:
    19ba:	53                   	push   %rbx
    19bb:	48 63 05 6a 3b 20 00 	movslq 0x203b6a(%rip),%rax        # 20552c <num_input_strings>
    19c2:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
    19c6:	48 c1 e0 04          	shl    $0x4,%rax
    19ca:	48 89 c7             	mov    %rax,%rdi
    19cd:	48 8d 05 6c 3b 20 00 	lea    0x203b6c(%rip),%rax        # 205540 <input_strings>
    19d4:	48 01 c7             	add    %rax,%rdi
    19d7:	48 8b 15 52 3b 20 00 	mov    0x203b52(%rip),%rdx        # 205530 <infile>
    19de:	be 50 00 00 00       	mov    $0x50,%esi
    19e3:	e8 f8 f5 ff ff       	callq  fe0 <fgets@plt>
    19e8:	48 89 c3             	mov    %rax,%rbx
    19eb:	48 85 c0             	test   %rax,%rax
    19ee:	74 0c                	je     19fc <skip+0x42>
    19f0:	48 89 c7             	mov    %rax,%rdi
    19f3:	e8 87 ff ff ff       	callq  197f <blank_line>
    19f8:	85 c0                	test   %eax,%eax
    19fa:	75 bf                	jne    19bb <skip+0x1>
    19fc:	48 89 d8             	mov    %rbx,%rax
    19ff:	5b                   	pop    %rbx
    1a00:	c3                   	retq   

0000000000001a01 <send_msg>:
    1a01:	53                   	push   %rbx
    1a02:	48 81 ec 10 40 00 00 	sub    $0x4010,%rsp
    1a09:	41 89 f8             	mov    %edi,%r8d
    1a0c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1a13:	00 00 
    1a15:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
    1a1c:	00 
    1a1d:	31 c0                	xor    %eax,%eax
    1a1f:	8b 35 07 3b 20 00    	mov    0x203b07(%rip),%esi        # 20552c <num_input_strings>
    1a25:	8d 46 ff             	lea    -0x1(%rsi),%eax
    1a28:	48 98                	cltq   
    1a2a:	48 8d 14 80          	lea    (%rax,%rax,4),%rdx
    1a2e:	48 89 d0             	mov    %rdx,%rax
    1a31:	48 c1 e0 04          	shl    $0x4,%rax
    1a35:	48 8d 15 04 3b 20 00 	lea    0x203b04(%rip),%rdx        # 205540 <input_strings>
    1a3c:	48 01 c2             	add    %rax,%rdx
    1a3f:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    1a46:	b8 00 00 00 00       	mov    $0x0,%eax
    1a4b:	48 89 d7             	mov    %rdx,%rdi
    1a4e:	f2 ae                	repnz scas %es:(%rdi),%al
    1a50:	48 89 c8             	mov    %rcx,%rax
    1a53:	48 f7 d0             	not    %rax
    1a56:	48 83 c0 63          	add    $0x63,%rax
    1a5a:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
    1a60:	0f 87 95 00 00 00    	ja     1afb <send_msg+0xfa>
    1a66:	45 85 c0             	test   %r8d,%r8d
    1a69:	0f 84 ac 00 00 00    	je     1b1b <send_msg+0x11a>
    1a6f:	48 8d 05 2e 15 00 00 	lea    0x152e(%rip),%rax        # 2fa4 <array.3421+0x244>
    1a76:	48 89 e3             	mov    %rsp,%rbx
    1a79:	48 83 ec 08          	sub    $0x8,%rsp
    1a7d:	52                   	push   %rdx
    1a7e:	56                   	push   %rsi
    1a7f:	50                   	push   %rax
    1a80:	4c 8d 0d b9 2e 20 00 	lea    0x202eb9(%rip),%r9        # 204940 <authkey>
    1a87:	44 8b 05 b2 36 20 00 	mov    0x2036b2(%rip),%r8d        # 205140 <bomb_id>
    1a8e:	48 8d 0d 20 15 00 00 	lea    0x1520(%rip),%rcx        # 2fb5 <array.3421+0x255>
    1a95:	ba 00 20 00 00       	mov    $0x2000,%edx
    1a9a:	be 01 00 00 00       	mov    $0x1,%esi
    1a9f:	48 89 df             	mov    %rbx,%rdi
    1aa2:	b8 00 00 00 00       	mov    $0x0,%eax
    1aa7:	e8 34 f6 ff ff       	callq  10e0 <__sprintf_chk@plt>
    1aac:	48 83 c4 20          	add    $0x20,%rsp
    1ab0:	4c 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%r9
    1ab7:	00 
    1ab8:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    1abe:	48 89 d9             	mov    %rbx,%rcx
    1ac1:	48 8d 15 78 26 20 00 	lea    0x202678(%rip),%rdx        # 204140 <lab>
    1ac8:	48 8d 35 71 2a 20 00 	lea    0x202a71(%rip),%rsi        # 204540 <course>
    1acf:	48 8d 3d 6a 32 20 00 	lea    0x20326a(%rip),%rdi        # 204d40 <userid>
    1ad6:	e8 c9 0f 00 00       	callq  2aa4 <driver_post>
    1adb:	85 c0                	test   %eax,%eax
    1add:	78 48                	js     1b27 <send_msg+0x126>
    1adf:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
    1ae6:	00 
    1ae7:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1aee:	00 00 
    1af0:	75 4c                	jne    1b3e <send_msg+0x13d>
    1af2:	48 81 c4 10 40 00 00 	add    $0x4010,%rsp
    1af9:	5b                   	pop    %rbx
    1afa:	c3                   	retq   
    1afb:	48 8d 35 46 13 00 00 	lea    0x1346(%rip),%rsi        # 2e48 <array.3421+0xe8>
    1b02:	bf 01 00 00 00       	mov    $0x1,%edi
    1b07:	b8 00 00 00 00       	mov    $0x0,%eax
    1b0c:	e8 4f f5 ff ff       	callq  1060 <__printf_chk@plt>
    1b11:	bf 08 00 00 00       	mov    $0x8,%edi
    1b16:	e8 75 f5 ff ff       	callq  1090 <exit@plt>
    1b1b:	48 8d 05 8a 14 00 00 	lea    0x148a(%rip),%rax        # 2fac <array.3421+0x24c>
    1b22:	e9 4f ff ff ff       	jmpq   1a76 <send_msg+0x75>
    1b27:	48 8d bc 24 00 20 00 	lea    0x2000(%rsp),%rdi
    1b2e:	00 
    1b2f:	e8 4c f4 ff ff       	callq  f80 <puts@plt>
    1b34:	bf 00 00 00 00       	mov    $0x0,%edi
    1b39:	e8 52 f5 ff ff       	callq  1090 <exit@plt>
    1b3e:	e8 5d f4 ff ff       	callq  fa0 <__stack_chk_fail@plt>

0000000000001b43 <explode_bomb>:
    1b43:	48 83 ec 08          	sub    $0x8,%rsp
    1b47:	48 8d 3d 76 14 00 00 	lea    0x1476(%rip),%rdi        # 2fc4 <array.3421+0x264>
    1b4e:	e8 2d f4 ff ff       	callq  f80 <puts@plt>
    1b53:	48 8d 3d 73 14 00 00 	lea    0x1473(%rip),%rdi        # 2fcd <array.3421+0x26d>
    1b5a:	e8 21 f4 ff ff       	callq  f80 <puts@plt>
    1b5f:	bf 00 00 00 00       	mov    $0x0,%edi
    1b64:	e8 98 fe ff ff       	callq  1a01 <send_msg>
    1b69:	48 8d 3d 00 13 00 00 	lea    0x1300(%rip),%rdi        # 2e70 <array.3421+0x110>
    1b70:	e8 0b f4 ff ff       	callq  f80 <puts@plt>
    1b75:	bf 08 00 00 00       	mov    $0x8,%edi
    1b7a:	e8 11 f5 ff ff       	callq  1090 <exit@plt>

0000000000001b7f <read_six_numbers>:
    1b7f:	48 83 ec 08          	sub    $0x8,%rsp
    1b83:	48 89 f2             	mov    %rsi,%rdx
    1b86:	48 8d 76 14          	lea    0x14(%rsi),%rsi
    1b8a:	48 8d 42 10          	lea    0x10(%rdx),%rax
    1b8e:	48 8d 4a 04          	lea    0x4(%rdx),%rcx
    1b92:	56                   	push   %rsi
    1b93:	50                   	push   %rax
    1b94:	4c 8d 4a 0c          	lea    0xc(%rdx),%r9
    1b98:	4c 8d 42 08          	lea    0x8(%rdx),%r8
    1b9c:	48 8d 35 41 14 00 00 	lea    0x1441(%rip),%rsi        # 2fe4 <array.3421+0x284>
    1ba3:	b8 00 00 00 00       	mov    $0x0,%eax
    1ba8:	e8 a3 f4 ff ff       	callq  1050 <__isoc99_sscanf@plt>
    1bad:	48 83 c4 10          	add    $0x10,%rsp
    1bb1:	83 f8 05             	cmp    $0x5,%eax
    1bb4:	7e 05                	jle    1bbb <read_six_numbers+0x3c>
    1bb6:	48 83 c4 08          	add    $0x8,%rsp
    1bba:	c3                   	retq   
    1bbb:	e8 83 ff ff ff       	callq  1b43 <explode_bomb>

0000000000001bc0 <read_line>:
    1bc0:	48 83 ec 08          	sub    $0x8,%rsp
    1bc4:	b8 00 00 00 00       	mov    $0x0,%eax
    1bc9:	e8 ec fd ff ff       	callq  19ba <skip>
    1bce:	48 85 c0             	test   %rax,%rax
    1bd1:	74 72                	je     1c45 <read_line+0x85>
    1bd3:	8b 35 53 39 20 00    	mov    0x203953(%rip),%esi        # 20552c <num_input_strings>
    1bd9:	48 63 c6             	movslq %esi,%rax
    1bdc:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
    1be0:	48 c1 e0 04          	shl    $0x4,%rax
    1be4:	48 89 c2             	mov    %rax,%rdx
    1be7:	48 8d 05 52 39 20 00 	lea    0x203952(%rip),%rax        # 205540 <input_strings>
    1bee:	48 01 c2             	add    %rax,%rdx
    1bf1:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    1bf8:	b8 00 00 00 00       	mov    $0x0,%eax
    1bfd:	48 89 d7             	mov    %rdx,%rdi
    1c00:	f2 ae                	repnz scas %es:(%rdi),%al
    1c02:	48 f7 d1             	not    %rcx
    1c05:	48 83 e9 01          	sub    $0x1,%rcx
    1c09:	83 f9 4e             	cmp    $0x4e,%ecx
    1c0c:	0f 8f ab 00 00 00    	jg     1cbd <read_line+0xfd>
    1c12:	83 e9 01             	sub    $0x1,%ecx
    1c15:	48 63 c9             	movslq %ecx,%rcx
    1c18:	48 63 c6             	movslq %esi,%rax
    1c1b:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
    1c1f:	48 c1 e0 04          	shl    $0x4,%rax
    1c23:	48 89 c7             	mov    %rax,%rdi
    1c26:	48 8d 05 13 39 20 00 	lea    0x203913(%rip),%rax        # 205540 <input_strings>
    1c2d:	48 01 f8             	add    %rdi,%rax
    1c30:	c6 04 08 00          	movb   $0x0,(%rax,%rcx,1)
    1c34:	83 c6 01             	add    $0x1,%esi
    1c37:	89 35 ef 38 20 00    	mov    %esi,0x2038ef(%rip)        # 20552c <num_input_strings>
    1c3d:	48 89 d0             	mov    %rdx,%rax
    1c40:	48 83 c4 08          	add    $0x8,%rsp
    1c44:	c3                   	retq   
    1c45:	48 8b 05 c4 38 20 00 	mov    0x2038c4(%rip),%rax        # 205510 <stdin@@GLIBC_2.2.5>
    1c4c:	48 39 05 dd 38 20 00 	cmp    %rax,0x2038dd(%rip)        # 205530 <infile>
    1c53:	74 1b                	je     1c70 <read_line+0xb0>
    1c55:	48 8d 3d b8 13 00 00 	lea    0x13b8(%rip),%rdi        # 3014 <array.3421+0x2b4>
    1c5c:	e8 df f2 ff ff       	callq  f40 <getenv@plt>
    1c61:	48 85 c0             	test   %rax,%rax
    1c64:	74 20                	je     1c86 <read_line+0xc6>
    1c66:	bf 00 00 00 00       	mov    $0x0,%edi
    1c6b:	e8 20 f4 ff ff       	callq  1090 <exit@plt>
    1c70:	48 8d 3d 7f 13 00 00 	lea    0x137f(%rip),%rdi        # 2ff6 <array.3421+0x296>
    1c77:	e8 04 f3 ff ff       	callq  f80 <puts@plt>
    1c7c:	bf 08 00 00 00       	mov    $0x8,%edi
    1c81:	e8 0a f4 ff ff       	callq  1090 <exit@plt>
    1c86:	48 8b 05 83 38 20 00 	mov    0x203883(%rip),%rax        # 205510 <stdin@@GLIBC_2.2.5>
    1c8d:	48 89 05 9c 38 20 00 	mov    %rax,0x20389c(%rip)        # 205530 <infile>
    1c94:	b8 00 00 00 00       	mov    $0x0,%eax
    1c99:	e8 1c fd ff ff       	callq  19ba <skip>
    1c9e:	48 85 c0             	test   %rax,%rax
    1ca1:	0f 85 2c ff ff ff    	jne    1bd3 <read_line+0x13>
    1ca7:	48 8d 3d 48 13 00 00 	lea    0x1348(%rip),%rdi        # 2ff6 <array.3421+0x296>
    1cae:	e8 cd f2 ff ff       	callq  f80 <puts@plt>
    1cb3:	bf 00 00 00 00       	mov    $0x0,%edi
    1cb8:	e8 d3 f3 ff ff       	callq  1090 <exit@plt>
    1cbd:	48 8d 3d 5b 13 00 00 	lea    0x135b(%rip),%rdi        # 301f <array.3421+0x2bf>
    1cc4:	e8 b7 f2 ff ff       	callq  f80 <puts@plt>
    1cc9:	8b 05 5d 38 20 00    	mov    0x20385d(%rip),%eax        # 20552c <num_input_strings>
    1ccf:	8d 50 01             	lea    0x1(%rax),%edx
    1cd2:	89 15 54 38 20 00    	mov    %edx,0x203854(%rip)        # 20552c <num_input_strings>
    1cd8:	48 98                	cltq   
    1cda:	48 6b c0 50          	imul   $0x50,%rax,%rax
    1cde:	48 8d 15 5b 38 20 00 	lea    0x20385b(%rip),%rdx        # 205540 <input_strings>
    1ce5:	48 be 2a 2a 2a 74 72 	movabs $0x636e7572742a2a2a,%rsi
    1cec:	75 6e 63 
    1cef:	48 bf 61 74 65 64 2a 	movabs $0x2a2a2a64657461,%rdi
    1cf6:	2a 2a 00 
    1cf9:	48 89 34 02          	mov    %rsi,(%rdx,%rax,1)
    1cfd:	48 89 7c 02 08       	mov    %rdi,0x8(%rdx,%rax,1)
    1d02:	e8 3c fe ff ff       	callq  1b43 <explode_bomb>

0000000000001d07 <phase_defused>:
    1d07:	48 83 ec 78          	sub    $0x78,%rsp
    1d0b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1d12:	00 00 
    1d14:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
    1d19:	31 c0                	xor    %eax,%eax
    1d1b:	bf 01 00 00 00       	mov    $0x1,%edi
    1d20:	e8 dc fc ff ff       	callq  1a01 <send_msg>
    1d25:	83 3d 00 38 20 00 06 	cmpl   $0x6,0x203800(%rip)        # 20552c <num_input_strings>//输入6次
    1d2c:	74 19                	je     1d47 <phase_defused+0x40>
    1d2e:	48 8b 44 24 68       	mov    0x68(%rsp),%rax
    1d33:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1d3a:	00 00 
    1d3c:	0f 85 84 00 00 00    	jne    1dc6 <phase_defused+0xbf>
    1d42:	48 83 c4 78          	add    $0x78,%rsp
    1d46:	c3                   	retq   
    1d47:	48 8d 4c 24 0c       	lea    0xc(%rsp),%rcx
    1d4c:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
    1d51:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
    1d56:	48 8d 35 dd 12 00 00 	lea    0x12dd(%rip),%rsi        # 303a <array.3421+0x2da>
    1d5d:	48 8d 3d cc 38 20 00 	lea    0x2038cc(%rip),%rdi        # 205630 <input_strings+0xf0>//%rdi是第四个问题的输入，%rsi是"%d %d %s",猜测在第四问后边多输一个字符串
    1d64:	b8 00 00 00 00       	mov    $0x0,%eax
    1d69:	e8 e2 f2 ff ff       	callq  1050 <__isoc99_sscanf@plt>
    1d6e:	83 f8 03             	cmp    $0x3,%eax
    1d71:	74 1a                	je     1d8d <phase_defused+0x86>
    1d73:	48 8d 3d 7e 11 00 00 	lea    0x117e(%rip),%rdi        # 2ef8 <array.3421+0x198>
    1d7a:	e8 01 f2 ff ff       	callq  f80 <puts@plt>
    1d7f:	48 8d 3d a2 11 00 00 	lea    0x11a2(%rip),%rdi        # 2f28 <array.3421+0x1c8>
    1d86:	e8 f5 f1 ff ff       	callq  f80 <puts@plt>
    1d8b:	eb a1                	jmp    1d2e <phase_defused+0x27>
    1d8d:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
    1d92:	48 8d 35 aa 12 00 00 	lea    0x12aa(%rip),%rsi        # 3043 <array.3421+0x2e3>//%rdi是第四个问题的输入字符串，%rsi是"GreatestTAOisSimplest",
    1d99:	e8 a2 fa ff ff       	callq  1840 <strings_not_equal>
    1d9e:	85 c0                	test   %eax,%eax
    1da0:	75 d1                	jne    1d73 <phase_defused+0x6c>
    1da2:	48 8d 3d ef 10 00 00 	lea    0x10ef(%rip),%rdi        # 2e98 <array.3421+0x138>
    1da9:	e8 d2 f1 ff ff       	callq  f80 <puts@plt>
    1dae:	48 8d 3d 0b 11 00 00 	lea    0x110b(%rip),%rdi        # 2ec0 <array.3421+0x160>
    1db5:	e8 c6 f1 ff ff       	callq  f80 <puts@plt>
    1dba:	b8 00 00 00 00       	mov    $0x0,%eax
    1dbf:	e8 8d f9 ff ff       	callq  1751 <secret_phase>
    1dc4:	eb ad                	jmp    1d73 <phase_defused+0x6c>
    1dc6:	e8 d5 f1 ff ff       	callq  fa0 <__stack_chk_fail@plt>

0000000000001dcb <rio_readinitb>:
    1dcb:	89 37                	mov    %esi,(%rdi)
    1dcd:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
    1dd4:	48 8d 47 10          	lea    0x10(%rdi),%rax
    1dd8:	48 89 47 08          	mov    %rax,0x8(%rdi)
    1ddc:	c3                   	retq   

0000000000001ddd <sigalrm_handler>:
    1ddd:	48 83 ec 08          	sub    $0x8,%rsp
    1de1:	b9 00 00 00 00       	mov    $0x0,%ecx
    1de6:	48 8d 15 bb 12 00 00 	lea    0x12bb(%rip),%rdx        # 30a8 <array.3421+0x348>
    1ded:	be 01 00 00 00       	mov    $0x1,%esi
    1df2:	48 8b 3d 27 37 20 00 	mov    0x203727(%rip),%rdi        # 205520 <stderr@@GLIBC_2.2.5>
    1df9:	b8 00 00 00 00       	mov    $0x0,%eax
    1dfe:	e8 ad f2 ff ff       	callq  10b0 <__fprintf_chk@plt>
    1e03:	bf 01 00 00 00       	mov    $0x1,%edi
    1e08:	e8 83 f2 ff ff       	callq  1090 <exit@plt>

0000000000001e0d <rio_writen>:
    1e0d:	41 55                	push   %r13
    1e0f:	41 54                	push   %r12
    1e11:	55                   	push   %rbp
    1e12:	53                   	push   %rbx
    1e13:	48 83 ec 08          	sub    $0x8,%rsp
    1e17:	41 89 fc             	mov    %edi,%r12d
    1e1a:	48 89 f5             	mov    %rsi,%rbp
    1e1d:	49 89 d5             	mov    %rdx,%r13
    1e20:	48 89 d3             	mov    %rdx,%rbx
    1e23:	eb 06                	jmp    1e2b <rio_writen+0x1e>
    1e25:	48 29 c3             	sub    %rax,%rbx
    1e28:	48 01 c5             	add    %rax,%rbp
    1e2b:	48 85 db             	test   %rbx,%rbx
    1e2e:	74 24                	je     1e54 <rio_writen+0x47>
    1e30:	48 89 da             	mov    %rbx,%rdx
    1e33:	48 89 ee             	mov    %rbp,%rsi
    1e36:	44 89 e7             	mov    %r12d,%edi
    1e39:	e8 52 f1 ff ff       	callq  f90 <write@plt>
    1e3e:	48 85 c0             	test   %rax,%rax
    1e41:	7f e2                	jg     1e25 <rio_writen+0x18>
    1e43:	e8 18 f1 ff ff       	callq  f60 <__errno_location@plt>
    1e48:	83 38 04             	cmpl   $0x4,(%rax)
    1e4b:	75 15                	jne    1e62 <rio_writen+0x55>
    1e4d:	b8 00 00 00 00       	mov    $0x0,%eax
    1e52:	eb d1                	jmp    1e25 <rio_writen+0x18>
    1e54:	4c 89 e8             	mov    %r13,%rax
    1e57:	48 83 c4 08          	add    $0x8,%rsp
    1e5b:	5b                   	pop    %rbx
    1e5c:	5d                   	pop    %rbp
    1e5d:	41 5c                	pop    %r12
    1e5f:	41 5d                	pop    %r13
    1e61:	c3                   	retq   
    1e62:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    1e69:	eb ec                	jmp    1e57 <rio_writen+0x4a>

0000000000001e6b <rio_read>:
    1e6b:	41 55                	push   %r13
    1e6d:	41 54                	push   %r12
    1e6f:	55                   	push   %rbp
    1e70:	53                   	push   %rbx
    1e71:	48 83 ec 08          	sub    $0x8,%rsp
    1e75:	48 89 fb             	mov    %rdi,%rbx
    1e78:	49 89 f5             	mov    %rsi,%r13
    1e7b:	49 89 d4             	mov    %rdx,%r12
    1e7e:	eb 0a                	jmp    1e8a <rio_read+0x1f>
    1e80:	e8 db f0 ff ff       	callq  f60 <__errno_location@plt>
    1e85:	83 38 04             	cmpl   $0x4,(%rax)
    1e88:	75 5c                	jne    1ee6 <rio_read+0x7b>
    1e8a:	8b 6b 04             	mov    0x4(%rbx),%ebp
    1e8d:	85 ed                	test   %ebp,%ebp
    1e8f:	7f 24                	jg     1eb5 <rio_read+0x4a>
    1e91:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
    1e95:	8b 3b                	mov    (%rbx),%edi
    1e97:	ba 00 20 00 00       	mov    $0x2000,%edx
    1e9c:	48 89 ee             	mov    %rbp,%rsi
    1e9f:	e8 2c f1 ff ff       	callq  fd0 <read@plt>
    1ea4:	89 43 04             	mov    %eax,0x4(%rbx)
    1ea7:	85 c0                	test   %eax,%eax
    1ea9:	78 d5                	js     1e80 <rio_read+0x15>
    1eab:	85 c0                	test   %eax,%eax
    1ead:	74 40                	je     1eef <rio_read+0x84>
    1eaf:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
    1eb3:	eb d5                	jmp    1e8a <rio_read+0x1f>
    1eb5:	89 e8                	mov    %ebp,%eax
    1eb7:	4c 39 e0             	cmp    %r12,%rax
    1eba:	72 03                	jb     1ebf <rio_read+0x54>
    1ebc:	44 89 e5             	mov    %r12d,%ebp
    1ebf:	4c 63 e5             	movslq %ebp,%r12
    1ec2:	48 8b 73 08          	mov    0x8(%rbx),%rsi
    1ec6:	4c 89 e2             	mov    %r12,%rdx
    1ec9:	4c 89 ef             	mov    %r13,%rdi
    1ecc:	e8 5f f1 ff ff       	callq  1030 <memcpy@plt>
    1ed1:	4c 01 63 08          	add    %r12,0x8(%rbx)
    1ed5:	29 6b 04             	sub    %ebp,0x4(%rbx)
    1ed8:	4c 89 e0             	mov    %r12,%rax
    1edb:	48 83 c4 08          	add    $0x8,%rsp
    1edf:	5b                   	pop    %rbx
    1ee0:	5d                   	pop    %rbp
    1ee1:	41 5c                	pop    %r12
    1ee3:	41 5d                	pop    %r13
    1ee5:	c3                   	retq   
    1ee6:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    1eed:	eb ec                	jmp    1edb <rio_read+0x70>
    1eef:	b8 00 00 00 00       	mov    $0x0,%eax
    1ef4:	eb e5                	jmp    1edb <rio_read+0x70>

0000000000001ef6 <rio_readlineb>:
    1ef6:	41 55                	push   %r13
    1ef8:	41 54                	push   %r12
    1efa:	55                   	push   %rbp
    1efb:	53                   	push   %rbx
    1efc:	48 83 ec 18          	sub    $0x18,%rsp
    1f00:	49 89 fd             	mov    %rdi,%r13
    1f03:	48 89 f5             	mov    %rsi,%rbp
    1f06:	49 89 d4             	mov    %rdx,%r12
    1f09:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1f10:	00 00 
    1f12:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    1f17:	31 c0                	xor    %eax,%eax
    1f19:	bb 01 00 00 00       	mov    $0x1,%ebx
    1f1e:	4c 39 e3             	cmp    %r12,%rbx
    1f21:	73 47                	jae    1f6a <rio_readlineb+0x74>
    1f23:	48 8d 74 24 07       	lea    0x7(%rsp),%rsi
    1f28:	ba 01 00 00 00       	mov    $0x1,%edx
    1f2d:	4c 89 ef             	mov    %r13,%rdi
    1f30:	e8 36 ff ff ff       	callq  1e6b <rio_read>
    1f35:	83 f8 01             	cmp    $0x1,%eax
    1f38:	75 1c                	jne    1f56 <rio_readlineb+0x60>
    1f3a:	48 8d 45 01          	lea    0x1(%rbp),%rax
    1f3e:	0f b6 54 24 07       	movzbl 0x7(%rsp),%edx
    1f43:	88 55 00             	mov    %dl,0x0(%rbp)
    1f46:	80 7c 24 07 0a       	cmpb   $0xa,0x7(%rsp)
    1f4b:	74 1a                	je     1f67 <rio_readlineb+0x71>
    1f4d:	48 83 c3 01          	add    $0x1,%rbx
    1f51:	48 89 c5             	mov    %rax,%rbp
    1f54:	eb c8                	jmp    1f1e <rio_readlineb+0x28>
    1f56:	85 c0                	test   %eax,%eax
    1f58:	75 32                	jne    1f8c <rio_readlineb+0x96>
    1f5a:	48 83 fb 01          	cmp    $0x1,%rbx
    1f5e:	75 0a                	jne    1f6a <rio_readlineb+0x74>
    1f60:	b8 00 00 00 00       	mov    $0x0,%eax
    1f65:	eb 0a                	jmp    1f71 <rio_readlineb+0x7b>
    1f67:	48 89 c5             	mov    %rax,%rbp
    1f6a:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
    1f6e:	48 89 d8             	mov    %rbx,%rax
    1f71:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
    1f76:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    1f7d:	00 00 
    1f7f:	75 14                	jne    1f95 <rio_readlineb+0x9f>
    1f81:	48 83 c4 18          	add    $0x18,%rsp
    1f85:	5b                   	pop    %rbx
    1f86:	5d                   	pop    %rbp
    1f87:	41 5c                	pop    %r12
    1f89:	41 5d                	pop    %r13
    1f8b:	c3                   	retq   
    1f8c:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    1f93:	eb dc                	jmp    1f71 <rio_readlineb+0x7b>
    1f95:	e8 06 f0 ff ff       	callq  fa0 <__stack_chk_fail@plt>

0000000000001f9a <urlencode>:
    1f9a:	41 54                	push   %r12
    1f9c:	55                   	push   %rbp
    1f9d:	53                   	push   %rbx
    1f9e:	48 83 ec 10          	sub    $0x10,%rsp
    1fa2:	48 89 fb             	mov    %rdi,%rbx
    1fa5:	48 89 f5             	mov    %rsi,%rbp
    1fa8:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1faf:	00 00 
    1fb1:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    1fb6:	31 c0                	xor    %eax,%eax
    1fb8:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    1fbf:	f2 ae                	repnz scas %es:(%rdi),%al
    1fc1:	48 89 ce             	mov    %rcx,%rsi
    1fc4:	48 f7 d6             	not    %rsi
    1fc7:	8d 46 ff             	lea    -0x1(%rsi),%eax
    1fca:	eb 0f                	jmp    1fdb <urlencode+0x41>
    1fcc:	44 88 45 00          	mov    %r8b,0x0(%rbp)
    1fd0:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    1fd4:	48 83 c3 01          	add    $0x1,%rbx
    1fd8:	44 89 e0             	mov    %r12d,%eax
    1fdb:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
    1fdf:	85 c0                	test   %eax,%eax
    1fe1:	0f 84 a8 00 00 00    	je     208f <urlencode+0xf5>
    1fe7:	44 0f b6 03          	movzbl (%rbx),%r8d
    1feb:	41 80 f8 2a          	cmp    $0x2a,%r8b
    1fef:	0f 94 c2             	sete   %dl
    1ff2:	41 80 f8 2d          	cmp    $0x2d,%r8b
    1ff6:	0f 94 c0             	sete   %al
    1ff9:	08 c2                	or     %al,%dl
    1ffb:	75 cf                	jne    1fcc <urlencode+0x32>
    1ffd:	41 80 f8 2e          	cmp    $0x2e,%r8b
    2001:	74 c9                	je     1fcc <urlencode+0x32>
    2003:	41 80 f8 5f          	cmp    $0x5f,%r8b
    2007:	74 c3                	je     1fcc <urlencode+0x32>
    2009:	41 8d 40 d0          	lea    -0x30(%r8),%eax
    200d:	3c 09                	cmp    $0x9,%al
    200f:	76 bb                	jbe    1fcc <urlencode+0x32>
    2011:	41 8d 40 bf          	lea    -0x41(%r8),%eax
    2015:	3c 19                	cmp    $0x19,%al
    2017:	76 b3                	jbe    1fcc <urlencode+0x32>
    2019:	41 8d 40 9f          	lea    -0x61(%r8),%eax
    201d:	3c 19                	cmp    $0x19,%al
    201f:	76 ab                	jbe    1fcc <urlencode+0x32>
    2021:	41 80 f8 20          	cmp    $0x20,%r8b
    2025:	74 56                	je     207d <urlencode+0xe3>
    2027:	41 8d 40 e0          	lea    -0x20(%r8),%eax
    202b:	3c 5f                	cmp    $0x5f,%al
    202d:	0f 96 c2             	setbe  %dl
    2030:	41 80 f8 09          	cmp    $0x9,%r8b
    2034:	0f 94 c0             	sete   %al
    2037:	08 c2                	or     %al,%dl
    2039:	74 4f                	je     208a <urlencode+0xf0>
    203b:	48 89 e7             	mov    %rsp,%rdi
    203e:	45 0f b6 c0          	movzbl %r8b,%r8d
    2042:	48 8d 0d 17 11 00 00 	lea    0x1117(%rip),%rcx        # 3160 <array.3421+0x400>
    2049:	ba 08 00 00 00       	mov    $0x8,%edx
    204e:	be 01 00 00 00       	mov    $0x1,%esi
    2053:	b8 00 00 00 00       	mov    $0x0,%eax
    2058:	e8 83 f0 ff ff       	callq  10e0 <__sprintf_chk@plt>
    205d:	0f b6 04 24          	movzbl (%rsp),%eax
    2061:	88 45 00             	mov    %al,0x0(%rbp)
    2064:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
    2069:	88 45 01             	mov    %al,0x1(%rbp)
    206c:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
    2071:	88 45 02             	mov    %al,0x2(%rbp)
    2074:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
    2078:	e9 57 ff ff ff       	jmpq   1fd4 <urlencode+0x3a>
    207d:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
    2081:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    2085:	e9 4a ff ff ff       	jmpq   1fd4 <urlencode+0x3a>
    208a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    208f:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
    2094:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
    209b:	00 00 
    209d:	75 09                	jne    20a8 <urlencode+0x10e>
    209f:	48 83 c4 10          	add    $0x10,%rsp
    20a3:	5b                   	pop    %rbx
    20a4:	5d                   	pop    %rbp
    20a5:	41 5c                	pop    %r12
    20a7:	c3                   	retq   
    20a8:	e8 f3 ee ff ff       	callq  fa0 <__stack_chk_fail@plt>

00000000000020ad <submitr>:
    20ad:	41 57                	push   %r15
    20af:	41 56                	push   %r14
    20b1:	41 55                	push   %r13
    20b3:	41 54                	push   %r12
    20b5:	55                   	push   %rbp
    20b6:	53                   	push   %rbx
    20b7:	48 81 ec 68 a0 00 00 	sub    $0xa068,%rsp
    20be:	49 89 fd             	mov    %rdi,%r13
    20c1:	89 74 24 1c          	mov    %esi,0x1c(%rsp)
    20c5:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
    20ca:	49 89 ce             	mov    %rcx,%r14
    20cd:	4c 89 44 24 10       	mov    %r8,0x10(%rsp)
    20d2:	4d 89 cf             	mov    %r9,%r15
    20d5:	48 8b ac 24 a0 a0 00 	mov    0xa0a0(%rsp),%rbp
    20dc:	00 
    20dd:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    20e4:	00 00 
    20e6:	48 89 84 24 58 a0 00 	mov    %rax,0xa058(%rsp)
    20ed:	00 
    20ee:	31 c0                	xor    %eax,%eax
    20f0:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
    20f7:	00 
    20f8:	ba 00 00 00 00       	mov    $0x0,%edx
    20fd:	be 01 00 00 00       	mov    $0x1,%esi
    2102:	bf 02 00 00 00       	mov    $0x2,%edi
    2107:	e8 e4 ef ff ff       	callq  10f0 <socket@plt>
    210c:	85 c0                	test   %eax,%eax
    210e:	0f 88 ae 02 00 00    	js     23c2 <submitr+0x315>
    2114:	89 c3                	mov    %eax,%ebx
    2116:	4c 89 ef             	mov    %r13,%rdi
    2119:	e8 e2 ee ff ff       	callq  1000 <gethostbyname@plt>
    211e:	48 85 c0             	test   %rax,%rax
    2121:	0f 84 e7 02 00 00    	je     240e <submitr+0x361>
    2127:	4c 8d 64 24 30       	lea    0x30(%rsp),%r12
    212c:	48 c7 44 24 32 00 00 	movq   $0x0,0x32(%rsp)
    2133:	00 00 
    2135:	c7 44 24 3a 00 00 00 	movl   $0x0,0x3a(%rsp)
    213c:	00 
    213d:	66 c7 44 24 3e 00 00 	movw   $0x0,0x3e(%rsp)
    2144:	66 c7 44 24 30 02 00 	movw   $0x2,0x30(%rsp)
    214b:	48 63 50 14          	movslq 0x14(%rax),%rdx
    214f:	48 8b 40 18          	mov    0x18(%rax),%rax
    2153:	48 8b 30             	mov    (%rax),%rsi
    2156:	48 8d 7c 24 34       	lea    0x34(%rsp),%rdi
    215b:	b9 0c 00 00 00       	mov    $0xc,%ecx
    2160:	e8 ab ee ff ff       	callq  1010 <__memmove_chk@plt>
    2165:	0f b7 44 24 1c       	movzwl 0x1c(%rsp),%eax
    216a:	66 c1 c8 08          	ror    $0x8,%ax
    216e:	66 89 44 24 32       	mov    %ax,0x32(%rsp)
    2173:	ba 10 00 00 00       	mov    $0x10,%edx
    2178:	4c 89 e6             	mov    %r12,%rsi
    217b:	89 df                	mov    %ebx,%edi
    217d:	e8 1e ef ff ff       	callq  10a0 <connect@plt>
    2182:	85 c0                	test   %eax,%eax
    2184:	0f 88 fa 02 00 00    	js     2484 <submitr+0x3d7>
    218a:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
    2191:	b8 00 00 00 00       	mov    $0x0,%eax
    2196:	48 89 f1             	mov    %rsi,%rcx
    2199:	4c 89 ff             	mov    %r15,%rdi
    219c:	f2 ae                	repnz scas %es:(%rdi),%al
    219e:	48 89 ca             	mov    %rcx,%rdx
    21a1:	48 f7 d2             	not    %rdx
    21a4:	48 89 f1             	mov    %rsi,%rcx
    21a7:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    21ac:	f2 ae                	repnz scas %es:(%rdi),%al
    21ae:	48 f7 d1             	not    %rcx
    21b1:	49 89 c8             	mov    %rcx,%r8
    21b4:	48 89 f1             	mov    %rsi,%rcx
    21b7:	4c 89 f7             	mov    %r14,%rdi
    21ba:	f2 ae                	repnz scas %es:(%rdi),%al
    21bc:	48 f7 d1             	not    %rcx
    21bf:	4d 8d 44 08 fe       	lea    -0x2(%r8,%rcx,1),%r8
    21c4:	48 89 f1             	mov    %rsi,%rcx
    21c7:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
    21cc:	f2 ae                	repnz scas %es:(%rdi),%al
    21ce:	48 89 c8             	mov    %rcx,%rax
    21d1:	48 f7 d0             	not    %rax
    21d4:	49 8d 4c 00 ff       	lea    -0x1(%r8,%rax,1),%rcx
    21d9:	48 8d 44 52 fd       	lea    -0x3(%rdx,%rdx,2),%rax
    21de:	48 8d 84 01 80 00 00 	lea    0x80(%rcx,%rax,1),%rax
    21e5:	00 
    21e6:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
    21ec:	0f 87 fa 02 00 00    	ja     24ec <submitr+0x43f>
    21f2:	48 8d b4 24 50 40 00 	lea    0x4050(%rsp),%rsi
    21f9:	00 
    21fa:	b9 00 04 00 00       	mov    $0x400,%ecx
    21ff:	b8 00 00 00 00       	mov    $0x0,%eax
    2204:	48 89 f7             	mov    %rsi,%rdi
    2207:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    220a:	4c 89 ff             	mov    %r15,%rdi
    220d:	e8 88 fd ff ff       	callq  1f9a <urlencode>
    2212:	85 c0                	test   %eax,%eax
    2214:	0f 88 45 03 00 00    	js     255f <submitr+0x4b2>
    221a:	4c 8d a4 24 50 20 00 	lea    0x2050(%rsp),%r12
    2221:	00 
    2222:	48 83 ec 08          	sub    $0x8,%rsp
    2226:	41 55                	push   %r13
    2228:	48 8d 84 24 60 40 00 	lea    0x4060(%rsp),%rax
    222f:	00 
    2230:	50                   	push   %rax
    2231:	41 56                	push   %r14
    2233:	4c 8b 4c 24 30       	mov    0x30(%rsp),%r9
    2238:	4c 8b 44 24 28       	mov    0x28(%rsp),%r8
    223d:	48 8d 0d 8c 0e 00 00 	lea    0xe8c(%rip),%rcx        # 30d0 <array.3421+0x370>
    2244:	ba 00 20 00 00       	mov    $0x2000,%edx
    2249:	be 01 00 00 00       	mov    $0x1,%esi
    224e:	4c 89 e7             	mov    %r12,%rdi
    2251:	b8 00 00 00 00       	mov    $0x0,%eax
    2256:	e8 85 ee ff ff       	callq  10e0 <__sprintf_chk@plt>
    225b:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    2262:	b8 00 00 00 00       	mov    $0x0,%eax
    2267:	4c 89 e7             	mov    %r12,%rdi
    226a:	f2 ae                	repnz scas %es:(%rdi),%al
    226c:	48 89 ca             	mov    %rcx,%rdx
    226f:	48 f7 d2             	not    %rdx
    2272:	48 8d 52 ff          	lea    -0x1(%rdx),%rdx
    2276:	48 83 c4 20          	add    $0x20,%rsp
    227a:	4c 89 e6             	mov    %r12,%rsi
    227d:	89 df                	mov    %ebx,%edi
    227f:	e8 89 fb ff ff       	callq  1e0d <rio_writen>
    2284:	48 85 c0             	test   %rax,%rax
    2287:	0f 88 5d 03 00 00    	js     25ea <submitr+0x53d>
    228d:	4c 8d 64 24 40       	lea    0x40(%rsp),%r12
    2292:	89 de                	mov    %ebx,%esi
    2294:	4c 89 e7             	mov    %r12,%rdi
    2297:	e8 2f fb ff ff       	callq  1dcb <rio_readinitb>
    229c:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    22a3:	00 
    22a4:	ba 00 20 00 00       	mov    $0x2000,%edx
    22a9:	4c 89 e7             	mov    %r12,%rdi
    22ac:	e8 45 fc ff ff       	callq  1ef6 <rio_readlineb>
    22b1:	48 85 c0             	test   %rax,%rax
    22b4:	0f 8e 9c 03 00 00    	jle    2656 <submitr+0x5a9>
    22ba:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
    22bf:	48 8d 94 24 50 60 00 	lea    0x6050(%rsp),%rdx
    22c6:	00 
    22c7:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
    22ce:	00 
    22cf:	4c 8d 84 24 50 80 00 	lea    0x8050(%rsp),%r8
    22d6:	00 
    22d7:	48 8d 35 89 0e 00 00 	lea    0xe89(%rip),%rsi        # 3167 <array.3421+0x407>
    22de:	b8 00 00 00 00       	mov    $0x0,%eax
    22e3:	e8 68 ed ff ff       	callq  1050 <__isoc99_sscanf@plt>
    22e8:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    22ef:	00 
    22f0:	b9 03 00 00 00       	mov    $0x3,%ecx
    22f5:	48 8d 3d 82 0e 00 00 	lea    0xe82(%rip),%rdi        # 317e <array.3421+0x41e>
    22fc:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    22fe:	0f 97 c0             	seta   %al
    2301:	1c 00                	sbb    $0x0,%al
    2303:	84 c0                	test   %al,%al
    2305:	0f 84 cb 03 00 00    	je     26d6 <submitr+0x629>
    230b:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    2312:	00 
    2313:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    2318:	ba 00 20 00 00       	mov    $0x2000,%edx
    231d:	e8 d4 fb ff ff       	callq  1ef6 <rio_readlineb>
    2322:	48 85 c0             	test   %rax,%rax
    2325:	7f c1                	jg     22e8 <submitr+0x23b>
    2327:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    232e:	3a 20 43 
    2331:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2338:	20 75 6e 
    233b:	48 89 45 00          	mov    %rax,0x0(%rbp)
    233f:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2343:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    234a:	74 6f 20 
    234d:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
    2354:	68 65 61 
    2357:	48 89 45 10          	mov    %rax,0x10(%rbp)
    235b:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    235f:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
    2366:	66 72 6f 
    2369:	48 ba 6d 20 41 75 74 	movabs $0x616c6f747541206d,%rdx
    2370:	6f 6c 61 
    2373:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2377:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    237b:	48 b8 62 20 73 65 72 	movabs $0x7265767265732062,%rax
    2382:	76 65 72 
    2385:	48 89 45 30          	mov    %rax,0x30(%rbp)
    2389:	c6 45 38 00          	movb   $0x0,0x38(%rbp)
    238d:	89 df                	mov    %ebx,%edi
    238f:	e8 2c ec ff ff       	callq  fc0 <close@plt>
    2394:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2399:	48 8b 9c 24 58 a0 00 	mov    0xa058(%rsp),%rbx
    23a0:	00 
    23a1:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
    23a8:	00 00 
    23aa:	0f 85 96 04 00 00    	jne    2846 <submitr+0x799>
    23b0:	48 81 c4 68 a0 00 00 	add    $0xa068,%rsp
    23b7:	5b                   	pop    %rbx
    23b8:	5d                   	pop    %rbp
    23b9:	41 5c                	pop    %r12
    23bb:	41 5d                	pop    %r13
    23bd:	41 5e                	pop    %r14
    23bf:	41 5f                	pop    %r15
    23c1:	c3                   	retq   
    23c2:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    23c9:	3a 20 43 
    23cc:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    23d3:	20 75 6e 
    23d6:	48 89 45 00          	mov    %rax,0x0(%rbp)
    23da:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    23de:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    23e5:	74 6f 20 
    23e8:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    23ef:	65 20 73 
    23f2:	48 89 45 10          	mov    %rax,0x10(%rbp)
    23f6:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    23fa:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
    2401:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
    2407:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    240c:	eb 8b                	jmp    2399 <submitr+0x2ec>
    240e:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    2415:	3a 20 44 
    2418:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    241f:	20 75 6e 
    2422:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2426:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    242a:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2431:	74 6f 20 
    2434:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    243b:	76 65 20 
    243e:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2442:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2446:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
    244d:	61 62 20 
    2450:	48 ba 73 65 72 76 65 	movabs $0x6120726576726573,%rdx
    2457:	72 20 61 
    245a:	48 89 45 20          	mov    %rax,0x20(%rbp)
    245e:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2462:	c7 45 30 64 64 72 65 	movl   $0x65726464,0x30(%rbp)
    2469:	66 c7 45 34 73 73    	movw   $0x7373,0x34(%rbp)
    246f:	c6 45 36 00          	movb   $0x0,0x36(%rbp)
    2473:	89 df                	mov    %ebx,%edi
    2475:	e8 46 eb ff ff       	callq  fc0 <close@plt>
    247a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    247f:	e9 15 ff ff ff       	jmpq   2399 <submitr+0x2ec>
    2484:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
    248b:	3a 20 55 
    248e:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
    2495:	20 74 6f 
    2498:	48 89 45 00          	mov    %rax,0x0(%rbp)
    249c:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    24a0:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
    24a7:	65 63 74 
    24aa:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
    24b1:	68 65 20 
    24b4:	48 89 45 10          	mov    %rax,0x10(%rbp)
    24b8:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    24bc:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
    24c3:	61 62 20 
    24c6:	48 89 45 20          	mov    %rax,0x20(%rbp)
    24ca:	c7 45 28 73 65 72 76 	movl   $0x76726573,0x28(%rbp)
    24d1:	66 c7 45 2c 65 72    	movw   $0x7265,0x2c(%rbp)
    24d7:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
    24db:	89 df                	mov    %ebx,%edi
    24dd:	e8 de ea ff ff       	callq  fc0 <close@plt>
    24e2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    24e7:	e9 ad fe ff ff       	jmpq   2399 <submitr+0x2ec>
    24ec:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    24f3:	3a 20 52 
    24f6:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    24fd:	20 73 74 
    2500:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2504:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2508:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
    250f:	74 6f 6f 
    2512:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
    2519:	65 2e 20 
    251c:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2520:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2524:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
    252b:	61 73 65 
    252e:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
    2535:	49 54 52 
    2538:	48 89 45 20          	mov    %rax,0x20(%rbp)
    253c:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2540:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
    2547:	55 46 00 
    254a:	48 89 45 30          	mov    %rax,0x30(%rbp)
    254e:	89 df                	mov    %ebx,%edi
    2550:	e8 6b ea ff ff       	callq  fc0 <close@plt>
    2555:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    255a:	e9 3a fe ff ff       	jmpq   2399 <submitr+0x2ec>
    255f:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    2566:	3a 20 52 
    2569:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    2570:	20 73 74 
    2573:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2577:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    257b:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
    2582:	63 6f 6e 
    2585:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
    258c:	20 61 6e 
    258f:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2593:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2597:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
    259e:	67 61 6c 
    25a1:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
    25a8:	6e 70 72 
    25ab:	48 89 45 20          	mov    %rax,0x20(%rbp)
    25af:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    25b3:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
    25ba:	6c 65 20 
    25bd:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
    25c4:	63 74 65 
    25c7:	48 89 45 30          	mov    %rax,0x30(%rbp)
    25cb:	48 89 55 38          	mov    %rdx,0x38(%rbp)
    25cf:	66 c7 45 40 72 2e    	movw   $0x2e72,0x40(%rbp)
    25d5:	c6 45 42 00          	movb   $0x0,0x42(%rbp)
    25d9:	89 df                	mov    %ebx,%edi
    25db:	e8 e0 e9 ff ff       	callq  fc0 <close@plt>
    25e0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    25e5:	e9 af fd ff ff       	jmpq   2399 <submitr+0x2ec>
    25ea:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    25f1:	3a 20 43 
    25f4:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    25fb:	20 75 6e 
    25fe:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2602:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2606:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    260d:	74 6f 20 
    2610:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
    2617:	20 74 6f 
    261a:	48 89 45 10          	mov    %rax,0x10(%rbp)
    261e:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2622:	48 b8 20 74 68 65 20 	movabs $0x7475412065687420,%rax
    2629:	41 75 74 
    262c:	48 ba 6f 6c 61 62 20 	movabs $0x7265732062616c6f,%rdx
    2633:	73 65 72 
    2636:	48 89 45 20          	mov    %rax,0x20(%rbp)
    263a:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    263e:	c7 45 30 76 65 72 00 	movl   $0x726576,0x30(%rbp)
    2645:	89 df                	mov    %ebx,%edi
    2647:	e8 74 e9 ff ff       	callq  fc0 <close@plt>
    264c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2651:	e9 43 fd ff ff       	jmpq   2399 <submitr+0x2ec>
    2656:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    265d:	3a 20 43 
    2660:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2667:	20 75 6e 
    266a:	48 89 45 00          	mov    %rax,0x0(%rbp)
    266e:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2672:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2679:	74 6f 20 
    267c:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
    2683:	66 69 72 
    2686:	48 89 45 10          	mov    %rax,0x10(%rbp)
    268a:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    268e:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
    2695:	61 64 65 
    2698:	48 ba 72 20 66 72 6f 	movabs $0x41206d6f72662072,%rdx
    269f:	6d 20 41 
    26a2:	48 89 45 20          	mov    %rax,0x20(%rbp)
    26a6:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    26aa:	48 b8 75 74 6f 6c 61 	movabs $0x732062616c6f7475,%rax
    26b1:	62 20 73 
    26b4:	48 89 45 30          	mov    %rax,0x30(%rbp)
    26b8:	c7 45 38 65 72 76 65 	movl   $0x65767265,0x38(%rbp)
    26bf:	66 c7 45 3c 72 00    	movw   $0x72,0x3c(%rbp)
    26c5:	89 df                	mov    %ebx,%edi
    26c7:	e8 f4 e8 ff ff       	callq  fc0 <close@plt>
    26cc:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    26d1:	e9 c3 fc ff ff       	jmpq   2399 <submitr+0x2ec>
    26d6:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    26dd:	00 
    26de:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    26e3:	ba 00 20 00 00       	mov    $0x2000,%edx
    26e8:	e8 09 f8 ff ff       	callq  1ef6 <rio_readlineb>
    26ed:	48 85 c0             	test   %rax,%rax
    26f0:	0f 8e 96 00 00 00    	jle    278c <submitr+0x6df>
    26f6:	44 8b 44 24 2c       	mov    0x2c(%rsp),%r8d
    26fb:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
    2702:	0f 85 05 01 00 00    	jne    280d <submitr+0x760>
    2708:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    270f:	00 
    2710:	48 89 ef             	mov    %rbp,%rdi
    2713:	e8 58 e8 ff ff       	callq  f70 <strcpy@plt>
    2718:	89 df                	mov    %ebx,%edi
    271a:	e8 a1 e8 ff ff       	callq  fc0 <close@plt>
    271f:	b9 04 00 00 00       	mov    $0x4,%ecx
    2724:	48 8d 3d 4d 0a 00 00 	lea    0xa4d(%rip),%rdi        # 3178 <array.3421+0x418>
    272b:	48 89 ee             	mov    %rbp,%rsi
    272e:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    2730:	0f 97 c0             	seta   %al
    2733:	1c 00                	sbb    $0x0,%al
    2735:	0f be c0             	movsbl %al,%eax
    2738:	85 c0                	test   %eax,%eax
    273a:	0f 84 59 fc ff ff    	je     2399 <submitr+0x2ec>
    2740:	b9 05 00 00 00       	mov    $0x5,%ecx
    2745:	48 8d 3d 30 0a 00 00 	lea    0xa30(%rip),%rdi        # 317c <array.3421+0x41c>
    274c:	48 89 ee             	mov    %rbp,%rsi
    274f:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    2751:	0f 97 c0             	seta   %al
    2754:	1c 00                	sbb    $0x0,%al
    2756:	0f be c0             	movsbl %al,%eax
    2759:	85 c0                	test   %eax,%eax
    275b:	0f 84 38 fc ff ff    	je     2399 <submitr+0x2ec>
    2761:	b9 03 00 00 00       	mov    $0x3,%ecx
    2766:	48 8d 3d 14 0a 00 00 	lea    0xa14(%rip),%rdi        # 3181 <array.3421+0x421>
    276d:	48 89 ee             	mov    %rbp,%rsi
    2770:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    2772:	0f 97 c0             	seta   %al
    2775:	1c 00                	sbb    $0x0,%al
    2777:	0f be c0             	movsbl %al,%eax
    277a:	85 c0                	test   %eax,%eax
    277c:	0f 84 17 fc ff ff    	je     2399 <submitr+0x2ec>
    2782:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2787:	e9 0d fc ff ff       	jmpq   2399 <submitr+0x2ec>
    278c:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2793:	3a 20 43 
    2796:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    279d:	20 75 6e 
    27a0:	48 89 45 00          	mov    %rax,0x0(%rbp)
    27a4:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    27a8:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    27af:	74 6f 20 
    27b2:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
    27b9:	73 74 61 
    27bc:	48 89 45 10          	mov    %rax,0x10(%rbp)
    27c0:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    27c4:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
    27cb:	65 73 73 
    27ce:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
    27d5:	72 6f 6d 
    27d8:	48 89 45 20          	mov    %rax,0x20(%rbp)
    27dc:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    27e0:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
    27e7:	6c 61 62 
    27ea:	48 ba 20 73 65 72 76 	movabs $0x72657672657320,%rdx
    27f1:	65 72 00 
    27f4:	48 89 45 30          	mov    %rax,0x30(%rbp)
    27f8:	48 89 55 38          	mov    %rdx,0x38(%rbp)
    27fc:	89 df                	mov    %ebx,%edi
    27fe:	e8 bd e7 ff ff       	callq  fc0 <close@plt>
    2803:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2808:	e9 8c fb ff ff       	jmpq   2399 <submitr+0x2ec>
    280d:	4c 8d 8c 24 50 80 00 	lea    0x8050(%rsp),%r9
    2814:	00 
    2815:	48 8d 0d 14 09 00 00 	lea    0x914(%rip),%rcx        # 3130 <array.3421+0x3d0>
    281c:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
    2823:	be 01 00 00 00       	mov    $0x1,%esi
    2828:	48 89 ef             	mov    %rbp,%rdi
    282b:	b8 00 00 00 00       	mov    $0x0,%eax
    2830:	e8 ab e8 ff ff       	callq  10e0 <__sprintf_chk@plt>
    2835:	89 df                	mov    %ebx,%edi
    2837:	e8 84 e7 ff ff       	callq  fc0 <close@plt>
    283c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2841:	e9 53 fb ff ff       	jmpq   2399 <submitr+0x2ec>
    2846:	e8 55 e7 ff ff       	callq  fa0 <__stack_chk_fail@plt>

000000000000284b <init_timeout>:
    284b:	85 ff                	test   %edi,%edi
    284d:	74 28                	je     2877 <init_timeout+0x2c>
    284f:	53                   	push   %rbx
    2850:	89 fb                	mov    %edi,%ebx
    2852:	85 ff                	test   %edi,%edi
    2854:	78 1a                	js     2870 <init_timeout+0x25>
    2856:	48 8d 35 80 f5 ff ff 	lea    -0xa80(%rip),%rsi        # 1ddd <sigalrm_handler>
    285d:	bf 0e 00 00 00       	mov    $0xe,%edi
    2862:	e8 89 e7 ff ff       	callq  ff0 <signal@plt>
    2867:	89 df                	mov    %ebx,%edi
    2869:	e8 42 e7 ff ff       	callq  fb0 <alarm@plt>
    286e:	5b                   	pop    %rbx
    286f:	c3                   	retq   
    2870:	bb 00 00 00 00       	mov    $0x0,%ebx
    2875:	eb df                	jmp    2856 <init_timeout+0xb>
    2877:	f3 c3                	repz retq 

0000000000002879 <init_driver>:
    2879:	41 54                	push   %r12
    287b:	55                   	push   %rbp
    287c:	53                   	push   %rbx
    287d:	48 83 ec 20          	sub    $0x20,%rsp
    2881:	49 89 fc             	mov    %rdi,%r12
    2884:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    288b:	00 00 
    288d:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    2892:	31 c0                	xor    %eax,%eax
    2894:	be 01 00 00 00       	mov    $0x1,%esi
    2899:	bf 0d 00 00 00       	mov    $0xd,%edi
    289e:	e8 4d e7 ff ff       	callq  ff0 <signal@plt>
    28a3:	be 01 00 00 00       	mov    $0x1,%esi
    28a8:	bf 1d 00 00 00       	mov    $0x1d,%edi
    28ad:	e8 3e e7 ff ff       	callq  ff0 <signal@plt>
    28b2:	be 01 00 00 00       	mov    $0x1,%esi
    28b7:	bf 1d 00 00 00       	mov    $0x1d,%edi
    28bc:	e8 2f e7 ff ff       	callq  ff0 <signal@plt>
    28c1:	ba 00 00 00 00       	mov    $0x0,%edx
    28c6:	be 01 00 00 00       	mov    $0x1,%esi
    28cb:	bf 02 00 00 00       	mov    $0x2,%edi
    28d0:	e8 1b e8 ff ff       	callq  10f0 <socket@plt>
    28d5:	85 c0                	test   %eax,%eax
    28d7:	0f 88 a3 00 00 00    	js     2980 <init_driver+0x107>
    28dd:	89 c3                	mov    %eax,%ebx
    28df:	48 8d 3d a2 07 00 00 	lea    0x7a2(%rip),%rdi        # 3088 <array.3421+0x328>
    28e6:	e8 15 e7 ff ff       	callq  1000 <gethostbyname@plt>
    28eb:	48 85 c0             	test   %rax,%rax
    28ee:	0f 84 df 00 00 00    	je     29d3 <init_driver+0x15a>
    28f4:	48 89 e5             	mov    %rsp,%rbp
    28f7:	48 c7 44 24 02 00 00 	movq   $0x0,0x2(%rsp)
    28fe:	00 00 
    2900:	c7 45 0a 00 00 00 00 	movl   $0x0,0xa(%rbp)
    2907:	66 c7 45 0e 00 00    	movw   $0x0,0xe(%rbp)
    290d:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
    2913:	48 63 50 14          	movslq 0x14(%rax),%rdx
    2917:	48 8b 40 18          	mov    0x18(%rax),%rax
    291b:	48 8b 30             	mov    (%rax),%rsi
    291e:	48 8d 7d 04          	lea    0x4(%rbp),%rdi
    2922:	b9 0c 00 00 00       	mov    $0xc,%ecx
    2927:	e8 e4 e6 ff ff       	callq  1010 <__memmove_chk@plt>
    292c:	66 c7 44 24 02 00 50 	movw   $0x5000,0x2(%rsp)
    2933:	ba 10 00 00 00       	mov    $0x10,%edx
    2938:	48 89 ee             	mov    %rbp,%rsi
    293b:	89 df                	mov    %ebx,%edi
    293d:	e8 5e e7 ff ff       	callq  10a0 <connect@plt>
    2942:	85 c0                	test   %eax,%eax
    2944:	0f 88 fb 00 00 00    	js     2a45 <init_driver+0x1cc>
    294a:	89 df                	mov    %ebx,%edi
    294c:	e8 6f e6 ff ff       	callq  fc0 <close@plt>
    2951:	66 41 c7 04 24 4f 4b 	movw   $0x4b4f,(%r12)
    2958:	41 c6 44 24 02 00    	movb   $0x0,0x2(%r12)
    295e:	b8 00 00 00 00       	mov    $0x0,%eax
    2963:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
    2968:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    296f:	00 00 
    2971:	0f 85 28 01 00 00    	jne    2a9f <init_driver+0x226>
    2977:	48 83 c4 20          	add    $0x20,%rsp
    297b:	5b                   	pop    %rbx
    297c:	5d                   	pop    %rbp
    297d:	41 5c                	pop    %r12
    297f:	c3                   	retq   
    2980:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2987:	3a 20 43 
    298a:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2991:	20 75 6e 
    2994:	49 89 04 24          	mov    %rax,(%r12)
    2998:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
    299d:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    29a4:	74 6f 20 
    29a7:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    29ae:	65 20 73 
    29b1:	49 89 44 24 10       	mov    %rax,0x10(%r12)
    29b6:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
    29bb:	41 c7 44 24 20 6f 63 	movl   $0x656b636f,0x20(%r12)
    29c2:	6b 65 
    29c4:	66 41 c7 44 24 24 74 	movw   $0x74,0x24(%r12)
    29cb:	00 
    29cc:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    29d1:	eb 90                	jmp    2963 <init_driver+0xea>
    29d3:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    29da:	3a 20 44 
    29dd:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    29e4:	20 75 6e 
    29e7:	49 89 04 24          	mov    %rax,(%r12)
    29eb:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
    29f0:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    29f7:	74 6f 20 
    29fa:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    2a01:	76 65 20 
    2a04:	49 89 44 24 10       	mov    %rax,0x10(%r12)
    2a09:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
    2a0e:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    2a15:	72 20 61 
    2a18:	49 89 44 24 20       	mov    %rax,0x20(%r12)
    2a1d:	41 c7 44 24 28 64 64 	movl   $0x65726464,0x28(%r12)
    2a24:	72 65 
    2a26:	66 41 c7 44 24 2c 73 	movw   $0x7373,0x2c(%r12)
    2a2d:	73 
    2a2e:	41 c6 44 24 2e 00    	movb   $0x0,0x2e(%r12)
    2a34:	89 df                	mov    %ebx,%edi
    2a36:	e8 85 e5 ff ff       	callq  fc0 <close@plt>
    2a3b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2a40:	e9 1e ff ff ff       	jmpq   2963 <init_driver+0xea>
    2a45:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
    2a4c:	3a 20 55 
    2a4f:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
    2a56:	20 74 6f 
    2a59:	49 89 04 24          	mov    %rax,(%r12)
    2a5d:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
    2a62:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
    2a69:	65 63 74 
    2a6c:	48 ba 20 74 6f 20 73 	movabs $0x76726573206f7420,%rdx
    2a73:	65 72 76 
    2a76:	49 89 44 24 10       	mov    %rax,0x10(%r12)
    2a7b:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
    2a80:	66 41 c7 44 24 20 65 	movw   $0x7265,0x20(%r12)
    2a87:	72 
    2a88:	41 c6 44 24 22 00    	movb   $0x0,0x22(%r12)
    2a8e:	89 df                	mov    %ebx,%edi
    2a90:	e8 2b e5 ff ff       	callq  fc0 <close@plt>
    2a95:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2a9a:	e9 c4 fe ff ff       	jmpq   2963 <init_driver+0xea>
    2a9f:	e8 fc e4 ff ff       	callq  fa0 <__stack_chk_fail@plt>

0000000000002aa4 <driver_post>:
    2aa4:	53                   	push   %rbx
    2aa5:	4c 89 cb             	mov    %r9,%rbx
    2aa8:	45 85 c0             	test   %r8d,%r8d
    2aab:	75 18                	jne    2ac5 <driver_post+0x21>
    2aad:	48 85 ff             	test   %rdi,%rdi
    2ab0:	74 05                	je     2ab7 <driver_post+0x13>
    2ab2:	80 3f 00             	cmpb   $0x0,(%rdi)
    2ab5:	75 37                	jne    2aee <driver_post+0x4a>
    2ab7:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    2abc:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    2ac0:	44 89 c0             	mov    %r8d,%eax
    2ac3:	5b                   	pop    %rbx
    2ac4:	c3                   	retq   
    2ac5:	48 89 ca             	mov    %rcx,%rdx
    2ac8:	48 8d 35 b5 06 00 00 	lea    0x6b5(%rip),%rsi        # 3184 <array.3421+0x424>
    2acf:	bf 01 00 00 00       	mov    $0x1,%edi
    2ad4:	b8 00 00 00 00       	mov    $0x0,%eax
    2ad9:	e8 82 e5 ff ff       	callq  1060 <__printf_chk@plt>
    2ade:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    2ae3:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    2ae7:	b8 00 00 00 00       	mov    $0x0,%eax
    2aec:	eb d5                	jmp    2ac3 <driver_post+0x1f>
    2aee:	48 83 ec 08          	sub    $0x8,%rsp
    2af2:	41 51                	push   %r9
    2af4:	49 89 c9             	mov    %rcx,%r9
    2af7:	49 89 d0             	mov    %rdx,%r8
    2afa:	48 89 f9             	mov    %rdi,%rcx
    2afd:	48 89 f2             	mov    %rsi,%rdx
    2b00:	be 50 00 00 00       	mov    $0x50,%esi
    2b05:	48 8d 3d 7c 05 00 00 	lea    0x57c(%rip),%rdi        # 3088 <array.3421+0x328>
    2b0c:	e8 9c f5 ff ff       	callq  20ad <submitr>
    2b11:	48 83 c4 10          	add    $0x10,%rsp
    2b15:	eb ac                	jmp    2ac3 <driver_post+0x1f>
    2b17:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    2b1e:	00 00 

0000000000002b20 <__libc_csu_init>:
    2b20:	41 57                	push   %r15
    2b22:	41 56                	push   %r14
    2b24:	49 89 d7             	mov    %rdx,%r15
    2b27:	41 55                	push   %r13
    2b29:	41 54                	push   %r12
    2b2b:	4c 8d 25 9e 11 20 00 	lea    0x20119e(%rip),%r12        # 203cd0 <__frame_dummy_init_array_entry>
    2b32:	55                   	push   %rbp
    2b33:	48 8d 2d 9e 11 20 00 	lea    0x20119e(%rip),%rbp        # 203cd8 <__init_array_end>
    2b3a:	53                   	push   %rbx
    2b3b:	41 89 fd             	mov    %edi,%r13d
    2b3e:	49 89 f6             	mov    %rsi,%r14
    2b41:	4c 29 e5             	sub    %r12,%rbp
    2b44:	48 83 ec 08          	sub    $0x8,%rsp
    2b48:	48 c1 fd 03          	sar    $0x3,%rbp
    2b4c:	e8 c7 e3 ff ff       	callq  f18 <_init>
    2b51:	48 85 ed             	test   %rbp,%rbp
    2b54:	74 20                	je     2b76 <__libc_csu_init+0x56>
    2b56:	31 db                	xor    %ebx,%ebx
    2b58:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    2b5f:	00 
    2b60:	4c 89 fa             	mov    %r15,%rdx
    2b63:	4c 89 f6             	mov    %r14,%rsi
    2b66:	44 89 ef             	mov    %r13d,%edi
    2b69:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
    2b6d:	48 83 c3 01          	add    $0x1,%rbx
    2b71:	48 39 dd             	cmp    %rbx,%rbp
    2b74:	75 ea                	jne    2b60 <__libc_csu_init+0x40>
    2b76:	48 83 c4 08          	add    $0x8,%rsp
    2b7a:	5b                   	pop    %rbx
    2b7b:	5d                   	pop    %rbp
    2b7c:	41 5c                	pop    %r12
    2b7e:	41 5d                	pop    %r13
    2b80:	41 5e                	pop    %r14
    2b82:	41 5f                	pop    %r15
    2b84:	c3                   	retq   
    2b85:	90                   	nop
    2b86:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    2b8d:	00 00 00 

0000000000002b90 <__libc_csu_fini>:
    2b90:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000002b94 <_fini>:
    2b94:	48 83 ec 08          	sub    $0x8,%rsp
    2b98:	48 83 c4 08          	add    $0x8,%rsp
    2b9c:	c3                   	retq   
