#!/usr/bin/env python
# -*- coding: utf-8 -*-

import csv

filename = 'doadores.csv'

def timestamp(ano):
    anoAtual = 2018
    timestamp = []
    for i in range(int(ano), anoAtual+1):
        timestamp.append(str(i)+'.0')
    saida = '<[' + ', '.join(timestamp) + ']>'
    return saida
    

doadores = []
    
with open(filename, 'r') as file:
    rows = csv.reader(file, delimiter=',', quoting=csv.QUOTE_ALL)

    for row in rows:
        ano = row[0]
        cpf = row[1]
        nome = row[2].replace('"', "")

        anos = timestamp(ano)

        linha = '"' + '","'.join([anos, cpf, nome]) +  '"\n'

        doadores.append(linha)

with open('gephiDoadores.csv', 'w') as gephi:
    gephi.write('"timestamp","id","label"\n')
    for i in doadores:
        gephi.write(i)
