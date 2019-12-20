import os
import csv
import itertools
from sys import argv
from itertools import combinations
import pandas as pd
import matplotlib.pyplot as plt
from yellowbrick.features import RadViz
import numpy as np
from pygmo import hypervolume, hvwfg

OUT_FOLDER = 'results'


def csv_stats(fronts, generation):
    try:
        os.mkdir(f'{OUT_FOLDER}/stats/csv')
    except FileExistsError:
        pass

    with open(f'{OUT_FOLDER}/stats/csv/{generation:0>5}.csv', 'w+') as out:
        fieldnames = [x for x in fronts[0][0].obj]
        writer = csv.DictWriter(out, fieldnames)
        writer.writeheader()
        for solution in fronts[0]:
            writer.writerow(solution.obj)


PLOT_METHODS = [
    csv_stats
]


def fronts_plot(folder):
    try:
        os.mkdir(f'{folder}/stats/plots')
    except FileExistsError:
        pass
    results = []
    for _, _, f in os.walk(f'{folder}/stats/csv'):
        for file in sorted(f):
            with open(f'{folder}/stats/csv/{file}') as file:
                data = pd.read_csv(file)
                results.append(data)
    if len(results) == 0:
        return
    step = int(len(results)/10)
    i = 0
    axis = list(results[0])
    while i < len(results):
        data = results[i]
        i += step
        plt.scatter(data[axis[0]], data[axis[1]], marker='.', color='black')
    data = results[-1]
    plt.scatter(data[axis[0]], data[axis[1]], marker='.')
    plt.scatter(data[axis[0]], data[axis[1]], marker='x', color='red')
    plt.xlabel(axis[0])
    plt.ylabel(axis[1])
    plt.savefig(f'{folder}/stats/plots/fronts.png')
    plt.close()


def radviz_plot(folder):
    try:
        os.mkdir(f'{folder}/stats/plots')
    except FileExistsError:
        pass
    results = []
    for _, _, f in os.walk(f'{folder}/stats/csv'):
        for file in sorted(f):
            with open(f'{folder}/stats/csv/{file}') as file:
                data = pd.read_csv(file)
                results.append(data)

    axis = list(results[0])
    data = results[-1]

    visualizer = RadViz(classes=['front'])
    visualizer.fit(data, np.zeros(len(data), dtype=int))
    visualizer.transform(data)
    visualizer.poof(f'{folder}/stats/plots/radviz.png')
    plt.close()


def radviz_inverso_plot(folder):
    try:
        os.mkdir(f'{folder}/stats/plots')
    except FileExistsError:
        pass
    results = []
    for _, _, f in os.walk(f'{folder}/stats/csv'):
        for file in sorted(f):
            with open(f'{folder}/stats/csv/{file}') as file:
                data = pd.read_csv(file)
                print(data)
                data *= -1
                print(data)
                results.append(data)

    axis = list(results[0])
    data = results[-1]

    visualizer = RadViz(classes=['front'])
    visualizer.fit(data, np.zeros(len(data), dtype=int))
    visualizer.transform(data)
    visualizer.poof(f'{folder}/stats/plots/radviz_inverso.png')
    plt.close()


def boxplot(folder):
    try:
        os.mkdir(f'{folder}/stats/plots')
    except FileExistsError:
        pass
    results = []
    for _, _, f in os.walk(f'{folder}/stats/csv'):
        for file in f:
            with open(f'{folder}/stats/csv/{file}') as file:
                data = pd.read_csv(file)
                results.append(data)

    title = list(results[0])
    data = results[-1].to_numpy()

    fig, axis = plt.subplots(3, 3)

    axis[0, 0].boxplot(data[:, 0])
    axis[0, 0].set_title(title[0])
    axis[0, 0].grid(False)
    axis[0, 0].set_xticks([])
    axis[0, 1].boxplot(data[:, 1])
    axis[0, 1].set_title(title[1])
    axis[0, 1].grid(False)
    axis[0, 1].set_xticks([])
    axis[0, 2].boxplot(data[:, 2])
    axis[0, 2].set_title(title[2])
    axis[0, 2].grid(False)
    axis[0, 2].set_xticks([])
    axis[1, 0].boxplot(data[:, 3])
    axis[1, 0].set_title(title[3])
    axis[1, 0].grid(False)
    axis[1, 0].set_xticks([])
    axis[1, 1].boxplot(data[:, 4])
    axis[1, 1].set_title(title[4])
    axis[1, 1].grid(False)
    axis[1, 1].set_xticks([])
    axis[1, 2].boxplot(data[:, 5])
    axis[1, 2].set_title(title[5])
    axis[1, 2].grid(False)
    axis[1, 2].set_xticks([])
    axis[2, 1].boxplot(data[:, 6])
    axis[2, 1].set_title(title[6])
    axis[2, 1].grid(False)
    axis[2, 1].set_xticks([])
    axis[2, 0].grid(False)
    axis[2, 0].set_yticks([])
    axis[2, 0].set_xticks([])
    axis[2, 2].grid(False)
    axis[2, 2].set_yticks([])
    axis[2, 2].set_xticks([])

    plt.tight_layout()
    plt.savefig(f'{folder}/stats/plots/boxplot.png')
    plt.close()


