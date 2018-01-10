#!/usr/bin/env python
# -*- coding: utf-8 -*-

import csv

filename = 'candidatos.csv'

candidates = {}


def programmingPower(cargo):
    power = {
        "1º SUPLENTE": 1,
        "1º SUPLENTE SENADOR": 1,
        "2º SUPLENTE": 1,
        "2º SUPLENTE SENADOR": 1,
        "DEPUTADO DISTRITAL": 3,
        "DEPUTADO ESTADUAL": 3,
        "DEPUTADO FEDERAL": 4,
        "GOVERNADOR": 6,
        "PREFEITO": 2,
        "PRESIDENTE": 7,
        "SENADOR": 5,
        "VEREADOR": 1,
        "VICE PREFEITO": 1,
        "VICE-GOVERNADOR": 3,
        "VICE-PREFEITO": 1,
        "VICE-PRESIDENTE": 4,
    }
    if cargo in power:
        return str(power[cargo])
    print('Não encontrado' + cargo)
    return '1'


with open(filename, 'r') as file:
    rows = csv.reader(file, delimiter=',', quoting=csv.QUOTE_ALL)

    # Passo 1
    for row in rows:
        cpf = row[14]
        content = {'nome': row[11],
                   'data': row[27],
                   'timestamp': [],
                   'cargo': [],
                   'partido': [],
                   'estado': [],
                   'pp': []}

        if cpf and cpf not in candidates:
            candidates[cpf] = content

    file.seek(0)

    # Passo 2
    rows = csv.reader(file, delimiter=',', quoting=csv.QUOTE_ALL)

    for row in rows:
        cpf = row[14]
        data = row[27]
        nome = row[11]
        situacao = row[44]
        cargo = row[10]
        ano = int(row[3])
        partido = row[19]
        estado = row[6]

        if cpf != '' and cpf in candidates:
            if situacao == '1' or situacao == '2':
                if cargo == 'SENADOR':
                    candidate = candidates[cpf]

                    # append anos
                    candidate['timestamp'].append(str(ano + 0) + '.0')
                    candidate['timestamp'].append(str(ano + 1) + '.0')
                    candidate['timestamp'].append(str(ano + 2) + '.0')
                    candidate['timestamp'].append(str(ano + 3) + '.0')
                    candidate['timestamp'].append(str(ano + 4) + '.0')
                    candidate['timestamp'].append(str(ano + 5) + '.0')
                    candidate['timestamp'].append(str(ano + 6) + '.0')
                    candidate['timestamp'].append(str(ano + 7) + '.0')
                    candidate['timestamp'].append(str(ano + 8) + '.0')

                    # append cargos
                    candidate['cargo'].append(str('[' + str(ano + 0) + '.0, ' + cargo + ']'))
                    candidate['cargo'].append(str('[' + str(ano + 1) + '.0, ' + cargo + ']'))
                    candidate['cargo'].append(str('[' + str(ano + 2) + '.0, ' + cargo + ']'))
                    candidate['cargo'].append(str('[' + str(ano + 3) + '.0, ' + cargo + ']'))
                    candidate['cargo'].append(str('[' + str(ano + 4) + '.0, ' + cargo + ']'))
                    candidate['cargo'].append(str('[' + str(ano + 5) + '.0, ' + cargo + ']'))
                    candidate['cargo'].append(str('[' + str(ano + 6) + '.0, ' + cargo + ']'))
                    candidate['cargo'].append(str('[' + str(ano + 7) + '.0, ' + cargo + ']'))
                    candidate['cargo'].append(str('[' + str(ano + 8) + '.0, ' + cargo + ']'))

                    # append partidos
                    candidate['partido'].append(str('[' + str(ano + 0) + '.0, ' + partido + ']'))
                    candidate['partido'].append(str('[' + str(ano + 1) + '.0, ' + partido + ']'))
                    candidate['partido'].append(str('[' + str(ano + 2) + '.0, ' + partido + ']'))
                    candidate['partido'].append(str('[' + str(ano + 3) + '.0, ' + partido + ']'))
                    candidate['partido'].append(str('[' + str(ano + 4) + '.0, ' + partido + ']'))
                    candidate['partido'].append(str('[' + str(ano + 5) + '.0, ' + partido + ']'))
                    candidate['partido'].append(str('[' + str(ano + 6) + '.0, ' + partido + ']'))
                    candidate['partido'].append(str('[' + str(ano + 7) + '.0, ' + partido + ']'))
                    candidate['partido'].append(str('[' + str(ano + 8) + '.0, ' + partido + ']'))

                    # append uf
                    candidate['estado'].append(str('[' + str(ano + 0) + '.0, ' + estado + ']'))
                    candidate['estado'].append(str('[' + str(ano + 1) + '.0, ' + estado + ']'))
                    candidate['estado'].append(str('[' + str(ano + 2) + '.0, ' + estado + ']'))
                    candidate['estado'].append(str('[' + str(ano + 3) + '.0, ' + estado + ']'))
                    candidate['estado'].append(str('[' + str(ano + 4) + '.0, ' + estado + ']'))
                    candidate['estado'].append(str('[' + str(ano + 5) + '.0, ' + estado + ']'))
                    candidate['estado'].append(str('[' + str(ano + 6) + '.0, ' + estado + ']'))
                    candidate['estado'].append(str('[' + str(ano + 7) + '.0, ' + estado + ']'))
                    candidate['estado'].append(str('[' + str(ano + 8) + '.0, ' + estado + ']'))

                    # append pp
                    pp = programmingPower(cargo)

                    candidate['pp'].append(str('[' + str(ano + 0) + '.0, ' + pp + ']'))
                    candidate['pp'].append(str('[' + str(ano + 1) + '.0, ' + pp + ']'))
                    candidate['pp'].append(str('[' + str(ano + 2) + '.0, ' + pp + ']'))
                    candidate['pp'].append(str('[' + str(ano + 3) + '.0, ' + pp + ']'))
                    candidate['pp'].append(str('[' + str(ano + 4) + '.0, ' + pp + ']'))
                    candidate['pp'].append(str('[' + str(ano + 5) + '.0, ' + pp + ']'))
                    candidate['pp'].append(str('[' + str(ano + 6) + '.0, ' + pp + ']'))
                    candidate['pp'].append(str('[' + str(ano + 7) + '.0, ' + pp + ']'))
                    candidate['pp'].append(str('[' + str(ano + 8) + '.0, ' + pp + ']'))

                else:
                    candidate = candidates[cpf]

                    # append anos
                    candidate['timestamp'].append(str(ano + 0) + '.0')
                    candidate['timestamp'].append(str(ano + 1) + '.0')
                    candidate['timestamp'].append(str(ano + 2) + '.0')
                    candidate['timestamp'].append(str(ano + 3) + '.0')
                    candidate['timestamp'].append(str(ano + 4) + '.0')

                    # append cargos
                    candidate['cargo'].append(str('[' + str(ano + 0) + '.0, ' + cargo + ']'))
                    candidate['cargo'].append(str('[' + str(ano + 1) + '.0, ' + cargo + ']'))
                    candidate['cargo'].append(str('[' + str(ano + 2) + '.0, ' + cargo + ']'))
                    candidate['cargo'].append(str('[' + str(ano + 3) + '.0, ' + cargo + ']'))
                    candidate['cargo'].append(str('[' + str(ano + 4) + '.0, ' + cargo + ']'))

                    # append partidos
                    candidate['partido'].append(str('[' + str(ano + 0) + '.0, ' + partido + ']'))
                    candidate['partido'].append(str('[' + str(ano + 1) + '.0, ' + partido + ']'))
                    candidate['partido'].append(str('[' + str(ano + 2) + '.0, ' + partido + ']'))
                    candidate['partido'].append(str('[' + str(ano + 3) + '.0, ' + partido + ']'))
                    candidate['partido'].append(str('[' + str(ano + 4) + '.0, ' + partido + ']'))

                    # append uf
                    candidate['estado'].append(str('[' + str(ano + 0) + '.0, ' + estado + ']'))
                    candidate['estado'].append(str('[' + str(ano + 1) + '.0, ' + estado + ']'))
                    candidate['estado'].append(str('[' + str(ano + 2) + '.0, ' + estado + ']'))
                    candidate['estado'].append(str('[' + str(ano + 3) + '.0, ' + estado + ']'))
                    candidate['estado'].append(str('[' + str(ano + 4) + '.0, ' + estado + ']'))

                    # append pp
                    pp = programmingPower(cargo)

                    candidate['pp'].append(str('[' + str(ano + 0) + '.0, ' + pp + ']'))
                    candidate['pp'].append(str('[' + str(ano + 1) + '.0, ' + pp + ']'))
                    candidate['pp'].append(str('[' + str(ano + 2) + '.0, ' + pp + ']'))
                    candidate['pp'].append(str('[' + str(ano + 3) + '.0, ' + pp + ']'))
                    candidate['pp'].append(str('[' + str(ano + 4) + '.0, ' + pp + ']'))

            else:
                candidate = candidates[cpf]

                # append anos
                candidate['timestamp'].append(str(ano) + '.0')

                # append partidos
                candidate['partido'].append(str('[' + str(ano) + '.0, ' + partido + ']'))

                # append uf
                candidate['estado'].append(str('[' + str(ano) + '.0, ' + estado + ']'))

        else:
            for candidate in candidates:
                obj = candidates[candidate]
                if nome == obj['nome'] and data == obj['data']:
                    if situacao == '1' or situacao == '2':
                        if cargo == 'SENADOR':
                            candidate = obj

                            # append anos
                            candidate['timestamp'].append(str(ano + 0) + '.0')
                            candidate['timestamp'].append(str(ano + 1) + '.0')
                            candidate['timestamp'].append(str(ano + 2) + '.0')
                            candidate['timestamp'].append(str(ano + 3) + '.0')
                            candidate['timestamp'].append(str(ano + 4) + '.0')
                            candidate['timestamp'].append(str(ano + 5) + '.0')
                            candidate['timestamp'].append(str(ano + 6) + '.0')
                            candidate['timestamp'].append(str(ano + 7) + '.0')
                            candidate['timestamp'].append(str(ano + 8) + '.0')

                            # append cargos
                            candidate['cargo'].append(str('[' + str(ano + 0) + '.0, ' + cargo + ']'))
                            candidate['cargo'].append(str('[' + str(ano + 1) + '.0, ' + cargo + ']'))
                            candidate['cargo'].append(str('[' + str(ano + 2) + '.0, ' + cargo + ']'))
                            candidate['cargo'].append(str('[' + str(ano + 3) + '.0, ' + cargo + ']'))
                            candidate['cargo'].append(str('[' + str(ano + 4) + '.0, ' + cargo + ']'))
                            candidate['cargo'].append(str('[' + str(ano + 5) + '.0, ' + cargo + ']'))
                            candidate['cargo'].append(str('[' + str(ano + 6) + '.0, ' + cargo + ']'))
                            candidate['cargo'].append(str('[' + str(ano + 7) + '.0, ' + cargo + ']'))
                            candidate['cargo'].append(str('[' + str(ano + 8) + '.0, ' + cargo + ']'))

                            # append partidos
                            candidate['partido'].append(str('[' + str(ano + 0) + '.0, ' + partido + ']'))
                            candidate['partido'].append(str('[' + str(ano + 1) + '.0, ' + partido + ']'))
                            candidate['partido'].append(str('[' + str(ano + 2) + '.0, ' + partido + ']'))
                            candidate['partido'].append(str('[' + str(ano + 3) + '.0, ' + partido + ']'))
                            candidate['partido'].append(str('[' + str(ano + 4) + '.0, ' + partido + ']'))
                            candidate['partido'].append(str('[' + str(ano + 5) + '.0, ' + partido + ']'))
                            candidate['partido'].append(str('[' + str(ano + 6) + '.0, ' + partido + ']'))
                            candidate['partido'].append(str('[' + str(ano + 7) + '.0, ' + partido + ']'))
                            candidate['partido'].append(str('[' + str(ano + 8) + '.0, ' + partido + ']'))

                            # append uf
                            candidate['estado'].append(str('[' + str(ano + 0) + '.0, ' + estado + ']'))
                            candidate['estado'].append(str('[' + str(ano + 1) + '.0, ' + estado + ']'))
                            candidate['estado'].append(str('[' + str(ano + 2) + '.0, ' + estado + ']'))
                            candidate['estado'].append(str('[' + str(ano + 3) + '.0, ' + estado + ']'))
                            candidate['estado'].append(str('[' + str(ano + 4) + '.0, ' + estado + ']'))
                            candidate['estado'].append(str('[' + str(ano + 5) + '.0, ' + estado + ']'))
                            candidate['estado'].append(str('[' + str(ano + 6) + '.0, ' + estado + ']'))
                            candidate['estado'].append(str('[' + str(ano + 7) + '.0, ' + estado + ']'))
                            candidate['estado'].append(str('[' + str(ano + 8) + '.0, ' + estado + ']'))

                            # append pp
                            pp = programmingPower(cargo)

                            candidate['pp'].append(str('[' + str(ano + 0) + '.0, ' + pp + ']'))
                            candidate['pp'].append(str('[' + str(ano + 1) + '.0, ' + pp + ']'))
                            candidate['pp'].append(str('[' + str(ano + 2) + '.0, ' + pp + ']'))
                            candidate['pp'].append(str('[' + str(ano + 3) + '.0, ' + pp + ']'))
                            candidate['pp'].append(str('[' + str(ano + 4) + '.0, ' + pp + ']'))
                            candidate['pp'].append(str('[' + str(ano + 5) + '.0, ' + pp + ']'))
                            candidate['pp'].append(str('[' + str(ano + 6) + '.0, ' + pp + ']'))
                            candidate['pp'].append(str('[' + str(ano + 7) + '.0, ' + pp + ']'))
                            candidate['pp'].append(str('[' + str(ano + 8) + '.0, ' + pp + ']'))

                        else:
                            candidate = obj

                            # append anos
                            candidate['timestamp'].append(str(ano + 0) + '.0')
                            candidate['timestamp'].append(str(ano + 1) + '.0')
                            candidate['timestamp'].append(str(ano + 2) + '.0')
                            candidate['timestamp'].append(str(ano + 3) + '.0')
                            candidate['timestamp'].append(str(ano + 4) + '.0')

                            # append cargos
                            candidate['cargo'].append(str('[' + str(ano + 0) + '.0, ' + cargo + ']'))
                            candidate['cargo'].append(str('[' + str(ano + 1) + '.0, ' + cargo + ']'))
                            candidate['cargo'].append(str('[' + str(ano + 2) + '.0, ' + cargo + ']'))
                            candidate['cargo'].append(str('[' + str(ano + 3) + '.0, ' + cargo + ']'))
                            candidate['cargo'].append(str('[' + str(ano + 4) + '.0, ' + cargo + ']'))

                            # append partidos

                            candidate['partido'].append(str('[' + str(ano + 0) + '.0, ' + partido + ']'))
                            candidate['partido'].append(str('[' + str(ano + 1) + '.0, ' + partido + ']'))
                            candidate['partido'].append(str('[' + str(ano + 2) + '.0, ' + partido + ']'))
                            candidate['partido'].append(str('[' + str(ano + 3) + '.0, ' + partido + ']'))
                            candidate['partido'].append(str('[' + str(ano + 4) + '.0, ' + partido + ']'))

                            # append uf
                            candidate['estado'].append(str('[' + str(ano + 0) + '.0, ' + estado + ']'))
                            candidate['estado'].append(str('[' + str(ano + 1) + '.0, ' + estado + ']'))
                            candidate['estado'].append(str('[' + str(ano + 2) + '.0, ' + estado + ']'))
                            candidate['estado'].append(str('[' + str(ano + 3) + '.0, ' + estado + ']'))
                            candidate['estado'].append(str('[' + str(ano + 4) + '.0, ' + estado + ']'))

                            # append pp
                            pp = programmingPower(cargo)

                            candidate['pp'].append(str('[' + str(ano + 0) + '.0, ' + pp + ']'))
                            candidate['pp'].append(str('[' + str(ano + 1) + '.0, ' + pp + ']'))
                            candidate['pp'].append(str('[' + str(ano + 2) + '.0, ' + pp + ']'))
                            candidate['pp'].append(str('[' + str(ano + 3) + '.0, ' + pp + ']'))
                            candidate['pp'].append(str('[' + str(ano + 4) + '.0, ' + pp + ']'))

                    else:
                        candidate = obj

                        # append anos
                        candidate['timestamp'].append(str(ano + 0) + '.0')

                        # append partidos
                        candidate['partido'].append(str('[' + str(ano) + '.0, ' + partido + ']'))

                        # append uf
                        candidate['estado'].append(str('[' + str(ano) + '.0, ' + estado + ']'))

    with open('gephiCandidatos.csv', 'w') as gephi:
        gephi.write('"id","label","timestamp","pp"\n')
        for i in candidates:
            obj = candidates[i]

            cpf = i
            nome = obj['nome']
            data = obj['data']

            # sorted(set( Mantem somente os únicos e ordena

            timestamp = sorted(set(obj['timestamp']))
            if len(timestamp):
                timestamp = '<[' + ', '.join(timestamp) + ']>'
            else:
                timestamp = ''

            cargo = sorted(set(obj['cargo']))
            if len(cargo):
                cargo = '<' + '; '.join(cargo) + '>'
            else:
                cargo = ''

            partido = sorted(set(obj['partido']))
            if len(partido):
                partido = '<' + '; '.join(partido) + '>'
            else:
                partido = ''

            estado = sorted(set(obj['estado']))
            if len(estado):
                estado = '<' + '; '.join(estado) + '>'
            else:
                estado = ''

            pp = sorted(set(obj['pp']))
            if len(pp):
                pp = '<' + '; '.join(pp) + '>'
                linha = '"' + '","'.join([cpf, nome, timestamp, pp]) + '"\n'
                gephi.write(linha)
            # else:
            #     pp = ''
