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

