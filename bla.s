.global _start

.text

_start:
   endbr64
   push   %rbp
   mov    %rsp,%rbp
   sub    $0x10,%rsp
   mov    $0x2,%esi
   mov    $0x28,%edi
   callq  add
   mov    %eax,-0x4(%rbp)
   mov    $0x0,%eax
   leaveq
   retq


add:
   endbr64
   push   %rbp
   mov    %rsp,%rbp
   mov    %edi,-0x14(%rbp)
   mov    %esi,-0x18(%rbp)
   mov    -0x14(%rbp),%edx
   mov    -0x18(%rbp),%eax
   add    %edx,%eax
   mov    %eax,-0x4(%rbp)
   mov    -0x4(%rbp),%eax
   pop    %rbp
   retq
