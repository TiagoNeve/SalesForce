## Component Attributes

Nós precisamos setas os valores em componentes e para isso nós usamos
atributos, desta forma é possível guardar dados no lado do cliente.
> Atributos em componentes são como instâncias de variáveis em objetos.

Exemplo de mensagem customizada:
```html
<aura:component>
    <c:helloMessage message="You look nice today." />
</aura:component>
```

> helloMessage component:
```html
<aura:component>
    <aura:attribute name="message" type="String" />
    <p>Hello! {!v.message}</p>
</aura:component>
```
type define o tipo de dado que o atributo message irá guardar.

## Expressions

Tudo que vai dentro das chaves é caracterizado como expressão.
{!v.nameAttr} -> v faz referência a uma valor (value)
Dentro dessas chaves pode-se utilizar alguns conceitos de programação, como
contatenação, cálculos e algumas coisas mais básicas.

Outra coisa importante nas expressões é que você pode referenciar outro 
componente aura e utilizar a expressão como valor de um atributo costumizado.
```html
<aura:component>
    <aura:attribute name="customMessage" type="String" />
    <p>
        <c:helloMessage message="{!v.customMessage}">
    </p>
</aura:component>
```

## Value Providers

Provedores de valores são as letras que vão após o ponto de exclamação, 
por exemplo !v, esse v faz referência a tipo de valores em atributos.
Quando a estrutura do dado é um objeto, é possível utilizar a notação de ponto
*{!v.account.Id}*, pega a chave Id do objeto account.

## Attribute Data Types

Tipos de dados primitivos: Boolean, Date, DateTime, Decimal, Double, Integer,
Long, String.
Objetos Padrãos ou customizados do Salesforce: Account, MyCustomObject__c.
Coleções: List, Map, Set.
Classes Apex customizadas.
Tipos específicos de Frameworks: Aura.Component, Aura.Component[]

```html
<aura:component>
    <aura:attribute name="expense" type="Expense__c" />
    <p>Amount:
        <lightning:formattedNumber value="{!v.expense.Amount__c}" style="currency" />
    </p>
    
    <p>Client:
        {!v.expense.Client__c}
    </p>

    <p>
        <lightning:input type="toggle"
                         label="Reimbursed"
                         name="reimbursed"
                         checked="{!v.expense.Reimbursed__c}"/>
    </p>
    <!-- Other markup here -->
</aura:compoent>
```

## Other Aspects of Attribute Definitions

Os atributos podem ter um valor padrão definido pelo *default* e também podem
ser obrigatóriso se você definir, *required=true*. Caso você queria também
poderá dar uma breve descrição sobre o que o atributo significa, utilizando o 
*description*
>helloPlayground
```html
<aura:component>
    <aura:attribute name="messages" type="List" 
        default="['You look nice today.',
            'Great weather we\'re having',
            'How are you?' ]" />
    
    <h1>Hello Playground</h1>
    <p>Silly fun with attributes and expressions.</p>

    <!-- É possível passar a resolução assim. -->
    <h2>List Items</h2>
    <p> <c:helloMessage message="{!v.messages[0]}" /> </p>
    <p> <c:helloMessage message="{!v.messages[1]}" /> </p>
    <p> <c:helloMessage message="{!v.messages[2]}" /> </p>

    <!-- Assim como é possível utilizar iteração. -->
    <h2>List Iteration</h2>
    <aura:iteration items="{!v.messages}" var="msg">
        <p> <c:helloMessage message="{!msg}" /> </p>
    </aura:iteration>

    <h2> Conditional Expressions and Global Value Providers </h2>
    <aura:if isTrue="{!$Browser.isIPhone}">
        <p> <c:helloMesage message="{!v.messages[0]}" /> </p>
    <aura:set attribute="else">
        <p> <c:helloMessage message="{!v.messages[1]}" /> </p>
        </aura:set>
    </aura:if>
</aura:component>
```

> Atividade:
```html
<!-- Create a packing list item component -->
<!-- Name component: campingListItem 
     Attribute name: item / type Camping_Item__c / required
     Use expression to display: Name, Price__c, Quantity__c and Packed__c
-->

<aura:component>
    <aura:attribute name="item" type="Camping_Item__c" required="true" />

    <ul>
        <li> {!v.item.Name} </li>
        <li> <lightning:formattedNumber value="{!v.item.Price__c}" style="currency" /> </li>
        <li> <lightning:formattedNumber value="{!v.item.Quantity__c}" style="decimal" maximumFractionDigits="0" /> </li>
        <li> <lightning:input type="toggle" 
                              label="Packed"
                              name="packed"
                              checked="{!v.item.Packed__c}"/> 
        </li>
    </ul>
</aura:component>

```