## API 1° Semestre Banco de Dados
## Calculadora de sequências 
<p align="center" id= "cabeçalho">
<h1> Zyntech</h1>
<h2>Índice</h2>
<a href="#objetivo">Objetivo</a> |
<a href="#ferramentas">Ferramentas</a> |
<a href="#solucao">Solução</a> |
<a href="#backlog">Backlog</a> |
<a href="#cronograma">Cronograma</a> |
<a href="#dor">DoR</a> |
<a href="#dod">DoD</a> |
<a href="#manual">Manual</a> |
<a href="#equipe">Equipe</a>
</p>

<h2 id="objetivo">Objetivo</h2>

<p>
<h3>Desenvolver um programa que calcula a sequência numérica escolhida pelo usuário, deve possuir manual do usuário.</h3>
</p>

<h2 id="ferramentas">Ferramentas</h2>

<p>
<h3>Plataforma - VisualG</h3>
<h3>Linguagem - Portugol</h3>
<h3>Hospedagem - GitHub</h3>
<h3>Versionamento - GIT</h3>
</p>

<h2 id="solucao">Soluções</h2>

<p>
<h3> Com a calculadora de sequências, será possível realizar cálculos que transcendem as operações básicas, onde usuário poderá conhecer e estudar sequências numéricas de uma forma muito mais acessível em comparação a uma calculadora convencional.
</p>

<h2 id="backlog">Backlog</h2>

<table>

<tr>
<th>ID</th> <th>Épico</th> <th>User Story</th> 
<th>Descrição</th> <th>Critério de Aceitação</th>
<th>Prioridades</th> <th>Status</th>
</tr>

<tr>
<td>Interface</td> 
<td>Como usuário quero visualizar um menu no programa para escolher qual sequência calcular</td> 
<td>Criar interface em texto com menu de opções</td>
<td>Menu deve aparecer ao iniciar a aplicação</td>
<td>Alta</td>
<td>Backlog</td>
</tr>

<tr>
<td>Fluxo do sistema</td> 
<td>Como usuário quero executar apenas um cálculo por vez para facilitar o uso</td> 
<td>Sistema deve solicitar a sequência e executar somente um cálculo</td>
<td>Após executar cálculo o sistema deve retornar ao menu</td>
<td>Alta</td>
<td>Backlog</td>
</tr>

<tr>
<td>Fluxo do sistema</td> 
<td>Como usuário quero continuar executando cálculos até decidir encerrar o programa</td> 
<td>Sistema deve repetir o menu após cada cálculo</td>
<td>Usuário deve poder escolher opção de sair</td>
<td>Alta</td>
<td>Backlog</td>
</tr>

<tr>
<td>Sequência</td> 
<td>Como Usuário da calculadora, quero da sequência de Fibonacci para utilizar na minha área de estudo, mostrando n elementos.</td> 
<td>Sistema deve fazer o padrão da sequência até N</td>
<td>Usuário deve inserir os números e obter a sequência de Fibonacci até o número inserido</td>
<td>Alta</td>
<td>Backlog</td>
</tr>

<tr>
<td>Sequência</td> 
<td>Como Usuário da calculadora, preciso a função Sequência de Cubos para encontrar os cubos de n, podendo ser mostrar o resultado final ou em lista, para caso de estudo.</td> 
<td>
Sistema deve fazer o padrão da sequência até N</td>
<td>Usuário deve inserir os números e obter a sequência dos cubos até n</td>
<td>Alta</td>
<td>Backlog</td>
</tr>

<tr>
<td>Sequência</td> 
<td>Como Usuário da calculadora, quero a função de Números Triangulares para calcular o número triangular na posição N para caso de estudo.</td> 
<td>Sistema deve fazer o padrão da sequência até N utilizando a fórmula</td>
<td>Usuário deve inserir os números e obter os números triangulares de n</td>
<td>Média</td>
<td>Backlog</td>
</tr>

<tr>
<td>Sequência</td> 
<td>Como Usuário da calculadora, quero a função de Sequência de Números Primos, podendo mostrar o resultado final ou em lista, para caso de estudo.</td> 
<td>Sistema deve identificar números primos e fazer o padrão da sequência até N</td>
<td>Usuário deve inserir os números e obter a sequência de números primos até n</td>
<td>Média</td>
<td>Backlog</td>
</tr>

