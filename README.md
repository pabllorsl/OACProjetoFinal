# OACProjetoFinal

Código em [Assembly](https://github.com/pabllorsl/OACProjetoFinal/blob/master/codigos/MaioridadeCivil.s) comentado.

Código em linguagem de máquina:

Screenshot das “tirinhas” iniciais | Screenshot das “tirinhas" finais
------------ | -------------
![](https://raw.githubusercontent.com/pabllorsl/OACProjetoFinal/master/screenshots/Tirinhas%20finais.png) | ![](https://github.com/pabllorsl/OACProjetoFinal/blob/master/screenshots/Tirinhas%20iniciais.png?raw=true)

Screenshot ilustrando as operações de teste realizadas:

![](https://github.com/pabllorsl/OACProjetoFinal/blob/master/screenshots/Execucao%20de%20testes.png?raw=true)

Para desenvolver o projeto, foram necessários alguns conhecimentos de Assembly, saber a diferença entre a arquitetura RISCV e a arquitetura Intel para gerar o código de máquina correto. Foi necessário também um certo entendimento da linguagem de máquina. Conhecimentos adquiridos, relacionados ao simulador SPIKE.

1. Assembly: Para desenvolvermos o projeto utilizamos uma ferramenta de conversão de código C para Assembly do RISCV. Houveram alguns problemas na utilização de entradas no começo, mas que posteriormente foram resolvidos com o uso de modularização no código C e na determinação de fim de linha para o uso de prints. Ou seja, quando usamos um printf em C para imprimir na tela em uma ordem específica, não sabíamos que seria necessário determinar o fim da linha no final da frase que iria ser impressa (uso de \n).

    a. Descrição do problema de entrada: Quando colocamos um printf sem o “\n” no código em C no fim da frase que iria ser impressa, o código em Assembly pedia primeiro as entradas ao usuário em vez de disponibilizar uma pergunta ao usuário, com a expectativa de receber valores condizentes com o propósito do programa.

2. Diferença entre a arquitetura Intel e a RISCV: Nosso grupo comparou o Assembly da Intel e do RISCV, verificando diferenças tanto sintáticas como semânticas do código transformado de C.

3. Entendimento da linguagem de máquina: Para acompanharmos as instruções geradas pelo código em Assembly do RISCV, foi necessário o conhecimento adquirido com as aulas de OAC/LOAC sobre “tirinhas”.

4. Conhecimento sobre o simulador SPIKE: O conhecimento sobre o uso do simulador SPIKE, que foi adquirido nas aulas de LOAC, foi crucial para o desenvolvimento do projeto, dado que os testes e visualização dos resultados foram executados no SPIKE.
