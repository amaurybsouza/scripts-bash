## Shell-Script
A ideia aqui é apresentar um pouco de Shell Script como um meio agradável e simples de automatizar tarefas do dia a dia.


-> Script para gerar relatório do sistema: [RelatorioMaquina.sh](https://github.com/amaurybsouza/Shell-Script/blob/master/CursoShellScript/ScriptsAmaury/RelatorioMaquina.sh).

-> Script simples que mostra um exemplo básico do Case: [ScriptCase.sh](https://github.com/amaurybsouza/Shell-Script/blob/master/CursoShellScript/ScriptsAmaury/ScriptCase.sh).

-> Mostrando a hora atual: [HoraAtual.sh](https://github.com/amaurybsouza/Shell-Script/blob/master/CursoShellScript/ScriptsAmaury/HoraAtual.sh).

-> Script que soma valores: [SomaValores.sh](https://github.com/amaurybsouza/Shell-Script/blob/master/CursoShellScript/ScriptsAmaury/SomaValores.sh)

-> Script básico de um menu usando o Case: [MenuCase.sh](https://github.com/amaurybsouza/Shell-Script/blob/master/CursoShellScript/ScriptsAmaury/MenuCase.sh)

#!/bin/bash

#Exibição do Menu:
clear
echo "Escolha uma opção do menu:"
echo
echo "1 - Atualizar o sistema"
echo "2 - Limpando pacotes do sistema"
echo "3 - Escrevendo um teste com echo"
echo "q - sair"
echo
read -p "Opção:" opcao
echo

#Rotinas das Opções:

case "$opcao" in
        1)
                echo "Opção 1 escolhida"
                echo "Adicionar sistema no domínio"
                sleep 3
                ;;
        2)
                echo "Opção 2 escolhida"
                echo "Instalação da impressora Samsumg"
                sleep 3
                ;;
        3)
                echo "Opção 3 escolhida"
                echo "Verificar backup do sistema"
                sleep 3
                ;;
esac


```Veja abaixo a linha de comando:```

![SomaValores.sh](CursoShellScript/Images/somavalores.png)



