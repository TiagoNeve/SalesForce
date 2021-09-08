// Manipular registros com DML

/**
    DML -> Linguagem de manipulação de dados.
    Maneira simples de gerenciar registros, 
    Fornecendo instruções simples para inserir, atualizar, mesclar, excluir e
    restaurar registros.

 */

// Create the account sObject
Account acct = new Account(Name='Acme', Phone='(415)555-1212', NumberOfEmployees=100);
// Insert the account by using DML
insert acct; // Isso cria um registro em Contas ??

// Demonstrativos DML
/**
    insert
    update
    upsert
    delete
    undelete
    merge
 */
// Cada instrução DML aceita um único sObject ou uma lista (ou matriz) de sObjects.
// Operar em uma lista de sObjects é uma maneira mais eficiente de processar registros.

