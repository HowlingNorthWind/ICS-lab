
starget：     文件格式 elf64-x86-64


Disassembly of section .init:

0000000000400ce0 <_init>:
  400ce0:	48 83 ec 08          	sub    $0x8,%rsp
  400ce4:	48 8b 05 0d 43 20 00 	mov    0x20430d(%rip),%rax        # 604ff8 <_DYNAMIC+0x1d8>
  400ceb:	48 85 c0             	test   %rax,%rax
  400cee:	74 02                	je     400cf2 <_init+0x12>
  400cf0:	ff d0                	callq  *%rax
  400cf2:	48 83 c4 08          	add    $0x8,%rsp
  400cf6:	c3                   	retq   

Disassembly of section .plt:

0000000000400d00 <__snprintf_chk@plt-0x10>:
  400d00:	ff 35 02 43 20 00    	pushq  0x204302(%rip)        # 605008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400d06:	ff 25 04 43 20 00    	jmpq   *0x204304(%rip)        # 605010 <_GLOBAL_OFFSET_TABLE_+0x10>
  400d0c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400d10 <__snprintf_chk@plt>:
  400d10:	ff 25 02 43 20 00    	jmpq   *0x204302(%rip)        # 605018 <_GLOBAL_OFFSET_TABLE_+0x18>
  400d16:	68 00 00 00 00       	pushq  $0x0
  400d1b:	e9 e0 ff ff ff       	jmpq   400d00 <_init+0x20>

0000000000400d20 <strcasecmp@plt>:
  400d20:	ff 25 fa 42 20 00    	jmpq   *0x2042fa(%rip)        # 605020 <_GLOBAL_OFFSET_TABLE_+0x20>
  400d26:	68 01 00 00 00       	pushq  $0x1
  400d2b:	e9 d0 ff ff ff       	jmpq   400d00 <_init+0x20>

0000000000400d30 <__errno_location@plt>:
  400d30:	ff 25 f2 42 20 00    	jmpq   *0x2042f2(%rip)        # 605028 <_GLOBAL_OFFSET_TABLE_+0x28>
  400d36:	68 02 00 00 00       	pushq  $0x2
  400d3b:	e9 c0 ff ff ff       	jmpq   400d00 <_init+0x20>

0000000000400d40 <srandom@plt>:
  400d40:	ff 25 ea 42 20 00    	jmpq   *0x2042ea(%rip)        # 605030 <_GLOBAL_OFFSET_TABLE_+0x30>
  400d46:	68 03 00 00 00       	pushq  $0x3
  400d4b:	e9 b0 ff ff ff       	jmpq   400d00 <_init+0x20>

0000000000400d50 <strncmp@plt>:
  400d50:	ff 25 e2 42 20 00    	jmpq   *0x2042e2(%rip)        # 605038 <_GLOBAL_OFFSET_TABLE_+0x38>
  400d56:	68 04 00 00 00       	pushq  $0x4
  400d5b:	e9 a0 ff ff ff       	jmpq   400d00 <_init+0x20>

0000000000400d60 <strcpy@plt>:
  400d60:	ff 25 da 42 20 00    	jmpq   *0x2042da(%rip)        # 605040 <_GLOBAL_OFFSET_TABLE_+0x40>
  400d66:	68 05 00 00 00       	pushq  $0x5
  400d6b:	e9 90 ff ff ff       	jmpq   400d00 <_init+0x20>

0000000000400d70 <puts@plt>:
  400d70:	ff 25 d2 42 20 00    	jmpq   *0x2042d2(%rip)        # 605048 <_GLOBAL_OFFSET_TABLE_+0x48>
  400d76:	68 06 00 00 00       	pushq  $0x6
  400d7b:	e9 80 ff ff ff       	jmpq   400d00 <_init+0x20>

0000000000400d80 <write@plt>:
  400d80:	ff 25 ca 42 20 00    	jmpq   *0x2042ca(%rip)        # 605050 <_GLOBAL_OFFSET_TABLE_+0x50>
  400d86:	68 07 00 00 00       	pushq  $0x7
  400d8b:	e9 70 ff ff ff       	jmpq   400d00 <_init+0x20>

0000000000400d90 <mmap@plt>:
  400d90:	ff 25 c2 42 20 00    	jmpq   *0x2042c2(%rip)        # 605058 <_GLOBAL_OFFSET_TABLE_+0x58>
  400d96:	68 08 00 00 00       	pushq  $0x8
  400d9b:	e9 60 ff ff ff       	jmpq   400d00 <_init+0x20>

0000000000400da0 <memset@plt>:
  400da0:	ff 25 ba 42 20 00    	jmpq   *0x2042ba(%rip)        # 605060 <_GLOBAL_OFFSET_TABLE_+0x60>
  400da6:	68 09 00 00 00       	pushq  $0x9
  400dab:	e9 50 ff ff ff       	jmpq   400d00 <_init+0x20>

0000000000400db0 <alarm@plt>:
  400db0:	ff 25 b2 42 20 00    	jmpq   *0x2042b2(%rip)        # 605068 <_GLOBAL_OFFSET_TABLE_+0x68>
  400db6:	68 0a 00 00 00       	pushq  $0xa
  400dbb:	e9 40 ff ff ff       	jmpq   400d00 <_init+0x20>

0000000000400dc0 <close@plt>:
  400dc0:	ff 25 aa 42 20 00    	jmpq   *0x2042aa(%rip)        # 605070 <_GLOBAL_OFFSET_TABLE_+0x70>
  400dc6:	68 0b 00 00 00       	pushq  $0xb
  400dcb:	e9 30 ff ff ff       	jmpq   400d00 <_init+0x20>

0000000000400dd0 <read@plt>:
  400dd0:	ff 25 a2 42 20 00    	jmpq   *0x2042a2(%rip)        # 605078 <_GLOBAL_OFFSET_TABLE_+0x78>
  400dd6:	68 0c 00 00 00       	pushq  $0xc
  400ddb:	e9 20 ff ff ff       	jmpq   400d00 <_init+0x20>

0000000000400de0 <signal@plt>:
  400de0:	ff 25 9a 42 20 00    	jmpq   *0x20429a(%rip)        # 605080 <_GLOBAL_OFFSET_TABLE_+0x80>
  400de6:	68 0d 00 00 00       	pushq  $0xd
  400deb:	e9 10 ff ff ff       	jmpq   400d00 <_init+0x20>

0000000000400df0 <gethostbyname@plt>:
  400df0:	ff 25 92 42 20 00    	jmpq   *0x204292(%rip)        # 605088 <_GLOBAL_OFFSET_TABLE_+0x88>
  400df6:	68 0e 00 00 00       	pushq  $0xe
  400dfb:	e9 00 ff ff ff       	jmpq   400d00 <_init+0x20>

0000000000400e00 <__memmove_chk@plt>:
  400e00:	ff 25 8a 42 20 00    	jmpq   *0x20428a(%rip)        # 605090 <_GLOBAL_OFFSET_TABLE_+0x90>
  400e06:	68 0f 00 00 00       	pushq  $0xf
  400e0b:	e9 f0 fe ff ff       	jmpq   400d00 <_init+0x20>

0000000000400e10 <strtol@plt>:
  400e10:	ff 25 82 42 20 00    	jmpq   *0x204282(%rip)        # 605098 <_GLOBAL_OFFSET_TABLE_+0x98>
  400e16:	68 10 00 00 00       	pushq  $0x10
  400e1b:	e9 e0 fe ff ff       	jmpq   400d00 <_init+0x20>

0000000000400e20 <memcpy@plt>:
  400e20:	ff 25 7a 42 20 00    	jmpq   *0x20427a(%rip)        # 6050a0 <_GLOBAL_OFFSET_TABLE_+0xa0>
  400e26:	68 11 00 00 00       	pushq  $0x11
  400e2b:	e9 d0 fe ff ff       	jmpq   400d00 <_init+0x20>

0000000000400e30 <time@plt>:
  400e30:	ff 25 72 42 20 00    	jmpq   *0x204272(%rip)        # 6050a8 <_GLOBAL_OFFSET_TABLE_+0xa8>
  400e36:	68 12 00 00 00       	pushq  $0x12
  400e3b:	e9 c0 fe ff ff       	jmpq   400d00 <_init+0x20>

0000000000400e40 <random@plt>:
  400e40:	ff 25 6a 42 20 00    	jmpq   *0x20426a(%rip)        # 6050b0 <_GLOBAL_OFFSET_TABLE_+0xb0>
  400e46:	68 13 00 00 00       	pushq  $0x13
  400e4b:	e9 b0 fe ff ff       	jmpq   400d00 <_init+0x20>

0000000000400e50 <_IO_getc@plt>:
  400e50:	ff 25 62 42 20 00    	jmpq   *0x204262(%rip)        # 6050b8 <_GLOBAL_OFFSET_TABLE_+0xb8>
  400e56:	68 14 00 00 00       	pushq  $0x14
  400e5b:	e9 a0 fe ff ff       	jmpq   400d00 <_init+0x20>

0000000000400e60 <__isoc99_sscanf@plt>:
  400e60:	ff 25 5a 42 20 00    	jmpq   *0x20425a(%rip)        # 6050c0 <_GLOBAL_OFFSET_TABLE_+0xc0>
  400e66:	68 15 00 00 00       	pushq  $0x15
  400e6b:	e9 90 fe ff ff       	jmpq   400d00 <_init+0x20>

0000000000400e70 <munmap@plt>:
  400e70:	ff 25 52 42 20 00    	jmpq   *0x204252(%rip)        # 6050c8 <_GLOBAL_OFFSET_TABLE_+0xc8>
  400e76:	68 16 00 00 00       	pushq  $0x16
  400e7b:	e9 80 fe ff ff       	jmpq   400d00 <_init+0x20>

0000000000400e80 <__printf_chk@plt>:
  400e80:	ff 25 4a 42 20 00    	jmpq   *0x20424a(%rip)        # 6050d0 <_GLOBAL_OFFSET_TABLE_+0xd0>
  400e86:	68 17 00 00 00       	pushq  $0x17
  400e8b:	e9 70 fe ff ff       	jmpq   400d00 <_init+0x20>

0000000000400e90 <fopen@plt>:
  400e90:	ff 25 42 42 20 00    	jmpq   *0x204242(%rip)        # 6050d8 <_GLOBAL_OFFSET_TABLE_+0xd8>
  400e96:	68 18 00 00 00       	pushq  $0x18
  400e9b:	e9 60 fe ff ff       	jmpq   400d00 <_init+0x20>

0000000000400ea0 <getopt@plt>:
  400ea0:	ff 25 3a 42 20 00    	jmpq   *0x20423a(%rip)        # 6050e0 <_GLOBAL_OFFSET_TABLE_+0xe0>
  400ea6:	68 19 00 00 00       	pushq  $0x19
  400eab:	e9 50 fe ff ff       	jmpq   400d00 <_init+0x20>

0000000000400eb0 <strtoul@plt>:
  400eb0:	ff 25 32 42 20 00    	jmpq   *0x204232(%rip)        # 6050e8 <_GLOBAL_OFFSET_TABLE_+0xe8>
  400eb6:	68 1a 00 00 00       	pushq  $0x1a
  400ebb:	e9 40 fe ff ff       	jmpq   400d00 <_init+0x20>

0000000000400ec0 <gethostname@plt>:
  400ec0:	ff 25 2a 42 20 00    	jmpq   *0x20422a(%rip)        # 6050f0 <_GLOBAL_OFFSET_TABLE_+0xf0>
  400ec6:	68 1b 00 00 00       	pushq  $0x1b
  400ecb:	e9 30 fe ff ff       	jmpq   400d00 <_init+0x20>

0000000000400ed0 <exit@plt>:
  400ed0:	ff 25 22 42 20 00    	jmpq   *0x204222(%rip)        # 6050f8 <_GLOBAL_OFFSET_TABLE_+0xf8>
  400ed6:	68 1c 00 00 00       	pushq  $0x1c
  400edb:	e9 20 fe ff ff       	jmpq   400d00 <_init+0x20>

0000000000400ee0 <connect@plt>:
  400ee0:	ff 25 1a 42 20 00    	jmpq   *0x20421a(%rip)        # 605100 <_GLOBAL_OFFSET_TABLE_+0x100>
  400ee6:	68 1d 00 00 00       	pushq  $0x1d
  400eeb:	e9 10 fe ff ff       	jmpq   400d00 <_init+0x20>

0000000000400ef0 <__fprintf_chk@plt>:
  400ef0:	ff 25 12 42 20 00    	jmpq   *0x204212(%rip)        # 605108 <_GLOBAL_OFFSET_TABLE_+0x108>
  400ef6:	68 1e 00 00 00       	pushq  $0x1e
  400efb:	e9 00 fe ff ff       	jmpq   400d00 <_init+0x20>

0000000000400f00 <getaddrinfo@plt>:
  400f00:	ff 25 0a 42 20 00    	jmpq   *0x20420a(%rip)        # 605110 <_GLOBAL_OFFSET_TABLE_+0x110>
  400f06:	68 1f 00 00 00       	pushq  $0x1f
  400f0b:	e9 f0 fd ff ff       	jmpq   400d00 <_init+0x20>

0000000000400f10 <freeaddrinfo@plt>:
  400f10:	ff 25 02 42 20 00    	jmpq   *0x204202(%rip)        # 605118 <_GLOBAL_OFFSET_TABLE_+0x118>
  400f16:	68 20 00 00 00       	pushq  $0x20
  400f1b:	e9 e0 fd ff ff       	jmpq   400d00 <_init+0x20>

0000000000400f20 <__sprintf_chk@plt>:
  400f20:	ff 25 fa 41 20 00    	jmpq   *0x2041fa(%rip)        # 605120 <_GLOBAL_OFFSET_TABLE_+0x120>
  400f26:	68 21 00 00 00       	pushq  $0x21
  400f2b:	e9 d0 fd ff ff       	jmpq   400d00 <_init+0x20>

0000000000400f30 <socket@plt>:
  400f30:	ff 25 f2 41 20 00    	jmpq   *0x2041f2(%rip)        # 605128 <_GLOBAL_OFFSET_TABLE_+0x128>
  400f36:	68 22 00 00 00       	pushq  $0x22
  400f3b:	e9 c0 fd ff ff       	jmpq   400d00 <_init+0x20>

Disassembly of section .text:

0000000000400f40 <_start>:
  400f40:	31 ed                	xor    %ebp,%ebp
  400f42:	49 89 d1             	mov    %rdx,%r9
  400f45:	5e                   	pop    %rsi
  400f46:	48 89 e2             	mov    %rsp,%rdx
  400f49:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  400f4d:	50                   	push   %rax
  400f4e:	54                   	push   %rsp
  400f4f:	49 c7 c0 40 33 40 00 	mov    $0x403340,%r8
  400f56:	48 c7 c1 d0 32 40 00 	mov    $0x4032d0,%rcx
  400f5d:	48 c7 c7 4e 12 40 00 	mov    $0x40124e,%rdi
  400f64:	ff 15 86 40 20 00    	callq  *0x204086(%rip)        # 604ff0 <_DYNAMIC+0x1d0>
  400f6a:	f4                   	hlt    
  400f6b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000400f70 <_dl_relocate_static_pie>:
  400f70:	f3 c3                	repz retq 
  400f72:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400f79:	00 00 00 
  400f7c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400f80 <deregister_tm_clones>:
  400f80:	55                   	push   %rbp
  400f81:	b8 b0 54 60 00       	mov    $0x6054b0,%eax
  400f86:	48 3d b0 54 60 00    	cmp    $0x6054b0,%rax
  400f8c:	48 89 e5             	mov    %rsp,%rbp
  400f8f:	74 17                	je     400fa8 <deregister_tm_clones+0x28>
  400f91:	b8 00 00 00 00       	mov    $0x0,%eax
  400f96:	48 85 c0             	test   %rax,%rax
  400f99:	74 0d                	je     400fa8 <deregister_tm_clones+0x28>
  400f9b:	5d                   	pop    %rbp
  400f9c:	bf b0 54 60 00       	mov    $0x6054b0,%edi
  400fa1:	ff e0                	jmpq   *%rax
  400fa3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400fa8:	5d                   	pop    %rbp
  400fa9:	c3                   	retq   
  400faa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400fb0 <register_tm_clones>:
  400fb0:	be b0 54 60 00       	mov    $0x6054b0,%esi
  400fb5:	55                   	push   %rbp
  400fb6:	48 81 ee b0 54 60 00 	sub    $0x6054b0,%rsi
  400fbd:	48 89 e5             	mov    %rsp,%rbp
  400fc0:	48 c1 fe 03          	sar    $0x3,%rsi
  400fc4:	48 89 f0             	mov    %rsi,%rax
  400fc7:	48 c1 e8 3f          	shr    $0x3f,%rax
  400fcb:	48 01 c6             	add    %rax,%rsi
  400fce:	48 d1 fe             	sar    %rsi
  400fd1:	74 15                	je     400fe8 <register_tm_clones+0x38>
  400fd3:	b8 00 00 00 00       	mov    $0x0,%eax
  400fd8:	48 85 c0             	test   %rax,%rax
  400fdb:	74 0b                	je     400fe8 <register_tm_clones+0x38>
  400fdd:	5d                   	pop    %rbp
  400fde:	bf b0 54 60 00       	mov    $0x6054b0,%edi
  400fe3:	ff e0                	jmpq   *%rax
  400fe5:	0f 1f 00             	nopl   (%rax)
  400fe8:	5d                   	pop    %rbp
  400fe9:	c3                   	retq   
  400fea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400ff0 <__do_global_dtors_aux>:
  400ff0:	80 3d f1 44 20 00 00 	cmpb   $0x0,0x2044f1(%rip)        # 6054e8 <completed.7697>
  400ff7:	75 17                	jne    401010 <__do_global_dtors_aux+0x20>
  400ff9:	55                   	push   %rbp
  400ffa:	48 89 e5             	mov    %rsp,%rbp
  400ffd:	e8 7e ff ff ff       	callq  400f80 <deregister_tm_clones>
  401002:	c6 05 df 44 20 00 01 	movb   $0x1,0x2044df(%rip)        # 6054e8 <completed.7697>
  401009:	5d                   	pop    %rbp
  40100a:	c3                   	retq   
  40100b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401010:	f3 c3                	repz retq 
  401012:	0f 1f 40 00          	nopl   0x0(%rax)
  401016:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40101d:	00 00 00 

0000000000401020 <frame_dummy>:
  401020:	55                   	push   %rbp
  401021:	48 89 e5             	mov    %rsp,%rbp
  401024:	5d                   	pop    %rbp
  401025:	eb 89                	jmp    400fb0 <register_tm_clones>

0000000000401027 <usage>:
  401027:	48 83 ec 08          	sub    $0x8,%rsp
  40102b:	48 89 fa             	mov    %rdi,%rdx
  40102e:	83 3d f3 44 20 00 00 	cmpl   $0x0,0x2044f3(%rip)        # 605528 <is_checker>
  401035:	74 50                	je     401087 <usage+0x60>
  401037:	48 8d 35 1a 23 00 00 	lea    0x231a(%rip),%rsi        # 403358 <_IO_stdin_used+0x8>
  40103e:	bf 01 00 00 00       	mov    $0x1,%edi
  401043:	b8 00 00 00 00       	mov    $0x0,%eax
  401048:	e8 33 fe ff ff       	callq  400e80 <__printf_chk@plt>
  40104d:	48 8d 3d 3c 23 00 00 	lea    0x233c(%rip),%rdi        # 403390 <_IO_stdin_used+0x40>
  401054:	e8 17 fd ff ff       	callq  400d70 <puts@plt>
  401059:	48 8d 3d a8 24 00 00 	lea    0x24a8(%rip),%rdi        # 403508 <_IO_stdin_used+0x1b8>
  401060:	e8 0b fd ff ff       	callq  400d70 <puts@plt>
  401065:	48 8d 3d 4c 23 00 00 	lea    0x234c(%rip),%rdi        # 4033b8 <_IO_stdin_used+0x68>
  40106c:	e8 ff fc ff ff       	callq  400d70 <puts@plt>
  401071:	48 8d 3d aa 24 00 00 	lea    0x24aa(%rip),%rdi        # 403522 <_IO_stdin_used+0x1d2>
  401078:	e8 f3 fc ff ff       	callq  400d70 <puts@plt>
  40107d:	bf 00 00 00 00       	mov    $0x0,%edi
  401082:	e8 49 fe ff ff       	callq  400ed0 <exit@plt>
  401087:	48 8d 35 b0 24 00 00 	lea    0x24b0(%rip),%rsi        # 40353e <_IO_stdin_used+0x1ee>
  40108e:	bf 01 00 00 00       	mov    $0x1,%edi
  401093:	b8 00 00 00 00       	mov    $0x0,%eax
  401098:	e8 e3 fd ff ff       	callq  400e80 <__printf_chk@plt>
  40109d:	48 8d 3d 3c 23 00 00 	lea    0x233c(%rip),%rdi        # 4033e0 <_IO_stdin_used+0x90>
  4010a4:	e8 c7 fc ff ff       	callq  400d70 <puts@plt>
  4010a9:	48 8d 3d 58 23 00 00 	lea    0x2358(%rip),%rdi        # 403408 <_IO_stdin_used+0xb8>
  4010b0:	e8 bb fc ff ff       	callq  400d70 <puts@plt>
  4010b5:	48 8d 3d a0 24 00 00 	lea    0x24a0(%rip),%rdi        # 40355c <_IO_stdin_used+0x20c>
  4010bc:	e8 af fc ff ff       	callq  400d70 <puts@plt>
  4010c1:	eb ba                	jmp    40107d <usage+0x56>

