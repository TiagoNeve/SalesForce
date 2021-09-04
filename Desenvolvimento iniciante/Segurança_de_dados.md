# Controlar o acesso à organização

    Todos os usuários do salesforce são identificados por um nome de usuário,
    uma senha e um único perfil. Desta forma é possível gerenciar esse usuário
    usando recursos de segurança.

    Para adicionar um usuário, basta ir em configurações, usuários, novo,
    colocar, nome, sobrenome, email, alias. Selecionar a licença desse usuário
    e escolher um perfil, basicamente seria isso, mas da para fazer muito mais
    coisas.

    Para desativar um usuário, basta clicar no editar ao lado do nome do usuário
    e desmarcar a opção de Ativar e pronto, o usuário está desativado. Para
    congelar uma conta, clique no nome do usuário e aperte no botão de congelar.

> Definir política de senha

    Isso serve para que o usuários criem uma conta forte e segura, seguindo
    as recomendações da empresa.
    Nas políticas de senha é possível fazer que as senhas expirem ao decorrer
    uma quantidade de tempo e exigir um padrão de senha forte.

    Para fazer isso, você terá que acessar em configurações: Políticas de senha

> Especificar intervalos de IP confiáveis para a organização.

    Pesquise Acesso de rede e depois selecione Acesso de rede, clique em Novo
    insira o ponto de início e final do intervalo de endereços de IP confiáveis
    e clique em Salvar.

> Restringir acesso de login por endereço de IP usando perfis

    Voce terá que escolher o Perfil do usuário, clicar em Intervalos de IP de login
    e colocar o range do IP que o usuário atual poderá acessar, restringindo
    o restante.

> Restringir acesso de login por tempo:

    Em configuração, pesquise Perfis. Clique no perfil que deseja alterar.
    Em Horas de login, clique em Editar. Defina os dias e as horas em que os 
    usuários com esse perfil podem efetuar login na organização.
    Se o usuário continuar conectado após o horário permitido, o mesmo conseguirá
    ver o conteúdo que já estava vendo, mas não poderá realizar mais nenhuma ação.

# Controle o acesso aos objetos

> Gerenciar permissões de objeto
    Você decide quais usuários podem editar, ver, criar e excluir os registros
    nos objetos. Esse controle se dá pelo Perfil, onde o usuário terá acesso 
    a alguns aplicativos e ações, e também por conjunto de permissões, que 
    concede permissões adicionais e configurações de acesso ao usuário.

> Usar perfis para limitar o acesso:
    Os perfis controlam o que o usuário pode ver e as permissões controlam o que
    o usuário pode configurar.
    Um perfil pode ser atribuído a muitos usuários, mas um usuário só pode ter
    um perfil por vez.

> Gerenciando perfis:
    Configuração, pesquise Perfis e clique no perfil que você deseja visualizar.

> Criar um perfil:
    Uma maneira mais fácil de criar um Perfil é clonando um com os previlégios
    que são parecidos e apenas modificar algumas coisas, caso seja necessário.
    Em Configuração, pesquise Perfis, Clique em clonar o perfil que gostaria de
    criar e edite como achar necessário.

> Criar um conjunto de permissões:
    Pequise em configurações, Conjuntos de permissões. Clique em clonar ao lado
    de conjuntos que você deseja copiar. Para criar um do zero, pode clicar Novo.

    Deve-se colocar um rótulo e uma descrição, o nome da API é um nome exclusivo
    para se referenciar a esse conjunto de permissões.
    Se pretende que um conjunto de permissões seja utilizado por diversos perfis
    então na parte de tipo de licença, selecione --Nenhum--.

    Depois de criar o conjunto de permissões, para atribuir esse conjunto a algum
    usuário, basta ir em Gerenciar atribuições e Adicionar atribuições.
    Selecione os usuários a serem atribuídos a este conjunto de permissões e 
    clique em Atribuir.

# Controle o acesso aos campos:

> Modificar a segurança em nível de campo.
    Basicamente é esconder ou não permitir edição a determinados usuários.
    