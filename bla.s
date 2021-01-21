.global _start

.text

_start:
   endbr64
   push   %rbp
   mov    %rsp,%rbp
   mov    -0xc(%rbp),%edx
   mov    -0x8(%rbp),%eax
   add    %edx,%eax
   mov    %eax,-0x4(%rbp)
   mov    -0xc(%rbp),%edx
   mov    -0x8(%rbp),%eax
   add    %edx,%eax
   mov    %eax,-0x4(%rbp)
   mov    $0x0,%eax
   pop    %rbp
   retq