00000000004010c3 <initialize_target>:
  4010c3:	55                   	push   %rbp
  4010c4:	53                   	push   %rbx
  4010c5:	48 81 ec 18 21 00 00 	sub    $0x2118,%rsp
  4010cc:	89 f5                	mov    %esi,%ebp
  4010ce:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4010d5:	00 00 
  4010d7:	48 89 84 24 08 21 00 	mov    %rax,0x2108(%rsp)
  4010de:	00 
  4010df:	31 c0                	xor    %eax,%eax
  4010e1:	89 3d 31 44 20 00    	mov    %edi,0x204431(%rip)        # 605518 <check_level>
  4010e7:	8b 3d 63 40 20 00    	mov    0x204063(%rip),%edi        # 605150 <target_id>
  4010ed:	e8 b7 21 00 00       	callq  4032a9 <gencookie>
  4010f2:	89 05 2c 44 20 00    	mov    %eax,0x20442c(%rip)        # 605524 <cookie>
  4010f8:	89 c7                	mov    %eax,%edi
  4010fa:	e8 aa 21 00 00       	callq  4032a9 <gencookie>
  4010ff:	89 05 1b 44 20 00    	mov    %eax,0x20441b(%rip)        # 605520 <authkey>
  401105:	8b 05 45 40 20 00    	mov    0x204045(%rip),%eax        # 605150 <target_id>
  40110b:	8d 78 01             	lea    0x1(%rax),%edi
  40110e:	e8 2d fc ff ff       	callq  400d40 <srandom@plt>
  401113:	e8 28 fd ff ff       	callq  400e40 <random@plt>
  401118:	89 c7                	mov    %eax,%edi
  40111a:	e8 1f 03 00 00       	callq  40143e <scramble>
  40111f:	89 c3                	mov    %eax,%ebx
  401121:	85 ed                	test   %ebp,%ebp
  401123:	75 54                	jne    401179 <initialize_target+0xb6>
  401125:	b8 00 00 00 00       	mov    $0x0,%eax
  40112a:	01 d8                	add    %ebx,%eax
  40112c:	0f b7 c0             	movzwl %ax,%eax
  40112f:	8d 04 c5 00 01 00 00 	lea    0x100(,%rax,8),%eax
  401136:	89 c0                	mov    %eax,%eax
  401138:	48 89 05 61 43 20 00 	mov    %rax,0x204361(%rip)        # 6054a0 <buf_offset>
  40113f:	c6 05 06 50 20 00 73 	movb   $0x73,0x205006(%rip)        # 60614c <target_prefix>
  401146:	83 3d 5b 43 20 00 00 	cmpl   $0x0,0x20435b(%rip)        # 6054a8 <notify>
  40114d:	74 09                	je     401158 <initialize_target+0x95>
  40114f:	83 3d d2 43 20 00 00 	cmpl   $0x0,0x2043d2(%rip)        # 605528 <is_checker>
  401156:	74 39                	je     401191 <initialize_target+0xce>
  401158:	48 8b 84 24 08 21 00 	mov    0x2108(%rsp),%rax
  40115f:	00 
  401160:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401167:	00 00 
  401169:	0f 85 da 00 00 00    	jne    401249 <initialize_target+0x186>
  40116f:	48 81 c4 18 21 00 00 	add    $0x2118,%rsp
  401176:	5b                   	pop    %rbx
  401177:	5d                   	pop    %rbp
  401178:	c3                   	retq   
  401179:	bf 00 00 00 00       	mov    $0x0,%edi
  40117e:	e8 ad fc ff ff       	callq  400e30 <time@plt>
  401183:	89 c7                	mov    %eax,%edi
  401185:	e8 b6 fb ff ff       	callq  400d40 <srandom@plt>
  40118a:	e8 b1 fc ff ff       	callq  400e40 <random@plt>
  40118f:	eb 99                	jmp    40112a <initialize_target+0x67>
  401191:	48 89 e7             	mov    %rsp,%rdi
  401194:	be 00 01 00 00       	mov    $0x100,%esi
  401199:	e8 22 fd ff ff       	callq  400ec0 <gethostname@plt>
  40119e:	89 c5                	mov    %eax,%ebp
  4011a0:	85 c0                	test   %eax,%eax
  4011a2:	75 26                	jne    4011ca <initialize_target+0x107>
  4011a4:	89 c3                	mov    %eax,%ebx
  4011a6:	48 63 c3             	movslq %ebx,%rax
  4011a9:	48 8d 15 d0 3f 20 00 	lea    0x203fd0(%rip),%rdx        # 605180 <host_table>
  4011b0:	48 8b 3c c2          	mov    (%rdx,%rax,8),%rdi
  4011b4:	48 85 ff             	test   %rdi,%rdi
  4011b7:	74 2c                	je     4011e5 <initialize_target+0x122>
  4011b9:	48 89 e6             	mov    %rsp,%rsi
  4011bc:	e8 5f fb ff ff       	callq  400d20 <strcasecmp@plt>
  4011c1:	85 c0                	test   %eax,%eax
  4011c3:	74 1b                	je     4011e0 <initialize_target+0x11d>
  4011c5:	83 c3 01             	add    $0x1,%ebx
  4011c8:	eb dc                	jmp    4011a6 <initialize_target+0xe3>
  4011ca:	48 8d 3d 67 22 00 00 	lea    0x2267(%rip),%rdi        # 403438 <_IO_stdin_used+0xe8>
  4011d1:	e8 9a fb ff ff       	callq  400d70 <puts@plt>
  4011d6:	bf 08 00 00 00       	mov    $0x8,%edi
  4011db:	e8 f0 fc ff ff       	callq  400ed0 <exit@plt>
  4011e0:	bd 01 00 00 00       	mov    $0x1,%ebp
  4011e5:	85 ed                	test   %ebp,%ebp
  4011e7:	74 3d                	je     401226 <initialize_target+0x163>
  4011e9:	48 8d bc 24 00 01 00 	lea    0x100(%rsp),%rdi
  4011f0:	00 
  4011f1:	e8 e3 1d 00 00       	callq  402fd9 <init_driver>
  4011f6:	85 c0                	test   %eax,%eax
  4011f8:	0f 89 5a ff ff ff    	jns    401158 <initialize_target+0x95>
  4011fe:	48 8d 94 24 00 01 00 	lea    0x100(%rsp),%rdx
  401205:	00 
  401206:	48 8d 35 a3 22 00 00 	lea    0x22a3(%rip),%rsi        # 4034b0 <_IO_stdin_used+0x160>
  40120d:	bf 01 00 00 00       	mov    $0x1,%edi
  401212:	b8 00 00 00 00       	mov    $0x0,%eax
  401217:	e8 64 fc ff ff       	callq  400e80 <__printf_chk@plt>
  40121c:	bf 08 00 00 00       	mov    $0x8,%edi
  401221:	e8 aa fc ff ff       	callq  400ed0 <exit@plt>
  401226:	48 89 e2             	mov    %rsp,%rdx
  401229:	48 8d 35 40 22 00 00 	lea    0x2240(%rip),%rsi        # 403470 <_IO_stdin_used+0x120>
  401230:	bf 01 00 00 00       	mov    $0x1,%edi
  401235:	b8 00 00 00 00       	mov    $0x0,%eax
  40123a:	e8 41 fc ff ff       	callq  400e80 <__printf_chk@plt>
  40123f:	bf 08 00 00 00       	mov    $0x8,%edi
  401244:	e8 87 fc ff ff       	callq  400ed0 <exit@plt>
  401249:	e8 3f 10 00 00       	callq  40228d <__stack_chk_fail>

000000000040124e <main>:
  40124e:	41 56                	push   %r14
  401250:	41 55                	push   %r13
  401252:	41 54                	push   %r12
  401254:	55                   	push   %rbp
  401255:	53                   	push   %rbx
  401256:	41 89 fc             	mov    %edi,%r12d
  401259:	48 89 f3             	mov    %rsi,%rbx
  40125c:	48 c7 c6 73 21 40 00 	mov    $0x402173,%rsi
  401263:	bf 0b 00 00 00       	mov    $0xb,%edi
  401268:	e8 73 fb ff ff       	callq  400de0 <signal@plt>
  40126d:	48 c7 c6 1f 21 40 00 	mov    $0x40211f,%rsi
  401274:	bf 07 00 00 00       	mov    $0x7,%edi
  401279:	e8 62 fb ff ff       	callq  400de0 <signal@plt>
  40127e:	48 c7 c6 e2 21 40 00 	mov    $0x4021e2,%rsi
  401285:	bf 04 00 00 00       	mov    $0x4,%edi
  40128a:	e8 51 fb ff ff       	callq  400de0 <signal@plt>
  40128f:	83 3d 92 42 20 00 00 	cmpl   $0x0,0x204292(%rip)        # 605528 <is_checker>
  401296:	75 26                	jne    4012be <main+0x70>
  401298:	48 8d 2d d6 22 00 00 	lea    0x22d6(%rip),%rbp        # 403575 <_IO_stdin_used+0x225>
  40129f:	48 8b 05 1a 42 20 00 	mov    0x20421a(%rip),%rax        # 6054c0 <stdin@@GLIBC_2.2.5>
  4012a6:	48 89 05 63 42 20 00 	mov    %rax,0x204263(%rip)        # 605510 <infile>
  4012ad:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  4012b3:	41 be 00 00 00 00    	mov    $0x0,%r14d
  4012b9:	e9 8d 00 00 00       	jmpq   40134b <main+0xfd>
  4012be:	48 c7 c6 36 22 40 00 	mov    $0x402236,%rsi
  4012c5:	bf 0e 00 00 00       	mov    $0xe,%edi
  4012ca:	e8 11 fb ff ff       	callq  400de0 <signal@plt>
  4012cf:	bf 05 00 00 00       	mov    $0x5,%edi
  4012d4:	e8 d7 fa ff ff       	callq  400db0 <alarm@plt>
  4012d9:	48 8d 2d 9a 22 00 00 	lea    0x229a(%rip),%rbp        # 40357a <_IO_stdin_used+0x22a>
  4012e0:	eb bd                	jmp    40129f <main+0x51>
  4012e2:	48 8b 3b             	mov    (%rbx),%rdi
  4012e5:	e8 3d fd ff ff       	callq  401027 <usage>
  4012ea:	48 8d 35 5a 23 00 00 	lea    0x235a(%rip),%rsi        # 40364b <_IO_stdin_used+0x2fb>
  4012f1:	48 8b 3d d0 41 20 00 	mov    0x2041d0(%rip),%rdi        # 6054c8 <optarg@@GLIBC_2.2.5>
  4012f8:	e8 93 fb ff ff       	callq  400e90 <fopen@plt>
  4012fd:	48 89 05 0c 42 20 00 	mov    %rax,0x20420c(%rip)        # 605510 <infile>
  401304:	48 85 c0             	test   %rax,%rax
  401307:	75 42                	jne    40134b <main+0xfd>
  401309:	48 8b 0d b8 41 20 00 	mov    0x2041b8(%rip),%rcx        # 6054c8 <optarg@@GLIBC_2.2.5>
  401310:	48 8d 15 6b 22 00 00 	lea    0x226b(%rip),%rdx        # 403582 <_IO_stdin_used+0x232>
  401317:	be 01 00 00 00       	mov    $0x1,%esi
  40131c:	48 8b 3d bd 41 20 00 	mov    0x2041bd(%rip),%rdi        # 6054e0 <stderr@@GLIBC_2.2.5>
  401323:	e8 c8 fb ff ff       	callq  400ef0 <__fprintf_chk@plt>
  401328:	b8 01 00 00 00       	mov    $0x1,%eax
  40132d:	e9 de 00 00 00       	jmpq   401410 <main+0x1c2>
  401332:	ba 10 00 00 00       	mov    $0x10,%edx
  401337:	be 00 00 00 00       	mov    $0x0,%esi
  40133c:	48 8b 3d 85 41 20 00 	mov    0x204185(%rip),%rdi        # 6054c8 <optarg@@GLIBC_2.2.5>
  401343:	e8 68 fb ff ff       	callq  400eb0 <strtoul@plt>
  401348:	41 89 c6             	mov    %eax,%r14d
  40134b:	48 89 ea             	mov    %rbp,%rdx
  40134e:	48 89 de             	mov    %rbx,%rsi
  401351:	44 89 e7             	mov    %r12d,%edi
  401354:	e8 47 fb ff ff       	callq  400ea0 <getopt@plt>
  401359:	3c ff                	cmp    $0xff,%al
  40135b:	74 62                	je     4013bf <main+0x171>
  40135d:	0f be d0             	movsbl %al,%edx
  401360:	83 e8 61             	sub    $0x61,%eax
  401363:	3c 10                	cmp    $0x10,%al
  401365:	77 3a                	ja     4013a1 <main+0x153>
  401367:	0f b6 c0             	movzbl %al,%eax
  40136a:	48 8d 0d 4f 22 00 00 	lea    0x224f(%rip),%rcx        # 4035c0 <_IO_stdin_used+0x270>
  401371:	48 63 04 81          	movslq (%rcx,%rax,4),%rax
  401375:	48 01 c8             	add    %rcx,%rax
  401378:	ff e0                	jmpq   *%rax
  40137a:	ba 0a 00 00 00       	mov    $0xa,%edx
  40137f:	be 00 00 00 00       	mov    $0x0,%esi
  401384:	48 8b 3d 3d 41 20 00 	mov    0x20413d(%rip),%rdi        # 6054c8 <optarg@@GLIBC_2.2.5>
  40138b:	e8 80 fa ff ff       	callq  400e10 <strtol@plt>
  401390:	41 89 c5             	mov    %eax,%r13d
  401393:	eb b6                	jmp    40134b <main+0xfd>
  401395:	c7 05 09 41 20 00 00 	movl   $0x0,0x204109(%rip)        # 6054a8 <notify>
  40139c:	00 00 00 
  40139f:	eb aa                	jmp    40134b <main+0xfd>
  4013a1:	48 8d 35 f7 21 00 00 	lea    0x21f7(%rip),%rsi        # 40359f <_IO_stdin_used+0x24f>
  4013a8:	bf 01 00 00 00       	mov    $0x1,%edi
  4013ad:	b8 00 00 00 00       	mov    $0x0,%eax
  4013b2:	e8 c9 fa ff ff       	callq  400e80 <__printf_chk@plt>
  4013b7:	48 8b 3b             	mov    (%rbx),%rdi
  4013ba:	e8 68 fc ff ff       	callq  401027 <usage>
  4013bf:	be 01 00 00 00       	mov    $0x1,%esi
  4013c4:	44 89 ef             	mov    %r13d,%edi
  4013c7:	e8 f7 fc ff ff       	callq  4010c3 <initialize_target>
  4013cc:	83 3d 55 41 20 00 00 	cmpl   $0x0,0x204155(%rip)        # 605528 <is_checker>
  4013d3:	74 09                	je     4013de <main+0x190>
  4013d5:	44 39 35 44 41 20 00 	cmp    %r14d,0x204144(%rip)        # 605520 <authkey>
  4013dc:	75 3b                	jne    401419 <main+0x1cb>
  4013de:	8b 15 40 41 20 00    	mov    0x204140(%rip),%edx        # 605524 <cookie>
  4013e4:	48 8d 35 c7 21 00 00 	lea    0x21c7(%rip),%rsi        # 4035b2 <_IO_stdin_used+0x262>
  4013eb:	bf 01 00 00 00       	mov    $0x1,%edi
  4013f0:	b8 00 00 00 00       	mov    $0x0,%eax
  4013f5:	e8 86 fa ff ff       	callq  400e80 <__printf_chk@plt>
  4013fa:	be 01 00 00 00       	mov    $0x1,%esi
  4013ff:	48 8b 3d 9a 40 20 00 	mov    0x20409a(%rip),%rdi        # 6054a0 <buf_offset>
  401406:	e8 d6 0e 00 00       	callq  4022e1 <launch>
  40140b:	b8 00 00 00 00       	mov    $0x0,%eax
  401410:	5b                   	pop    %rbx
  401411:	5d                   	pop    %rbp
  401412:	41 5c                	pop    %r12
  401414:	41 5d                	pop    %r13
  401416:	41 5e                	pop    %r14
  401418:	c3                   	retq   
  401419:	44 89 f2             	mov    %r14d,%edx
  40141c:	48 8d 35 b5 20 00 00 	lea    0x20b5(%rip),%rsi        # 4034d8 <_IO_stdin_used+0x188>
  401423:	bf 01 00 00 00       	mov    $0x1,%edi
  401428:	b8 00 00 00 00       	mov    $0x0,%eax
  40142d:	e8 4e fa ff ff       	callq  400e80 <__printf_chk@plt>
  401432:	b8 00 00 00 00       	mov    $0x0,%eax
  401437:	e8 4b 09 00 00       	callq  401d87 <check_fail>
  40143c:	eb a0                	jmp    4013de <main+0x190>

