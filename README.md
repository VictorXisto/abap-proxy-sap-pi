# 📝 Documentação SAP ABAP PI
 
 
[![GitHub issues](https://img.shields.io/github/issues/VictorXisto/abap-proxy-sap-pi?label=ABAP)](https://github.com/VictorXisto/abap-proxy-sap-pi/issues)
[![GitHub forks](https://img.shields.io/github/forks/VictorXisto/abap-proxy-sap-pi)](https://github.com/VictorXisto/abap-proxy-sap-pi/network)
[![GitHub stars](https://img.shields.io/github/stars/VictorXisto/abap-proxy-sap-pi)](https://github.com/VictorXisto/abap-proxy-sap-pi/stargazers)
[![GitHub license](https://img.shields.io/github/license/VictorXisto/abap-proxy-sap-pi)](https://github.com/VictorXisto/abap-proxy-sap-pi/blob/master/LICENSE)

# Envio ABAP Proxy de saída para SAP PI

  Compartilho a parte lógica de como fazer a implementação da interface de ECC ( ABAP Proxy ) para SAP PI ( multimapping ).

[![ABAP Version][abap-image]][abap-url]
[![Build Status][travis-image]][travis-url]
[![Downloads Stats][npm-downloads]][npm-url]

![SAP_PI_](https://user-images.githubusercontent.com/39013639/92533870-c4e21600-f209-11ea-9943-aaf625c6c85f.png)
	
<!--ts-->
   * [O que é SAP PI?](#o-que-e-sap-pi)
   * [Compreendendo SAP PI](#compreendendo-sap-pi)
   * [SAP PI conecta diferentes plataformas como](#sap-pi-conecta-diferentes-plataformas-como)
   * [Por que SAP PI ?] (#por-que-sap-pi)
   * [Como funciona SAP PI] (#como-funciona-sap-pi)
   * [Arquitetura SAP PI] (#arquitetura-sap-pi)
      * [Conectividade: Proxy Framework e Adapter Framework] (#conectividade-proxy-framework-e-adapter-framework)
      * [Estrutura do Adaptador] (#estrutura-do-adaptador)
      * [Como funciona a estrutura do adaptador] (#como-funciona-a-estrutura-do-adaptador)
	  * [SAP PI Security] (#sap-pi-security)
	  * [Benefícios da segurança no SAP PI] (#beneficios-da-seguranca-no-sap-pi)
	  * [Novos recursos no SAP PI] (#novos-recursos-no-sap-pi)
   * [Vantagens do SAP PI](#vantagens-do-sap-pi)
   * [SAP PI vs BizTalk](#sap-pi-vs-biztalk)
   * [Transações ABAP PI] (#transacoes-abap-pi)
   * [Habilitar ABAP Proxy SAP ERP] (#habilitar-abap-proxy-sap-erp)
<!--te-->	

### O que é SAP PI?

	SAP PI (Process Integration) é uma plataforma de integração que fornece integração perfeita entre aplicativos SAP e não SAP dentro da organização A2A (Application to Application) ou mesmo fora da organização B2B (Business to Business).
	
### Compreendendo SAP PI

	Veremos um exemplo de implementação do SAP PI.

![Implementação do SAP PI](https://user-images.githubusercontent.com/39013639/92545163-ee109f80-f225-11ea-8791-94360b29d752.png)

Para entender o conceito de SAP PI com mais clareza, podemos usar como exemplo uma indústria de laticínios de grande escala, que opera em uma grande parte de um estado e domina a região. Mas existem algumas indústrias de laticínios de pequena escala operando na mesma região, paralelamente à indústria de grande escala, que não está tendo lucro devido à sua variação de preços em comparação com a indústria de grande escala. Portanto, para evitar o conflito de preços e manter o mesmo preço em toda a região, a indústria de grande e pequena escala decidiu se unir, com a ajuda do SAP PI. Eles se interconectam com a ajuda do SAP PI e começam a trabalhar como uma única unidade. Agora, por meio do SAP PI, eles podem trocar todas as informações pertencentes à indústria de laticínios, incluindo preços e compartilhar uma quantidade igual de lucro.

### SAP PI conecta diferentes plataformas como

	Sistemas SAP e não SAP
	Cenários B2B e A2A
	Comunicações Assíncronas e Síncronas
	Gerenciamento de processos de negócios de vários componentes
	
### Por que SAP PI ?

	Antes do SAP PI, as empresas se conectavam umas às outras por meio de comunicação ponto a ponto . Mas esse processo não é usado para processos múltiplos e complexos. Para uma comunicação harmoniosa entre várias empresas, a comunicação mediada ou o broker de integração é usado, e o SAP PI adapta esse sistema muito bem. Ele permite a interconexão de um processo diferente por meio de um local central conhecido como Broker de Integração , ao contrário da conexão ponto a ponto, que se parece mais com uma teia de aranha. O servidor ou intermediário de integração é parte integrante da comunicação mediada e consiste em Advanced Adapter Engine (AAE) baseado em Java e um mecanismo de integraçãopara roteamento. A comunicação mediada é baseada em um broker de integração que é executado trocando mensagens XML .
	
![112814_0608_SAPPIProces2](https://user-images.githubusercontent.com/39013639/92545941-aee34e00-f227-11ea-934f-d0fab3053508.png)

   Vamos ver como o SAP PI lida com as mensagens XML com a ajuda do Integration Broker. A troca de dados ou mensagem no SAP PI ocorre nessas quatro fases.

    * Transformação de mensagens: durante a troca de mensagens, transforma a estrutura dos dados de negócios
    * Encaminhamento de mensagens: encaminhamento de uma mensagem enviada por um sistema remetente para um ou mais sistemas receptores
    * Adaptadores de conectividade: conectando o intermediário de integração e o sistema receptor, o adaptador transformará a mensagem de entrada em uma mensagem de entrada e depois a converterá para o formato do sistema de recebimento na outra extremidade
    * Processos de integração: O gerenciamento de processos de negócios (ccBPM) de vários componentes consiste em funções para orquestração de serviço aprimorada.

### Como funciona SAP PI

   SAP PI executa três funções básicas, são elas:

    * Ligação: SAP PI tem uma capacidade de integração com todos os aplicativos, independentemente de se tratar de um aplicativo de um 3 rd partido ou do SAP. Ele usa a estrutura do adaptador para integrar 3 rd soluções do partido.
    * Coordenar: pode definir um caminho / fluxo de trabalho para cada transação de negócios integrada. Ele garante que cada mensagem seja entregue corretamente da origem ao destino de destino
    * Comunicar: pode traduzir arquivos em qualquer formato, seja um formato de arquivo interno ou qualquer padrão de integração business to business.

### Arquitetura SAP PI

![112814_0608_SAPPIProces3](https://user-images.githubusercontent.com/39013639/92546254-8019a780-f228-11ea-9974-37eba3d56949.jpg)

    O SAP PI não é um único componente responsável pela integração de aplicativos SAP e não SAP, mas é um cluster de componentes que juntos tornam o SAP PI funcional. Esta arquitetura de SAP PI ou componentes é usada durante o tempo de design, tempo de configuração e tempo de execução. Os vários componentes do SAP PI incluem

1.  System Landscape Directory: é um provedor central de informações em um system landscape. SLD contém dois tipos de informações, "Informações de componentes (instaláveis ​​e instaláveis) e descrição de paisagem".
2.  Integration Builder: É um conjunto de ferramentas que contém um conjunto de ferramentas para acessar e editar objetos de integração
3.  Repositório de integração: para desenvolver, projetar e manter tipos de dados, estruturas de mensagem, mapeamentos, interfaces, processos de integração e cenários de integração independentemente da paisagem do sistema, o repositório de integração é usado.
4.  Servidor de integração: é um mecanismo de processamento central do PI. Todas as mensagens são processadas usando este servidor.
5.  Monitoramento Central: Com a ajuda deste é feito o monitoramento do domínio PI, sendo o "workbench" a ferramenta que é utilizada para o monitoramento.
6.  Adapter Engine: atua como um conector para conectar o mecanismo de integração aos sistemas SAP e outros sistemas.
7.  Técnica de processamento de mensagens por PI: Para acessar dados de aplicativos SAP e não SAP, esta técnica é usada. O SAP PI usa um documento intermediário como IDoc para arquivos simples para transferir seus dados.
8.  Design: Process Integration (PI) usa repositório de integração para projetar a estrutura da mensagem
9.  Configuração: O Diretório de Integração (ID) é usado para configurar parâmetros técnicos para objetos criados em IR (Repositório de Integração)
10. Processamento de Mensagens: Uma vez que o IDOC é ativado no sistema SAP, o PI se encarrega de converter as mensagens em formato XML para seu processamento interno
11. Monitoramento de mensagens: As mensagens podem ser monitoradas e rastreadas usando "Run Time Workbench". Esta ferramenta pode ser útil no monitoramento de adaptadores de remetente e receptor, mensagens de saída e entrada, monitoramento de ponta a ponta de cenário completo e rastreamentos de erros.

### Conectividade: Proxy Framework e Adapter Framework

### Estrutura do adaptador:

  O SAP PI se conecta com qualquer sistema externo (SAP ou não SAP) usando o Adapter Framework. A estrutura do adaptador é baseada no AS Java Runtime Environment e na versão Connector Architecture (JCA). A estrutura do adaptador consiste em duas cadeias de módulo padrão, se o processamento de mensagens for executado inteiramente dentro do adaptador, a cadeia de módulo padrão para o adaptador pode ser usada.
	
1. Um para a direção do remetente
2. Um para a direção do receptor	

Existem quatro tipos de adaptadores usados ​​no SAP PI

* Adaptadores de arquivo: ele troca arquivos com sistemas externos
* Adaptadores JMS: ele se comunica com um sistema de mensagens
* Adaptadores SOAP: comunica-se com fornecedores e clientes de serviços web
* Adaptadores JDBC: é um pacote estendido para SAP PI

Outras interfaces suportadas pela estrutura do adaptador são

1. Serviços de configuração (API e metadados do adaptador xsd)
2. Serviços de Administração
3. Várias APIs de serviço fornecidas pela estrutura do adaptador - Thread Manager, Transaction Manager)
4. A estrutura do adaptador inclui uma API de log de auditoria de mensagens. A API pode ser usada para rastreamento técnico e registro para escrever instruções de rastreamento que descrevem a execução do código.

### Como funciona a estrutura do adaptador?


![112814_0608_SAPPIProces4](https://user-images.githubusercontent.com/39013639/92546745-a9870300-f229-11ea-8bad-a53c06792e59.jpg)

1. Os dados são recebidos do fio por meio de um local de recebimento que está ouvindo mensagens em determinado protocolo em um endereço especificado.
2. Depois que a mensagem é recebida pelo local de recebimento, uma mensagem é enviada ao adaptador. Ele cria uma nova mensagem do BizTalk e anexa o fluxo de dados à mensagem.
3. Ele adiciona quaisquer metadados pertencentes ao end-point sobre o qual os dados foram recebidos e, em seguida, a mensagem é enviada ao mecanismo de mensagem
4. O mecanismo de mensagem envia a mensagem para o pipeline de recebimento onde os dados são transformados em XML, aqui o remetente da mensagem é autenticado, uma mensagem é descriptografada e o XML é validado
5. Em seguida, o mecanismo do sistema de mensagens publicou a mensagem na caixa de mensagens. A caixa de mensagem é uma tabela Microsoft SQL contendo mensagens a serem processadas
6. O mecanismo do sistema de mensagens envia a mensagem para a orquestração ou porta de envio.

### Segurança SAP PI

Para mensagens, o SAP PI fornece segurança de nível de mensagem para o protocolo de mensagem XI, para o adaptador SOAP, para o protocolo RosettaNet, para o adaptador de correio, para o protocolo CIDX e para conectividade com sistemas habilitados para WSRM (Web Service Reliable Messaging). No nível de mensagem SAP PI, a segurança ativada por meio do uso de criptografia, assinatura digital, SAML Assertion, Username token, Certificate token, etc. Os métodos de autenticação suportados pela infraestrutura WS para nível de transporte incluem autenticação básica (senha e nome de usuário), SAP assertion ticket e HTTP sobre SSL.

## Conectando o servidor de integração com o sistema habilitado para WSRM (Web Service Reliable Messaging)

Para se conectar ao sistema ativado para WSRM, você usa um canal de comunicação do tipo de adaptador WS.

  * Você usa um contrato de remetente com um adaptador de remetente WS designado para conectar o Integration Server a um consumidor WS
  * Use um contrato de receptor com um adaptador receptor WS designado para conectar o servidor de integração a um provedor WS

### Benefícios da segurança no SAP PI
  
  * As permissões do aplicativo receptor são verificadas em relação ao usuário original
  * No sistema receptor, um usuário pode ser auditado
  * Configuração dinâmica no canal do receptor PI

### Novos recursos no SAP PI / PO

   Os novos recursos do SAP PI incluem:
   
  * Monitoramento centralizado com base no gerenciador de soluções SAP.
  * Arquivo muito grande (binário) para transferência de arquivo
  * IDOC (Documento Intermediário) e adaptadores HTTP em AAE (Advance Adapter Engine)
  * Perspectiva centrada no usuário no ESR
  * Interface e mapeamento com base na divisão de mensagens em AAE
  * Configuração de tempo limite por canal de comunicação
  * Transporte automatizado para validação de esquema
  * Substituindo Trex, pesquisa de mensagem definida pelo usuário
  * Perspectivas centradas no usuário no ESR
  * Add-on para SAP PI: add-on Secure Connectivity (SGTP Adapter, módulo PGP) e add-ons B2B (adaptador OFTP, adaptador AS2, separador EDI, conversor EDI XML etc.)

### Vantagens do SAP PI / PO

  * Em comparação com qualquer outro produto de middleware, o monitoramento do SAP PI é melhor. Ele oferece recursos de monitoramento como mensagem, desempenho, monitoramento de componente e assim por diante, todos os quais podem ser usados ​​para rastrear e retificar os erros.
  * SAP PI oferece suporte a vários componentes SAP que são necessários durante a integração com SAP PI
  * Adaptadores e mapeamentos são bons em comparação com qualquer outro produto de middleware
  * A comunicação assíncrona e síncrona é possível

### SAP PI vs. BizTalk

## SAP PI										## BizTalk

* Geralmente usado apenas por clientes SAP      * O BizTalk é totalmente construído em .Net, 
  para permitir integração baseada em SOAP.       certificado pela Microsoft e SAP para 
												  integração direta com SAP, sem a 
												  necessidade de qualquer middleware. 

* Produto ESB projetado e implementado          * Produto mais generalizado, capacidade de
  para integrar sistemas SAP com sistemas         integrar uma variedade de sistemas,
  não SAP.										  incluindo SAP e outros produtos.
					                               
* SAP PI tem sistema de monitoramento           * Não disponível.
  de mensagem pré-entregue.												    

* SAP PI pode fazer várias transferências       * Não disponível.
  de dados.

* No SAP PI, a automação pode ser               * Não disponível.
  manual ou programada.

* SAP usa solução de portal net weaver.         * BizTalk usa MS SharePoint como uma 
												  solução de portal.
												  
* O paradigma da arquitetura SOA para           * SOA é baseado em .NET e BizTalk.
  SAP é eSOA (Enterprise Service 
  Oriented Architecture).											

* O preço do SAP PI Base Engine é               * O preço do servidor MS BizTalk é baseado 
  calculado com base no volume geral              na capacidade do servidor. Possui quatro 
  de mensagens processadas expresso               versões diferentes: Enterprise, Standard, 
  em Gigabytes / mês. SAP PI é gratuito			  Branch e Developer.
  para uso entre SAP para SAP.

### Transações ABAP PI  
   
🎯 Transações relacionadas a serviços da Web:
   
  * SUDDIREG: Mantendo Registro UDDI.
  * SOAMANAGER: Iniciar SOA Manager.
  * WSADMIN: Tarefas de administração para serviços da Web.
  * WSCONFIG: Configuração de serviços da Web no Web Service Framework.
  * WSPUBLISH: Publicar Web Services.
  
🎯 Transações para administração:

  * AL11: Exibição de Diretórios SAP para verificar o parâmetro de perfil DIR_TRANS.
  * AL08: Tela de lista de usuários conectados.
  * SXMB_IFR: Iniciar Enterprise Service Integration Builder.
  * SXMB_ADM: Integration Engine Administration.
  * SXI_SUPPORT: Testar todos os Repositórios e Objetos de Diretório.
  * SMQR: qRFC monitoramento para exibir o status do QIN Scheduler e Registro.
  * SMQ1: qRFC monitorando a fila de saída.
  * SMQ2: qRFC monitorando a fila de entrada.
  * SLDAPICUST: Customizando API para System Landscape Directory.
  * SU01: Manutenção do endereço do usuário.
  * SICF: Configuração do servidor HTTP.
  * SM21:Logs de erros do sistema.
  * ST22: Erros de tempo de execução ABAP.
  * SLDCHECK: Verifique a conexão com o System Landscape Directory (SLD).
  * SM58: Logs de erro tRFC.
  * SMICM: Monitor de ICM.
  * STRUST: Gerenciador de confiança.
  * RZ20: Monitoramento de CCMS.
  * RZ70: Administração de SLD.
  
🎯 Transações PI para monitoramento:
 
  * SMGW: Gateway Monitor.
  * SXMB_MONI: Monitoramento Integration Engine.
  * SXI_MONITOR: Monitorar para mensagens XML processadas.
  * SXI_CACHE: PI Runtime Cache.

🎯 Códigos T de Gerenciamento de Processos de Negócios(BPM):
 
  * SWF_XI_ADM_BPE: Iniciar e parar o BPE.
  * SXMB_MONI_BPE: ferramenta de monitoramento para Business Process Engine (BPE).
  * SWF_XI_PBUILDER: BPM Process Builder detalhado.
  * SWF_XI_CUSTOMIZING: Verificar o pré-requisito do processo de integração.
  * SWF_XI_ADM_BPE_DISP: Exibir o status do BPE.
  * SWELS: de ativação / desativação.

🎯 Transação importantes do SAP PI/XI (Integração do processo):
 
  * GRMG	          Solicitação genérica e gerador de mensagens
  * RZ10	          Editar perfil do sistema
  * WE02	          Exibindo Idoc
  * SM59	          Destinos RFC (exibir / manter)
  * SXMB_MONI	      Motor de integração de monitoramento  
  * S_B6A_52000011	  CCMS para monitoramento de integração Xi
  * XSLT	          Testador XSLT
  * SM58	          Registro de erro RFC assíncrono
  * SMQ1		      qRFC Monitor (fila de saída)
  * SMQ2		      qRFC Monitor (fila de entrada)
  * SPROXY	          Navegador de repositório empresarial
  * SXMB_ADM	      Banco de trabalho de tempo de execução / mecanismo de integração - administração
  * SLDCHECK		  Teste a conexão SLD
  * SLDAPICUST	      Personalização de SLD Api
  * SXMB_MONI_BPE	  Monitoramento de BPE / BPM
  * SXI_MONITOR	      Monitorando Mensagem Processada XI / PI
  * SPRO		      Customização de Projeto
  * SPROXY	          Geração de proxy para ABAP
  * SE11	          Manutenção de dicionário de dados ABAP
  * SE37		      Mantendo Módulos de Função ABAP
  * SE38	          Editor ABAP
  * SE16		      Navegador de Dados
  * SU01	          Manutenção do usuário
  * SE80		      Object Navigator
  * SICF	          Configuração de serviço HTTP e manutenção de hierarquia
  * SP12	          Administração TemSe
  * SAINT	          Ferramenta de instalação add-on
  * SXI_CACHE	      XI Runtime Cache
  * SE71	          Formulário SapScript
  * SXI_MAPPING_TEST  Mapeamento de Teste
  * IDX1	          Manutenção da porta do adaptador IDoc
  * IDX2	          Visão geral / Exibir metadados no adaptador IDoc 
  * SMICM		      Monitor ICM
  * SWW_ARCHIV	      BPE: Exibindo os processos de Arquivos
  * SWDC	          Definição de Fluxo de Trabalho: Administração
  * BRFPLUS	          BRFplus Workbench
  * SXMB_IFR	      Inicia o construtor de integração
  * RZ70	          Fornecedor de dados SLD
  * IDX5	          Adaptador de monitoramento SAP / IDoc 
  * ALRTCATDEF	      Editando Configuração / Categorias de Alerta
  * STRUST	          Gerente de confiança
  * SMGW	          Monitor de gateway
  * PB10	          Entrada inicial de dados mestre do candidato
  * MERE	          Fluxo de trabalho: Sett. Cust. Desconto Arrs.
  * OPTU		      Manter Configurações de campo do PS Info System
  * LPCONFIG	      Manter portas lógicas
  * CO60	          Encontrar Folha PI
  * WE05	          Lista de Idoc
  * WE07	          Estatísticas Idoc
  * WE19              Ferramenta de teste para Idoc

 
### Habilitar ABAP Proxy SAP ERP

 Procedimentos para serem realizados no SAP ECC:
 
  * Acessar a transação SM59, criar conexões do tipo T, LCRSAPRFC e SAPSLDAPI, apontando para o PI.

![Screenshot_27](https://user-images.githubusercontent.com/39013639/92553995-b6f8b900-f23a-11ea-898b-735747f32433.jpg)

![Screenshot_20](https://user-images.githubusercontent.com/39013639/92554139-050dbc80-f23b-11ea-83b9-08498348187e.jpg)
  
  * SLDAPICUST: configurar o ECC, para conexão com o SLD do PI. Necessário utilizar usuário SLD_CL_PID ou PISUPER.
  
![Screenshot_17](https://user-images.githubusercontent.com/39013639/92554192-1fe03100-f23b-11ea-9d02-a7c650db74c6.jpg)

  * SXMB_ADM: configurar "Integration Engine", como LOC e inserir a IS_URL do PI.
  
![Screenshot_21](https://user-images.githubusercontent.com/39013639/92554256-469e6780-f23b-11ea-95f3-f408f775f399.jpg)
  
  * SICF: Ativar serviço "xi->engine".
  
![Screenshot_22](https://user-images.githubusercontent.com/39013639/92554318-6e8dcb00-f23b-11ea-81dc-05a595b2e95e.jpg)

  * SXMB_ADM: registrar e ativar filas.
  
![Screenshot_23](https://user-images.githubusercontent.com/39013639/92554358-8cf3c680-f23b-11ea-866a-1303eee95279.jpg)
  
  * SLDCHECK: testar conexão SLD.
  
![Screenshot_24](https://user-images.githubusercontent.com/39013639/92554401-a7c63b00-f23b-11ea-9610-5895f501f4a8.jpg)

  * ABAPPROXY: testar conexão Integration Builder.
  
![Screenshot_25](https://user-images.githubusercontent.com/39013639/92554447-c0ceec00-f23b-11ea-8bd8-f4ea4d057e94.jpg)


 PS.: Caso o passo anterior não funcionar no ECC, pode ser necessário criar conexão tipo G específica para o ESR.



## 🏆 Contribuição

1. Faça o _fork_ do projeto (<https://github.com/VictorXisto/abap-proxy-sap-pi/fork>)
2. Crie uma _branch_ para sua modificação (`git checkout -b feature/fooBar`)
3. Faça o _commit_ (`git commit -am 'Add some fooBar'`)
4. _Push_ (`git push origin feature/fooBar`)
5. Crie um novo _Pull Request_


[![GitHub issues](https://img.shields.io/github/issues/VictorXisto/abap-proxy-sap-pi?label=ABAP)](https://github.com/VictorXisto/abap-proxy-sap-pi/issues)
[![GitHub forks](https://img.shields.io/github/forks/VictorXisto/abap-proxy-sap-pi)](https://github.com/VictorXisto/abap-proxy-sap-pi/network)
[![GitHub stars](https://img.shields.io/github/stars/VictorXisto/abap-proxy-sap-pi)](https://github.com/VictorXisto/abap-proxy-sap-pi/stargazers)
[![GitHub license](https://img.shields.io/github/license/VictorXisto/abap-proxy-sap-pi)](https://github.com/VictorXisto/abap-proxy-sap-pi/blob/master/LICENSE)



## 🎓 Autor
---


<a href="https://ibb.co/61NVrc8">
 <img style="border-radius: 50%;" src="https://avatars3.githubusercontent.com/u/380327?s=460&u=61b426b901b8fe02e12019b1fdb67bf0072d4f00&v=4" width="100px;" alt=""/>
 <br />
 <sub><b>Victor Xisto</b></sub></a> <a href="https://ibb.co/61NVrc8//" title="Xisto">🚀</a>


Feito por Victor Xisto 👋🏽 Entre em contato!


[![Twitter Badge](https://img.shields.io/badge/-@VictorXisto_-1ca0f1?style=flat-square&labelColor=1ca0f1&logo=twitter&logoColor=white&link=https://twitter.com/VictorXisto_)](https://twitter.com/VictorXisto_) [![Linkedin Badge](https://img.shields.io/badge/-Xisto-blue?style=flat-square&logo=Linkedin&logoColor=white&link=https://www.linkedin.com/in/victorxisto/)](https://www.linkedin.com/in/victorxisto/) 
[![Gmail Badge](https://img.shields.io/badge/-victorxisto92@gmail.com-c14438?style=flat-square&logo=Gmail&logoColor=white&link=mailto:victorxisto92@gmail.com)](mailto:victorxisto92@gmail.com)