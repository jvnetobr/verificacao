#!/bin/bash 
#
#
###############################################################################
#    Criado por José Vieira da Costa Neto                                     #
#    http://blog.vieira.eti.br | contato@vieira.eti.br                        #
# 									      #
#    Este programa é um software livre; você pode redistribuí-lo e/ou         #
#    modificá-lo dentro dos termos da Licença Pública Geral GNU como          #
#    publicada pela Fundação do Software Livre (FSF); na versão 3 da          #
#    Licença, ou (na sua opinião) qualquer versão.                            #
#									      #
#    Este programa é distribuído na esperança de que possa ser útil, 	      #
#    mas SEM NENHUMA GARANTIA; sem uma garantia implícita de ADEQUAÇÃO	      #
#    a qualquer MERCADO ou APLICAÇÃO EM PARTICULAR. Veja a		      #
#    Licença Pública Geral GNU para maiores detalhes.			      #
#									      #
#    Você deve ter recebido uma cópia da Licença Pública Geral GNU junto      #
#    com este programa. Se não, veja <http://www.gnu.org/licenses/>.          #
#                                                                             #
#                                                                             #
###############################################################################
#
#
# Script para verificação de extensões de arquivos
#
#

# Criacao do arquivo
echo "Digite o nome do arquivo que sera criado da verificacao"
read ARQ
echo "Iniciando a verificacao do servidor"
DOC="Verificacao - $ARQ.txt"
touch `pwd`/"$DOC"
chmod 755 `pwd`/"$DOC"

# Local para realizar a verificacao
echo "Digite o PATH do diretorio para realizar a verificacao"
read LOCAL
echo "Local - $LOCAL"

# Saida de tela
echo
echo "Verificando arquivos em $LOCAL"
echo

echo "Verificacao do diretorio $LOCAL no servidor - `uname -n`" >> "$DOC"

echo "------------------------------------------------------------------------------" >> "$DOC"
echo "				PATH - $LOCAL" >> "$DOC"
echo "------------------------------------------------------------------------------" >> "$DOC"

echo >> "$DOC"

echo "	- Arquivos formato ".mp3", "wma"" >> "$DOC"
find $LOCAL -iname "*.mp3" -exec du -h {} \; >> "$DOC"
find $LOCAL -iname "*.wma" -exec du -h {} \; >> "$DOC"
echo >> "$DOC"

echo "	- Arquivos formato ".exe", ".msi"" >> "$DOC"
find $LOCAL -iname "*.exe" -exec du -h {} \; >> "$DOC"
find $LOCAL -iname "*.msi" -exec du -h {} \; >> "$DOC"
echo >> "$DOC"

echo "	- Arquivos formatao ".mkv", ".avi", ".vob", ".wmv", ".mp4", ".3gp", ".rmvb", ".flv", ".mpeg", ".mpg"" >> "$DOC"
find $LOCAL -iname "*.mkv" -exec du -h {} \; >> "$DOC"
find $LOCAL -iname "*.avi" -exec du -h {} \; >> "$DOC"
find $LOCAL -iname "*.vob" -exec du -h {} \; >> "$DOC"
find $LOCAL -iname "*.wmv" -exec du -h {} \; >> "$DOC"
find $LOCAL -iname "*.mp4" -exec du -h {} \; >> "$DOC"
find $LOCAL -iname "*.3gp" -exec du -h {} \; >> "$DOC"
find $LOCAL -iname "*.rmvb" -exec du -h {} \; >> "$DOC"
find $LOCAL -iname "*.flv" -exec du -h {} \; >> "$DOC"
find $LOCAL -iname "*.mpeg" -exec du -h {} \; >> "$DOC"
find $LOCAL -iname "*.mpg" -exec du -h {} \; >> "$DOC"
echo >> "$DOC"

echo "  - Arquivos maiores que 500 MB" >> "$DOC"
find $LOCAL -size +500M -exec du -h {} \; >> "$DOC"
echo >> "$DOC"
echo >> "$DOC"

# Saida de tela
echo
echo "Verificacao realizada com sucesso!"
echo "Ela pode ser visualizada em `pwd`/$DOC"
echo