000000000040143e <scramble>:
  40143e:	48 83 ec 38          	sub    $0x38,%rsp
  401442:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401449:	00 00 
  40144b:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  401450:	31 c0                	xor    %eax,%eax
  401452:	eb 10                	jmp    401464 <scramble+0x26>
  401454:	69 d0 60 90 00 00    	imul   $0x9060,%eax,%edx
  40145a:	01 fa                	add    %edi,%edx
  40145c:	89 c1                	mov    %eax,%ecx
  40145e:	89 14 8c             	mov    %edx,(%rsp,%rcx,4)
  401461:	83 c0 01             	add    $0x1,%eax
  401464:	83 f8 09             	cmp    $0x9,%eax
  401467:	76 eb                	jbe    401454 <scramble+0x16>
  401469:	8b 44 24 08          	mov    0x8(%rsp),%eax
  40146d:	69 c0 78 68 00 00    	imul   $0x6878,%eax,%eax
  401473:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401477:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  40147b:	69 c0 f7 ef 00 00    	imul   $0xeff7,%eax,%eax
  401481:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401485:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401489:	69 c0 db f1 00 00    	imul   $0xf1db,%eax,%eax
  40148f:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401493:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401497:	69 c0 bb c5 00 00    	imul   $0xc5bb,%eax,%eax
  40149d:	89 44 24 14          	mov    %eax,0x14(%rsp)
  4014a1:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4014a5:	69 c0 60 87 00 00    	imul   $0x8760,%eax,%eax
  4014ab:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4014af:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4014b3:	69 c0 65 f6 00 00    	imul   $0xf665,%eax,%eax
  4014b9:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4014bd:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4014c1:	69 c0 b7 80 00 00    	imul   $0x80b7,%eax,%eax
  4014c7:	89 44 24 14          	mov    %eax,0x14(%rsp)
  4014cb:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4014cf:	69 c0 c6 5b 00 00    	imul   $0x5bc6,%eax,%eax
  4014d5:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4014d9:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4014dd:	69 c0 ac d1 00 00    	imul   $0xd1ac,%eax,%eax
  4014e3:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4014e7:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4014eb:	69 c0 c8 48 00 00    	imul   $0x48c8,%eax,%eax
  4014f1:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4014f5:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4014f9:	69 c0 24 04 00 00    	imul   $0x424,%eax,%eax
  4014ff:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401503:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401507:	69 c0 cd 4b 00 00    	imul   $0x4bcd,%eax,%eax
  40150d:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401511:	8b 04 24             	mov    (%rsp),%eax
  401514:	69 c0 e0 1e 00 00    	imul   $0x1ee0,%eax,%eax
  40151a:	89 04 24             	mov    %eax,(%rsp)
  40151d:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401521:	69 c0 56 ab 00 00    	imul   $0xab56,%eax,%eax
  401527:	89 44 24 10          	mov    %eax,0x10(%rsp)
  40152b:	8b 44 24 24          	mov    0x24(%rsp),%eax
  40152f:	69 c0 52 74 00 00    	imul   $0x7452,%eax,%eax
  401535:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401539:	8b 44 24 10          	mov    0x10(%rsp),%eax
  40153d:	69 c0 23 7f 00 00    	imul   $0x7f23,%eax,%eax
  401543:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401547:	8b 44 24 10          	mov    0x10(%rsp),%eax
  40154b:	69 c0 9f b0 00 00    	imul   $0xb09f,%eax,%eax
  401551:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401555:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401559:	69 c0 61 36 00 00    	imul   $0x3661,%eax,%eax
  40155f:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401563:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401567:	69 c0 c6 d4 00 00    	imul   $0xd4c6,%eax,%eax
  40156d:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401571:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401575:	69 c0 59 d2 00 00    	imul   $0xd259,%eax,%eax
  40157b:	89 44 24 08          	mov    %eax,0x8(%rsp)
  40157f:	8b 04 24             	mov    (%rsp),%eax
  401582:	69 c0 98 70 00 00    	imul   $0x7098,%eax,%eax
  401588:	89 04 24             	mov    %eax,(%rsp)
  40158b:	8b 44 24 14          	mov    0x14(%rsp),%eax
  40158f:	69 c0 74 a6 00 00    	imul   $0xa674,%eax,%eax
  401595:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401599:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  40159d:	69 c0 6f 34 00 00    	imul   $0x346f,%eax,%eax
  4015a3:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4015a7:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4015ab:	69 c0 4a 47 00 00    	imul   $0x474a,%eax,%eax
  4015b1:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4015b5:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4015b9:	69 c0 09 fc 00 00    	imul   $0xfc09,%eax,%eax
  4015bf:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4015c3:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4015c7:	69 c0 65 53 00 00    	imul   $0x5365,%eax,%eax
  4015cd:	89 44 24 14          	mov    %eax,0x14(%rsp)
  4015d1:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4015d5:	69 c0 d1 c3 00 00    	imul   $0xc3d1,%eax,%eax
  4015db:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4015df:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4015e3:	69 c0 0d 84 00 00    	imul   $0x840d,%eax,%eax
  4015e9:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4015ed:	8b 44 24 24          	mov    0x24(%rsp),%eax
  4015f1:	69 c0 af b8 00 00    	imul   $0xb8af,%eax,%eax
  4015f7:	89 44 24 24          	mov    %eax,0x24(%rsp)
  4015fb:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4015ff:	69 c0 74 d1 00 00    	imul   $0xd174,%eax,%eax
  401605:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401609:	8b 44 24 24          	mov    0x24(%rsp),%eax
  40160d:	69 c0 a0 4e 00 00    	imul   $0x4ea0,%eax,%eax
  401613:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401617:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  40161b:	69 c0 cc 09 00 00    	imul   $0x9cc,%eax,%eax
  401621:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401625:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401629:	69 c0 b1 bf 00 00    	imul   $0xbfb1,%eax,%eax
  40162f:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401633:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401637:	69 c0 ba a1 00 00    	imul   $0xa1ba,%eax,%eax
  40163d:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401641:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401645:	69 c0 4a 3c 00 00    	imul   $0x3c4a,%eax,%eax
  40164b:	89 44 24 14          	mov    %eax,0x14(%rsp)
  40164f:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401653:	69 c0 9d f0 00 00    	imul   $0xf09d,%eax,%eax
  401659:	89 44 24 18          	mov    %eax,0x18(%rsp)
  40165d:	8b 04 24             	mov    (%rsp),%eax
  401660:	69 c0 d2 3c 00 00    	imul   $0x3cd2,%eax,%eax
  401666:	89 04 24             	mov    %eax,(%rsp)
  401669:	8b 44 24 14          	mov    0x14(%rsp),%eax
  40166d:	69 c0 32 9e 00 00    	imul   $0x9e32,%eax,%eax
  401673:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401677:	8b 44 24 18          	mov    0x18(%rsp),%eax
  40167b:	69 c0 4d 99 00 00    	imul   $0x994d,%eax,%eax
  401681:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401685:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401689:	69 c0 5d 77 00 00    	imul   $0x775d,%eax,%eax
  40168f:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401693:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401697:	69 c0 8e 75 00 00    	imul   $0x758e,%eax,%eax
  40169d:	89 44 24 08          	mov    %eax,0x8(%rsp)
  4016a1:	8b 44 24 08          	mov    0x8(%rsp),%eax
  4016a5:	69 c0 83 95 00 00    	imul   $0x9583,%eax,%eax
  4016ab:	89 44 24 08          	mov    %eax,0x8(%rsp)
  4016af:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4016b3:	69 c0 f5 69 00 00    	imul   $0x69f5,%eax,%eax
  4016b9:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4016bd:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4016c1:	69 c0 11 1c 00 00    	imul   $0x1c11,%eax,%eax
  4016c7:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4016cb:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4016cf:	69 c0 f3 48 00 00    	imul   $0x48f3,%eax,%eax
  4016d5:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4016d9:	8b 44 24 24          	mov    0x24(%rsp),%eax
  4016dd:	69 c0 a5 4f 00 00    	imul   $0x4fa5,%eax,%eax
  4016e3:	89 44 24 24          	mov    %eax,0x24(%rsp)
  4016e7:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  4016eb:	69 c0 1c 3e 00 00    	imul   $0x3e1c,%eax,%eax
  4016f1:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  4016f5:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4016f9:	69 c0 d3 96 00 00    	imul   $0x96d3,%eax,%eax
  4016ff:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401703:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401707:	69 c0 9f 99 00 00    	imul   $0x999f,%eax,%eax
  40170d:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401711:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401715:	69 c0 45 92 00 00    	imul   $0x9245,%eax,%eax
  40171b:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  40171f:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401723:	69 c0 a0 ac 00 00    	imul   $0xaca0,%eax,%eax
  401729:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  40172d:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401731:	69 c0 cb 82 00 00    	imul   $0x82cb,%eax,%eax
  401737:	89 44 24 18          	mov    %eax,0x18(%rsp)
  40173b:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  40173f:	69 c0 f5 19 00 00    	imul   $0x19f5,%eax,%eax
  401745:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401749:	8b 04 24             	mov    (%rsp),%eax
  40174c:	69 c0 b4 5a 00 00    	imul   $0x5ab4,%eax,%eax
  401752:	89 04 24             	mov    %eax,(%rsp)
  401755:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401759:	69 c0 79 06 00 00    	imul   $0x679,%eax,%eax
  40175f:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401763:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401767:	69 c0 98 48 00 00    	imul   $0x4898,%eax,%eax
  40176d:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401771:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401775:	69 c0 d3 9c 00 00    	imul   $0x9cd3,%eax,%eax
  40177b:	89 44 24 14          	mov    %eax,0x14(%rsp)
  40177f:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401783:	69 c0 68 b5 00 00    	imul   $0xb568,%eax,%eax
  401789:	89 44 24 18          	mov    %eax,0x18(%rsp)
  40178d:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401791:	69 c0 ac f7 00 00    	imul   $0xf7ac,%eax,%eax
  401797:	89 44 24 14          	mov    %eax,0x14(%rsp)
  40179b:	8b 44 24 04          	mov    0x4(%rsp),%eax
  40179f:	69 c0 6c 29 00 00    	imul   $0x296c,%eax,%eax
  4017a5:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4017a9:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4017ad:	69 c0 ff be 00 00    	imul   $0xbeff,%eax,%eax
  4017b3:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4017b7:	8b 44 24 24          	mov    0x24(%rsp),%eax
  4017bb:	69 c0 33 d8 00 00    	imul   $0xd833,%eax,%eax
  4017c1:	89 44 24 24          	mov    %eax,0x24(%rsp)
  4017c5:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4017c9:	69 c0 83 d2 00 00    	imul   $0xd283,%eax,%eax
  4017cf:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4017d3:	8b 44 24 08          	mov    0x8(%rsp),%eax
  4017d7:	69 c0 e9 fa 00 00    	imul   $0xfae9,%eax,%eax
  4017dd:	89 44 24 08          	mov    %eax,0x8(%rsp)
  4017e1:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  4017e5:	69 c0 93 a7 00 00    	imul   $0xa793,%eax,%eax
  4017eb:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  4017ef:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4017f3:	69 c0 0b 42 00 00    	imul   $0x420b,%eax,%eax
  4017f9:	89 44 24 14          	mov    %eax,0x14(%rsp)
  4017fd:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401801:	69 c0 12 10 00 00    	imul   $0x1012,%eax,%eax
  401807:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  40180b:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  40180f:	69 c0 a6 3d 00 00    	imul   $0x3da6,%eax,%eax
  401815:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401819:	8b 04 24             	mov    (%rsp),%eax
  40181c:	69 c0 d4 e5 00 00    	imul   $0xe5d4,%eax,%eax
  401822:	89 04 24             	mov    %eax,(%rsp)
  401825:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401829:	69 c0 49 dd 00 00    	imul   $0xdd49,%eax,%eax
  40182f:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401833:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401837:	69 c0 6b 6a 00 00    	imul   $0x6a6b,%eax,%eax
  40183d:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401841:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401845:	69 c0 56 68 00 00    	imul   $0x6856,%eax,%eax
  40184b:	89 44 24 10          	mov    %eax,0x10(%rsp)
  40184f:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401853:	69 c0 fc 03 00 00    	imul   $0x3fc,%eax,%eax
  401859:	89 44 24 08          	mov    %eax,0x8(%rsp)
  40185d:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401861:	69 c0 07 0e 00 00    	imul   $0xe07,%eax,%eax
  401867:	89 44 24 20          	mov    %eax,0x20(%rsp)
  40186b:	8b 44 24 24          	mov    0x24(%rsp),%eax
  40186f:	69 c0 37 ef 00 00    	imul   $0xef37,%eax,%eax
  401875:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401879:	8b 44 24 18          	mov    0x18(%rsp),%eax
  40187d:	69 c0 48 3c 00 00    	imul   $0x3c48,%eax,%eax
  401883:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401887:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  40188b:	69 c0 85 b0 00 00    	imul   $0xb085,%eax,%eax
  401891:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401895:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401899:	69 c0 52 ab 00 00    	imul   $0xab52,%eax,%eax
  40189f:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4018a3:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4018a7:	69 c0 81 83 00 00    	imul   $0x8381,%eax,%eax
  4018ad:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4018b1:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4018b5:	69 c0 2b ef 00 00    	imul   $0xef2b,%eax,%eax
  4018bb:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4018bf:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4018c3:	69 c0 6a 33 00 00    	imul   $0x336a,%eax,%eax
  4018c9:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4018cd:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4018d1:	69 c0 47 7f 00 00    	imul   $0x7f47,%eax,%eax
  4018d7:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4018db:	8b 44 24 24          	mov    0x24(%rsp),%eax
  4018df:	69 c0 0e f6 00 00    	imul   $0xf60e,%eax,%eax
  4018e5:	89 44 24 24          	mov    %eax,0x24(%rsp)
  4018e9:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4018ed:	69 c0 83 6d 00 00    	imul   $0x6d83,%eax,%eax
  4018f3:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4018f7:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4018fb:	69 c0 47 55 00 00    	imul   $0x5547,%eax,%eax
  401901:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401905:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401909:	69 c0 30 c8 00 00    	imul   $0xc830,%eax,%eax
  40190f:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401913:	8b 04 24             	mov    (%rsp),%eax
  401916:	69 c0 ad 70 00 00    	imul   $0x70ad,%eax,%eax
  40191c:	89 04 24             	mov    %eax,(%rsp)
  40191f:	8b 04 24             	mov    (%rsp),%eax
  401922:	69 c0 f1 c6 00 00    	imul   $0xc6f1,%eax,%eax
  401928:	89 04 24             	mov    %eax,(%rsp)
  40192b:	ba 00 00 00 00       	mov    $0x0,%edx
  401930:	b8 00 00 00 00       	mov    $0x0,%eax
  401935:	eb 0a                	jmp    401941 <scramble+0x503>
  401937:	89 d1                	mov    %edx,%ecx
  401939:	8b 0c 8c             	mov    (%rsp,%rcx,4),%ecx
  40193c:	01 c8                	add    %ecx,%eax
  40193e:	83 c2 01             	add    $0x1,%edx
  401941:	83 fa 09             	cmp    $0x9,%edx
  401944:	76 f1                	jbe    401937 <scramble+0x4f9>
  401946:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
  40194b:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  401952:	00 00 
  401954:	75 05                	jne    40195b <scramble+0x51d>
  401956:	48 83 c4 38          	add    $0x38,%rsp
  40195a:	c3                   	retq   
  40195b:	e8 2d 09 00 00       	callq  40228d <__stack_chk_fail>

0000000000401960 <getbuf>:
  401960:	48 83 ec 38          	sub    $0x38,%rsp
  401964:	48 89 e7             	mov    %rsp,%rdi
  401967:	e8 53 04 00 00       	callq  401dbf <Gets>
  40196c:	b8 01 00 00 00       	mov    $0x1,%eax
  401971:	48 83 c4 38          	add    $0x38,%rsp
  401975:	c3                   	retq   

0000000000401976 <touch1>:
  401976:	48 83 ec 08          	sub    $0x8,%rsp
  40197a:	c7 05 98 3b 20 00 01 	movl   $0x1,0x203b98(%rip)        # 60551c <vlevel>
  401981:	00 00 00 
  401984:	48 8d 3d ec 1c 00 00 	lea    0x1cec(%rip),%rdi        # 403677 <_IO_stdin_used+0x327>
  40198b:	e8 e0 f3 ff ff       	callq  400d70 <puts@plt>
  401990:	bf 01 00 00 00       	mov    $0x1,%edi
  401995:	e8 8d 06 00 00       	callq  402027 <validate>
  40199a:	bf 00 00 00 00       	mov    $0x0,%edi
  40199f:	e8 2c f5 ff ff       	callq  400ed0 <exit@plt>

00000000004019a4 <touch2>:
  4019a4:	48 83 ec 08          	sub    $0x8,%rsp
  4019a8:	89 fa                	mov    %edi,%edx
  4019aa:	c7 05 68 3b 20 00 02 	movl   $0x2,0x203b68(%rip)        # 60551c <vlevel>
  4019b1:	00 00 00 
  4019b4:	39 3d 6a 3b 20 00    	cmp    %edi,0x203b6a(%rip)        # 605524 <cookie>
  4019ba:	74 2a                	je     4019e6 <touch2+0x42>
  4019bc:	48 8d 35 05 1d 00 00 	lea    0x1d05(%rip),%rsi        # 4036c8 <_IO_stdin_used+0x378>
  4019c3:	bf 01 00 00 00       	mov    $0x1,%edi
  4019c8:	b8 00 00 00 00       	mov    $0x0,%eax
  4019cd:	e8 ae f4 ff ff       	callq  400e80 <__printf_chk@plt>
  4019d2:	bf 02 00 00 00       	mov    $0x2,%edi
  4019d7:	e8 1b 07 00 00       	callq  4020f7 <fail>
  4019dc:	bf 00 00 00 00       	mov    $0x0,%edi
  4019e1:	e8 ea f4 ff ff       	callq  400ed0 <exit@plt>
  4019e6:	48 8d 35 b3 1c 00 00 	lea    0x1cb3(%rip),%rsi        # 4036a0 <_IO_stdin_used+0x350>
  4019ed:	bf 01 00 00 00       	mov    $0x1,%edi
  4019f2:	b8 00 00 00 00       	mov    $0x0,%eax
  4019f7:	e8 84 f4 ff ff       	callq  400e80 <__printf_chk@plt>
  4019fc:	bf 02 00 00 00       	mov    $0x2,%edi
  401a01:	e8 21 06 00 00       	callq  402027 <validate>
  401a06:	eb d4                	jmp    4019dc <touch2+0x38>

0000000000401a08 <hexmatch>:
  401a08:	41 54                	push   %r12
  401a0a:	55                   	push   %rbp
  401a0b:	53                   	push   %rbx
  401a0c:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp
  401a10:	89 fd                	mov    %edi,%ebp
  401a12:	48 89 f3             	mov    %rsi,%rbx
  401a15:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401a1c:	00 00 
  401a1e:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
  401a23:	31 c0                	xor    %eax,%eax
  401a25:	e8 16 f4 ff ff       	callq  400e40 <random@plt>
  401a2a:	48 89 c1             	mov    %rax,%rcx
  401a2d:	48 ba 0b d7 a3 70 3d 	movabs $0xa3d70a3d70a3d70b,%rdx
  401a34:	0a d7 a3 
  401a37:	48 f7 ea             	imul   %rdx
  401a3a:	48 01 ca             	add    %rcx,%rdx
  401a3d:	48 c1 fa 06          	sar    $0x6,%rdx
  401a41:	48 89 c8             	mov    %rcx,%rax
  401a44:	48 c1 f8 3f          	sar    $0x3f,%rax
  401a48:	48 29 c2             	sub    %rax,%rdx
  401a4b:	48 8d 04 92          	lea    (%rdx,%rdx,4),%rax
  401a4f:	48 8d 14 80          	lea    (%rax,%rax,4),%rdx
  401a53:	48 8d 04 95 00 00 00 	lea    0x0(,%rdx,4),%rax
  401a5a:	00 
  401a5b:	48 29 c1             	sub    %rax,%rcx
  401a5e:	4c 8d 24 0c          	lea    (%rsp,%rcx,1),%r12
  401a62:	41 89 e8             	mov    %ebp,%r8d
  401a65:	48 8d 0d 28 1c 00 00 	lea    0x1c28(%rip),%rcx        # 403694 <_IO_stdin_used+0x344>
  401a6c:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  401a73:	be 01 00 00 00       	mov    $0x1,%esi
  401a78:	4c 89 e7             	mov    %r12,%rdi
  401a7b:	b8 00 00 00 00       	mov    $0x0,%eax
  401a80:	e8 9b f4 ff ff       	callq  400f20 <__sprintf_chk@plt>
  401a85:	ba 09 00 00 00       	mov    $0x9,%edx
  401a8a:	4c 89 e6             	mov    %r12,%rsi
  401a8d:	48 89 df             	mov    %rbx,%rdi
  401a90:	e8 bb f2 ff ff       	callq  400d50 <strncmp@plt>
  401a95:	85 c0                	test   %eax,%eax
  401a97:	0f 94 c0             	sete   %al
  401a9a:	48 8b 5c 24 78       	mov    0x78(%rsp),%rbx
  401a9f:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  401aa6:	00 00 
  401aa8:	75 0c                	jne    401ab6 <hexmatch+0xae>
  401aaa:	0f b6 c0             	movzbl %al,%eax
  401aad:	48 83 ec 80          	sub    $0xffffffffffffff80,%rsp
  401ab1:	5b                   	pop    %rbx
  401ab2:	5d                   	pop    %rbp
  401ab3:	41 5c                	pop    %r12
  401ab5:	c3                   	retq   
  401ab6:	e8 d2 07 00 00       	callq  40228d <__stack_chk_fail>

