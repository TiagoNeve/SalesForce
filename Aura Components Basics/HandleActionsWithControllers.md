## Handling Actions with Controllers

>helloMessageInteractive.cmp
```html
<aura:component>
    <aura:attribute name="message" type="String" />
    <p> Message of the day: {!v.message} </p>
    <div>
        <lightning:button label="You look nice today."
            onclick="{!c.handleClick}" />
        <lightning:button label="Today is going to be a great day!" 
            onclick="{!c.handleClick}" />
    </div>
</aura:component>
```

*c.handleClick* faz referência ao controller js que é possível criar para
dar interatividade a sua página.

## Uh, What's a Controller?

Controller são um conjunto de códigos preparados para sere utilizados com o 
cliente interage diretamente com seu componente.
Levando em consideração o modelo MVC -> Model, View, Controller.

View é o componente aura.

Controller é o controller Javascript

Model é o banco de dados Salesforce, mas o Apex que acessa esses dados, então
o Model pode ser o controller Apex.

>helloMessageInteractiveController.js
```js
({
    handleClick: function(component, event, helper)
    {
        let btnClicked = event.getSource();          // the button
        let btnMessage = btnClicked.get("v.label");  // the button's label
        component.set("v.message", btnMessage);      // update our message
    }
})
```

## Action Handlers

Os métodos do controller js são Actions Handlers. Pois eles executam depois
que uma interação é acionada, portanto eles seguram alguns dados e depois
esses dados se volatizam quando há um recarregamento da página.

## The Aura Components View-Controller Programming Model

Componentes Auras são o View e os Actions Handlers Controllers são os 
métodos Javascripts do Controller Js.

## Function Chaining, Rewiring, and Simple Debugging

O primeiro exemplo de código estava perfeito e ótimo para manutenções, porém
é possível fazer de várias maneiras, até aquelas para economizar o máximo de
espaço possível, como: 

```js
({
    handleClick3: function(component, event, helper)
    {
        component.set("v.message", event.getSource().get("v.label"));
    }
})
```

Certamente nunca use esse tipo de construção em produção.

Outra forma de debugar um código js é somente colocar um *console.log* no
meio dos métodos e verificar no console do navegador qual foi o output.

>Atividade: Mark item as packed

Adicione ao butão de campingListItem que quando for clicado o mesmo ficará
marcado como clicado.

```js
({
	packItem : function (component, event, helper) {
		component.set("v.item.Packed__c", "true");
        
        let btnClicked = event.getSource();
        btnClicked.set("v.disabled", "true");
	}
})
```

