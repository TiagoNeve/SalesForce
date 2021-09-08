// Criando variáveis sObject
// Para criar um sObject,. você precisa declarar uma variável e atribuí-la a 
// uma instância de sObject. O tipo de dados da variável é sObject.

Account acct = new Account(Name='Acme');

// Esse exemplo cria uma variável sObject do tipo Conta e a atribui a uma nova conta com o nome Acme.
// Os nomes de sObjects correspondem a nomes de API dos objetos padrão ou
// personalizados correspondentes.
/**
    Objetos personalizados e campos personalizados -> sufixo __c
    Campos personalizados de relacionamento -> sufixo __r
 */
// Os espaços são substituídos por _

// # Criando sObjects e adicionando campos:
Account acct = new Account();
// O nome do objeto da API torna-se no tipo de dados da variável sObject no Apex.

// A parte mais fácil de adicionar campos é especificando-os como pares nome-valor.
Account acct = new Account(Name='Acme', Phone='(415)555-1212'), NumberOfEmployees=100;

// Como alternativa é possível usar a notação de ponto para adicionar campos a um
// sObject.
Account acct = new Account();
acct.Name = 'Acme';
acct.Phone = '(415)555-1212';
acct.NumberOfEmployees = 100;


// # Trabalhando com o tipo de dados sObject geral
// Quando não se sabe qual o tipo do sObject que irá tratar, pode usar o geral.
// sObject geral -> sObject
sObject sobj1 = new Account(Name='Trailhead');
sObject sobj2 = new Book__c(Name='Workbook 1');

// Transmitindo sObjects gerais a tipos sObject específicos

// Cast a generic sObject to an Account
Account acct = (Account)myGenericSObject;
// Now, you can use the dot notation to acess fields on Account
String name = acct.Name;
String phone = acct.Phone;

// Para criar sObjects gerais, basta instanciar um newSObject().
// Os campos de um sObject geral somente podem ser acessados pelos métodos
// put() e get().

// Para salvar o sObject como registro e realizar outras ações com ele, use o
// Data Manipulation Language (DML).

// Para recuperar um registro, use o Salesforce Object Query Language (SOQL).