0000000000401abb <touch3>:
  401abb:	53                   	push   %rbx
  401abc:	48 89 fb             	mov    %rdi,%rbx
  401abf:	c7 05 53 3a 20 00 03 	movl   $0x3,0x203a53(%rip)        # 60551c <vlevel>
  401ac6:	00 00 00 
  401ac9:	48 89 fe             	mov    %rdi,%rsi
  401acc:	8b 3d 52 3a 20 00    	mov    0x203a52(%rip),%edi        # 605524 <cookie>
  401ad2:	e8 31 ff ff ff       	callq  401a08 <hexmatch>
  401ad7:	85 c0                	test   %eax,%eax
  401ad9:	74 2d                	je     401b08 <touch3+0x4d>
  401adb:	48 89 da             	mov    %rbx,%rdx
  401ade:	48 8d 35 0b 1c 00 00 	lea    0x1c0b(%rip),%rsi        # 4036f0 <_IO_stdin_used+0x3a0>
  401ae5:	bf 01 00 00 00       	mov    $0x1,%edi
  401aea:	b8 00 00 00 00       	mov    $0x0,%eax
  401aef:	e8 8c f3 ff ff       	callq  400e80 <__printf_chk@plt>
  401af4:	bf 03 00 00 00       	mov    $0x3,%edi
  401af9:	e8 29 05 00 00       	callq  402027 <validate>
  401afe:	bf 00 00 00 00       	mov    $0x0,%edi
  401b03:	e8 c8 f3 ff ff       	callq  400ed0 <exit@plt>
  401b08:	48 89 da             	mov    %rbx,%rdx
  401b0b:	48 8d 35 06 1c 00 00 	lea    0x1c06(%rip),%rsi        # 403718 <_IO_stdin_used+0x3c8>
  401b12:	bf 01 00 00 00       	mov    $0x1,%edi
  401b17:	b8 00 00 00 00       	mov    $0x0,%eax
  401b1c:	e8 5f f3 ff ff       	callq  400e80 <__printf_chk@plt>
  401b21:	bf 03 00 00 00       	mov    $0x3,%edi
  401b26:	e8 cc 05 00 00       	callq  4020f7 <fail>
  401b2b:	eb d1                	jmp    401afe <touch3+0x43>

0000000000401b2d <test>:
  401b2d:	48 83 ec 08          	sub    $0x8,%rsp
  401b31:	b8 00 00 00 00       	mov    $0x0,%eax
  401b36:	e8 25 fe ff ff       	callq  401960 <getbuf>
  401b3b:	89 c2                	mov    %eax,%edx
  401b3d:	48 8d 35 fc 1b 00 00 	lea    0x1bfc(%rip),%rsi        # 403740 <_IO_stdin_used+0x3f0>
  401b44:	bf 01 00 00 00       	mov    $0x1,%edi
  401b49:	b8 00 00 00 00       	mov    $0x0,%eax
  401b4e:	e8 2d f3 ff ff       	callq  400e80 <__printf_chk@plt>
  401b53:	48 83 c4 08          	add    $0x8,%rsp
  401b57:	c3                   	retq   

0000000000401b58 <test2>:
  401b58:	48 83 ec 08          	sub    $0x8,%rsp
  401b5c:	b8 00 00 00 00       	mov    $0x0,%eax
  401b61:	e8 1d 00 00 00       	callq  401b83 <getbuf_withcanary>
  401b66:	89 c2                	mov    %eax,%edx
  401b68:	48 8d 35 f9 1b 00 00 	lea    0x1bf9(%rip),%rsi        # 403768 <_IO_stdin_used+0x418>
  401b6f:	bf 01 00 00 00       	mov    $0x1,%edi
  401b74:	b8 00 00 00 00       	mov    $0x0,%eax
  401b79:	e8 02 f3 ff ff       	callq  400e80 <__printf_chk@plt>
  401b7e:	48 83 c4 08          	add    $0x8,%rsp
  401b82:	c3                   	retq   

0000000000401b83 <getbuf_withcanary>:
  401b83:	55                   	push   %rbp
  401b84:	48 89 e5             	mov    %rsp,%rbp
  401b87:	48 81 ec 20 01 00 00 	sub    $0x120,%rsp
  401b8e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401b95:	00 00 
  401b97:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401b9b:	31 c0                	xor    %eax,%eax
  401b9d:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
  401ba4:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
  401bab:	48 89 c7             	mov    %rax,%rdi
  401bae:	e8 0c 02 00 00       	callq  401dbf <Gets>
  401bb3:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  401bb6:	48 98                	cltq   
  401bb8:	48 8d 95 e0 fe ff ff 	lea    -0x120(%rbp),%rdx
  401bbf:	48 01 c2             	add    %rax,%rdx
  401bc2:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
  401bc9:	48 89 c6             	mov    %rax,%rsi
  401bcc:	48 89 d7             	mov    %rdx,%rdi
  401bcf:	ba 80 00 00 00       	mov    $0x80,%edx
  401bd4:	e8 47 f2 ff ff       	callq  400e20 <memcpy@plt>
  401bd9:	b8 01 00 00 00       	mov    $0x1,%eax
  401bde:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  401be2:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  401be9:	00 00 
  401beb:	74 05                	je     401bf2 <getbuf_withcanary+0x6f>
  401bed:	e8 9b 06 00 00       	callq  40228d <__stack_chk_fail>
  401bf2:	c9                   	leaveq 
  401bf3:	c3                   	retq   

0000000000401bf4 <start_farm>:
  401bf4:	b8 01 00 00 00       	mov    $0x1,%eax
  401bf9:	c3                   	retq   

0000000000401bfa <addval_128>:
  401bfa:	8d 87 48 89 c7 91    	lea    -0x6e3876b8(%rdi),%eax
  401c00:	c3                   	retq   

0000000000401c01 <getval_184>:
  401c01:	b8 48 89 c7 c3       	mov    $0xc3c78948,%eax
  401c06:	c3                   	retq   

0000000000401c07 <setval_340>:
  401c07:	c7 07 e2 58 90 c3    	movl   $0xc39058e2,(%rdi)
  401c0d:	c3                   	retq   

0000000000401c0e <getval_113>:
  401c0e:	b8 58 90 90 c3       	mov    $0xc3909058,%eax
  401c13:	c3                   	retq   

0000000000401c14 <getval_440>:
  401c14:	b8 48 89 c7 c3       	mov    $0xc3c78948,%eax
  401c19:	c3                   	retq   

0000000000401c1a <addval_213>:
  401c1a:	8d 87 2a 58 89 c7    	lea    -0x3876a7d6(%rdi),%eax
  401c20:	c3                   	retq   

0000000000401c21 <setval_116>:
  401c21:	c7 07 78 90 c3 3b    	movl   $0x3bc39078,(%rdi)
  401c27:	c3                   	retq   

0000000000401c28 <setval_104>:
  401c28:	c7 07 cc 58 c2 ed    	movl   $0xedc258cc,(%rdi)
  401c2e:	c3                   	retq   

0000000000401c2f <mid_farm>:
  401c2f:	b8 01 00 00 00       	mov    $0x1,%eax
  401c34:	c3                   	retq   

0000000000401c35 <add_xy>:
  401c35:	48 8d 04 37          	lea    (%rdi,%rsi,1),%rax
  401c39:	c3                   	retq   

0000000000401c3a <getval_493>:
  401c3a:	b8 c9 c1 38 db       	mov    $0xdb38c1c9,%eax
  401c3f:	c3                   	retq   

0000000000401c40 <addval_159>:
  401c40:	8d 87 48 99 e0 90    	lea    -0x6f1f66b8(%rdi),%eax
  401c46:	c3                   	retq   

0000000000401c47 <setval_428>:
  401c47:	c7 07 a9 d6 20 c0    	movl   $0xc020d6a9,(%rdi)
  401c4d:	c3                   	retq   

0000000000401c4e <setval_494>:
  401c4e:	c7 07 89 d6 94 c3    	movl   $0xc394d689,(%rdi)
  401c54:	c3                   	retq   

0000000000401c55 <addval_143>:
  401c55:	8d 87 89 ca 20 d2    	lea    -0x2ddf3577(%rdi),%eax
  401c5b:	c3                   	retq   

0000000000401c5c <getval_224>:
  401c5c:	b8 89 ca 60 db       	mov    $0xdb60ca89,%eax
  401c61:	c3                   	retq   

0000000000401c62 <setval_208>:
  401c62:	c7 07 48 89 e0 c3    	movl   $0xc3e08948,(%rdi)
  401c68:	c3                   	retq   

0000000000401c69 <addval_436>:
  401c69:	8d 87 89 c1 38 c0    	lea    -0x3fc73e77(%rdi),%eax
  401c6f:	c3                   	retq   

0000000000401c70 <addval_419>:
  401c70:	8d 87 99 ca 84 db    	lea    -0x247b3567(%rdi),%eax
  401c76:	c3                   	retq   

0000000000401c77 <addval_118>:
  401c77:	8d 87 89 ca 30 db    	lea    -0x24cf3577(%rdi),%eax
  401c7d:	c3                   	retq   

0000000000401c7e <setval_485>:
  401c7e:	c7 07 89 c1 38 c0    	movl   $0xc038c189,(%rdi)
  401c84:	c3                   	retq   

0000000000401c85 <addval_352>:
  401c85:	8d 87 48 a9 e0 c3    	lea    -0x3c1f56b8(%rdi),%eax
  401c8b:	c3                   	retq   

0000000000401c8c <addval_119>:
  401c8c:	8d 87 99 c1 38 c0    	lea    -0x3fc73e67(%rdi),%eax
  401c92:	c3                   	retq   

0000000000401c93 <setval_259>:
  401c93:	c7 07 86 41 8b d6    	movl   $0xd68b4186,(%rdi)
  401c99:	c3                   	retq   

0000000000401c9a <setval_401>:
  401c9a:	c7 07 89 ca c3 84    	movl   $0x84c3ca89,(%rdi)
  401ca0:	c3                   	retq   

0000000000401ca1 <getval_457>:
  401ca1:	b8 89 ca 78 c9       	mov    $0xc978ca89,%eax
  401ca6:	c3                   	retq   

0000000000401ca7 <getval_498>:
  401ca7:	b8 a9 ca 90 c3       	mov    $0xc390caa9,%eax
  401cac:	c3                   	retq   

0000000000401cad <getval_336>:
  401cad:	b8 f2 89 d6 90       	mov    $0x90d689f2,%eax
  401cb2:	c3                   	retq   

0000000000401cb3 <setval_397>:
  401cb3:	c7 07 c5 89 d6 92    	movl   $0x92d689c5,(%rdi)
  401cb9:	c3                   	retq   

0000000000401cba <setval_371>:
  401cba:	c7 07 21 09 d6 c3    	movl   $0xc3d60921,(%rdi)
  401cc0:	c3                   	retq   

0000000000401cc1 <setval_413>:
  401cc1:	c7 07 48 8b e0 90    	movl   $0x90e08b48,(%rdi)
  401cc7:	c3                   	retq   

0000000000401cc8 <setval_468>:
  401cc8:	c7 07 89 d6 90 90    	movl   $0x9090d689,(%rdi)
  401cce:	c3                   	retq   

0000000000401ccf <addval_219>:
  401ccf:	8d 87 48 89 e0 92    	lea    -0x6d1f76b8(%rdi),%eax
  401cd5:	c3                   	retq   

0000000000401cd6 <addval_138>:
  401cd6:	8d 87 89 d6 a4 d2    	lea    -0x2d5b2977(%rdi),%eax
  401cdc:	c3                   	retq   

0000000000401cdd <getval_154>:
  401cdd:	b8 89 c1 a4 c0       	mov    $0xc0a4c189,%eax
  401ce2:	c3                   	retq   

0000000000401ce3 <setval_101>:
  401ce3:	c7 07 89 c1 60 d2    	movl   $0xd260c189,(%rdi)
  401ce9:	c3                   	retq   

0000000000401cea <addval_398>:
  401cea:	8d 87 80 47 99 c1    	lea    -0x3e66b880(%rdi),%eax
  401cf0:	c3                   	retq   

0000000000401cf1 <getval_343>:
  401cf1:	b8 48 89 e0 c7       	mov    $0xc7e08948,%eax
  401cf6:	c3                   	retq   

0000000000401cf7 <getval_196>:
  401cf7:	b8 68 48 89 e0       	mov    $0xe0894868,%eax
  401cfc:	c3                   	retq   

0000000000401cfd <getval_309>:
  401cfd:	b8 48 c9 e0 90       	mov    $0x90e0c948,%eax
  401d02:	c3                   	retq   

0000000000401d03 <setval_351>:
  401d03:	c7 07 89 c1 28 db    	movl   $0xdb28c189,(%rdi)
  401d09:	c3                   	retq   

0000000000401d0a <setval_293>:
  401d0a:	c7 07 09 ca 20 c9    	movl   $0xc920ca09,(%rdi)
  401d10:	c3                   	retq   

0000000000401d11 <end_farm>:
  401d11:	b8 01 00 00 00       	mov    $0x1,%eax
  401d16:	c3                   	retq   

0000000000401d17 <save_char>:
  401d17:	8b 05 27 44 20 00    	mov    0x204427(%rip),%eax        # 606144 <gets_cnt>
  401d1d:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  401d22:	7f 4a                	jg     401d6e <save_char+0x57>
  401d24:	89 f9                	mov    %edi,%ecx
  401d26:	c0 e9 04             	shr    $0x4,%cl
  401d29:	8d 14 40             	lea    (%rax,%rax,2),%edx
  401d2c:	4c 8d 05 9d 1d 00 00 	lea    0x1d9d(%rip),%r8        # 403ad0 <trans_char>
  401d33:	83 e1 0f             	and    $0xf,%ecx
  401d36:	45 0f b6 0c 08       	movzbl (%r8,%rcx,1),%r9d
  401d3b:	48 8d 0d fe 37 20 00 	lea    0x2037fe(%rip),%rcx        # 605540 <gets_buf>
  401d42:	48 63 f2             	movslq %edx,%rsi
  401d45:	44 88 0c 31          	mov    %r9b,(%rcx,%rsi,1)
  401d49:	8d 72 01             	lea    0x1(%rdx),%esi
  401d4c:	83 e7 0f             	and    $0xf,%edi
  401d4f:	41 0f b6 3c 38       	movzbl (%r8,%rdi,1),%edi
  401d54:	48 63 f6             	movslq %esi,%rsi
  401d57:	40 88 3c 31          	mov    %dil,(%rcx,%rsi,1)
  401d5b:	83 c2 02             	add    $0x2,%edx
  401d5e:	48 63 d2             	movslq %edx,%rdx
  401d61:	c6 04 11 20          	movb   $0x20,(%rcx,%rdx,1)
  401d65:	83 c0 01             	add    $0x1,%eax
  401d68:	89 05 d6 43 20 00    	mov    %eax,0x2043d6(%rip)        # 606144 <gets_cnt>
  401d6e:	f3 c3                	repz retq 

0000000000401d70 <save_term>:
  401d70:	8b 05 ce 43 20 00    	mov    0x2043ce(%rip),%eax        # 606144 <gets_cnt>
  401d76:	8d 04 40             	lea    (%rax,%rax,2),%eax
  401d79:	48 98                	cltq   
  401d7b:	48 8d 15 be 37 20 00 	lea    0x2037be(%rip),%rdx        # 605540 <gets_buf>
  401d82:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  401d86:	c3                   	retq   

0000000000401d87 <check_fail>:
  401d87:	48 83 ec 08          	sub    $0x8,%rsp
  401d8b:	0f be 15 ba 43 20 00 	movsbl 0x2043ba(%rip),%edx        # 60614c <target_prefix>
  401d92:	4c 8d 05 a7 37 20 00 	lea    0x2037a7(%rip),%r8        # 605540 <gets_buf>
  401d99:	8b 0d 79 37 20 00    	mov    0x203779(%rip),%ecx        # 605518 <check_level>
  401d9f:	48 8d 35 f0 19 00 00 	lea    0x19f0(%rip),%rsi        # 403796 <_IO_stdin_used+0x446>
  401da6:	bf 01 00 00 00       	mov    $0x1,%edi
  401dab:	b8 00 00 00 00       	mov    $0x0,%eax
  401db0:	e8 cb f0 ff ff       	callq  400e80 <__printf_chk@plt>
  401db5:	bf 01 00 00 00       	mov    $0x1,%edi
  401dba:	e8 11 f1 ff ff       	callq  400ed0 <exit@plt>

0000000000401dbf <Gets>:
  401dbf:	41 54                	push   %r12
  401dc1:	55                   	push   %rbp
  401dc2:	53                   	push   %rbx
  401dc3:	49 89 fc             	mov    %rdi,%r12
  401dc6:	c7 05 74 43 20 00 00 	movl   $0x0,0x204374(%rip)        # 606144 <gets_cnt>
  401dcd:	00 00 00 
  401dd0:	48 89 fb             	mov    %rdi,%rbx
  401dd3:	eb 11                	jmp    401de6 <Gets+0x27>
  401dd5:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  401dd9:	88 03                	mov    %al,(%rbx)
  401ddb:	0f b6 f8             	movzbl %al,%edi
  401dde:	e8 34 ff ff ff       	callq  401d17 <save_char>
  401de3:	48 89 eb             	mov    %rbp,%rbx
  401de6:	48 8b 3d 23 37 20 00 	mov    0x203723(%rip),%rdi        # 605510 <infile>
  401ded:	e8 5e f0 ff ff       	callq  400e50 <_IO_getc@plt>
  401df2:	83 f8 ff             	cmp    $0xffffffff,%eax
  401df5:	74 05                	je     401dfc <Gets+0x3d>
  401df7:	83 f8 0a             	cmp    $0xa,%eax
  401dfa:	75 d9                	jne    401dd5 <Gets+0x16>
  401dfc:	c6 03 00             	movb   $0x0,(%rbx)
  401dff:	b8 00 00 00 00       	mov    $0x0,%eax
  401e04:	e8 67 ff ff ff       	callq  401d70 <save_term>
  401e09:	4c 89 e0             	mov    %r12,%rax
  401e0c:	5b                   	pop    %rbx
  401e0d:	5d                   	pop    %rbp
  401e0e:	41 5c                	pop    %r12
  401e10:	c3                   	retq   

