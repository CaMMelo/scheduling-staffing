import random
import numpy as np
from nsgaii.nsgaii import ChromosomeFactory


class Gene:

    def __init__(self, tasks, developers):
        self.tasks = tasks
        self.developers = developers


class Factory(ChromosomeFactory):

    def decode(self, gene):
        # SGS Paralelo
        tasks = gene.tasks.copy()
        staged = []
        resolved = []
        developers = gene.developers.copy()
        sindx = 0
        steps = [{}]
        assignments = {x: set() for x in developers}
        while tasks.any():
            if (not developers.any()) or (sindx >= len(tasks)):
                resolved += staged
                staged = []
                sindx = 0
                steps.append(dict())
                developers = gene.developers.copy()
            tid = tasks[sindx]
            # WARNING: this will cause an infinite loop if there is some task
            #          whose all of the required skills cannot be solved by the
            #          team.
            for dep in self.instance.project.tasks[tid].dependencies:
                if dep not in resolved:
                    sindx = (sindx + 1) % len(tasks)
                    if sindx == 0:
                        resolved += staged
                        staged = []
                        steps.append(dict())
                        developers = gene.developers.copy()
                    break
            else:
                assign = set()
                skills_needed = \
                    self.instance.project.tasks[tid].skills_needed.copy()
                if skills_needed <= self.instance.team.available_skills:
                    for dev_id in developers:
                        skills = \
                            self.instance.team.developers[dev_id].skill_set
                        if skills_needed & skills:
                            assign.add(dev_id)
                            skills_needed -= skills
                        if not skills_needed:
                            break
                else:
                    tasks = np.delete(tasks, sindx)
                    steps[-1][tid] = assign
                    staged.append(tid)

                if assign:
                    tasks = np.delete(tasks, sindx)
                    steps[-1][tid] = assign
                    staged.append(tid)
                    for dev_id in assign:
                        developers = developers[developers != dev_id]
                        assignments[dev_id].add(tid)
                elif tasks.any():
                    sindx = (sindx + 1) % len(tasks)
                    if sindx == 0:
                        resolved += staged
                        staged = []
                        steps.append(dict())
                        developers = gene.developers.copy()

        start = {x: 0 for x in steps[0]}
        developers = {x: 0 for x in self.instance.developer_ids}
        for task in start:
            for dev in steps[0][task]:
                developers[dev] = \
                    self.instance.project.tasks[task].expected_duration
        for step in steps[1:]:
            for task_id in step:
                task = self.instance.project.tasks[task_id]
                start[task_id] = 0
                for dep_id in task.dependencies:
                    dur = self.instance.project.tasks[dep_id].expected_duration
                    start[task_id] = max(start[task_id], start[dep_id] + dur)
                for dev in step[task_id]:
                    start[task_id] = max(start[task_id], developers[dev])
                for dev in step[task_id]:
                    developers[dev] = start[task_id] + task.expected_duration
        return steps, assignments, start

    def new(self):
        tasks = np.array(self.instance.task_ids)
        developers = np.array(self.instance.developer_ids)
        np.random.shuffle(tasks)
        np.random.shuffle(developers)
        return Gene(tasks, developers)

    def crossover(self, parent_a, parent_b):
        tasks = []
        developers = []
        for ta, tb in zip(parent_a.tasks, parent_b.tasks):
            if ta not in tasks:
                tasks.append(ta)
            if tb not in tasks:
                tasks.append(tb)
        for da, db in zip(parent_a.developers, parent_b.developers):
            if da not in developers:
                developers.append(da)
            if db not in developers:
                developers.append(db)
        return Gene(np.array(tasks), np.array(developers))

    def mutate(self, gene):
        k = self.instance.task_count//2
        k = np.random.randint(k-1) + 2
        a = np.random.choice(self.instance.task_count, k*2, replace=False)
        gene.tasks[a[:k]], gene.tasks[a[k:]] = (gene.tasks[a[k:]],
                                                gene.tasks[a[:k]])

        k = self.instance.team_size//2
        k = np.random.randint(k-1) + 2
        a = np.random.choice(self.instance.team_size, k*2, replace=False)
        (gene.developers[a[:k]],
         gene.developers[a[k:]]) = (gene.developers[a[k:]],
                                    gene.developers[a[:k]])


def selector(population):
    """Tournament selection."""
    pool = random.sample(population, 4)
    pool.sort()
    return pool[0], pool[1]
