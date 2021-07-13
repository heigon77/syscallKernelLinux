# Projeto 5 de MC504  
## Grupo  
### Tiago Dall'Oca 206341 Heigon Soldera 217638 Piethro César 223549   
  
Esse projeto consiste em incluir chamada de sistemas no kernel Linux que controlem a distribuição do uso da cpu através de forma ponderada. Infelizmente encnotramos certas dificuldades que nos impediram de concluir a tarefa, mas aqui está descrito tudo o que foi realizado.  
  
Criamos as syscall e adicionamos as referências nos seguintes arquivos:
  
[syscall_64.tbl](Kernel/arch/x86/entry/syscalls/syscall_64.tbl)
  
linha 372
``` c
448 common  getuserweight		sys_getuserweight
449 common  setuserweight		sys_setuserweight
```
  
[syscalls.h](Kernel/include/linux/syscalls.h)
  
linha 1268
``` c
asmlinkage int getuserweight(int uid);
asmlinkage int setuserweight(int uid, int weight); 
```
  
[unistd.h](Kernel/include/uapi/asm-generic/unistd.h)
  
linha 881
``` c
#define __NR_getuserweight 448
#define __NR_setuserweight 449

#define __NR_syscalls 450
```
  
[sys_ni.c](Kernel/kernel/sys_ni.c)
  
linha 485
``` c

COND_SYSCALL(getuserweigth);
COND_SYSCALL(setuserweight);
```

A seguir a implementação das syscalls:  
  
[core.c](Kernel/kernel/sched/core.c)
  
linha 10437
``` c
struct load_weight load[16];
count = 0;

SYSCALL_DEFINE2(setuserweight, int uid, int weight)
{
	for (size_t i = 0; i < count; i++)
	{
		if(load[i].inv_weight == uid)
		{
			load[i].weight = weight;
			return 0;
		}
	}

	if(0<= count <16)
	{
		load[count].weight = weight;
		load[count].inv_weight = uid;
		return 0;
	}

	return 1;

}

SYSCALL_DEFINE1(getuserweight, int uid)
{
	for (size_t i = 0; i < count; i++)
	{
		if(load[i].inv_weight == uid)
		{
			return load[i].weight
		}
	}
}
```
### Dificuldades

Infelizmente por falta de contato com a ferramente virtme tivemos dificuldade em realizar funções desejadas, como rodar códigos externos ao ambiente virtual e adicionar diferentes usuários para validar o uso de cpu atavés do comando _top_ ao rodar o arquivo [weightTest.c](weightTest.c). Sendo assim não testamos as implementações, porém o kernel compilou.

### Análise do sched_setparam e sched_getparam

Apesar de não conseguirmos realizar os testes investigamos sua implementação e uso e consideramo que seu uso seria viável, o vídeo trará mais detalhes, mas resumidamente, imaginamos que o motivo para isso está na função _set_load_weight(p, true);_.

### Link para o vídeo
[Vídeo no google drive](https://drive.google.com/file/d/1reFBRmsSHFDSFGHEPQAN3g0Qp0A6JfE0/view?usp=sharing)