0000000000401e11 <notify_server>:
  401e11:	55                   	push   %rbp
  401e12:	53                   	push   %rbx
  401e13:	48 81 ec 18 40 00 00 	sub    $0x4018,%rsp
  401e1a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401e21:	00 00 
  401e23:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
  401e2a:	00 
  401e2b:	31 c0                	xor    %eax,%eax
  401e2d:	83 3d f4 36 20 00 00 	cmpl   $0x0,0x2036f4(%rip)        # 605528 <is_checker>
  401e34:	0f 85 cb 01 00 00    	jne    402005 <notify_server+0x1f4>
  401e3a:	89 fb                	mov    %edi,%ebx
  401e3c:	8b 05 02 43 20 00    	mov    0x204302(%rip),%eax        # 606144 <gets_cnt>
  401e42:	83 c0 64             	add    $0x64,%eax
  401e45:	3d 00 20 00 00       	cmp    $0x2000,%eax
  401e4a:	0f 8f bd 00 00 00    	jg     401f0d <notify_server+0xfc>
  401e50:	0f be 05 f5 42 20 00 	movsbl 0x2042f5(%rip),%eax        # 60614c <target_prefix>
  401e57:	83 3d 4a 36 20 00 00 	cmpl   $0x0,0x20364a(%rip)        # 6054a8 <notify>
  401e5e:	0f 84 c9 00 00 00    	je     401f2d <notify_server+0x11c>
  401e64:	8b 15 b6 36 20 00    	mov    0x2036b6(%rip),%edx        # 605520 <authkey>
  401e6a:	85 db                	test   %ebx,%ebx
  401e6c:	0f 84 c5 00 00 00    	je     401f37 <notify_server+0x126>
  401e72:	48 8d 2d 33 19 00 00 	lea    0x1933(%rip),%rbp        # 4037ac <_IO_stdin_used+0x45c>
  401e79:	48 89 e7             	mov    %rsp,%rdi
  401e7c:	48 8d 0d bd 36 20 00 	lea    0x2036bd(%rip),%rcx        # 605540 <gets_buf>
  401e83:	51                   	push   %rcx
  401e84:	56                   	push   %rsi
  401e85:	50                   	push   %rax
  401e86:	52                   	push   %rdx
  401e87:	49 89 e9             	mov    %rbp,%r9
  401e8a:	44 8b 05 bf 32 20 00 	mov    0x2032bf(%rip),%r8d        # 605150 <target_id>
  401e91:	48 8d 0d 1e 19 00 00 	lea    0x191e(%rip),%rcx        # 4037b6 <_IO_stdin_used+0x466>
  401e98:	ba 00 20 00 00       	mov    $0x2000,%edx
  401e9d:	be 01 00 00 00       	mov    $0x1,%esi
  401ea2:	b8 00 00 00 00       	mov    $0x0,%eax
  401ea7:	e8 74 f0 ff ff       	callq  400f20 <__sprintf_chk@plt>
  401eac:	48 83 c4 20          	add    $0x20,%rsp
  401eb0:	83 3d f1 35 20 00 00 	cmpl   $0x0,0x2035f1(%rip)        # 6054a8 <notify>
  401eb7:	0f 84 bf 00 00 00    	je     401f7c <notify_server+0x16b>
  401ebd:	48 89 e1             	mov    %rsp,%rcx
  401ec0:	4c 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%r9
  401ec7:	00 
  401ec8:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  401ece:	48 8b 15 93 32 20 00 	mov    0x203293(%rip),%rdx        # 605168 <lab>
  401ed5:	48 8b 35 94 32 20 00 	mov    0x203294(%rip),%rsi        # 605170 <course>
  401edc:	48 8b 3d 7d 32 20 00 	mov    0x20327d(%rip),%rdi        # 605160 <user_id>
  401ee3:	e8 1c 13 00 00       	callq  403204 <driver_post>
  401ee8:	85 c0                	test   %eax,%eax
  401eea:	78 57                	js     401f43 <notify_server+0x132>
  401eec:	85 db                	test   %ebx,%ebx
  401eee:	74 7b                	je     401f6b <notify_server+0x15a>
  401ef0:	48 8d 3d 11 1a 00 00 	lea    0x1a11(%rip),%rdi        # 403908 <_IO_stdin_used+0x5b8>
  401ef7:	e8 74 ee ff ff       	callq  400d70 <puts@plt>
  401efc:	48 8d 3d db 18 00 00 	lea    0x18db(%rip),%rdi        # 4037de <_IO_stdin_used+0x48e>
  401f03:	e8 68 ee ff ff       	callq  400d70 <puts@plt>
  401f08:	e9 f8 00 00 00       	jmpq   402005 <notify_server+0x1f4>
  401f0d:	48 8d 35 c4 19 00 00 	lea    0x19c4(%rip),%rsi        # 4038d8 <_IO_stdin_used+0x588>
  401f14:	bf 01 00 00 00       	mov    $0x1,%edi
  401f19:	b8 00 00 00 00       	mov    $0x0,%eax
  401f1e:	e8 5d ef ff ff       	callq  400e80 <__printf_chk@plt>
  401f23:	bf 01 00 00 00       	mov    $0x1,%edi
  401f28:	e8 a3 ef ff ff       	callq  400ed0 <exit@plt>
  401f2d:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  401f32:	e9 33 ff ff ff       	jmpq   401e6a <notify_server+0x59>
  401f37:	48 8d 2d 73 18 00 00 	lea    0x1873(%rip),%rbp        # 4037b1 <_IO_stdin_used+0x461>
  401f3e:	e9 36 ff ff ff       	jmpq   401e79 <notify_server+0x68>
  401f43:	48 8d 94 24 00 20 00 	lea    0x2000(%rsp),%rdx
  401f4a:	00 
  401f4b:	48 8d 35 80 18 00 00 	lea    0x1880(%rip),%rsi        # 4037d2 <_IO_stdin_used+0x482>
  401f52:	bf 01 00 00 00       	mov    $0x1,%edi
  401f57:	b8 00 00 00 00       	mov    $0x0,%eax
  401f5c:	e8 1f ef ff ff       	callq  400e80 <__printf_chk@plt>
  401f61:	bf 01 00 00 00       	mov    $0x1,%edi
  401f66:	e8 65 ef ff ff       	callq  400ed0 <exit@plt>
  401f6b:	48 8d 3d 76 18 00 00 	lea    0x1876(%rip),%rdi        # 4037e8 <_IO_stdin_used+0x498>
  401f72:	e8 f9 ed ff ff       	callq  400d70 <puts@plt>
  401f77:	e9 89 00 00 00       	jmpq   402005 <notify_server+0x1f4>
  401f7c:	48 89 ea             	mov    %rbp,%rdx
  401f7f:	48 8d 35 ba 19 00 00 	lea    0x19ba(%rip),%rsi        # 403940 <_IO_stdin_used+0x5f0>
  401f86:	bf 01 00 00 00       	mov    $0x1,%edi
  401f8b:	b8 00 00 00 00       	mov    $0x0,%eax
  401f90:	e8 eb ee ff ff       	callq  400e80 <__printf_chk@plt>
  401f95:	48 8b 15 c4 31 20 00 	mov    0x2031c4(%rip),%rdx        # 605160 <user_id>
  401f9c:	48 8d 35 4c 18 00 00 	lea    0x184c(%rip),%rsi        # 4037ef <_IO_stdin_used+0x49f>
  401fa3:	bf 01 00 00 00       	mov    $0x1,%edi
  401fa8:	b8 00 00 00 00       	mov    $0x0,%eax
  401fad:	e8 ce ee ff ff       	callq  400e80 <__printf_chk@plt>
  401fb2:	48 8b 15 b7 31 20 00 	mov    0x2031b7(%rip),%rdx        # 605170 <course>
  401fb9:	48 8d 35 3c 18 00 00 	lea    0x183c(%rip),%rsi        # 4037fc <_IO_stdin_used+0x4ac>
  401fc0:	bf 01 00 00 00       	mov    $0x1,%edi
  401fc5:	b8 00 00 00 00       	mov    $0x0,%eax
  401fca:	e8 b1 ee ff ff       	callq  400e80 <__printf_chk@plt>
  401fcf:	48 8b 15 92 31 20 00 	mov    0x203192(%rip),%rdx        # 605168 <lab>
  401fd6:	48 8d 35 2b 18 00 00 	lea    0x182b(%rip),%rsi        # 403808 <_IO_stdin_used+0x4b8>
  401fdd:	bf 01 00 00 00       	mov    $0x1,%edi
  401fe2:	b8 00 00 00 00       	mov    $0x0,%eax
  401fe7:	e8 94 ee ff ff       	callq  400e80 <__printf_chk@plt>
  401fec:	48 89 e2             	mov    %rsp,%rdx
  401fef:	48 8d 35 1b 18 00 00 	lea    0x181b(%rip),%rsi        # 403811 <_IO_stdin_used+0x4c1>
  401ff6:	bf 01 00 00 00       	mov    $0x1,%edi
  401ffb:	b8 00 00 00 00       	mov    $0x0,%eax
  402000:	e8 7b ee ff ff       	callq  400e80 <__printf_chk@plt>
  402005:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
  40200c:	00 
  40200d:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  402014:	00 00 
  402016:	75 0a                	jne    402022 <notify_server+0x211>
  402018:	48 81 c4 18 40 00 00 	add    $0x4018,%rsp
  40201f:	5b                   	pop    %rbx
  402020:	5d                   	pop    %rbp
  402021:	c3                   	retq   
  402022:	e8 66 02 00 00       	callq  40228d <__stack_chk_fail>

0000000000402027 <validate>:
  402027:	53                   	push   %rbx
  402028:	89 fb                	mov    %edi,%ebx
  40202a:	83 3d f7 34 20 00 00 	cmpl   $0x0,0x2034f7(%rip)        # 605528 <is_checker>
  402031:	74 72                	je     4020a5 <validate+0x7e>
  402033:	39 3d e3 34 20 00    	cmp    %edi,0x2034e3(%rip)        # 60551c <vlevel>
  402039:	75 32                	jne    40206d <validate+0x46>
  40203b:	8b 15 d7 34 20 00    	mov    0x2034d7(%rip),%edx        # 605518 <check_level>
  402041:	39 fa                	cmp    %edi,%edx
  402043:	75 3e                	jne    402083 <validate+0x5c>
  402045:	0f be 15 00 41 20 00 	movsbl 0x204100(%rip),%edx        # 60614c <target_prefix>
  40204c:	4c 8d 05 ed 34 20 00 	lea    0x2034ed(%rip),%r8        # 605540 <gets_buf>
  402053:	89 f9                	mov    %edi,%ecx
  402055:	48 8d 35 df 17 00 00 	lea    0x17df(%rip),%rsi        # 40383b <_IO_stdin_used+0x4eb>
  40205c:	bf 01 00 00 00       	mov    $0x1,%edi
  402061:	b8 00 00 00 00       	mov    $0x0,%eax
  402066:	e8 15 ee ff ff       	callq  400e80 <__printf_chk@plt>
  40206b:	5b                   	pop    %rbx
  40206c:	c3                   	retq   
  40206d:	48 8d 3d a9 17 00 00 	lea    0x17a9(%rip),%rdi        # 40381d <_IO_stdin_used+0x4cd>
  402074:	e8 f7 ec ff ff       	callq  400d70 <puts@plt>
  402079:	b8 00 00 00 00       	mov    $0x0,%eax
  40207e:	e8 04 fd ff ff       	callq  401d87 <check_fail>
  402083:	89 f9                	mov    %edi,%ecx
  402085:	48 8d 35 dc 18 00 00 	lea    0x18dc(%rip),%rsi        # 403968 <_IO_stdin_used+0x618>
  40208c:	bf 01 00 00 00       	mov    $0x1,%edi
  402091:	b8 00 00 00 00       	mov    $0x0,%eax
  402096:	e8 e5 ed ff ff       	callq  400e80 <__printf_chk@plt>
  40209b:	b8 00 00 00 00       	mov    $0x0,%eax
  4020a0:	e8 e2 fc ff ff       	callq  401d87 <check_fail>
  4020a5:	39 3d 71 34 20 00    	cmp    %edi,0x203471(%rip)        # 60551c <vlevel>
  4020ab:	74 1a                	je     4020c7 <validate+0xa0>
  4020ad:	48 8d 3d 69 17 00 00 	lea    0x1769(%rip),%rdi        # 40381d <_IO_stdin_used+0x4cd>
  4020b4:	e8 b7 ec ff ff       	callq  400d70 <puts@plt>
  4020b9:	89 de                	mov    %ebx,%esi
  4020bb:	bf 00 00 00 00       	mov    $0x0,%edi
  4020c0:	e8 4c fd ff ff       	callq  401e11 <notify_server>
  4020c5:	eb a4                	jmp    40206b <validate+0x44>
  4020c7:	0f be 0d 7e 40 20 00 	movsbl 0x20407e(%rip),%ecx        # 60614c <target_prefix>
  4020ce:	89 fa                	mov    %edi,%edx
  4020d0:	48 8d 35 b9 18 00 00 	lea    0x18b9(%rip),%rsi        # 403990 <_IO_stdin_used+0x640>
  4020d7:	bf 01 00 00 00       	mov    $0x1,%edi
  4020dc:	b8 00 00 00 00       	mov    $0x0,%eax
  4020e1:	e8 9a ed ff ff       	callq  400e80 <__printf_chk@plt>
  4020e6:	89 de                	mov    %ebx,%esi
  4020e8:	bf 01 00 00 00       	mov    $0x1,%edi
  4020ed:	e8 1f fd ff ff       	callq  401e11 <notify_server>
  4020f2:	e9 74 ff ff ff       	jmpq   40206b <validate+0x44>

00000000004020f7 <fail>:
  4020f7:	48 83 ec 08          	sub    $0x8,%rsp
  4020fb:	83 3d 26 34 20 00 00 	cmpl   $0x0,0x203426(%rip)        # 605528 <is_checker>
  402102:	75 11                	jne    402115 <fail+0x1e>
  402104:	89 fe                	mov    %edi,%esi
  402106:	bf 00 00 00 00       	mov    $0x0,%edi
  40210b:	e8 01 fd ff ff       	callq  401e11 <notify_server>
  402110:	48 83 c4 08          	add    $0x8,%rsp
  402114:	c3                   	retq   
  402115:	b8 00 00 00 00       	mov    $0x0,%eax
  40211a:	e8 68 fc ff ff       	callq  401d87 <check_fail>

000000000040211f <bushandler>:
  40211f:	48 83 ec 08          	sub    $0x8,%rsp
  402123:	83 3d fe 33 20 00 00 	cmpl   $0x0,0x2033fe(%rip)        # 605528 <is_checker>
  40212a:	74 16                	je     402142 <bushandler+0x23>
  40212c:	48 8d 3d 1d 17 00 00 	lea    0x171d(%rip),%rdi        # 403850 <_IO_stdin_used+0x500>
  402133:	e8 38 ec ff ff       	callq  400d70 <puts@plt>
  402138:	b8 00 00 00 00       	mov    $0x0,%eax
  40213d:	e8 45 fc ff ff       	callq  401d87 <check_fail>
  402142:	48 8d 3d 7f 18 00 00 	lea    0x187f(%rip),%rdi        # 4039c8 <_IO_stdin_used+0x678>
  402149:	e8 22 ec ff ff       	callq  400d70 <puts@plt>
  40214e:	48 8d 3d 05 17 00 00 	lea    0x1705(%rip),%rdi        # 40385a <_IO_stdin_used+0x50a>
  402155:	e8 16 ec ff ff       	callq  400d70 <puts@plt>
  40215a:	be 00 00 00 00       	mov    $0x0,%esi
  40215f:	bf 00 00 00 00       	mov    $0x0,%edi
  402164:	e8 a8 fc ff ff       	callq  401e11 <notify_server>
  402169:	bf 01 00 00 00       	mov    $0x1,%edi
  40216e:	e8 5d ed ff ff       	callq  400ed0 <exit@plt>

0000000000402173 <seghandler>:
  402173:	48 83 ec 08          	sub    $0x8,%rsp
  402177:	83 3d aa 33 20 00 00 	cmpl   $0x0,0x2033aa(%rip)        # 605528 <is_checker>
  40217e:	75 23                	jne    4021a3 <seghandler+0x30>
  402180:	83 3d c1 3f 20 00 00 	cmpl   $0x0,0x203fc1(%rip)        # 606148 <judgedns>
  402187:	74 30                	je     4021b9 <seghandler+0x46>
  402189:	8b 35 8d 33 20 00    	mov    0x20338d(%rip),%esi        # 60551c <vlevel>
  40218f:	bf 01 00 00 00       	mov    $0x1,%edi
  402194:	e8 78 fc ff ff       	callq  401e11 <notify_server>
  402199:	bf 01 00 00 00       	mov    $0x1,%edi
  40219e:	e8 2d ed ff ff       	callq  400ed0 <exit@plt>
  4021a3:	48 8d 3d c6 16 00 00 	lea    0x16c6(%rip),%rdi        # 403870 <_IO_stdin_used+0x520>
  4021aa:	e8 c1 eb ff ff       	callq  400d70 <puts@plt>
  4021af:	b8 00 00 00 00       	mov    $0x0,%eax
  4021b4:	e8 ce fb ff ff       	callq  401d87 <check_fail>
  4021b9:	48 8d 3d 28 18 00 00 	lea    0x1828(%rip),%rdi        # 4039e8 <_IO_stdin_used+0x698>
  4021c0:	e8 ab eb ff ff       	callq  400d70 <puts@plt>
  4021c5:	48 8d 3d 8e 16 00 00 	lea    0x168e(%rip),%rdi        # 40385a <_IO_stdin_used+0x50a>
  4021cc:	e8 9f eb ff ff       	callq  400d70 <puts@plt>
  4021d1:	be 00 00 00 00       	mov    $0x0,%esi
  4021d6:	bf 00 00 00 00       	mov    $0x0,%edi
  4021db:	e8 31 fc ff ff       	callq  401e11 <notify_server>
  4021e0:	eb b7                	jmp    402199 <seghandler+0x26>

00000000004021e2 <illegalhandler>:
  4021e2:	48 83 ec 08          	sub    $0x8,%rsp
  4021e6:	83 3d 3b 33 20 00 00 	cmpl   $0x0,0x20333b(%rip)        # 605528 <is_checker>
  4021ed:	74 16                	je     402205 <illegalhandler+0x23>
  4021ef:	48 8d 3d 8d 16 00 00 	lea    0x168d(%rip),%rdi        # 403883 <_IO_stdin_used+0x533>
  4021f6:	e8 75 eb ff ff       	callq  400d70 <puts@plt>
  4021fb:	b8 00 00 00 00       	mov    $0x0,%eax
  402200:	e8 82 fb ff ff       	callq  401d87 <check_fail>
  402205:	48 8d 3d 04 18 00 00 	lea    0x1804(%rip),%rdi        # 403a10 <_IO_stdin_used+0x6c0>
  40220c:	e8 5f eb ff ff       	callq  400d70 <puts@plt>
  402211:	48 8d 3d 42 16 00 00 	lea    0x1642(%rip),%rdi        # 40385a <_IO_stdin_used+0x50a>
  402218:	e8 53 eb ff ff       	callq  400d70 <puts@plt>
  40221d:	be 00 00 00 00       	mov    $0x0,%esi
  402222:	bf 00 00 00 00       	mov    $0x0,%edi
  402227:	e8 e5 fb ff ff       	callq  401e11 <notify_server>
  40222c:	bf 01 00 00 00       	mov    $0x1,%edi
  402231:	e8 9a ec ff ff       	callq  400ed0 <exit@plt>

0000000000402236 <sigalrmhandler>:
  402236:	48 83 ec 08          	sub    $0x8,%rsp
  40223a:	83 3d e7 32 20 00 00 	cmpl   $0x0,0x2032e7(%rip)        # 605528 <is_checker>
  402241:	74 16                	je     402259 <sigalrmhandler+0x23>
  402243:	48 8d 3d 4d 16 00 00 	lea    0x164d(%rip),%rdi        # 403897 <_IO_stdin_used+0x547>
  40224a:	e8 21 eb ff ff       	callq  400d70 <puts@plt>
  40224f:	b8 00 00 00 00       	mov    $0x0,%eax
  402254:	e8 2e fb ff ff       	callq  401d87 <check_fail>
  402259:	ba 05 00 00 00       	mov    $0x5,%edx
  40225e:	48 8d 35 db 17 00 00 	lea    0x17db(%rip),%rsi        # 403a40 <_IO_stdin_used+0x6f0>
  402265:	bf 01 00 00 00       	mov    $0x1,%edi
  40226a:	b8 00 00 00 00       	mov    $0x0,%eax
  40226f:	e8 0c ec ff ff       	callq  400e80 <__printf_chk@plt>
  402274:	be 00 00 00 00       	mov    $0x0,%esi
  402279:	bf 00 00 00 00       	mov    $0x0,%edi
  40227e:	e8 8e fb ff ff       	callq  401e11 <notify_server>
  402283:	bf 01 00 00 00       	mov    $0x1,%edi
  402288:	e8 43 ec ff ff       	callq  400ed0 <exit@plt>

000000000040228d <__stack_chk_fail>:
  40228d:	48 83 ec 08          	sub    $0x8,%rsp
  402291:	83 3d 90 32 20 00 00 	cmpl   $0x0,0x203290(%rip)        # 605528 <is_checker>
  402298:	74 16                	je     4022b0 <__stack_chk_fail+0x23>
  40229a:	48 8d 3d fe 15 00 00 	lea    0x15fe(%rip),%rdi        # 40389f <_IO_stdin_used+0x54f>
  4022a1:	e8 ca ea ff ff       	callq  400d70 <puts@plt>
  4022a6:	b8 00 00 00 00       	mov    $0x0,%eax
  4022ab:	e8 d7 fa ff ff       	callq  401d87 <check_fail>
  4022b0:	48 8d 3d c1 17 00 00 	lea    0x17c1(%rip),%rdi        # 403a78 <_IO_stdin_used+0x728>
  4022b7:	e8 b4 ea ff ff       	callq  400d70 <puts@plt>
  4022bc:	48 8d 3d 97 15 00 00 	lea    0x1597(%rip),%rdi        # 40385a <_IO_stdin_used+0x50a>
  4022c3:	e8 a8 ea ff ff       	callq  400d70 <puts@plt>
  4022c8:	be 00 00 00 00       	mov    $0x0,%esi
  4022cd:	bf 00 00 00 00       	mov    $0x0,%edi
  4022d2:	e8 3a fb ff ff       	callq  401e11 <notify_server>
  4022d7:	bf 01 00 00 00       	mov    $0x1,%edi
  4022dc:	e8 ef eb ff ff       	callq  400ed0 <exit@plt>

