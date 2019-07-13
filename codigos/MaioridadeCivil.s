	.file	"MaioridadeCivil.c"
	.option nopic
	.text
	.align	2
	.globl	menu
	.type	menu, @function

/* Menu de interação com o usuário. */
/* O módulo recebe o ano de nascimento passado como entrada. */
menu:
	addi	sp,sp,-32
	sw	ra,28(sp)
	lui	a0,%hi(.LC0)
	addi	a0,a0,%lo(.LC0)
	call	puts
	addi	a1,sp,12
	lui	a0,%hi(.LC1)
	addi	a0,a0,%lo(.LC1)
	call	scanf
	lw	a0,12(sp)
	lw	ra,28(sp)
	addi	sp,sp,32
	jr	ra
	.size	menu, .-menu
	.align	2
	.globl	calcular_idade
	.type	calcular_idade, @function

/* Calcula a idade do usuário. */
/* Calcula a idade recebendo o ano atual da consulta e o ano de nascimento como parâmetros. */
calcular_idade:
	sub	a0,a0,a1
	ret
	.size	calcular_idade, .-calcular_idade
	.align	2
	.globl	imprimir_idade
	.type	imprimir_idade, @function

/* Imprime a mensagem “Voce tem X anos de idade”. X sendo a idade do usuário calculada. */
imprimir_idade:
	addi	sp,sp,-16
	sw	ra,12(sp)
	mv	a1,a0
	lui	a0,%hi(.LC2)
	addi	a0,a0,%lo(.LC2)
	call	printf
	lw	ra,12(sp)
	addi	sp,sp,16
	jr	ra
	.size	imprimir_idade, .-imprimir_idade
	.align	2
	.globl	maioridade_civil
	.type	maioridade_civil, @function

/* Módulo de verificação. Verifica se o usuário tem 18 ou mais anos de idade. */
/* Se tem, a mensagem “Voce atingiu a maioridade civil” é mostrada, */
/* se não, “Você não atingiu a maioridade civil” é exibida. */
maioridade_civil:
	addi	sp,sp,-16
	sw	ra,12(sp)
	li	a5,17
	ble	a0,a5,.L7
	lui	a0,%hi(.LC3)
	addi	a0,a0,%lo(.LC3)
	call	puts
.L6:
	lw	ra,12(sp)
	addi	sp,sp,16
	jr	ra
.L7:
	lui	a0,%hi(.LC4)
	addi	a0,a0,%lo(.LC4)
	call	puts
	j	.L6
	.size	maioridade_civil, .-maioridade_civil
	.align	2
	.globl	main
	.type	main, @function
/* Módulo Principal. Responsável por chamar todos os módulos anteriores, e permitir a execução do programa. */
main:
	addi	sp,sp,-16
	sw	ra,12(sp)
	sw	s0,8(sp)
	call	menu
	li	s0,2019
	sub	s0,s0,a0
	mv	a0,s0
	call	imprimir_idade
	mv	a0,s0
	call	maioridade_civil
	lw	ra,12(sp)
	lw	s0,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	main, .-main
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2

/* .LC0 ~.LC4 /*
/* String usadas nos módulos onde há exibição de mensagem. */
.LC0:
	.string	"Digite o ano do seu nascimento:"
.LC1:
	.string	"%d"
	.zero	1
.LC2:
	.string	"Voce tem %d anos de idade\n"
	.zero	1
.LC3:
	.string	"Voce atingiu a maioridade civil"
.LC4:
	.string	"Voce nao atingiu a maioridade civil"
	.ident	"GCC: (GNU) 8.1.0"
