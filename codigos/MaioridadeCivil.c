#include <stdio.h>
#include <time.h>

int menu();
int calcular_idade(int ano_atual, int ano_nascimento);
void imprimir_idade(int idade);
void maioridade_civil(int idade);

void main()
{
  const int ano_atual = 2019;

  int ano_nascimento = menu();
  int idade = calcular_idade(ano_atual, ano_nascimento);
  
  imprimir_idade(idade);
  maioridade_civil(idade);
}

int menu()
{
  int ano_nascimento;
  
  printf("Digite o ano do seu nascimento:\n");
  scanf("%d", &ano_nascimento);
  return ano_nascimento;
}

int calcular_idade(int ano_atual, int ano_nascimento)
{
  return ano_atual - ano_nascimento;
}

void imprimir_idade(int idade)
{
  printf("Voce tem %d anos de idade\n", idade);
}

void maioridade_civil(int idade)
{
  if (idade >= 18)
  {
    printf("Voce atingiu a maioridade civil\n");
  }
  else
  {
    printf("Voce nao atingiu a maioridade civil\n");
  }
}