00000000004022e1 <launch>:
  4022e1:	55                   	push   %rbp
  4022e2:	48 89 e5             	mov    %rsp,%rbp
  4022e5:	53                   	push   %rbx
  4022e6:	48 83 ec 18          	sub    $0x18,%rsp
  4022ea:	48 89 fa             	mov    %rdi,%rdx
  4022ed:	89 f3                	mov    %esi,%ebx
  4022ef:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4022f6:	00 00 
  4022f8:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  4022fc:	31 c0                	xor    %eax,%eax
  4022fe:	48 8d 47 1e          	lea    0x1e(%rdi),%rax
  402302:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  402306:	48 29 c4             	sub    %rax,%rsp
  402309:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  40230e:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  402312:	be f4 00 00 00       	mov    $0xf4,%esi
  402317:	e8 84 ea ff ff       	callq  400da0 <memset@plt>
  40231c:	48 8b 05 9d 31 20 00 	mov    0x20319d(%rip),%rax        # 6054c0 <stdin@@GLIBC_2.2.5>
  402323:	48 39 05 e6 31 20 00 	cmp    %rax,0x2031e6(%rip)        # 605510 <infile>
  40232a:	74 42                	je     40236e <launch+0x8d>
  40232c:	c7 05 e6 31 20 00 00 	movl   $0x0,0x2031e6(%rip)        # 60551c <vlevel>
  402333:	00 00 00 
  402336:	85 db                	test   %ebx,%ebx
  402338:	75 4c                	jne    402386 <launch+0xa5>
  40233a:	b8 00 00 00 00       	mov    $0x0,%eax
  40233f:	e8 e9 f7 ff ff       	callq  401b2d <test>
  402344:	83 3d dd 31 20 00 00 	cmpl   $0x0,0x2031dd(%rip)        # 605528 <is_checker>
  40234b:	75 45                	jne    402392 <launch+0xb1>
  40234d:	48 8d 3d 72 15 00 00 	lea    0x1572(%rip),%rdi        # 4038c6 <_IO_stdin_used+0x576>
  402354:	e8 17 ea ff ff       	callq  400d70 <puts@plt>
  402359:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40235d:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  402364:	00 00 
  402366:	75 40                	jne    4023a8 <launch+0xc7>
  402368:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  40236c:	c9                   	leaveq 
  40236d:	c3                   	retq   
  40236e:	48 8d 35 39 15 00 00 	lea    0x1539(%rip),%rsi        # 4038ae <_IO_stdin_used+0x55e>
  402375:	bf 01 00 00 00       	mov    $0x1,%edi
  40237a:	b8 00 00 00 00       	mov    $0x0,%eax
  40237f:	e8 fc ea ff ff       	callq  400e80 <__printf_chk@plt>
  402384:	eb a6                	jmp    40232c <launch+0x4b>
  402386:	b8 00 00 00 00       	mov    $0x0,%eax
  40238b:	e8 c8 f7 ff ff       	callq  401b58 <test2>
  402390:	eb b2                	jmp    402344 <launch+0x63>
  402392:	48 8d 3d 22 15 00 00 	lea    0x1522(%rip),%rdi        # 4038bb <_IO_stdin_used+0x56b>
  402399:	e8 d2 e9 ff ff       	callq  400d70 <puts@plt>
  40239e:	b8 00 00 00 00       	mov    $0x0,%eax
  4023a3:	e8 df f9 ff ff       	callq  401d87 <check_fail>
  4023a8:	e8 e0 fe ff ff       	callq  40228d <__stack_chk_fail>

00000000004023ad <stable_launch>:
  4023ad:	55                   	push   %rbp
  4023ae:	53                   	push   %rbx
  4023af:	48 83 ec 08          	sub    $0x8,%rsp
  4023b3:	89 f5                	mov    %esi,%ebp
  4023b5:	48 89 3d 4c 31 20 00 	mov    %rdi,0x20314c(%rip)        # 605508 <global_offset>
  4023bc:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  4023c2:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  4023c8:	b9 32 01 00 00       	mov    $0x132,%ecx
  4023cd:	ba 07 00 00 00       	mov    $0x7,%edx
  4023d2:	be 00 00 10 00       	mov    $0x100000,%esi
  4023d7:	bf 00 60 58 55       	mov    $0x55586000,%edi
  4023dc:	e8 af e9 ff ff       	callq  400d90 <mmap@plt>
  4023e1:	48 89 c3             	mov    %rax,%rbx
  4023e4:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  4023ea:	75 4a                	jne    402436 <stable_launch+0x89>
  4023ec:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  4023f3:	48 89 15 56 3d 20 00 	mov    %rdx,0x203d56(%rip)        # 606150 <stack_top>
  4023fa:	48 89 e0             	mov    %rsp,%rax
  4023fd:	48 89 d4             	mov    %rdx,%rsp
  402400:	48 89 c2             	mov    %rax,%rdx
  402403:	48 89 15 f6 30 20 00 	mov    %rdx,0x2030f6(%rip)        # 605500 <global_save_stack>
  40240a:	89 ee                	mov    %ebp,%esi
  40240c:	48 8b 3d f5 30 20 00 	mov    0x2030f5(%rip),%rdi        # 605508 <global_offset>
  402413:	e8 c9 fe ff ff       	callq  4022e1 <launch>
  402418:	48 8b 05 e1 30 20 00 	mov    0x2030e1(%rip),%rax        # 605500 <global_save_stack>
  40241f:	48 89 c4             	mov    %rax,%rsp
  402422:	be 00 00 10 00       	mov    $0x100000,%esi
  402427:	48 89 df             	mov    %rbx,%rdi
  40242a:	e8 41 ea ff ff       	callq  400e70 <munmap@plt>
  40242f:	48 83 c4 08          	add    $0x8,%rsp
  402433:	5b                   	pop    %rbx
  402434:	5d                   	pop    %rbp
  402435:	c3                   	retq   
  402436:	be 00 00 10 00       	mov    $0x100000,%esi
  40243b:	48 89 c7             	mov    %rax,%rdi
  40243e:	e8 2d ea ff ff       	callq  400e70 <munmap@plt>
  402443:	b9 00 60 58 55       	mov    $0x55586000,%ecx
  402448:	48 8d 15 51 16 00 00 	lea    0x1651(%rip),%rdx        # 403aa0 <_IO_stdin_used+0x750>
  40244f:	be 01 00 00 00       	mov    $0x1,%esi
  402454:	48 8b 3d 85 30 20 00 	mov    0x203085(%rip),%rdi        # 6054e0 <stderr@@GLIBC_2.2.5>
  40245b:	b8 00 00 00 00       	mov    $0x0,%eax
  402460:	e8 8b ea ff ff       	callq  400ef0 <__fprintf_chk@plt>
  402465:	bf 01 00 00 00       	mov    $0x1,%edi
  40246a:	e8 61 ea ff ff       	callq  400ed0 <exit@plt>

000000000040246f <rio_readinitb>:
  40246f:	89 37                	mov    %esi,(%rdi)
  402471:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  402478:	48 8d 47 10          	lea    0x10(%rdi),%rax
  40247c:	48 89 47 08          	mov    %rax,0x8(%rdi)
  402480:	c3                   	retq   

0000000000402481 <sigalrm_handler>:
  402481:	48 83 ec 08          	sub    $0x8,%rsp
  402485:	b9 00 00 00 00       	mov    $0x0,%ecx
  40248a:	48 8d 15 4f 16 00 00 	lea    0x164f(%rip),%rdx        # 403ae0 <trans_char+0x10>
  402491:	be 01 00 00 00       	mov    $0x1,%esi
  402496:	48 8b 3d 43 30 20 00 	mov    0x203043(%rip),%rdi        # 6054e0 <stderr@@GLIBC_2.2.5>
  40249d:	b8 00 00 00 00       	mov    $0x0,%eax
  4024a2:	e8 49 ea ff ff       	callq  400ef0 <__fprintf_chk@plt>
  4024a7:	bf 01 00 00 00       	mov    $0x1,%edi
  4024ac:	e8 1f ea ff ff       	callq  400ed0 <exit@plt>

00000000004024b1 <rio_writen>:
  4024b1:	41 55                	push   %r13
  4024b3:	41 54                	push   %r12
  4024b5:	55                   	push   %rbp
  4024b6:	53                   	push   %rbx
  4024b7:	48 83 ec 08          	sub    $0x8,%rsp
  4024bb:	41 89 fc             	mov    %edi,%r12d
  4024be:	48 89 f5             	mov    %rsi,%rbp
  4024c1:	49 89 d5             	mov    %rdx,%r13
  4024c4:	48 89 d3             	mov    %rdx,%rbx
  4024c7:	eb 06                	jmp    4024cf <rio_writen+0x1e>
  4024c9:	48 29 c3             	sub    %rax,%rbx
  4024cc:	48 01 c5             	add    %rax,%rbp
  4024cf:	48 85 db             	test   %rbx,%rbx
  4024d2:	74 24                	je     4024f8 <rio_writen+0x47>
  4024d4:	48 89 da             	mov    %rbx,%rdx
  4024d7:	48 89 ee             	mov    %rbp,%rsi
  4024da:	44 89 e7             	mov    %r12d,%edi
  4024dd:	e8 9e e8 ff ff       	callq  400d80 <write@plt>
  4024e2:	48 85 c0             	test   %rax,%rax
  4024e5:	7f e2                	jg     4024c9 <rio_writen+0x18>
  4024e7:	e8 44 e8 ff ff       	callq  400d30 <__errno_location@plt>
  4024ec:	83 38 04             	cmpl   $0x4,(%rax)
  4024ef:	75 15                	jne    402506 <rio_writen+0x55>
  4024f1:	b8 00 00 00 00       	mov    $0x0,%eax
  4024f6:	eb d1                	jmp    4024c9 <rio_writen+0x18>
  4024f8:	4c 89 e8             	mov    %r13,%rax
  4024fb:	48 83 c4 08          	add    $0x8,%rsp
  4024ff:	5b                   	pop    %rbx
  402500:	5d                   	pop    %rbp
  402501:	41 5c                	pop    %r12
  402503:	41 5d                	pop    %r13
  402505:	c3                   	retq   
  402506:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  40250d:	eb ec                	jmp    4024fb <rio_writen+0x4a>

000000000040250f <rio_read>:
  40250f:	41 55                	push   %r13
  402511:	41 54                	push   %r12
  402513:	55                   	push   %rbp
  402514:	53                   	push   %rbx
  402515:	48 83 ec 08          	sub    $0x8,%rsp
  402519:	48 89 fb             	mov    %rdi,%rbx
  40251c:	49 89 f5             	mov    %rsi,%r13
  40251f:	49 89 d4             	mov    %rdx,%r12
  402522:	eb 0a                	jmp    40252e <rio_read+0x1f>
  402524:	e8 07 e8 ff ff       	callq  400d30 <__errno_location@plt>
  402529:	83 38 04             	cmpl   $0x4,(%rax)
  40252c:	75 5c                	jne    40258a <rio_read+0x7b>
  40252e:	8b 6b 04             	mov    0x4(%rbx),%ebp
  402531:	85 ed                	test   %ebp,%ebp
  402533:	7f 24                	jg     402559 <rio_read+0x4a>
  402535:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
  402539:	8b 3b                	mov    (%rbx),%edi
  40253b:	ba 00 20 00 00       	mov    $0x2000,%edx
  402540:	48 89 ee             	mov    %rbp,%rsi
  402543:	e8 88 e8 ff ff       	callq  400dd0 <read@plt>
  402548:	89 43 04             	mov    %eax,0x4(%rbx)
  40254b:	85 c0                	test   %eax,%eax
  40254d:	78 d5                	js     402524 <rio_read+0x15>
  40254f:	85 c0                	test   %eax,%eax
  402551:	74 40                	je     402593 <rio_read+0x84>
  402553:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  402557:	eb d5                	jmp    40252e <rio_read+0x1f>
  402559:	89 e8                	mov    %ebp,%eax
  40255b:	4c 39 e0             	cmp    %r12,%rax
  40255e:	72 03                	jb     402563 <rio_read+0x54>
  402560:	44 89 e5             	mov    %r12d,%ebp
  402563:	4c 63 e5             	movslq %ebp,%r12
  402566:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  40256a:	4c 89 e2             	mov    %r12,%rdx
  40256d:	4c 89 ef             	mov    %r13,%rdi
  402570:	e8 ab e8 ff ff       	callq  400e20 <memcpy@plt>
  402575:	4c 01 63 08          	add    %r12,0x8(%rbx)
  402579:	29 6b 04             	sub    %ebp,0x4(%rbx)
  40257c:	4c 89 e0             	mov    %r12,%rax
  40257f:	48 83 c4 08          	add    $0x8,%rsp
  402583:	5b                   	pop    %rbx
  402584:	5d                   	pop    %rbp
  402585:	41 5c                	pop    %r12
  402587:	41 5d                	pop    %r13
  402589:	c3                   	retq   
  40258a:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402591:	eb ec                	jmp    40257f <rio_read+0x70>
  402593:	b8 00 00 00 00       	mov    $0x0,%eax
  402598:	eb e5                	jmp    40257f <rio_read+0x70>

000000000040259a <rio_readlineb>:
  40259a:	41 55                	push   %r13
  40259c:	41 54                	push   %r12
  40259e:	55                   	push   %rbp
  40259f:	53                   	push   %rbx
  4025a0:	48 83 ec 18          	sub    $0x18,%rsp
  4025a4:	49 89 fd             	mov    %rdi,%r13
  4025a7:	48 89 f5             	mov    %rsi,%rbp
  4025aa:	49 89 d4             	mov    %rdx,%r12
  4025ad:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4025b4:	00 00 
  4025b6:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  4025bb:	31 c0                	xor    %eax,%eax
  4025bd:	bb 01 00 00 00       	mov    $0x1,%ebx
  4025c2:	4c 39 e3             	cmp    %r12,%rbx
  4025c5:	73 47                	jae    40260e <rio_readlineb+0x74>
  4025c7:	48 8d 74 24 07       	lea    0x7(%rsp),%rsi
  4025cc:	ba 01 00 00 00       	mov    $0x1,%edx
  4025d1:	4c 89 ef             	mov    %r13,%rdi
  4025d4:	e8 36 ff ff ff       	callq  40250f <rio_read>
  4025d9:	83 f8 01             	cmp    $0x1,%eax
  4025dc:	75 1c                	jne    4025fa <rio_readlineb+0x60>
  4025de:	48 8d 45 01          	lea    0x1(%rbp),%rax
  4025e2:	0f b6 54 24 07       	movzbl 0x7(%rsp),%edx
  4025e7:	88 55 00             	mov    %dl,0x0(%rbp)
  4025ea:	80 7c 24 07 0a       	cmpb   $0xa,0x7(%rsp)
  4025ef:	74 1a                	je     40260b <rio_readlineb+0x71>
  4025f1:	48 83 c3 01          	add    $0x1,%rbx
  4025f5:	48 89 c5             	mov    %rax,%rbp
  4025f8:	eb c8                	jmp    4025c2 <rio_readlineb+0x28>
  4025fa:	85 c0                	test   %eax,%eax
  4025fc:	75 32                	jne    402630 <rio_readlineb+0x96>
  4025fe:	48 83 fb 01          	cmp    $0x1,%rbx
  402602:	75 0a                	jne    40260e <rio_readlineb+0x74>
  402604:	b8 00 00 00 00       	mov    $0x0,%eax
  402609:	eb 0a                	jmp    402615 <rio_readlineb+0x7b>
  40260b:	48 89 c5             	mov    %rax,%rbp
  40260e:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  402612:	48 89 d8             	mov    %rbx,%rax
  402615:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  40261a:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  402621:	00 00 
  402623:	75 14                	jne    402639 <rio_readlineb+0x9f>
  402625:	48 83 c4 18          	add    $0x18,%rsp
  402629:	5b                   	pop    %rbx
  40262a:	5d                   	pop    %rbp
  40262b:	41 5c                	pop    %r12
  40262d:	41 5d                	pop    %r13
  40262f:	c3                   	retq   
  402630:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402637:	eb dc                	jmp    402615 <rio_readlineb+0x7b>
  402639:	e8 4f fc ff ff       	callq  40228d <__stack_chk_fail>

000000000040263e <urlencode>:
  40263e:	41 54                	push   %r12
  402640:	55                   	push   %rbp
  402641:	53                   	push   %rbx
  402642:	48 83 ec 10          	sub    $0x10,%rsp
  402646:	48 89 fb             	mov    %rdi,%rbx
  402649:	48 89 f5             	mov    %rsi,%rbp
  40264c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402653:	00 00 
  402655:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  40265a:	31 c0                	xor    %eax,%eax
  40265c:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  402663:	f2 ae                	repnz scas %es:(%rdi),%al
  402665:	48 89 ce             	mov    %rcx,%rsi
  402668:	48 f7 d6             	not    %rsi
  40266b:	8d 46 ff             	lea    -0x1(%rsi),%eax
  40266e:	eb 0f                	jmp    40267f <urlencode+0x41>
  402670:	44 88 45 00          	mov    %r8b,0x0(%rbp)
  402674:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  402678:	48 83 c3 01          	add    $0x1,%rbx
  40267c:	44 89 e0             	mov    %r12d,%eax
  40267f:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  402683:	85 c0                	test   %eax,%eax
  402685:	0f 84 a8 00 00 00    	je     402733 <urlencode+0xf5>
  40268b:	44 0f b6 03          	movzbl (%rbx),%r8d
  40268f:	41 80 f8 2a          	cmp    $0x2a,%r8b
  402693:	0f 94 c2             	sete   %dl
  402696:	41 80 f8 2d          	cmp    $0x2d,%r8b
  40269a:	0f 94 c0             	sete   %al
  40269d:	08 c2                	or     %al,%dl
  40269f:	75 cf                	jne    402670 <urlencode+0x32>
  4026a1:	41 80 f8 2e          	cmp    $0x2e,%r8b
  4026a5:	74 c9                	je     402670 <urlencode+0x32>
  4026a7:	41 80 f8 5f          	cmp    $0x5f,%r8b
  4026ab:	74 c3                	je     402670 <urlencode+0x32>
  4026ad:	41 8d 40 d0          	lea    -0x30(%r8),%eax
  4026b1:	3c 09                	cmp    $0x9,%al
  4026b3:	76 bb                	jbe    402670 <urlencode+0x32>
  4026b5:	41 8d 40 bf          	lea    -0x41(%r8),%eax
  4026b9:	3c 19                	cmp    $0x19,%al
  4026bb:	76 b3                	jbe    402670 <urlencode+0x32>
  4026bd:	41 8d 40 9f          	lea    -0x61(%r8),%eax
  4026c1:	3c 19                	cmp    $0x19,%al
  4026c3:	76 ab                	jbe    402670 <urlencode+0x32>
  4026c5:	41 80 f8 20          	cmp    $0x20,%r8b
  4026c9:	74 56                	je     402721 <urlencode+0xe3>
  4026cb:	41 8d 40 e0          	lea    -0x20(%r8),%eax
  4026cf:	3c 5f                	cmp    $0x5f,%al
  4026d1:	0f 96 c2             	setbe  %dl
  4026d4:	41 80 f8 09          	cmp    $0x9,%r8b
  4026d8:	0f 94 c0             	sete   %al
  4026db:	08 c2                	or     %al,%dl
  4026dd:	74 4f                	je     40272e <urlencode+0xf0>
  4026df:	48 89 e7             	mov    %rsp,%rdi
  4026e2:	45 0f b6 c0          	movzbl %r8b,%r8d
  4026e6:	48 8d 0d ab 14 00 00 	lea    0x14ab(%rip),%rcx        # 403b98 <trans_char+0xc8>
  4026ed:	ba 08 00 00 00       	mov    $0x8,%edx
  4026f2:	be 01 00 00 00       	mov    $0x1,%esi
  4026f7:	b8 00 00 00 00       	mov    $0x0,%eax
  4026fc:	e8 1f e8 ff ff       	callq  400f20 <__sprintf_chk@plt>
  402701:	0f b6 04 24          	movzbl (%rsp),%eax
  402705:	88 45 00             	mov    %al,0x0(%rbp)
  402708:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  40270d:	88 45 01             	mov    %al,0x1(%rbp)
  402710:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  402715:	88 45 02             	mov    %al,0x2(%rbp)
  402718:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  40271c:	e9 57 ff ff ff       	jmpq   402678 <urlencode+0x3a>
  402721:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  402725:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  402729:	e9 4a ff ff ff       	jmpq   402678 <urlencode+0x3a>
  40272e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402733:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
  402738:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  40273f:	00 00 
  402741:	75 09                	jne    40274c <urlencode+0x10e>
  402743:	48 83 c4 10          	add    $0x10,%rsp
  402747:	5b                   	pop    %rbx
  402748:	5d                   	pop    %rbp
  402749:	41 5c                	pop    %r12
  40274b:	c3                   	retq   
  40274c:	e8 3c fb ff ff       	callq  40228d <__stack_chk_fail>

