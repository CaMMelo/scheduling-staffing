#! /usr/bin/env python3

import argparse
import os
import json
import random
import numpy as np
import plotting
from nsgaii.nsgaii import nsgaii
from factory import Factory, selector
from objectives import OBJ_NAMES
from plotting import PLOT_METHODS
from instance import read_instance

PARSER = argparse.ArgumentParser()

PARSER.add_argument('project_file', help='Arquivo descrevendo o projeto')

PARSER.add_argument('team_file', help='Arquivo descrevendo os membros do time')

PARSER.add_argument(
    'priority', nargs='+', help='Ordem de prioridade das funções objetivo'
)

PARSER.add_argument(
    '--pop_size', type=int, help='Quantidade de indivíduos em cada geração',
    default=300
)

PARSER.add_argument(
    '--mut_prob', type=float, help='Probabilidade de mutação em cada geração',
    default=.4
)

PARSER.add_argument(
    '--max_gen', type=int, help='Numero de gerações para o NSGA-II',
    default=100
)

PARSER.add_argument(
    '--seed', type=int, help='Semente para o gerador de numeros aleatórios'
)

PARSER.add_argument(
    '-b', '--best', action='store_true',
    help='Salvar somente a melhor solução de acordo com as prioridades'
)

PARSER.add_argument(
    '-s', '--stats', help='Plotar estatísticas a cada STATS gerações',
    type=int
)

PARSER.add_argument(
    '-o', '--out', default='results',
    help='Nome da pasta onde os arquivos de estatística serão salvos'
)


def save_result(result, objectives, instance, filename):
    with open(filename, 'w+') as outfile:
        solution = {
            'objectives': objectives,
            'schedule': {
                instance.project.tasks[x].name: {
                    'start': result[2][x],
                    'duration': instance.project.tasks[x].expected_duration,
                    'developers': [
                        instance.team.developers[y].name for y in
                        filter(lambda y: x in result[1][y], result[1])],
                } for x in result[2]
            },
            'assignment': {
                instance.team.developers[x].name: [
                    instance.project.tasks[y].name for y in result[1][x]
                ] for x in result[1]
            }
        }

        json.dump(solution, outfile, indent=2)


if __name__ == '__main__':
    args = PARSER.parse_args()

    if args.seed:
        np.random.seed(args.seed)
        random.seed(args.seed)

    instance = read_instance(args.project_file, args.team_file)
    objectives = {x: OBJ_NAMES[x] for x in args.priority}
    args.priority.reverse()

    factory = Factory(instance, **objectives)
    results = None

    plotting.OUT_FOLDER = args.out
    try:
        os.mkdir(args.out)
        os.mkdir(f'{args.out}/stats')
    except FileExistsError:
        pass

    if args.stats:
        results = nsgaii(factory, selector, args.pop_size, args.mut_prob,
                         args.max_gen, args.stats, PLOT_METHODS)
    else:
        results = nsgaii(factory, selector, args.pop_size, args.mut_prob,
                         args.max_gen)

    # O método sort padrão do python é estável :)
    for ii in args.priority:
        results.sort(key=lambda x: x.obj[ii])

    if args.best:
        result = factory.decode(results[0].gene)
        save_result(
            result, results[0].obj, instance, f'{args.out}/solution.json')
    else:
        try:
            os.mkdir(f'{args.out}/solutions')
        except FileExistsError:
            pass
        result = map(factory.decode, [x.gene for x in results])
        for ii, res in enumerate(result):
            obj = results[ii].obj
            save_result(
                res, obj, instance, f'{args.out}/solutions/{ii:0>5}.json')