def hyper():
    results = []
    for _, d, f in os.walk(f'testes/parametros/'):
        for dir in sorted(d):
            for _, _, f in os.walk(f'testes/parametros/{dir}/stats/csv'):
                files = []
                for file in sorted(f):
                    with open(f'testes/parametros/{dir}/stats/csv/{file}') as file:
                        data = pd.read_csv(file)
                        files.append(data)                    
                results.append(files[-1])
    axis = results[-1]
    axis = list(axis)

    point = [0] * len(axis)
    for front in results:
        for i, col in enumerate(axis):
            a = max(front[col])
            point[i] = max(a, point[i])
    print(point)

    data = []
    for front in results:
        hv = hypervolume(front.values)
        volume = hv.compute(point)
        data.append(volume)
        print(volume)


def hyper_folder(folder):
    try:
        os.mkdir(f'{folder}/stats/plots')
    except FileExistsError:
        pass
    results = []
    for _, _, f in os.walk(f'{folder}/stats/csv'):
        for file in sorted(f):
            with open(f'{folder}/stats/csv/{file}') as file:
                data = pd.read_csv(file)
                results.append(data)
    if len(results) == 0:
        return
    axis = results[-1]
    axis = list(axis)
    point = [0] * len(axis)

    for front in results:
        for i, col in enumerate(axis):
            a = max(front[col])
            point[i] = max(a, point[i]) + 1
    data = []
    print(point)

    for i, front in enumerate(results):
        hv = hypervolume(front.values)
        volume = hv.compute(point)
        data.append(volume)

    plt.title('Evolução do Hypervolume')
    plt.xlabel('geração')
    plt.ylabel('volume')
    plt.plot(data)
    plt.savefig(f'{folder}/stats/plots/hyper.png')
    plt.close()




def tabela_variancia(folder):
    try:
        os.mkdir(f'{folder}/stats/plots')
    except FileExistsError:
        pass
    results = []
    for _, _, f in os.walk(f'{folder}/stats/csv'):
        for file in sorted(f):
            with open(f'{folder}/stats/csv/{file}') as file:
                data = pd.read_csv(file)
                results.append(data)

    axis = results[-1]
    axis = list(axis)

    with open(f'{folder}/stats/plots/table.csv', 'w+') as out:
        writer = csv.writer(out)
        title = [
            'função',
            'min',
            'média',
            'mediana',
            'max',
            'variância',
            'dp',
            'cv',
            'deslocamento'
        ]
        writer.writerow(title)
        data = results[-1]

        for ax in axis:
            row = [
                ax,
                round(min(data[ax]), 2),
                round(np.mean(data[ax]), 2),
                round(np.median(data[ax]), 2),
                round(max(data[ax]), 2),
                round(np.var(data[ax]), 2),
                round(np.std(data[ax]), 2),
                round(np.std(data[ax]) / np.mean(data[ax]), 2),
                '<' if ((min(data[ax]) + max(data[ax])) / 2) > np.mean(data[ax]) else '>'
            ]
            writer.writerow(row)




def tabela_correlacao(folder):
    results = []
    for _, dirs, _ in os.walk(folder):
        for d in sorted(dirs):
            print(d)
            for _, _, f in os.walk(f'{folder}/{d}/stats/csv'):
                for file in sorted(f):
                    with open(f'{folder}/{d}/stats/csv/{file}') as file:
                        data = pd.read_csv(file)
                results.append(data)

    axis = results[-1]
    axis = list(axis)

    with open('correlations.csv', 'w+') as file:
        writer = csv.writer(file)
        writer.writerow([
            '','',
            0,1,2,3,4,5,
            'min', 'max', 'média', 'variância', 'dp', 'cv'
        ])
        for a, b in combinations(axis, 2):
            row = [a, b]
            for data in results:
                corr = np.corrcoef(data[a], data[b])[0, 1]
                row.append(round(corr, 2))

            row += [
                min(row[2:]),
                max(row[2:]),
                round(np.mean(row[2:]), 2),
                round(np.var(row[2:]), 2),
                round(np.std(row[2:]), 2),
                round(np.std(row[2:]) / np.mean(row[2:]), 2)
            ]

            writer.writerow(row)


def scatter_matrix(folder):
    for _, _, f in os.walk(f'{folder}/stats/csv'):
        for file in sorted(f):
            with open(f'{folder}/stats/csv/{file}') as file:
                data = pd.read_csv(file)#, names=['A', 'B', 'C', 'D', 'E', 'F', 'G'])
    pd.plotting.scatter_matrix(data, diagonal='kde')
    plt.savefig(f'{folder}/stats/plots/scatter_matrix.png')
    plt.close()


if __name__ == '__main__':
    for _, dirs, f in os.walk(f'testes/convergencia'):
        for d in sorted(dirs):
            folder = f'testes/convergencia/{d}'
            #scatter_matrix(folder)
            hyper_folder(folder)
            # radviz_plot(folder)
            # boxplot(folder)