0000000000402751 <submitr>:
  402751:	41 57                	push   %r15
  402753:	41 56                	push   %r14
  402755:	41 55                	push   %r13
  402757:	41 54                	push   %r12
  402759:	55                   	push   %rbp
  40275a:	53                   	push   %rbx
  40275b:	48 81 ec 88 a0 00 00 	sub    $0xa088,%rsp
  402762:	49 89 fd             	mov    %rdi,%r13
  402765:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
  40276a:	49 89 ce             	mov    %rcx,%r14
  40276d:	4d 89 c7             	mov    %r8,%r15
  402770:	4d 89 cc             	mov    %r9,%r12
  402773:	48 8b ac 24 c0 a0 00 	mov    0xa0c0(%rsp),%rbp
  40277a:	00 
  40277b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402782:	00 00 
  402784:	48 89 84 24 78 a0 00 	mov    %rax,0xa078(%rsp)
  40278b:	00 
  40278c:	31 c0                	xor    %eax,%eax
  40278e:	c7 44 24 14 00 00 00 	movl   $0x0,0x14(%rsp)
  402795:	00 
  402796:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
  40279d:	00 00 
  40279f:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
  4027a6:	00 00 
  4027a8:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
  4027af:	00 00 
  4027b1:	48 c7 44 24 40 00 00 	movq   $0x0,0x40(%rsp)
  4027b8:	00 00 
  4027ba:	48 c7 44 24 48 00 00 	movq   $0x0,0x48(%rsp)
  4027c1:	00 00 
  4027c3:	c7 44 24 24 02 00 00 	movl   $0x2,0x24(%rsp)
  4027ca:	00 
  4027cb:	c7 44 24 28 01 00 00 	movl   $0x1,0x28(%rsp)
  4027d2:	00 
  4027d3:	c7 44 24 2c 06 00 00 	movl   $0x6,0x2c(%rsp)
  4027da:	00 
  4027db:	48 8d bc 24 60 20 00 	lea    0x2060(%rsp),%rdi
  4027e2:	00 
  4027e3:	41 89 f1             	mov    %esi,%r9d
  4027e6:	4c 8d 05 b2 13 00 00 	lea    0x13b2(%rip),%r8        # 403b9f <trans_char+0xcf>
  4027ed:	b9 10 00 00 00       	mov    $0x10,%ecx
  4027f2:	ba 01 00 00 00       	mov    $0x1,%edx
  4027f7:	be 10 00 00 00       	mov    $0x10,%esi
  4027fc:	e8 0f e5 ff ff       	callq  400d10 <__snprintf_chk@plt>
  402801:	ba 00 00 00 00       	mov    $0x0,%edx
  402806:	be 01 00 00 00       	mov    $0x1,%esi
  40280b:	bf 02 00 00 00       	mov    $0x2,%edi
  402810:	e8 1b e7 ff ff       	callq  400f30 <socket@plt>
  402815:	85 c0                	test   %eax,%eax
  402817:	0f 88 91 02 00 00    	js     402aae <submitr+0x35d>
  40281d:	89 c3                	mov    %eax,%ebx
  40281f:	c7 05 1f 39 20 00 01 	movl   $0x1,0x20391f(%rip)        # 606148 <judgedns>
  402826:	00 00 00 
  402829:	48 8d 4c 24 18       	lea    0x18(%rsp),%rcx
  40282e:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
  402833:	48 8d b4 24 60 20 00 	lea    0x2060(%rsp),%rsi
  40283a:	00 
  40283b:	4c 89 ef             	mov    %r13,%rdi
  40283e:	e8 bd e6 ff ff       	callq  400f00 <getaddrinfo@plt>
  402843:	85 c0                	test   %eax,%eax
  402845:	0f 85 af 02 00 00    	jne    402afa <submitr+0x3a9>
  40284b:	c7 05 f3 38 20 00 00 	movl   $0x0,0x2038f3(%rip)        # 606148 <judgedns>
  402852:	00 00 00 
  402855:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
  40285a:	48 8b 70 18          	mov    0x18(%rax),%rsi
  40285e:	8b 50 10             	mov    0x10(%rax),%edx
  402861:	89 df                	mov    %ebx,%edi
  402863:	e8 78 e6 ff ff       	callq  400ee0 <connect@plt>
  402868:	85 c0                	test   %eax,%eax
  40286a:	0f 88 16 03 00 00    	js     402b86 <submitr+0x435>
  402870:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
  402877:	b8 00 00 00 00       	mov    $0x0,%eax
  40287c:	48 89 f1             	mov    %rsi,%rcx
  40287f:	4c 89 e7             	mov    %r12,%rdi
  402882:	f2 ae                	repnz scas %es:(%rdi),%al
  402884:	48 89 ca             	mov    %rcx,%rdx
  402887:	48 f7 d2             	not    %rdx
  40288a:	48 89 f1             	mov    %rsi,%rcx
  40288d:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  402892:	f2 ae                	repnz scas %es:(%rdi),%al
  402894:	48 f7 d1             	not    %rcx
  402897:	49 89 c8             	mov    %rcx,%r8
  40289a:	48 89 f1             	mov    %rsi,%rcx
  40289d:	4c 89 f7             	mov    %r14,%rdi
  4028a0:	f2 ae                	repnz scas %es:(%rdi),%al
  4028a2:	48 f7 d1             	not    %rcx
  4028a5:	4d 8d 44 08 fe       	lea    -0x2(%r8,%rcx,1),%r8
  4028aa:	48 89 f1             	mov    %rsi,%rcx
  4028ad:	4c 89 ff             	mov    %r15,%rdi
  4028b0:	f2 ae                	repnz scas %es:(%rdi),%al
  4028b2:	48 89 c8             	mov    %rcx,%rax
  4028b5:	48 f7 d0             	not    %rax
  4028b8:	49 8d 4c 00 ff       	lea    -0x1(%r8,%rax,1),%rcx
  4028bd:	48 8d 44 52 fd       	lea    -0x3(%rdx,%rdx,2),%rax
  4028c2:	48 8d 84 01 80 00 00 	lea    0x80(%rcx,%rax,1),%rax
  4028c9:	00 
  4028ca:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  4028d0:	0f 87 30 03 00 00    	ja     402c06 <submitr+0x4b5>
  4028d6:	48 8d b4 24 70 40 00 	lea    0x4070(%rsp),%rsi
  4028dd:	00 
  4028de:	b9 00 04 00 00       	mov    $0x400,%ecx
  4028e3:	b8 00 00 00 00       	mov    $0x0,%eax
  4028e8:	48 89 f7             	mov    %rsi,%rdi
  4028eb:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  4028ee:	4c 89 e7             	mov    %r12,%rdi
  4028f1:	e8 48 fd ff ff       	callq  40263e <urlencode>
  4028f6:	85 c0                	test   %eax,%eax
  4028f8:	0f 88 85 03 00 00    	js     402c83 <submitr+0x532>
  4028fe:	4c 8d a4 24 70 20 00 	lea    0x2070(%rsp),%r12
  402905:	00 
  402906:	48 83 ec 08          	sub    $0x8,%rsp
  40290a:	41 55                	push   %r13
  40290c:	48 8d 84 24 80 40 00 	lea    0x4080(%rsp),%rax
  402913:	00 
  402914:	50                   	push   %rax
  402915:	41 56                	push   %r14
  402917:	4d 89 f9             	mov    %r15,%r9
  40291a:	4c 8b 44 24 28       	mov    0x28(%rsp),%r8
  40291f:	48 8d 0d e2 11 00 00 	lea    0x11e2(%rip),%rcx        # 403b08 <trans_char+0x38>
  402926:	ba 00 20 00 00       	mov    $0x2000,%edx
  40292b:	be 01 00 00 00       	mov    $0x1,%esi
  402930:	4c 89 e7             	mov    %r12,%rdi
  402933:	b8 00 00 00 00       	mov    $0x0,%eax
  402938:	e8 e3 e5 ff ff       	callq  400f20 <__sprintf_chk@plt>
  40293d:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  402944:	b8 00 00 00 00       	mov    $0x0,%eax
  402949:	4c 89 e7             	mov    %r12,%rdi
  40294c:	f2 ae                	repnz scas %es:(%rdi),%al
  40294e:	48 89 ca             	mov    %rcx,%rdx
  402951:	48 f7 d2             	not    %rdx
  402954:	48 8d 52 ff          	lea    -0x1(%rdx),%rdx
  402958:	48 83 c4 20          	add    $0x20,%rsp
  40295c:	4c 89 e6             	mov    %r12,%rsi
  40295f:	89 df                	mov    %ebx,%edi
  402961:	e8 4b fb ff ff       	callq  4024b1 <rio_writen>
  402966:	48 85 c0             	test   %rax,%rax
  402969:	0f 88 a9 03 00 00    	js     402d18 <submitr+0x5c7>
  40296f:	4c 8d 64 24 50       	lea    0x50(%rsp),%r12
  402974:	89 de                	mov    %ebx,%esi
  402976:	4c 89 e7             	mov    %r12,%rdi
  402979:	e8 f1 fa ff ff       	callq  40246f <rio_readinitb>
  40297e:	48 8d b4 24 70 20 00 	lea    0x2070(%rsp),%rsi
  402985:	00 
  402986:	ba 00 20 00 00       	mov    $0x2000,%edx
  40298b:	4c 89 e7             	mov    %r12,%rdi
  40298e:	e8 07 fc ff ff       	callq  40259a <rio_readlineb>
  402993:	48 85 c0             	test   %rax,%rax
  402996:	0f 8e f2 03 00 00    	jle    402d8e <submitr+0x63d>
  40299c:	48 8d 4c 24 14       	lea    0x14(%rsp),%rcx
  4029a1:	48 8d 94 24 70 60 00 	lea    0x6070(%rsp),%rdx
  4029a8:	00 
  4029a9:	48 8d bc 24 70 20 00 	lea    0x2070(%rsp),%rdi
  4029b0:	00 
  4029b1:	4c 8d 84 24 70 80 00 	lea    0x8070(%rsp),%r8
  4029b8:	00 
  4029b9:	48 8d 35 f6 11 00 00 	lea    0x11f6(%rip),%rsi        # 403bb6 <trans_char+0xe6>
  4029c0:	b8 00 00 00 00       	mov    $0x0,%eax
  4029c5:	e8 96 e4 ff ff       	callq  400e60 <__isoc99_sscanf@plt>
  4029ca:	48 8d b4 24 70 20 00 	lea    0x2070(%rsp),%rsi
  4029d1:	00 
  4029d2:	b9 03 00 00 00       	mov    $0x3,%ecx
  4029d7:	48 8d 3d ef 11 00 00 	lea    0x11ef(%rip),%rdi        # 403bcd <trans_char+0xfd>
  4029de:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  4029e0:	0f 97 c0             	seta   %al
  4029e3:	1c 00                	sbb    $0x0,%al
  4029e5:	84 c0                	test   %al,%al
  4029e7:	0f 84 2b 04 00 00    	je     402e18 <submitr+0x6c7>
  4029ed:	48 8d b4 24 70 20 00 	lea    0x2070(%rsp),%rsi
  4029f4:	00 
  4029f5:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
  4029fa:	ba 00 20 00 00       	mov    $0x2000,%edx
  4029ff:	e8 96 fb ff ff       	callq  40259a <rio_readlineb>
  402a04:	48 85 c0             	test   %rax,%rax
  402a07:	7f c1                	jg     4029ca <submitr+0x279>
  402a09:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402a10:	3a 20 43 
  402a13:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402a1a:	20 75 6e 
  402a1d:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402a21:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402a25:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402a2c:	74 6f 20 
  402a2f:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
  402a36:	68 65 61 
  402a39:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402a3d:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402a41:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  402a48:	66 72 6f 
  402a4b:	48 ba 6d 20 41 75 74 	movabs $0x616c6f747541206d,%rdx
  402a52:	6f 6c 61 
  402a55:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402a59:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402a5d:	48 b8 62 20 73 65 72 	movabs $0x7265767265732062,%rax
  402a64:	76 65 72 
  402a67:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402a6b:	c6 45 38 00          	movb   $0x0,0x38(%rbp)
  402a6f:	89 df                	mov    %ebx,%edi
  402a71:	e8 4a e3 ff ff       	callq  400dc0 <close@plt>
  402a76:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  402a7b:	e8 90 e4 ff ff       	callq  400f10 <freeaddrinfo@plt>
  402a80:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402a85:	48 8b 9c 24 78 a0 00 	mov    0xa078(%rsp),%rbx
  402a8c:	00 
  402a8d:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  402a94:	00 00 
  402a96:	0f 85 0a 05 00 00    	jne    402fa6 <submitr+0x855>
  402a9c:	48 81 c4 88 a0 00 00 	add    $0xa088,%rsp
  402aa3:	5b                   	pop    %rbx
  402aa4:	5d                   	pop    %rbp
  402aa5:	41 5c                	pop    %r12
  402aa7:	41 5d                	pop    %r13
  402aa9:	41 5e                	pop    %r14
  402aab:	41 5f                	pop    %r15
  402aad:	c3                   	retq   
  402aae:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402ab5:	3a 20 43 
  402ab8:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402abf:	20 75 6e 
  402ac2:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402ac6:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402aca:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402ad1:	74 6f 20 
  402ad4:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  402adb:	65 20 73 
  402ade:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402ae2:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402ae6:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  402aed:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  402af3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402af8:	eb 8b                	jmp    402a85 <submitr+0x334>
  402afa:	48 8d 3d a2 10 00 00 	lea    0x10a2(%rip),%rdi        # 403ba3 <trans_char+0xd3>
  402b01:	e8 6a e2 ff ff       	callq  400d70 <puts@plt>
  402b06:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  402b0d:	3a 20 44 
  402b10:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  402b17:	20 75 6e 
  402b1a:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402b1e:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402b22:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402b29:	74 6f 20 
  402b2c:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  402b33:	76 65 20 
  402b36:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402b3a:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402b3e:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
  402b45:	61 62 20 
  402b48:	48 ba 73 65 72 76 65 	movabs $0x6120726576726573,%rdx
  402b4f:	72 20 61 
  402b52:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402b56:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402b5a:	c7 45 30 64 64 72 65 	movl   $0x65726464,0x30(%rbp)
  402b61:	66 c7 45 34 73 73    	movw   $0x7373,0x34(%rbp)
  402b67:	c6 45 36 00          	movb   $0x0,0x36(%rbp)
  402b6b:	89 df                	mov    %ebx,%edi
  402b6d:	e8 4e e2 ff ff       	callq  400dc0 <close@plt>
  402b72:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  402b77:	e8 94 e3 ff ff       	callq  400f10 <freeaddrinfo@plt>
  402b7c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402b81:	e9 ff fe ff ff       	jmpq   402a85 <submitr+0x334>
  402b86:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  402b8d:	3a 20 44 
  402b90:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  402b97:	20 75 6e 
  402b9a:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402b9e:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402ba2:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402ba9:	74 6f 20 
  402bac:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  402bb3:	76 65 20 
  402bb6:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402bba:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402bbe:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
  402bc5:	61 62 20 
  402bc8:	48 ba 73 65 72 76 65 	movabs $0x6120726576726573,%rdx
  402bcf:	72 20 61 
  402bd2:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402bd6:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402bda:	c7 45 30 64 64 72 65 	movl   $0x65726464,0x30(%rbp)
  402be1:	66 c7 45 34 73 73    	movw   $0x7373,0x34(%rbp)
  402be7:	c6 45 36 00          	movb   $0x0,0x36(%rbp)
  402beb:	89 df                	mov    %ebx,%edi
  402bed:	e8 ce e1 ff ff       	callq  400dc0 <close@plt>
  402bf2:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  402bf7:	e8 14 e3 ff ff       	callq  400f10 <freeaddrinfo@plt>
  402bfc:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402c01:	e9 7f fe ff ff       	jmpq   402a85 <submitr+0x334>
  402c06:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  402c0d:	3a 20 52 
  402c10:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  402c17:	20 73 74 
  402c1a:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402c1e:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402c22:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  402c29:	74 6f 6f 
  402c2c:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
  402c33:	65 2e 20 
  402c36:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402c3a:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402c3e:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  402c45:	61 73 65 
  402c48:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
  402c4f:	49 54 52 
  402c52:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402c56:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402c5a:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  402c61:	55 46 00 
  402c64:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402c68:	89 df                	mov    %ebx,%edi
  402c6a:	e8 51 e1 ff ff       	callq  400dc0 <close@plt>
  402c6f:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  402c74:	e8 97 e2 ff ff       	callq  400f10 <freeaddrinfo@plt>
  402c79:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402c7e:	e9 02 fe ff ff       	jmpq   402a85 <submitr+0x334>
  402c83:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  402c8a:	3a 20 52 
  402c8d:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  402c94:	20 73 74 
  402c97:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402c9b:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402c9f:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  402ca6:	63 6f 6e 
  402ca9:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
  402cb0:	20 61 6e 
  402cb3:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402cb7:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402cbb:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  402cc2:	67 61 6c 
  402cc5:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
  402ccc:	6e 70 72 
  402ccf:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402cd3:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402cd7:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  402cde:	6c 65 20 
  402ce1:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
  402ce8:	63 74 65 
  402ceb:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402cef:	48 89 55 38          	mov    %rdx,0x38(%rbp)
  402cf3:	66 c7 45 40 72 2e    	movw   $0x2e72,0x40(%rbp)
  402cf9:	c6 45 42 00          	movb   $0x0,0x42(%rbp)
  402cfd:	89 df                	mov    %ebx,%edi
  402cff:	e8 bc e0 ff ff       	callq  400dc0 <close@plt>
  402d04:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  402d09:	e8 02 e2 ff ff       	callq  400f10 <freeaddrinfo@plt>
  402d0e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402d13:	e9 6d fd ff ff       	jmpq   402a85 <submitr+0x334>
  402d18:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402d1f:	3a 20 43 
  402d22:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402d29:	20 75 6e 
  402d2c:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402d30:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402d34:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402d3b:	74 6f 20 
  402d3e:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
  402d45:	20 74 6f 
  402d48:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402d4c:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402d50:	48 b8 20 74 68 65 20 	movabs $0x7475412065687420,%rax
  402d57:	41 75 74 
  402d5a:	48 ba 6f 6c 61 62 20 	movabs $0x7265732062616c6f,%rdx
  402d61:	73 65 72 
  402d64:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402d68:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402d6c:	c7 45 30 76 65 72 00 	movl   $0x726576,0x30(%rbp)
  402d73:	89 df                	mov    %ebx,%edi
  402d75:	e8 46 e0 ff ff       	callq  400dc0 <close@plt>
  402d7a:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  402d7f:	e8 8c e1 ff ff       	callq  400f10 <freeaddrinfo@plt>
  402d84:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402d89:	e9 f7 fc ff ff       	jmpq   402a85 <submitr+0x334>
  402d8e:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402d95:	3a 20 43 
  402d98:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402d9f:	20 75 6e 
  402da2:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402da6:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402daa:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402db1:	74 6f 20 
  402db4:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
  402dbb:	66 69 72 
  402dbe:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402dc2:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402dc6:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  402dcd:	61 64 65 
  402dd0:	48 ba 72 20 66 72 6f 	movabs $0x41206d6f72662072,%rdx
  402dd7:	6d 20 41 
  402dda:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402dde:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402de2:	48 b8 75 74 6f 6c 61 	movabs $0x732062616c6f7475,%rax
  402de9:	62 20 73 
  402dec:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402df0:	c7 45 38 65 72 76 65 	movl   $0x65767265,0x38(%rbp)
  402df7:	66 c7 45 3c 72 00    	movw   $0x72,0x3c(%rbp)
  402dfd:	89 df                	mov    %ebx,%edi
  402dff:	e8 bc df ff ff       	callq  400dc0 <close@plt>
  402e04:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  402e09:	e8 02 e1 ff ff       	callq  400f10 <freeaddrinfo@plt>
  402e0e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402e13:	e9 6d fc ff ff       	jmpq   402a85 <submitr+0x334>
  402e18:	48 8d b4 24 70 20 00 	lea    0x2070(%rsp),%rsi
  402e1f:	00 
  402e20:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
  402e25:	ba 00 20 00 00       	mov    $0x2000,%edx
  402e2a:	e8 6b f7 ff ff       	callq  40259a <rio_readlineb>
  402e2f:	48 85 c0             	test   %rax,%rax
  402e32:	0f 8e a0 00 00 00    	jle    402ed8 <submitr+0x787>
  402e38:	44 8b 44 24 14       	mov    0x14(%rsp),%r8d
  402e3d:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
  402e44:	0f 85 19 01 00 00    	jne    402f63 <submitr+0x812>
  402e4a:	48 8d b4 24 70 20 00 	lea    0x2070(%rsp),%rsi
  402e51:	00 
  402e52:	48 89 ef             	mov    %rbp,%rdi
  402e55:	e8 06 df ff ff       	callq  400d60 <strcpy@plt>
  402e5a:	89 df                	mov    %ebx,%edi
  402e5c:	e8 5f df ff ff       	callq  400dc0 <close@plt>
  402e61:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  402e66:	e8 a5 e0 ff ff       	callq  400f10 <freeaddrinfo@plt>
  402e6b:	b9 04 00 00 00       	mov    $0x4,%ecx
  402e70:	48 8d 3d 50 0d 00 00 	lea    0xd50(%rip),%rdi        # 403bc7 <trans_char+0xf7>
  402e77:	48 89 ee             	mov    %rbp,%rsi
  402e7a:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402e7c:	0f 97 c0             	seta   %al
  402e7f:	1c 00                	sbb    $0x0,%al
  402e81:	0f be c0             	movsbl %al,%eax
  402e84:	85 c0                	test   %eax,%eax
  402e86:	0f 84 f9 fb ff ff    	je     402a85 <submitr+0x334>
  402e8c:	b9 05 00 00 00       	mov    $0x5,%ecx
  402e91:	48 8d 3d 33 0d 00 00 	lea    0xd33(%rip),%rdi        # 403bcb <trans_char+0xfb>
  402e98:	48 89 ee             	mov    %rbp,%rsi
  402e9b:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402e9d:	0f 97 c0             	seta   %al
  402ea0:	1c 00                	sbb    $0x0,%al
  402ea2:	0f be c0             	movsbl %al,%eax
  402ea5:	85 c0                	test   %eax,%eax
  402ea7:	0f 84 d8 fb ff ff    	je     402a85 <submitr+0x334>
  402ead:	b9 03 00 00 00       	mov    $0x3,%ecx
  402eb2:	48 8d 3d 17 0d 00 00 	lea    0xd17(%rip),%rdi        # 403bd0 <trans_char+0x100>
  402eb9:	48 89 ee             	mov    %rbp,%rsi
  402ebc:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402ebe:	0f 97 c0             	seta   %al
  402ec1:	1c 00                	sbb    $0x0,%al
  402ec3:	0f be c0             	movsbl %al,%eax
  402ec6:	85 c0                	test   %eax,%eax
  402ec8:	0f 84 b7 fb ff ff    	je     402a85 <submitr+0x334>
  402ece:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402ed3:	e9 ad fb ff ff       	jmpq   402a85 <submitr+0x334>
  402ed8:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402edf:	3a 20 43 
  402ee2:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402ee9:	20 75 6e 
  402eec:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402ef0:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402ef4:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402efb:	74 6f 20 
  402efe:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
  402f05:	73 74 61 
  402f08:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402f0c:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402f10:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  402f17:	65 73 73 
  402f1a:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
  402f21:	72 6f 6d 
  402f24:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402f28:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402f2c:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
  402f33:	6c 61 62 
  402f36:	48 ba 20 73 65 72 76 	movabs $0x72657672657320,%rdx
  402f3d:	65 72 00 
  402f40:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402f44:	48 89 55 38          	mov    %rdx,0x38(%rbp)
  402f48:	89 df                	mov    %ebx,%edi
  402f4a:	e8 71 de ff ff       	callq  400dc0 <close@plt>
  402f4f:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  402f54:	e8 b7 df ff ff       	callq  400f10 <freeaddrinfo@plt>
  402f59:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402f5e:	e9 22 fb ff ff       	jmpq   402a85 <submitr+0x334>
  402f63:	4c 8d 8c 24 70 80 00 	lea    0x8070(%rsp),%r9
  402f6a:	00 
  402f6b:	48 8d 0d f6 0b 00 00 	lea    0xbf6(%rip),%rcx        # 403b68 <trans_char+0x98>
  402f72:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  402f79:	be 01 00 00 00       	mov    $0x1,%esi
  402f7e:	48 89 ef             	mov    %rbp,%rdi
  402f81:	b8 00 00 00 00       	mov    $0x0,%eax
  402f86:	e8 95 df ff ff       	callq  400f20 <__sprintf_chk@plt>
  402f8b:	89 df                	mov    %ebx,%edi
  402f8d:	e8 2e de ff ff       	callq  400dc0 <close@plt>
  402f92:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  402f97:	e8 74 df ff ff       	callq  400f10 <freeaddrinfo@plt>
  402f9c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402fa1:	e9 df fa ff ff       	jmpq   402a85 <submitr+0x334>
  402fa6:	e8 e2 f2 ff ff       	callq  40228d <__stack_chk_fail>

