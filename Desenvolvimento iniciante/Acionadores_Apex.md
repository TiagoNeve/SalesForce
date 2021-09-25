# Introdução aos acionadores do Apex
## Escrevendo acionadores do Apex
Os acionadores do Apex funcionam para gerar alguma ação quando ocorre um evento
de manipulação de registro, como uma atualização de um campo, uma criação
de um registro ou uma exclusão, é possível definir se o acionador ativará
antes ou depois do evento em si.

Pode ser utilizado tanto para modificar registros relacionado ao registro do 
acionador, ou fazer consultas SOQL e DML, além de chamar métodos do Apex
personalizados. Somente utilize os acionadores para ações que não é possível
criar usando as ferramentas de point and click.

É possível criar acionadores para quase todos os tipos de objetos, e eles executam
quando criados, disparando automaticamente quando os eventos de BD especificados
ocorrem.

>Resumão:
    Os acionadores servem para criar ações que não são possíveis criar utilizando
    ferramentas de point and click, geralmente utilizados quando ocorre alguma
    chamada do banco de dados e através do resultado é executado alguma ação, ou
    quando ocorrer uma mudança de um registro e é necessário fazer alguma coisa.

## Sintaxe do acionador

A definição de um acionador começa com a palavra-chave **trigger**.
Depois vem o nome do acionador e o objeto do Salesforce ao qual o acionador
está associado e pelas condições sob as quais ele dispara.

```apxt
trigger TriggerName on ObjectName (trigger_events)
{
    code_block
}
```

Para executar um acionador antes ou depois de inserir, atualizar, excluir e
cancelar exclusão de operações, especifique vários eventos de acionador em 
uma lista separada por vígulas. Estes são os eventos que você pode especificar:
>before insert
>before update
>before delete
>after insert
>after update
>after delete
>after undelete

>Resumão:
    A sintaxe de acionadores é bem tranquilo, mais o que deve se ter em mente
    seria em que momento o acionador deve ser executado, por isso é importante
    ter em mente os eventos que são possíveis de ativar o acionador.

>Exemplo:
    trigger HelloWorldTrigger on Account (before insert) {
        System.debug('Hello World!');
    }

## Tipos de acionadores

Pré-acionadores -> Atualizar ou validar valores de registro antes que eles
sejam salvos no banco de dados.

Pós-acionadores -> Acessar os valores de campo que são definidos pelo sistema e
para realizar alterações em outros registros. Os registros que disparam
o pós-acionador são de somente leitura.

## Usando variáveis de contexto

Os triggers possuem variáveis de contexto para referenciar os registros que 
utilizam o acionador, Trigger.New tenta capitar os registros que foram gerados
quando ocorre uma atualização ou criação de registro e Trigger.Old tenta 
capitar os registros antigos que foram modificados ou excluídos, retornando
uma lista de SObjects.

>Exemplo:
    ```apxt
    trigger HelloWorldTrigger on Account (before insert)
    {
        for(Account a : Trigger.New)
        {
            a.Description = 'New description';
        }
    }
    ```
>Notas
    O sistema salva os registros que dispararam o pré-acionador, depois que o 
    acionador termine a execução. É possível modificar os registros no acionador
    sem chamar explicitamente uma operação de inserção ou atualização de DML. Se
    você executar instruções DML nesses registros, receberá um erro.

Algumas variáveis de contexto utilizam de valores boleanos para definir se foi 
executado um ação de criação ou atualização de registro, essas variáveis são
úteis quando um acionador pode ser ativado por vários tipos de eventos.

>Exemplo:
    trigger ContextExampleTrigger on Account (before insert, after insert, after delete)
    {
        if (Trigger.isInsert)
        {
            if (Trigger.isBefore)
            {
                // Processo before insert
            }
            else if (Trigger.isAfter) 
            {
                // Processo after insert
            }
        }
        else if (Trigger.isDelete)
        {
            // Processo after delete
        }
    }

## Variáveis de contexto do acionador

