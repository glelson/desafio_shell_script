#!/bin/bash
verificacaoGrupoADM=$(cat /etc/group | grep "GRP_ADM" | cut -s -d ":" -f 1)
verificacaoGrupoVEN=$(cat /etc/group | grep "GRP_VEN" | cut -s -d ":" -f 1)
verificacaoGrupoSEC=$(cat /etc/group | grep "GRP_SEC" | cut -s -d ":" -f 1)

if [ "$verificacaoGrupoADM" == "" ]
then
        groupadd GRP_ADM
fi

if [ "$verificacaoGrupoVEN" == "" ]
then
        groupadd GRP_VEN
fi

if [ "$verificacaoGrupoSEC" == "" ]
then
        groupadd GRP_SEC
fi

verificacaoGrupoADM=$(cat /etc/group | grep "GRP_ADM" | cut -s -d ":" -f 1)
verificacaoGrupoVEN=$(cat /etc/group | grep "GRP_VEN" | cut -s -d ":" -f 1)
verificacaoGrupoSEC=$(cat /etc/group | grep "GRP_SEC" | cut -s -d ":" -f 1)

if [ "$verificacaoGrupoADM" == "" ]
then
        echo "o grupo $verificacaoGrupoADM NAO foi criado"
else

        echo "o grupo $verificacaoGrupoADM foi criado"
fi

if [ "$verificacaoGrupoVEN" == "" ]
then
        echo "o grupo $verificacaoGrupoVEN NAO foi criado"
else

        echo "o grupo $verificacaoGrupoVEN foi criado"
fi

if [ "$verificacaoGrupoSEC" == "" ]
then
        echo "o grupo $verificacaoGrupoSEC NAO foi criado"
else
        echo "o grupo $verificacaoGrupoSEC foi criado"
fi


if ! [ -d /publico ]
then
        mkdir /publico
else
        echo "O diretorio ja esta criado"
fi

if ! [ -d /adm ]
then
        mkdir /adm
else
        echo "O diretorio ja esta criado"
fi

if ! [ -d /ven ]
then
        mkdir /ven
else
        echo "O diretorio ja esta criado"

fi

if ! [ -d /sec ]
then
        mkdir /sec
else
        echo "O diretorio ja esta criado"
fi

chmod 777 /publico
chmod 770 /sec
chmod 770 /adm
chmod 770 /ven

useradd carlos -N  -m  -s /bin/bash -p$(openssl passwd -crypt 123123)
usermod -G GRP_ADM carlos
useradd maria -N  -m  -s /bin/bash -p$(openssl passwd -crypt 123123)
usermod -G GRP_ADM maria
useradd joao_ -N  -m  -s /bin/bash -p$(openssl passwd -crypt 123123)
usermod -G GRP_ADM joao_

useradd debora -N  -m  -s /bin/bash -p$(openssl passwd -crypt 123123)
usermod -G GRP_VEN debora
useradd sebastiana -N  -m  -s /bin/bash -p$(openssl passwd -crypt 123123)
usermod -G GRP_VEN sebastiana
useradd roberto -N  -m  -s /bin/bash -p$(openssl passwd -crypt 123123)
usermod -G GRP_VEN roberto

useradd josefina -N  -m  -s /bin/bash -p$(openssl passwd -crypt 123123)
usermod -G GRP_SEC josefina
useradd amanda -N  -m  -s /bin/bash -p$(openssl passwd -crypt 123123)
usermod -G GRP_SEC amanda
useradd rogerio -N  -m  -s /bin/bash -p$(openssl passwd -crypt 123123)
usermod -G GRP_SEC rogerio