0000000000402fab <init_timeout>:
  402fab:	85 ff                	test   %edi,%edi
  402fad:	74 28                	je     402fd7 <init_timeout+0x2c>
  402faf:	53                   	push   %rbx
  402fb0:	89 fb                	mov    %edi,%ebx
  402fb2:	85 ff                	test   %edi,%edi
  402fb4:	78 1a                	js     402fd0 <init_timeout+0x25>
  402fb6:	48 8d 35 c4 f4 ff ff 	lea    -0xb3c(%rip),%rsi        # 402481 <sigalrm_handler>
  402fbd:	bf 0e 00 00 00       	mov    $0xe,%edi
  402fc2:	e8 19 de ff ff       	callq  400de0 <signal@plt>
  402fc7:	89 df                	mov    %ebx,%edi
  402fc9:	e8 e2 dd ff ff       	callq  400db0 <alarm@plt>
  402fce:	5b                   	pop    %rbx
  402fcf:	c3                   	retq   
  402fd0:	bb 00 00 00 00       	mov    $0x0,%ebx
  402fd5:	eb df                	jmp    402fb6 <init_timeout+0xb>
  402fd7:	f3 c3                	repz retq 

0000000000402fd9 <init_driver>:
  402fd9:	41 54                	push   %r12
  402fdb:	55                   	push   %rbp
  402fdc:	53                   	push   %rbx
  402fdd:	48 83 ec 20          	sub    $0x20,%rsp
  402fe1:	49 89 fc             	mov    %rdi,%r12
  402fe4:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402feb:	00 00 
  402fed:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  402ff2:	31 c0                	xor    %eax,%eax
  402ff4:	be 01 00 00 00       	mov    $0x1,%esi
  402ff9:	bf 0d 00 00 00       	mov    $0xd,%edi
  402ffe:	e8 dd dd ff ff       	callq  400de0 <signal@plt>
  403003:	be 01 00 00 00       	mov    $0x1,%esi
  403008:	bf 1d 00 00 00       	mov    $0x1d,%edi
  40300d:	e8 ce dd ff ff       	callq  400de0 <signal@plt>
  403012:	be 01 00 00 00       	mov    $0x1,%esi
  403017:	bf 1d 00 00 00       	mov    $0x1d,%edi
  40301c:	e8 bf dd ff ff       	callq  400de0 <signal@plt>
  403021:	ba 00 00 00 00       	mov    $0x0,%edx
  403026:	be 01 00 00 00       	mov    $0x1,%esi
  40302b:	bf 02 00 00 00       	mov    $0x2,%edi
  403030:	e8 fb de ff ff       	callq  400f30 <socket@plt>
  403035:	85 c0                	test   %eax,%eax
  403037:	0f 88 a3 00 00 00    	js     4030e0 <init_driver+0x107>
  40303d:	89 c3                	mov    %eax,%ebx
  40303f:	48 8d 3d 15 06 00 00 	lea    0x615(%rip),%rdi        # 40365b <_IO_stdin_used+0x30b>
  403046:	e8 a5 dd ff ff       	callq  400df0 <gethostbyname@plt>
  40304b:	48 85 c0             	test   %rax,%rax
  40304e:	0f 84 df 00 00 00    	je     403133 <init_driver+0x15a>
  403054:	48 89 e5             	mov    %rsp,%rbp
  403057:	48 c7 44 24 02 00 00 	movq   $0x0,0x2(%rsp)
  40305e:	00 00 
  403060:	c7 45 0a 00 00 00 00 	movl   $0x0,0xa(%rbp)
  403067:	66 c7 45 0e 00 00    	movw   $0x0,0xe(%rbp)
  40306d:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  403073:	48 63 50 14          	movslq 0x14(%rax),%rdx
  403077:	48 8b 40 18          	mov    0x18(%rax),%rax
  40307b:	48 8b 30             	mov    (%rax),%rsi
  40307e:	48 8d 7d 04          	lea    0x4(%rbp),%rdi
  403082:	b9 0c 00 00 00       	mov    $0xc,%ecx
  403087:	e8 74 dd ff ff       	callq  400e00 <__memmove_chk@plt>
  40308c:	66 c7 44 24 02 00 50 	movw   $0x5000,0x2(%rsp)
  403093:	ba 10 00 00 00       	mov    $0x10,%edx
  403098:	48 89 ee             	mov    %rbp,%rsi
  40309b:	89 df                	mov    %ebx,%edi
  40309d:	e8 3e de ff ff       	callq  400ee0 <connect@plt>
  4030a2:	85 c0                	test   %eax,%eax
  4030a4:	0f 88 fb 00 00 00    	js     4031a5 <init_driver+0x1cc>
  4030aa:	89 df                	mov    %ebx,%edi
  4030ac:	e8 0f dd ff ff       	callq  400dc0 <close@plt>
  4030b1:	66 41 c7 04 24 4f 4b 	movw   $0x4b4f,(%r12)
  4030b8:	41 c6 44 24 02 00    	movb   $0x0,0x2(%r12)
  4030be:	b8 00 00 00 00       	mov    $0x0,%eax
  4030c3:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  4030c8:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  4030cf:	00 00 
  4030d1:	0f 85 28 01 00 00    	jne    4031ff <init_driver+0x226>
  4030d7:	48 83 c4 20          	add    $0x20,%rsp
  4030db:	5b                   	pop    %rbx
  4030dc:	5d                   	pop    %rbp
  4030dd:	41 5c                	pop    %r12
  4030df:	c3                   	retq   
  4030e0:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4030e7:	3a 20 43 
  4030ea:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  4030f1:	20 75 6e 
  4030f4:	49 89 04 24          	mov    %rax,(%r12)
  4030f8:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  4030fd:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  403104:	74 6f 20 
  403107:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  40310e:	65 20 73 
  403111:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  403116:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  40311b:	41 c7 44 24 20 6f 63 	movl   $0x656b636f,0x20(%r12)
  403122:	6b 65 
  403124:	66 41 c7 44 24 24 74 	movw   $0x74,0x24(%r12)
  40312b:	00 
  40312c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403131:	eb 90                	jmp    4030c3 <init_driver+0xea>
  403133:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  40313a:	3a 20 44 
  40313d:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  403144:	20 75 6e 
  403147:	49 89 04 24          	mov    %rax,(%r12)
  40314b:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  403150:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  403157:	74 6f 20 
  40315a:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  403161:	76 65 20 
  403164:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  403169:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  40316e:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  403175:	72 20 61 
  403178:	49 89 44 24 20       	mov    %rax,0x20(%r12)
  40317d:	41 c7 44 24 28 64 64 	movl   $0x65726464,0x28(%r12)
  403184:	72 65 
  403186:	66 41 c7 44 24 2c 73 	movw   $0x7373,0x2c(%r12)
  40318d:	73 
  40318e:	41 c6 44 24 2e 00    	movb   $0x0,0x2e(%r12)
  403194:	89 df                	mov    %ebx,%edi
  403196:	e8 25 dc ff ff       	callq  400dc0 <close@plt>
  40319b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4031a0:	e9 1e ff ff ff       	jmpq   4030c3 <init_driver+0xea>
  4031a5:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  4031ac:	3a 20 55 
  4031af:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  4031b6:	20 74 6f 
  4031b9:	49 89 04 24          	mov    %rax,(%r12)
  4031bd:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  4031c2:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  4031c9:	65 63 74 
  4031cc:	48 ba 20 74 6f 20 73 	movabs $0x76726573206f7420,%rdx
  4031d3:	65 72 76 
  4031d6:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  4031db:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  4031e0:	66 41 c7 44 24 20 65 	movw   $0x7265,0x20(%r12)
  4031e7:	72 
  4031e8:	41 c6 44 24 22 00    	movb   $0x0,0x22(%r12)
  4031ee:	89 df                	mov    %ebx,%edi
  4031f0:	e8 cb db ff ff       	callq  400dc0 <close@plt>
  4031f5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4031fa:	e9 c4 fe ff ff       	jmpq   4030c3 <init_driver+0xea>
  4031ff:	e8 89 f0 ff ff       	callq  40228d <__stack_chk_fail>

0000000000403204 <driver_post>:
  403204:	53                   	push   %rbx
  403205:	4c 89 cb             	mov    %r9,%rbx
  403208:	45 85 c0             	test   %r8d,%r8d
  40320b:	75 18                	jne    403225 <driver_post+0x21>
  40320d:	48 85 ff             	test   %rdi,%rdi
  403210:	74 05                	je     403217 <driver_post+0x13>
  403212:	80 3f 00             	cmpb   $0x0,(%rdi)
  403215:	75 37                	jne    40324e <driver_post+0x4a>
  403217:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  40321c:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  403220:	44 89 c0             	mov    %r8d,%eax
  403223:	5b                   	pop    %rbx
  403224:	c3                   	retq   
  403225:	48 89 ca             	mov    %rcx,%rdx
  403228:	48 8d 35 a4 09 00 00 	lea    0x9a4(%rip),%rsi        # 403bd3 <trans_char+0x103>
  40322f:	bf 01 00 00 00       	mov    $0x1,%edi
  403234:	b8 00 00 00 00       	mov    $0x0,%eax
  403239:	e8 42 dc ff ff       	callq  400e80 <__printf_chk@plt>
  40323e:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  403243:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  403247:	b8 00 00 00 00       	mov    $0x0,%eax
  40324c:	eb d5                	jmp    403223 <driver_post+0x1f>
  40324e:	48 83 ec 08          	sub    $0x8,%rsp
  403252:	41 51                	push   %r9
  403254:	49 89 c9             	mov    %rcx,%r9
  403257:	49 89 d0             	mov    %rdx,%r8
  40325a:	48 89 f9             	mov    %rdi,%rcx
  40325d:	48 89 f2             	mov    %rsi,%rdx
  403260:	be 50 00 00 00       	mov    $0x50,%esi
  403265:	48 8d 3d ef 03 00 00 	lea    0x3ef(%rip),%rdi        # 40365b <_IO_stdin_used+0x30b>
  40326c:	e8 e0 f4 ff ff       	callq  402751 <submitr>
  403271:	48 83 c4 10          	add    $0x10,%rsp
  403275:	eb ac                	jmp    403223 <driver_post+0x1f>

0000000000403277 <check>:
  403277:	89 f8                	mov    %edi,%eax
  403279:	c1 e8 1c             	shr    $0x1c,%eax
  40327c:	85 c0                	test   %eax,%eax
  40327e:	74 1d                	je     40329d <check+0x26>
  403280:	b9 00 00 00 00       	mov    $0x0,%ecx
  403285:	83 f9 1f             	cmp    $0x1f,%ecx
  403288:	7f 0d                	jg     403297 <check+0x20>
  40328a:	89 f8                	mov    %edi,%eax
  40328c:	d3 e8                	shr    %cl,%eax
  40328e:	3c 0a                	cmp    $0xa,%al
  403290:	74 11                	je     4032a3 <check+0x2c>
  403292:	83 c1 08             	add    $0x8,%ecx
  403295:	eb ee                	jmp    403285 <check+0xe>
  403297:	b8 01 00 00 00       	mov    $0x1,%eax
  40329c:	c3                   	retq   
  40329d:	b8 00 00 00 00       	mov    $0x0,%eax
  4032a2:	c3                   	retq   
  4032a3:	b8 00 00 00 00       	mov    $0x0,%eax
  4032a8:	c3                   	retq   

00000000004032a9 <gencookie>:
  4032a9:	53                   	push   %rbx
  4032aa:	83 c7 01             	add    $0x1,%edi
  4032ad:	e8 8e da ff ff       	callq  400d40 <srandom@plt>
  4032b2:	e8 89 db ff ff       	callq  400e40 <random@plt>
  4032b7:	89 c3                	mov    %eax,%ebx
  4032b9:	89 c7                	mov    %eax,%edi
  4032bb:	e8 b7 ff ff ff       	callq  403277 <check>
  4032c0:	85 c0                	test   %eax,%eax
  4032c2:	74 ee                	je     4032b2 <gencookie+0x9>
  4032c4:	89 d8                	mov    %ebx,%eax
  4032c6:	5b                   	pop    %rbx
  4032c7:	c3                   	retq   
  4032c8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4032cf:	00 

00000000004032d0 <__libc_csu_init>:
  4032d0:	41 57                	push   %r15
  4032d2:	41 56                	push   %r14
  4032d4:	49 89 d7             	mov    %rdx,%r15
  4032d7:	41 55                	push   %r13
  4032d9:	41 54                	push   %r12
  4032db:	4c 8d 25 2e 1b 20 00 	lea    0x201b2e(%rip),%r12        # 604e10 <__frame_dummy_init_array_entry>
  4032e2:	55                   	push   %rbp
  4032e3:	48 8d 2d 2e 1b 20 00 	lea    0x201b2e(%rip),%rbp        # 604e18 <__init_array_end>
  4032ea:	53                   	push   %rbx
  4032eb:	41 89 fd             	mov    %edi,%r13d
  4032ee:	49 89 f6             	mov    %rsi,%r14
  4032f1:	4c 29 e5             	sub    %r12,%rbp
  4032f4:	48 83 ec 08          	sub    $0x8,%rsp
  4032f8:	48 c1 fd 03          	sar    $0x3,%rbp
  4032fc:	e8 df d9 ff ff       	callq  400ce0 <_init>
  403301:	48 85 ed             	test   %rbp,%rbp
  403304:	74 20                	je     403326 <__libc_csu_init+0x56>
  403306:	31 db                	xor    %ebx,%ebx
  403308:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40330f:	00 
  403310:	4c 89 fa             	mov    %r15,%rdx
  403313:	4c 89 f6             	mov    %r14,%rsi
  403316:	44 89 ef             	mov    %r13d,%edi
  403319:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  40331d:	48 83 c3 01          	add    $0x1,%rbx
  403321:	48 39 dd             	cmp    %rbx,%rbp
  403324:	75 ea                	jne    403310 <__libc_csu_init+0x40>
  403326:	48 83 c4 08          	add    $0x8,%rsp
  40332a:	5b                   	pop    %rbx
  40332b:	5d                   	pop    %rbp
  40332c:	41 5c                	pop    %r12
  40332e:	41 5d                	pop    %r13
  403330:	41 5e                	pop    %r14
  403332:	41 5f                	pop    %r15
  403334:	c3                   	retq   
  403335:	90                   	nop
  403336:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40333d:	00 00 00 

0000000000403340 <__libc_csu_fini>:
  403340:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000403344 <_fini>:
  403344:	48 83 ec 08          	sub    $0x8,%rsp
  403348:	48 83 c4 08          	add    $0x8,%rsp
  40334c:	c3                   	retq   
