# 📝 Documentação SAP ABAP PI

<div align="center">
![SAP_PI_](https://user-images.githubusercontent.com/39013639/92533870-c4e21600-f209-11ea-9943-aaf625c6c85f.png) 
</div>
 
[![GitHub issues](https://img.shields.io/github/issues/VictorXisto/abap-proxy-sap-pi?label=ABAP)](https://github.com/VictorXisto/abap-proxy-sap-pi/issues)
[![GitHub forks](https://img.shields.io/github/forks/VictorXisto/abap-proxy-sap-pi)](https://github.com/VictorXisto/abap-proxy-sap-pi/network)
[![GitHub stars](https://img.shields.io/github/stars/VictorXisto/abap-proxy-sap-pi)](https://github.com/VictorXisto/abap-proxy-sap-pi/stargazers)
[![GitHub license](https://img.shields.io/github/license/VictorXisto/abap-proxy-sap-pi)](https://github.com/VictorXisto/abap-proxy-sap-pi/blob/master/LICENSE)


# 🔎 Tópicos 
	
<!--ts-->
	* [O que é SAP PI/PO?] (#o-que-é-sap-pi-/-po-?)
	* [Funcionalidades do SAP PI/PO] (#funcionalidades-do-sap-pi-/-po)
	* [SAP PI conecta diferentes plataformas como] (#sap-pi-conecta-diferentes-plataformas-como)
	* [Principais funções do SAP PI] (#principais-funções-do-sap-pi)
	* [Como funciona SAP PI] (#como-funciona-sap-pi)
	* [Evolução das versões SAP XI, PI e PO] (#evolução-das-versões-sap-xi-,-pi-e-po)
	* [Exchange Infrastructure (XI)] (#exchange-infrastructure-(XI))
	* [Process Integration (PI)] (#process-integration-(PI))
	* [Process Orchestration (PO)]
	* [Cloud Platform (CPI) e HANA Cloud Platform Integration (HCI)]
	* [Vantagens do SAP PI/PO sobre outros middleware não SAP]
	* [Conjunto abrangente de opções de conectividade (adaptadores)]
	* [Simplicidade de construção de interfaces]
	* [Capacidades de monitoramento de interface central]
	* [Arquitetura SAP PI]
	* [A Arquitetura Process Orchestration SAP PO]
	* [O que é SAP Process Orchestration (PO)?]
	* [SAP PI pode ser dividido em]
	* [Arquitetura de versões de pilha única única PI ou PO]
	* [System Landscape Directory (SLD)]
	* [Conteúdo do Enterprise Service Repository (ESR)]
	* [ES Builder]
	* [Configuration Content]
	* [Integration Builder]
	* [Integration Experts]
	* [Adapter Engine]
	* [Eclipse PI Tools]
	* [Central Message Monitor]
	* [Administrador NetWeaver (NWA)]
	* [Conectividade: Proxy Framework e Adapter Framework]
	* [Estrutura do adaptador]
	* [Como funciona a estrutura do adaptador?]
	* [Como desenvolver interfaces em SAP PI (PO)]
	* [Etapa 1 - System Landscape Directory (SLD)]
	* [Etapa 2 - Enterprise Service Repository (ESR)]
	* [Etapa 3 - Diretório de integração (ID)]
	* [Ambientes de desenvolvimento integrado (IDE) do SAP PI / PO]
	* [Clientes Java Swing]
	* [Programa de mapeamento gráfico de mensagens no ESB]
	* [Construtor de integração]
	* [Eclipse NetWeaver Developer Studio (NWDS)]
	* [SAP NetWeaver Developer Studio]
	* [Navegador de serviços corporativos de NWDS]
	* [Programa de mapeamento de mensagens em NWDS]
	* [iFlow no PI Explorer do NWDS]
	* [Como criar programas de mapeamento de mensagens no SAP PI / PO]
	* [Mapeamento Gráfico]
	* [Mapeamento Java]
	* [Mapeamento XSLT]
	* [Etapas de processamento de mensagens no SAP PI/PO]
	* [Visão geral do pipeline de processamento de mensagens de AAX]
	* [Remoção de pilha ABAP]
	* [Cloud Integration Runtime incluído no SAP PO local]
	* [Complemento de B2B para integração de EDI de B2B em vez de adaptador Seeburger
	* [Guia completo de configuração de proxy para SAP PI/PO e ECC]
	* [Versões SAP usadas]
	* [Pré-requisitos para configurar a conectividade do proxy]
	* [Pré-requisito 1: Sistema SAP registrado no System Landscape Directory (SLD)]
	* [Pré-requisito 2: os destinos SLD RFC são criados]
	* [Pré-requisito 3: A configuração SICF é concluída pela equipe do BASIS]
	* [Exemplo de configuração de proxy]
	* [Etapas para configurar a comunicação de proxy entre o back-end SAP ECC e PI/PO]
	* [Passo 1 - Criar destino para Advanced Adapter Engine (AAE) no SM59]
	* [Parâmetros usados ​​para destino HTTP AAE]
	* [Passo 2 - Criar destino HTTP para o Enterprise Resource Repository (ESR)]
	* [Parâmetros usados ​​para conexão HTTP ao ESR]
	* [Passo 3 - Configurar destino HTTP RFC para System Landscape Directory (SLD)]
	* [Passo 4 - Configurar o Integration Engine usando a transação SXMB_ADM]
	* [Passo 5 - Configurar dados de acesso SLD via SLDAPICUST]
	* [Passo 6 - Criar destino HTTP no administrador do Net-weaver (NWA)]
	* [Passo 7 - Criar Canal de Comunicação SOAP (HTTP) Remetente e Receptor]
	* [Como testar a conectividade do proxy]
	* [Verifique se os destinos RFC e HTTP estão funcionando bem]
	* [Teste o status SLD com a transação SLDCHECK]
	* [Teste a conexão ESR com SPROX_CHECK_IFR_RESPONSE]
	* [Verifique os objetos proxy por meio da transação SPROXY]
	* [Teste os canais de comunicação por meio do Runtime Monitor]
	* [Transações ABAP PI]  
<!--te-->	

### O que é SAP PI/PO?

	SAP Process Integration (PI) e as versões mais recentes conhecidas como SAP Process Orchestration (PO) são o middleware de integração de aplicativos fornecido pela SAP. SAP PI (PO) é o componente (middleware) do grupo de produtos SAP Netweaver que facilita a integração do sistema entre SAP e outros sistemas externos.

	A primeira versão do aplicativo de integração SAP foi chamada de XI (Exchange Infrastructure). A próxima grande mudança no sistema foi a introdução do SAP Process Integration (PI), e a versão mais recente é Process Orchestration (PO).
	
### Funcionalidades do SAP PI/PO

	Como agente de integração da pilha SAP NetWeaver, o SAP PI (PO) tem recursos para integrar SAP com outros sistemas e aplicativos legados.

	O sistema permite que você integre SAP com outros sistemas SAP ou não SAP, bem como construa e execute interfaces A2A e B2B em técnicas de comunicação síncronas e assíncronas.

	Mais importante ainda, ele fornece um local central para uma organização construir , integrar e monitorar interfaces entre sistemas heterogêneos na paisagem. Além disso, o PI facilita a exposição de serviços ao mundo externo de acordo com a Arquitetura Orientada a Serviços ( SOA ).


### SAP PI conecta diferentes plataformas como:

	* Sistemas SAP e não SAP.
	* Cenários B2B e A2A.
	* Comunicações Assíncronas e Síncronas.
	* Gerenciamento de processos de negócios de vários componentes.
	
### Principais funções do SAP PI

	* Conectando sistemas usando protocolos de comunicação como sFTP, AS2, SOAP, HTTP, etc.
	* Roteie mensagens entre sistemas. O PI / PO pode rotear mensagens de um sistema emissor para um ou mais sistemas receptores com base em regras de processo de negócios ou regras técnicas de roteamento.
	* Transforme ou mapeie os formatos de mensagem entre o remetente e os sistemas de destino.
	* Fornece um ambiente de tempo de execução para troca de mensagens entre sistemas e recursos de monitoramento de interface.
	* Execute fluxos de trabalho de integração com uma série de etapas, como integração do processo de pedido de compra com ações de aprovação.
	
### Como funciona SAP PI

   SAP PI executa três funções básicas, são elas:

    * Ligação: SAP PI tem uma capacidade de integração com todos os aplicativos, independentemente de se tratar de um aplicativo de um 3 rd partido ou do SAP. Ele usa a estrutura do adaptador para integrar 3 rd soluções do partido.
    * Coordenar: pode definir um caminho / fluxo de trabalho para cada transação de negócios integrada. Ele garante que cada mensagem seja entregue corretamente da origem ao destino de destino
    * Comunicar: pode traduzir arquivos em qualquer formato, seja um formato de arquivo interno ou qualquer padrão de integração business to business.

### Evolução das versões SAP XI, PI e PO:

![version-history-of-sap-xi-pi-po-hci-cpi-1024x186](https://user-images.githubusercontent.com/39013639/92820698-a2363580-f3a0-11ea-8f60-fe9f3c7ca4bb.png)


### Exchange Infrastructure (XI)
	
	A plataforma de integração SAP foi introduzida pela primeira vez aos clientes em 2003. O produto era chamado SAP XI (Exchange Infrastructure). SAP XI era um sistema de pilha dupla com pilha Java e pilha SAP ABAP. Em outras palavras, alguns componentes dos sistemas foram instalados na pilha ABAP enquanto outros componentes foram incluídos na pilha Java. Por exemplo, o Integration Engine e o Business Process Engine (BPM) foram baseados na pilha AS ABAP, enquanto o Adapter Engine residia na pilha AS Java.

### Process Integration (PI)

	PI evoluiu de sua primeira versão do SAP PI 7.0 para PI 7.30. Semelhante ao SAP XI, as primeiras versões do PI consistiam em pilhas duplas ABAP e Java. A primeira plataforma de integração de pilha única com Java PI 7.30 foi introduzida em 2010.
	
### Process Orchestration (PO)

	SAP Process Orchestration (PO) foi introduzido pela SAP no ano de 2012. Em poucas palavras, SAP PO foi uma combinação de SAP PI single stack com Business Process Management (NW BPM) e Business Rule Management (BRM).

	
### Cloud Platform (CPI) e HANA Cloud Platform Integration (HCI)
	
	A mais recente adição à plataforma de integração SAP é a SAP Cloud Platform (CPI), formalmente conhecida como SAP HANA Cloud Platform Integration Service (HCI).

	Lembre-se de que o SAP CPI não substitui o SAP PI / PO. É um produto de integração completamente novo que permite a uma organização integrar aplicativos SAP em nuvem com seus sistemas locais . As versões mais recentes do SAP PO são integradas ao CPI para que você possa harmonizar as integrações no local e na nuvem.


### Vantagens do SAP PI/PO sobre outros middleware não SAP

	Uma das principais vantagens do SAP PI é a implementação perfeita de interfaces usando tecnologias de integração SAP, como a estrutura de Documento Intermediário ( ALE / iDoc ), Interface de Programação de Aplicativos de Negócios ( BAPI ), Chamadas de Função Remota ( RFC ) e estrutura de Proxy ABAP .


### Conjunto abrangente de opções de conectividade (adaptadores)

	SAP PI fornece um conjunto abrangente de adaptadores para integrar sistemas heterogêneos em sua paisagem, por exemplo, RFC , Hypertext Transfer Protocol ( HTTP ), Java Database Connectivity ( JDBC ), File / FTP , Mail , iDoc , Java Message Service ( JMS ), Simple Object Access Protocol ( SOAP ), RosettaNet Implementation Framework ( RNIF ) são alguns dos adaptadores fornecidos pela SAP com o pacote padrão.

	Além disso, a declaração de aplicabilidade 2 ( AS2 ), protocolo de transferência de arquivo seguro ( SFTP ), protocolo de dados abertos ( OData ), transferência de estado representacional ( REST ), protocolo de transferência de arquivos Odette ( OFTP ), separador de EDI e adaptadores X400 podem ser instalados como adicionar -em componentes.


### Simplicidade de construção de interfaces

	Os desenvolvedores de interface podem construir prontamente cenários de integração ponta a ponta usando Ambientes de Desenvolvimento Integrado (IDE) como o NetWeaver Development Studio (NWDS) baseado em Eclipse ou IDE baseado em Jawa-Swing fornecido pela SAP.

	Integrações ponta a ponta ou Fluxos de integração (iFlow) podem ser construídos com uma interface gráfica amigável do Eclipse NWDS. Além disso, o iFlows emprega a notação NW BPM padrão que torna o esforço de desenvolvimento mais eficaz e a interface de desenvolvimento ainda mais amigável.

	Essa capacidade de construir interfaces com IDE gráfico amigável e sem codificação (ou codificação mínima) é um dos principais benefícios do PI / PO em comparação com outras ferramentas.


### Capacidades de monitoramento de interface central

	Ser capaz de monitorar todas as interfaces centralmente é uma das principais vantagens do SAP PI. O Message Monitor do SAP PI permite monitorar cada etapa do pipeline de tempo de execução da interface.

	O estado da mensagem (desde o momento em que foi transferida do sistema emissor até o recebimento pelo sistema de destino) pode ser monitorado facilmente. O monitor de mensagem pode ser configurado para registrar informações / aviso / erro das etapas de tempo de execução da interface no adaptador do remetente, determinação de roteamento, validação XML, transformação da mensagem, adaptador do receptor, etc.

	Além disso, o Component-Based Message Alert Framework (CBMA) do PI pode ser usado para enviar alertas automáticos ou e-mails aos administradores do sistema quando forem detectados problemas de interface.

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


### A Arquitetura Process Orchestration SAP PO

	As arquiteturas de SAP XI, PI, PO, HCI / CPI são muito diferentes. Isso se deve à constante evolução do software de uma solução de pilha dupla ABAP e Java para um produto de pilha única apenas Java para um produto habilitado para nuvem.

### O que é SAP Process Orchestration (PO)?

	SAP PO é uma combinação de vários produtos agrupados.

	No qual inclui:

	* Gestão de Processos de Negócios (BPM);
    * Gerenciamento de regras de negócios (BRM);
	* Enterprise Service Repository (ESR);
	* Integração de Processo (PI);
	* Colaboração B2B;
	* Integração na nuvem;
	
	
	![overview-sap-po-products-pi-brm-bpm-b2b-esr-cpi](https://user-images.githubusercontent.com/39013639/92827152-e842c780-f3a7-11ea-9ed9-cf4f937432bc.png)
	
	Componentes do SAP Process Orchestration (PO)

### SAP PI pode ser dividido em:

	* Enterprise Service Repository (ESR)
	* Diretório de integração (ID)
    * System Landscape Directory (SLD)
	* Advance Adapter Engine (AAE)
	
	A funcionalidade de ESR, ID e AAE são agrupadas como Advance Adapter Engine (AAX) nas versões SAP PI / PO de pilha única.


### Arquitetura de versões de pilha única única PI ou PO


![se_945452](https://user-images.githubusercontent.com/39013639/92827431-3952bb80-f3a8-11ea-891f-89de6ca75f2c.png)

	A arquitetura das versões Single Stack SAP PI


### System Landscape Directory (SLD)

	SLD é o componente central usado para registrar e manter informações sobre os sistemas na paisagem. Metadados de sistemas na paisagem e seus componentes de software são armazenados em SLD.

### Conteúdo do Enterprise Service Repository (ESR)

	ESR é o repositório central que contém tipos de dados, tipos de mensagens, interfaces de serviço, programas de mapeamento de mensagens e outras definições de objetos de interfaces.

### ES Builder

	ES Builder é uma ferramenta usada para definir objetos em ESR.

### Configuration Content

	O Conteúdo da Configuração é o repositório central que contém os objetos definidos no momento da configuração do desenvolvimento da interface. Os objetos em tempo de configuração definem os parâmetros técnicos das interfaces, como a configuração do adaptador.

### Integration Builder

	O Integration Builder é um conjunto de ferramentas que permite aos especialistas em integração configurar integrações ponta a ponta usando objetos criados em ESR e SLD.

### Integration Experts

	O Integration Experts são desenvolvedores e consultores SAP PI que criam e implantam interfaces.
	
### Adapter Engine

	O Adapter Engine contém um conjunto de adaptadores, como SOAP, HTTP, FTP, etc., que permitem que o SAP PI se conecte a sistemas heterogêneos.
	
### Eclipse PI Tools

	Também conhecido como NetWeaver Developer Studio (NWDS), as ferramentas Eclipse PI permitem que os desenvolvedores de integração acessem e criem objetos ESR e ID.
	
### Central Message Monitor

	O Central Message Monitor fornece um conjunto de ferramentas para os usuários verificarem o tempo de execução das interfaces no SAP PI. O monitor permite que os administradores do sistema inspecionem todas as etapas de processamento de mensagens de uma interface. Os usuários podem monitorar os logs relacionados à comunicação do mecanismo do adaptador, conteúdo de mensagens de entrada / saída, logs de mapeamento de mensagens, logs de divisão de mensagens, execução de regras de roteamento, status de conversões de conteúdo , etc. usando o monitor de mensagem central.
	
	Este é realmente o único componente central que pode ser usado para monitorar todas as interfaces construídas no PI.
	
###	Administrador NetWeaver (NWA)

	NWA é o portal do administrador do SAP PI. Autorização de usuário, certificados, chaves, parâmetros relacionados ao desempenho, portas, destinos, etc. são definidos pelos administradores do sistema SAP PI (consultores BASIS) e configurados no NWA.
	
	
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

### Como desenvolver interfaces em SAP PI (PO)

	Um cenário de integração A2A simples, como desenvolvedor de interface, você precisará configurar 3 componentes para construir a interface completa:

	1 - System Landscape Directory (SLD)
	2 - Enterprise Service Repository (ESR)
	3 - Diretório de integração (ID)
	
	Todos os três componentes podem ser acessados ​​na página inicial do SAP PI usando o URL
	
	http: // <host>: <port> / dir
	
	
	![how-to-access-sap-pi-home-sld-esr-id](https://user-images.githubusercontent.com/39013639/92829435-98193480-f3aa-11ea-91ff-c52e92f52a41.png)
	
	
### Etapa 1 - System Landscape Directory (SLD)

	Os sistemas no cenário de integração são registrados no SLD como uma combinação de produtos , versões de componentes de software ( SWCV ), sistemas técnicos e sistemas de negócios .

	Diferentes tipos de sistemas são registrados usando métodos específicos em SLD. Por exemplo, registrar um sistema back-end SAP é diferente de como você representa um sistema terceirizado ou independente. Porém, há assistentes fáceis de usar para guiá-lo durante o processo de registro do sistema.

	Por exemplo, o assistente de criação da Versão do Componente de Software (SWCV) em SLD se parece com esse:
	
	
	![software-component-version-swcv-registration-wizard-sld-sap-pi-po](https://user-images.githubusercontent.com/39013639/92829659-d4e52b80-f3aa-11ea-98f5-3bdde90cefc8.png)
	
	Assistente de geração de SWCV em SLD


### Etapa 2 - Enterprise Service Repository (ESR)

	ESR é onde você desenvolve / projeta objetos, como tipos de dados e tipos de mensagens do remetente / mensagens de destino. Além disso, as interfaces de serviço do emissor (de saída) e de destino (de entrada) são definidas no ESR. Por último, mas não menos importante, programas de Mapeamento de Mensagens entre a mensagem do remetente e a mensagem de destino também são criados no ESR.
	
### Etapa 3 - Diretório de integração (ID)

	ID é onde você configura o cenário de integração de ponta a ponta usando os objetos criados em ESR e SLD.
	
	Os adaptadores de comunicação, também conhecidos como Canal de Comunicação do sistema emissor e sistema de destino, são configurados no ID. Por exemplo, se o sistema emissor for um servidor sFTP, o nome do host (IP) do servidor sFTP, o diretório, o formato do nome do arquivo, os métodos de autenticação, o método de arquivamento, etc. são configurados nesta etapa.

	O roteamento de mensagens entre o remetente e os sistemas de destino também é definido no tempo de configuração no ID.

	O tempo de configuração em ID responde a todas essas questões do cenário de integração ponta a ponta,

	* Qual é o sistema emissor da mensagem?
	* Existem vários receptores de mensagens?
	* O sistema receptor da mensagem deve ser derivado dinamicamente do conteúdo da mensagem?
	* Qual é o programa de mapeamento para transformar a mensagem do remetente no formato de mensagem de destino?
	* Como os adaptadores devem ser definidos?
	
### Ambientes de desenvolvimento integrado (IDE) do SAP PI / PO
	
	Existem dois IDEs que podem ser usados ​​para o desenvolvimento e configuração da interface SAP PI:

	1 - Clientes Java Swing;
	2 - NetWeaver Development Studio (NWDS) baseado em Eclipse.
	
### Clientes Java Swing

	Os clientes baseados em Java Swing são certamente o IDE mais antigo do SAP PI. Foi lançado durante os dias SAP XI. Os desenvolvimentos ESR e ID podem ser concluídos usando Swing Clients.

	Os objetos ESR são construídos no Enterprise Service Builder (ESB) e as configurações de ID são feitas no Integration Builder (IB).

	O Java Runtime Environment (JRE) deve ser instalado na máquina cliente dos desenvolvedores para executar clientes Swing.
	
	Enterprise Service Builder

	![sap-pi-swing-based-ide-esr](https://user-images.githubusercontent.com/39013639/92830196-6b195180-f3ab-11ea-99f5-1bb96b468f6b.png)

	Cliente Swing para desenvolvimento de objeto ESR


### Programa de mapeamento gráfico de mensagens no ESB

	![message-mapping-swing-client-esr-sap-pi-po-1024x604](https://user-images.githubusercontent.com/39013639/92830358-9a2fc300-f3ab-11ea-849a-f7da6e2229f1.png)

	Programa de mapeamento gráfico de mensagens na ferramenta swing ESR


### Construtor de integração

	![sap-pi-wing-based-ide-id-create-ico-1024x521](https://user-images.githubusercontent.com/39013639/92830586-d4996000-f3ab-11ea-8940-d22da2ada0a5.png)

	Configuração integrada criada no cliente ID swing


### Eclipse NetWeaver Developer Studio (NWDS)

	O relativamente novo IDE NetWeaver Development Studio é uma ferramenta baseada em Eclipse que pode ser usada para desenvolver integrações de ponta a ponta. Semelhante aos clientes Swing, o NWDS é capaz de criar objetos ESR e configurações de ID.

	Java Developer Kit (JDK) e Java Runtime Environment (JRE) são necessários para usar o NWDS.

	As vantagens de usar NWDS são:

	* Um sistema mais amigável em comparação com ferramentas baseadas em swing.
	* Um IDE para todo o desenvolvimento baseado em SAP Java. Por exemplo, o NWDS tem recursos para criar aplicativos Web Dynpro e não apenas cenários de integração.
	* Possibilidade de aproveitar os recursos do Eclipse IDE para criar mapeamentos Java .
	* Um grande número de plug-ins para desenvolvimento disponíveis no Eclipse.
	* Capacidade de construir integrações ponta a ponta usando iFlows em notação NW BPM.
	
### SAP NetWeaver Developer Studio

	![sap-eclipse-netweaver-developer-studio-7 5-sp11](https://user-images.githubusercontent.com/39013639/92830880-2510bd80-f3ac-11ea-8a40-a87f8813fd9a.png)

	Tela de carregamento NWDS.


### Navegador de serviços corporativos de NWDS
	
	![eclipse-nwds-esr-perspective-sap-pi-po-1024x862](https://user-images.githubusercontent.com/39013639/92831063-5db09700-f3ac-11ea-9550-55ae65cd2112.png)

	Tela ESR de NWDS.
	

### Programa de mapeamento de mensagens em NWDS

	![eclipse-nwds-esr-perspective-message-mapping-sap-pi-po-1024x829](https://user-images.githubusercontent.com/39013639/92831298-9c465180-f3ac-11ea-8885-d8b2ae0fa320.png)

	Programa de mapeamento gráfico de mensagens na perspectiva NWDS ESR.

### iFlow no PI Explorer do NWDS

	![eclipse-nwds-id-perspective-iflow-sap-pi-po-1024x395](https://user-images.githubusercontent.com/39013639/92831533-e6c7ce00-f3ac-11ea-8bff-ffc23533dd6e.png)
	
	iFlow gerado em NWDS.
	
	A interface criada no iFlow acima carrega taxas de câmbio para o SAP a partir de um sistema de envio de arquivos XML sFTP .

### Como criar programas de mapeamento de mensagens no SAP PI / PO

	A transformação do formato da mensagem do remetente para o formato da mensagem de destino é uma das principais funcionalidades de um middleware.

	Usando clientes Swing ou NWDS, você pode criar programas de mapeamento de mensagens de interface.

	Existem três técnicas diferentes de mapeamento de mensagens no SAP PI:

	* Mapeamento Gráfico;
	* Mapeamento Java;
	* Mapeamento XSLT;
	
	Cada técnica tem suas próprias vantagens e desvantagens. Iremos mostrar cada um deles e examinar cada técnica de mapeamento em detalhes.
	
### Mapeamento Gráfico

	Esta é a técnica de mapeamento mais comumente usada. Com este método, programas de mapeamento podem ser construídos usando uma interface gráfica de usuário do ES builder ou NWDS.

	A principal vantagem dessa técnica de mapeamento para especialistas em integração é a capacidade de criar programas de mapeamento com uma opção de arrastar e soltar sem codificação. Além disso, os desenvolvedores podem reutilizar funções de mapeamento padrão fornecidas pela SAP.

	SAP forneceu funções padrão para String , Boolean , Aritmética , Data , Nó , Conversões e Transformações . Por exemplo, Substring e Concatenate são algumas das funções String. Lógicas, como If, Else, Or, estão disponíveis nas funções padrão booleanas. Em transformações de data, temos funções de conversão de formato de data.

	Por exemplo, se você deseja transformar o formato de data da mensagem do remetente de MM-DD-AAAA para o formato de data da mensagem do destinatário AAAA-MM-DD, isso pode ser feito usando a função DateTrans sem qualquer codificação. Essas funções podem ser aplicadas a mapeamentos de mensagens usando um recurso simples de arrastar e soltar.
	
	A manutenção e modificação de programas de mapeamento gráfico são mais fáceis do que com outras técnicas. Isso se deve ao fato de que os mapeamentos podem ser construídos usando funções gráficas sem qualquer codificação. Além disso, você pode injetar códigos usando funções definidas pelo usuário (UDF) para construir uma lógica complexa.
	
	
### Mapeamento Java

	O mapeamento Java usa as técnicas do analisador Document Object Model (DOM) ou Simple API for XML (SAX). Os mapeamentos Java podem ser usados ​​para construir lógica complexa que não pode ser tratada pela opção de mapeamento gráfico.
	
### Mapeamento XSLT

	Essa técnica é usada principalmente quando você precisa alterar os namespaces da mensagem ou classificar / filtrar / agrupar o conteúdo da mensagem. Os mapeamentos XSLT usam mais memória do que outras técnicas e não são fáceis de manter.
	
	
### Etapas de processamento de mensagens no SAP PI/PO
	
	Depois que suas interfaces são construídas e implantadas, o tempo de execução do PI cuida do processamento real da mensagem com base no design e na configuração definidos. As mensagens são processadas em uma sequência específica com base nos objetos criados em SLD, ESR e configuração em ID.

	Nas versões SAP PI/PO de pilha única, o processamento da mensagem é feito pelo Advance Adapter Extended (AAX) em tempo de execução na sequência abaixo.
	
	1 - Processamento de adaptador de remetente;
    2 - Validação de XML de entrada;
	3 - Determinação do receptor;
	4 - Determinação de interface;
	5 - Mapeamento de mensagem;
	6 - Validação de XML de saída;
	7 - Processamento do adaptador receptor.

	
### Visão geral do pipeline de processamento de mensagens de AAX

	![sap-pi-po-interface-message-processing-steps-pipeline-overview-394x1024](https://user-images.githubusercontent.com/39013639/92832417-01e70d80-f3ae-11ea-8390-bbbc584909a4.jpg)

	Etapas de processamento de mensagens de SAP PI/PO AAX.

	
### Remoção de pilha ABAP
	
	Mudar de versões SAP XI / PI de pilha dupla para versões de pilha única somente Java já é uma realidade. A partir de agora, as versões mais recentes do SAP PO não incluem a opção de instalação de pilha dupla.

	A partir do PO 7.31 em diante, a instalação de pilha dupla não está disponível. Portanto, é importante que as organizações com instalações de pilha dupla migrem para uma versão Java mais recente do SAP PO.
	
	
### Cloud Integration Runtime incluído no SAP PO local
	
	a SAP introduziu SAP HCI e CPI para cenários de integração baseados em nuvem. HCI e CPI podem ser usados ​​para projetar e implantar apenas cenários de integração baseados em nuvem. O SAP PO local não foi capaz de lidar com integrações de nuvem.

	Mas, com as mudanças recentes no SAP PO, podemos usar o SAP PO como uma solução híbrida para integrações no local e baseadas na nuvem.

	Você pode iniciar o conteúdo SAP CPI no SAP PO local.	
	
	![cloud-runtime-in-on-premise-sap-po-installation-home](https://user-images.githubusercontent.com/39013639/92832727-64400e00-f3ae-11ea-9b16-19eb7c9c2bc3.png)

	Integração em nuvem integrada com PO local
	
	Esta funcionalidade do SAP PO e da arquitetura híbrida ainda estão evoluindo. No futuro, seremos capazes de ter uma única solução integrada com mais recursos para implantar integrações no local e na nuvem.
	
	
### Complemento de B2B para integração de EDI de B2B em vez de adaptador Seeburger
	
	Com a introdução da funcionalidade B2B Integration Cockpit do Seeburger Adapter se tornou obsoleto. Você pode construir integrações EDI B2B de forma eficaz usando o add-on B2B.

	O complemento B2B é compatível com SAP PI ou PO versão 7.1 ou superior. O add-on pode ser instalado no SAP PO com algumas etapas fáceis.	
	
	![b2b-add-on-post-installation-control-key-association-768x350](https://user-images.githubusercontent.com/39013639/92832917-a1a49b80-f3ae-11ea-9c59-be130604edf7.png)

	Tipo de mensagem EDI configurada no SAP PI/PO B2B Cockpit.

	Você pode configurar o cockpit EDI para lidar com diferentes formatos de EDI, como Edifact, ANSI X.12, Tradacoms, VDA e EANCOM. O B2B Cockpit também possui recursos para construir módulos personalizados para converter formatos de arquivo de texto, como CSV ou texto simples, para XML .

	Além disso, os adaptadores B2B AS2, OFTP, EDI Separator e X400 estão incluídos no pacote.

	Concluindo, o B2B Integration Cockpit é a ferramenta do fururo, enquanto o adaptador Seeburger ele é deixado no passado.


### Guia completo de configuração de proxy para SAP PI/PO e ECC

	Definir e configurar a conectividade SAP Proxy é uma tarefa complexa com várias etapas a serem consideradas. Este artigo analisa as etapas de configuração do proxy em detalhes. Discutiremos os pré-requisitos para configurar a conectividade do Proxy e como testar e validar as configurações do Proxy.

	A configuração do proxy é feita em vários sistemas: Sistema SAP, Administrador do Net-weaver (NWA) e Integração / Orquestração de Processos.

	A conectividade entre SAP PI / PO e SAP back-end é estabelecida configurando a estrutura SAP ABAP Proxy com o adaptador PI/PO SOAP. Para configurar a comunicação entre SAP ABAP Proxy com adaptador AEX SOAP, usamos o protocolo de mensagem XI 3.0. Nesta ilustração, estaremos conectando uma versão SAP ERP 6.0 (Netweaver 7.5) com Process Orchestration PO 7.5.

### Versões SAP usadas

	* SAP S4 HANA Fashion 1709.
	* SAP PO 7.5.

### Pré-requisitos para configurar a conectividade do proxy.
	
	Antes de iniciar a configuração do proxy no sistema back-end ECC e PI / PO, você precisa se certificar de que esses pré-requisitos sejam atendidos. Primeiro, verifique se o sistema SAP ECC está registrado em SLD. Em seguida, certifique-se de que os destinos SLD RFC sejam mantidos corretamente no sistema back-end SAP. Por último, mas não menos importante, as configurações SICF devem ser concluídas.
	
	1 - Sistema SAP registrado no System Landscape Directory (SLD).
	
	2 - Os destinos SLD RFC são criados.
    
	3 - A configuração do SICF é concluída pela equipe do BASIS.
	
### Pré-requisito 1: Sistema SAP registrado no System Landscape Directory (SLD).

	Certifique-se de ter registrado o sistema ECC back-end SAP no System Landscape Directory (SLD) . O sistema de negócios do sistema SAP deve ser criado e importado para o diretório de integração. O nome do SAP Business System neste exemplo é SADCLNT900 .

### Pré-requisito 2: os destinos SLD RFC são criados.

	Ao registrar o sistema técnico SAP no System Landscape Directory (SLD), os destinos RFC para SLD são criados automaticamente. Os nomes de destinos RFC gerados automaticamente são SLD_NUC e SLD_UC . Certifique-se de que esses dois destinos RFC estejam disponíveis no sistema back-end SAP e funcionando.

	Ambos são conexões TCP / IP do tipo T. Se eles não estiverem funcionando, você precisa entrar em contato com sua equipe BASIS.

	![sld-rfc-destinations-sld_nuc-sld_uc-sm59-sap-pi-po](https://user-images.githubusercontent.com/39013639/92834437-6905c180-f3b0-11ea-8c0c-29a6d1502a85.png)
	
	Destinos SLD_UNC e SLD_UC TCP/IP RFC gerados automaticamente.
	
### Pré-requisito 3: A configuração SICF é concluída pela equipe do BASIS.
	
	Certifique-se de que os Serviços estejam registrados no SICF pela equipe BASIS.

### Exemplo de configuração de proxy.

	Os dados foram substituídos nas capturas de tela da seguinte forma:
	
	* PI / PO System ID é POD.
	* O ID do sistema backend SAP é SAD .
	* O cliente SAP que estamos conectando é 900 .
	* O URL do servidor POD é <host> . Você acessa a página inicial do Process Orchestration por meio de http: // <host>: <port> / dir.
	* O nome do SAP Business System em SLD é SADCLNT900 .

### Etapas para configurar a comunicação de proxy entre o back-end SAP ECC e PI/PO

	1 - Crie destino HTTP para Advanced Adapter Engine (AAE) no sistema SAP ABAP back-end. - HTTP_POD
	2 - Crie um destino HTTP para o Enterprise Resource Repository (ESR) no sistema SAP ABAP back-end. - SAP_SPROXY_ESR
	3 - Configure o destino HTTP RFC para SLD. - SLD_POD
	4 - Configure a administração do Integration Engine usando a transação SXMB_ADM.
	5 - Configure SLDAPICUST.
	6 - Crie um destino HTTP em PI / PO para processamento de proxy de entrada . Pré-requisitos: os serviços HTTP estão ativos no SICF.
	7 - Crie canais de comunicação de remetente e receptor proxy no PI / PO. Canal emissor: SOAP_Sender , Canal receptor: SOAP_Receiver .

### Passo 1 - Criar destino para Advanced Adapter Engine (AAE) no SM59.

	Este destino do tipo G (Conexão HTTP com Servidor Externo) é direcionado para Advance Adapter Engine (AAE) de Process Integration (PI) ou Process Orchestration (PO).

	Você pode nomear o destino HTTP_ <PI / PO System ID>. Vamos supor que o ID do sistema do servidor de desenvolvimento seja POD. O nome do destino HTTP será HTTP_POD.
	
### Parâmetros usados ​​para destino HTTP AAE.

	* Tipo de conexão = G (conexão HTTP para servidor externo)
	* Host de destino = <Nome do host de AAE ou AEX>
	* Porta (Nº do serviço) = <Número da porta HTTP do servidor host AAE ou AEX>: Padrão 50000
	
	A porta para HTTP é '5 <número do sistema> 00' e para HTTPS - '5 <número do sistema> 01'. A porta padrão para o servidor J2EE é '50000'.

	* Prefixo do caminho = / XISOAPAdapter / MessageServlet? Ximessage = true
	* Logon e segurança.
	
	
	![proxy-rfc-destination-pi-po-from-ecc-sap-backend-sm59-technical-setting](https://user-images.githubusercontent.com/39013639/92835177-4c1dbe00-f3b1-11ea-8ad9-8f5e89134b99.png)
	Destino HTTP RFC para AAE ou AEX de Process Orchestration ( PO ).

	
	![proxy-rfc-destination-pi-po-from-ecc-sap-backend-sm59-logon-security](https://user-images.githubusercontent.com/39013639/92835405-9010c300-f3b1-11ea-9bc5-a7ce0e9f0a48.png)
	Manter o nome de usuário e a senha do sistema PI/PO no procedimento de logon 'Basic Authorization'.


### Passo 2 - Criar destino HTTP para o Enterprise Resource Repository (ESR).

	Este destino RFC é usado pela transação SPROXY para importar objetos do Repositório Corporativo e gerar objetos Proxy. Você pode nomear o destino RFC SAP_PROXY_ESR.

### Parâmetros usados ​​para conexão HTTP ao ESR.

	As configurações técnicas desse destino HTTP RFC são semelhantes ao destino HTTP para o back-end ABAP.

	* Tipo de conexão = G (conexão HTTP para servidor externo)
	* Host de destino = <Nome do host de AAE ou AEX>
	* Porta (Nº do serviço) = <Número da porta HTTP do servidor host AAE ou AEX>: Padrão 50000
	* Prefixo do caminho = / rep
	* Logon e segurança = igual ao destino HTTP para back-end ABAP na etapa 1.
	
	![proxy-esr-rfc-destination-pi-po-from-ecc-sap-backend-sm59-technical-setting](https://user-images.githubusercontent.com/39013639/92835788-0f05fb80-f3b2-11ea-9f74-720b20911414.png)
	Destino HTTP para ESR no sistema back-end SAP transação SM59.

### Passo 3 - Configurar destino HTTP RFC para System Landscape Directory (SLD).
	
	Crie outro destino HTTP RFC para SLD na transação SM59. Reutilizaremos esse destino HTTP no Passo 5 para configurar os dados de acesso SLD na transação SLDPICUST .

	![proxy-settings-sld-http-destination-sm59-sap-pi-po](https://user-images.githubusercontent.com/39013639/92836010-4e344c80-f3b2-11ea-99fc-198f73dddf64.png)
	Destino HTTP RFC para System Landscape Directory (SLD).

### Passo 4 - Configurar o Integration Engine usando a transação SXMB_ADM.
	
	Acesse SXMB_ADM e selecione o nó 'Integration Engine Configuration'.
	
	![abap-proxy-connection-sxmb_adm-integration-engine-configuration-sap-pi-po](https://user-images.githubusercontent.com/39013639/92836197-83409f00-f3b2-11ea-9839-81ed7d75df30.png)
	Selecione o nó de configuração do Integration Engine do administrador SXMB_ADM.

	
	Em seguida, escolha a opção 'Configuration'.

	![abap-proxy-connection-sxmb_adm-integration-engine-configuration-2-sap-pi-po](https://user-images.githubusercontent.com/39013639/92836391-bbe07880-f3b2-11ea-9c78-2746e9709009.png)
	Escolha a opção 'Configuration'.

	
	
	Adicione novas entradas à configuração e defina os parâmetros ' IS_URL ', ' HTTP_TIMEOUT ' e ' ENGINE_TYPE '.
	
	![abap-proxy-connection-sxmb_adm-integration-engine-configuration-new-entry-sap-pi-po](https://user-images.githubusercontent.com/39013639/92836535-e5010900-f3b2-11ea-85c2-23acbc1f54bd.png)
	Adicionar novas entradas à configuração do SXMB_ADM Integration Engine.
	
	
	
	![abap-proxy-connection-sxmb_adm-integration-engine-configuration-engine-type-is_url-sap-pi-po](https://user-images.githubusercontent.com/39013639/92836608-fd712380-f3b2-11ea-9ef7-9e014896fd1d.png)
	Configurações para os parâmetros IS_URL ',' HTTP_TIMEOUT 'e' ENGINE_TYPE 'do Integration Engine.

	O nome do destino após os caracteres dest: // é o destino RFC que criamos no Passo 1.


### Passo 5 - Configurar dados de acesso SLD via SLDAPICUST.
	
	Acesse a transação SLDAPICUST e inclua o nome do destino HTTP SLD como Nome alternativo SAP_CONFIG . Certifique-se de selecionar as opções Acesso ao servidor SLD usando HTTP e Conectar usando destino HTTP .

	Estas são as configurações recomendadas. Mas você também pode configurar diretamente o URL SLD sem destino HTTP.
	
	![proxy-setting-sldapicust-http-destination-sld-sap-pi-po](https://user-images.githubusercontent.com/39013639/92836778-2beefe80-f3b3-11ea-9062-c88f458a43db.png)
	Configurações de SLDAPICUST para alias SAP_CONFIG.


### Passo 6 - Criar destino HTTP no administrador do Net-weaver (NWA).

	Nesta etapa, criaremos um Destino HTTP para o servidor de integração de back-end SAP a partir do PI / PO NWA.

	Vá para NWA> Configuração> Infraestrutura> Destinos e crie um destino HTTP para o Netweaver Integration Engine.
	
	![proxy-settings-http-destination-nwa-sap-pi-po-1](https://user-images.githubusercontent.com/39013639/92836895-50e37180-f3b3-11ea-8891-e4e71f518196.png)
	NWA> Configuração> Infraestrutura> Destinos.
	
	
	Crie um novo destino usando o assistente de criação de novo destino.
	![proxy-configuration-http-new-destination-nwa-sap-pi-po](https://user-images.githubusercontent.com/39013639/92836978-68225f00-f3b3-11ea-8830-3f102f1c8f0b.png)
	Escolha Criar novo destino em NWA.
	
	
	Normalmente, o nome do destino é definido como <SAP System ID> CLNT <Client Number> _HTTP. Neste exemplo, o nome do destino é SADCLNT100_HTTP. O tipo de destino é HTTP.

	![proxy-setting-create-http-destination-nwa-wizard-general-data-sap-pi-po-2](https://user-images.githubusercontent.com/39013639/92837105-89834b00-f3b3-11ea-865a-751a519dbcaf.png)
	Configure o destino por meio do assistente.

	Na próxima tela, defina os detalhes de Conexão e Transporte. Parâmetros de URL, ID do sistema, cliente e idioma são obrigatórios.

	
	
	O ID do sistema é o ID do sistema SAP (SAD neste exemplo). E o cliente é 900.

	![proxy-configuration-http-destination-url-sap-system-dettail-new-wizard-sap-pi-po](https://user-images.githubusercontent.com/39013639/92837218-b33c7200-f3b3-11ea-904f-120c1cce6364.png)
	Detalhes de conexão e transporte. Parâmetros de URL, ID do sistema, cliente e idioma.
	
	
	Para encontrar o URL, vá para a transação SICF (back-end SAP) e selecione 'Executar'. A árvore de serviço será exibida no resultado. Expanda o host padrão da árvore de serviço e navegue para
	default_host> sap> iwbep ou default_host> sap> xi> engine.

	
	O próximo passo é definir os dados de logon. Neste exemplo, usarei o método de autenticação básica com nome de usuário e senha.
	![proxy-setting-http-destination-basic-authentication-username-password-sap-pi-po](https://user-images.githubusercontent.com/39013639/92837366-dd8e2f80-f3b3-11ea-95f8-ca990de4bea5.png)
	
	Este destino HTTP será reutilizado no Canal de Comunicação do Receptor SOAP no passo 7.
	
### Passo 7 - Criar Canal de Comunicação SOAP (HTTP) Remetente e Receptor.
	
	Por fim, crie os canais de comunicação proxy do remetente e receptor no SAP PI/PO no SAP Business System.
	
	Canal de comunicação do remetente SOAP.

	![proxy-sender-communication-channel-configuration-setting-sap-pi-po-1](https://user-images.githubusercontent.com/39013639/92837498-0b737400-f3b4-11ea-9ed2-a562baa40bc7.png)
	Configuração do canal de comunicação do remetente proxy (SOAP).

	
	Canal de comunicação do receptor SOAP.
	![proxy-Receiver-communication-channel-settings-sap-pi-po](https://user-images.githubusercontent.com/39013639/92837623-2f36ba00-f3b4-11ea-84d9-d3931ae947b2.png)
	Canal de comunicação do receptor proxy (SOAP).

	Use o tipo de endereço "HTTP Destination" e atribua o nome do destino HTTP que criamos no passo 6.

### Como testar a conectividade do proxy.

	Existem várias maneiras de verificar se as configurações de proxy estão definidas em SEIVAsistema back-end e sistema de orquestração de processos. Se você já tem uma interface Proxy de ponta a ponta desenvolvida, use essas técnicas de depuração para analisar o comportamento em tempo de execução.

### Verifique se os destinos RFC e HTTP estão funcionando bem.

	Usando a transação SM59 e o Teste de Conexão, verifique se os Destinos RFC estão funcionando conforme o esperado. Repita essa etapa para todos os destinos RFC que criamos nas etapas anteriores.

	![proxy-rfc-connection-test-sap-pi-po](https://user-images.githubusercontent.com/39013639/92837868-7755dc80-f3b4-11ea-9de0-a2217c13a8a4.png)
	Teste os destinos RFC usando a transação SM59.

### Teste o status SLD com a transação SLDCHECK.

	Execute a transação SLDCHECK para certificar-se de que as etapas de configuração do SLD foram executadas corretamente. Escolha Permitir na janela pop-up.

	![proxy-configuration-sldcheck-transaction-successful-sap-pi-po](https://user-images.githubusercontent.com/39013639/92837976-9b192280-f3b4-11ea-8b79-7afb81ef7078.png)
	Simplesmente execute a transação SLDCHECK.
	
	Você deve receber uma resposta positiva de SLDCHECK se a configuração necessária for executada corretamente.

### Teste a conexão ESR com SPROX_CHECK_IFR_RESPONSE.

	Execute o programa por meio da transação SE38 para testar o status da Conexão ESR.

	![proxy-esr-test-SPROX_CHECK_IFR_RESPONSE-sap-se38-pi-po](https://user-images.githubusercontent.com/39013639/92838110-c6037680-f3b4-11ea-9461-ecc77a86b0fa.png)
	Teste a conectividade ESR usando o programa SPROX_CHECK_IFR_RESPONSE
	
	
	![proxy-esr-test-SPROX_CHECK_IFR_RESPONSE-response-succesful-pi-po](https://user-images.githubusercontent.com/39013639/92838169-d9164680-f3b4-11ea-8183-ab4bbd329bab.png)
	Conexão ESR bem-sucedida.

### Verifique os objetos proxy por meio da transação SPROXY.

	Verifique se o SPROXY mostra os componentes de software (SWCVs) e os objetos proxy incluídos nos namespaces.

	![test-proxy-configuration-transaction-sproxy-sap-pi-po](https://user-images.githubusercontent.com/39013639/92838298-fc40f600-f3b4-11ea-9e2e-85d1217d3672.png)
	Verifique se você pode visualizar os SWCVs do ESR na transação SPROXY.
	
### Teste os canais de comunicação por meio do Runtime Monitor.

	Acesse Configuration Monitoring Home> Adapter Engine> Communication Channel Monitor e execute ping nos canais de comunicação do emissor e receptor.
	
	![proxy-connection-test-receiver-communication-channel-ping-adpter-engine-monitor-sap-pi-po-1024x295](https://user-images.githubusercontent.com/39013639/92838432-285c7700-f3b5-11ea-8c28-c31557d8d9d7.png)
	Fazer ping nos canais de comunicação por meio do monitor do adaptador.
	

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
 <img style="border-radius: 50%;" src="https://www.google.com/url?sa=i&url=https%3A%2F%2Fbr.linkedin.com%2Fin%2Fvictorxisto&psig=AOvVaw0VyOpzhAtRki5GsaGciZsz&ust=1599719220393000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCPDuzdK42-sCFQAAAAAdAAAAABAD" width="100px;" alt=""/>
 <br />
 <sub><b>Victor Xisto</b></sub></a> <a href="https://ibb.co/61NVrc8//" title="Xisto">🚀</a>


Feito por Victor Xisto 👋🏽 Entre em contato!


[![Twitter Badge](https://img.shields.io/badge/-@VictorXisto_-1ca0f1?style=flat-square&labelColor=1ca0f1&logo=twitter&logoColor=white&link=https://twitter.com/VictorXisto_)](https://twitter.com/VictorXisto_) [![Linkedin Badge](https://img.shields.io/badge/-Xisto-blue?style=flat-square&logo=Linkedin&logoColor=white&link=https://www.linkedin.com/in/victorxisto/)](https://www.linkedin.com/in/victorxisto/) 
[![Gmail Badge](https://img.shields.io/badge/-victorxisto92@gmail.com-c14438?style=flat-square&logo=Gmail&logoColor=white&link=mailto:victorxisto92@gmail.com)](mailto:victorxisto92@gmail.com)