<tr>
<td>Sequência</td> 
<td>Como Usuário da calculadora, quero a função de Sequência de Quadrados Perfeitos para encontrar os quadrados perfeitos de n, podendo mostrar o resultado final ou em lista, para caso de estudo.</td> 
<td>Sistema deve fazer o padrão da sequência até N utilizando o padrão correto</td>
<td>Usuário deve inserir os números e obter a sequência dos quadrados perfeitos até n</td>
<td>Média</td>
<td>Backlog</td>
</tr>

<tr>
<td>Sequência</td> 
<td>Como Usuário da calculadora, quero a função Sequência Alternada para criar um padrão sequencial, utilizando valor n, para caso de estudo.</td> 
<td>SIstema deve fazer o padrão da sequência com sua definição até N</td>
<td>Usuário deve inserir os números e o padrão da sequência e obter seu resultado</td>
<td>Média</td>
<td>Backlog</td>
</tr>

<tr>
<td>Sequência</td> 
<td>Como Usuário da calculadora, quero a função Sequência Geométrica para encontrar a função geométrica n, para caso de estudo.</td> 
<td>Sistema deve fazer o padrão da sequência até N utilizando a fórmula</td>
<td>Usuário deve inserir os números e obter a resposta a função geométrica de n</td>
<td>Baixa</td>
<td>Backlog</td>
</tr>

<tr>
<td>Sequência</td> 
<td>Como Usuário da calculadora, quero a função de Sequência Fatorial para encontrar o fatorial de n, podendo mostrar o resultado final ou em lista, para caso de estudo.</td> 
<td>Sistema deve fazer o padrão da sequência até N</td>
<td>Usuário deve inserir os números e obter a sequência fatorial de n</td>
<td>Baixa</td>
<td>Backlog</td>
</tr>

<tr>
<td>Sequência</td> 
<td>Como Usuário da calculadora, quero a função Sequência de Tribonacci para encontrar a sequência de n, podendo mostrar o resultado final ou em lista, para caso de estudo.</td> 
<td>Sistema deve fazer o padrão da sequência até N</td>
<td>Usuário deve inserir os números e obter a sequência de Tribonacci até o número inserido</td>
<td>Baixa</td>
<td>Backlog</td>
</tr>


</table>


<h2 id="cronograma">Cronograma</h2>

<table>

<tr>
<th>Sprint</th> <th>Período</th> <th>Status</th> 
<th>Documentação</th>
</tr>

<tr>
<td>1</td> <td></td> 
<td>Concluída</td> 
<td><a href ="https://docs.google.com/spreadsheets/d/1ftcpz4QOgqfWZZaypad-cBNqk_CTsbYMT8bixuApViI/edit?gid=1281056417#gid=1281056417">Docs_Sprints</a></td>
</tr>

<tr>
<td>2</td> <td></td> 
<td>Em Andamento</td> 
<td><a href ="https://docs.google.com/spreadsheets/d/1ftcpz4QOgqfWZZaypad-cBNqk_CTsbYMT8bixuApViI/edit?gid=1281056417#gid=1281056417">Docs_Sprints</a></td>
</tr>

<tr>
<td>3</td> <td></td> 
<td>Em Breve</td> 
<td><a href ="https://docs.google.com/spreadsheets/d/1ftcpz4QOgqfWZZaypad-cBNqk_CTsbYMT8bixuApViI/edit?gid=1281056417#gid=1281056417">Docs_Sprints</a></td>
</tr>


</table>

<h2 id="dor">DoR - Definition of Ready</h2>

<ul>

<li> Backlog com User Storys para todas funções
<li> Backlog aprovado pelo cliente
<li> Trios definidos por sprint
<li> Tarefas divididas por prioridades

</ul>

<h2 id="dod">DoD - Definition of Done</h2>

<ul>

<li> Documentação atualizada e corrigida
<li> Código padronizado e testado
<li> Código aprovado por todos
<li> Função aprovada pelo cliente
</ul>

<h2 id="manual">Manual</h2>

<h2 id="equipe">Equipe</h2>

<ul>

<li> Israel Mesquita Cardoso - Product Owner
<li> Gustavo Otacílio Jacinto Ramos - Scrum Master
<li> Daniel da Silva Carvalho Franco - Desenvolvedor
<li> Felipe Cafalloni da Costa - Desenvolvedor
<li> Larissa Roberta dos Santos Silva - Desenvolvedor
<li> Mateus Daniel Santos - Desenvolvedor
<li> Rian Fernandes Paes - Desenvolvedor
<li> Sayuri Vidal Nozaki - Desenvolvedor
<li> Yago de Noronha Chaves - Desenvolvedor

</ul>
