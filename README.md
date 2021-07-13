# Projeto 5 de MC504  
## Grupo  
### Tiago Dall'Oca 206341 Heigon Soldera 217638 Piethro César 223549   
  
Esse projeto consiste em incluir chamada de sistemas no kernel Linux que controlem a distribuição do uso da cpu através de forma ponderada. Infelizmente encnotramos certas dificuldades que nos impediram de concluir a tarefa, mas aqui está descrito tudo o que foi realizado.

Criamos as syscall e adicionamos as referências nos seguintes arquivos:

[syscall_64.tbl](Kernel/arch/x86/entry/syscalls/syscall_64.tbl)


``` c
linha 372 448 common  getuserweight		sys_getuserweight
linha 373 449 comoon  setuserweight		sys_setuserweight
```


### Link para o vídeo
[Vídeo no google drive]("Neste link")