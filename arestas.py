#!/usr/bin/env python
# -*- coding: utf-8 -*-

import csv

filename = 'arestas.csv'

def timestamp(ano):
    anoAtual = 2018
    timestamp = []
    # for i in [range(int(ano), anoAtual+1)]:
        # timestamp.append(str(i)+'.0')
    timestamp.append(str(ano)+'.0')
    saida = '<[' + ', '.join(timestamp) + ']>'
    return saida
    

doadores = []
    
with open(filename, 'r') as file:
    rows = csv.reader(file, delimiter=',', quoting=csv.QUOTE_ALL)

    for row in rows:
        ano = row[0]
        candidato = row[1]
        doador = row[2]
        valor = row[3]

        anos = timestamp(ano)

        linha = '"' + '","'.join([anos, candidato, doador, valor]) +  '"\n'

        doadores.append(linha)

with open('gephiArestas.csv', 'w') as gephi:
    gephi.write('"timestamp","target","source","weight"\n')
    for i in doadores:
        gephi.write(i)