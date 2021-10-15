## The expenses App Container

Nesta unidade vamos usar alguns SLDS para estilizar o aplicativo. 

> exprensesApp.app
```html
<aura:application extends="force:slds">
    <!-- This component is the real "app" -->
    <!-- c:expenses/ -->
</aura:application>
```
*extends="force:slds"* -> Informa que a aplicação em questão pode renderizar
SLDS, e deve-se notar tbm que a aplicação real é o componente Aura, expenses.
Deve-se colocar esse atributo pois a Aplicação geralmente ocorre em um 
ambiente externo a organização e por padrão o SLDS é desativado em aplicações,
por isso, se seu componente utilizar essa forma de estilização, então coloque
esse atributo caso você queira que sua estilização permaneça.

## The expenses App Component

>expenses.cmp
```html
<aura:component>
    <!-- PAGE HEADER -->
    <lightning:layout class="slds-page-header slds-page-header_object-home">
        
        <lightning:layoutItem>
            <lightning:icon iconName="standard:scan_card" alternativeText="My Expenses" />
        </lightning:layoutItem>

        <lightning:layoutItem padding="horizontal-small">
            <div class="page-section page-header">
                <h1 class="slds-text-heading_label">Expenses</h1>
                <h2 class="slds-text-heading_medium">My Expenses</h2>
            </div>
        </lightning:layoutItem>

    </lightning:layout>
    <!-- / PAGE HEADER -->
    
    <!-- NEW EXPENSE FORM -->
    <lightning:layout>
        <lightning:layoutItem padding="around-small" size="6">
            <!-- [[ expense form goes here ]] -->
        </lightning:layoutItem>
    </lightning:layou>
    <!-- / NEW EXPENSE FORM -->
</aura:component>
```

Desta forma o SLDS aplicado ao componente será renderizado na aplicação, pq
nela tem o *force:slds*

## The New Expense Form

Lembre-se de sempre tentar separar o seu código em pequenas camadas de um todo
assim facilita a manutenção do mesmo, sempre buscando o desenvolvimento em 
camadas.

> Código para aplicar no comentário do Form em expenses.cmp
```html
<!-- CREATE NEW EXPENSE -->
<div aria-labelledby="newexpenseform">
    <!-- BOXED AREA -->
    <fieldset class="slds-box slds-theme_default slds-container_small">
    <legend id="newexpenseform" class="slds-text-heading_small slds-p-vertical_medium">
        Add Expense
    </legend>
    <!-- CREATE NEW EXPENSE FORM -->
    <form class="slds-form_stacked">
        <lightning:input >
    </form>
</div>
```