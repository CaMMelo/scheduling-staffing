import numpy as np
import json


class Task:

    def __init__(self, id, name, expected_duration, skills_needed, traits,
                 dependencies):
        self.id = id
        self.name = name
        self.expected_duration = expected_duration
        # set: { "name" }
        self.skills_needed = skills_needed
        # 5-tuple
        self.traits = traits
        # tasks that must be executed before this
        self.dependencies = dependencies

    def __repr__(self):
        return f'{self.name}: {self.skills_needed}'

    def __json__(self):
        return {
            'name': self.name,
            'expected_duration': self.expected_duration,
            'skills_needed': [x for x in self.skills_needed],
            'traits': self.traits,
            'dependencies': [int(x) for x in self.dependencies]
        }


class Project:

    def __init__(self, name, tasks):
        self.name = name
        self.tasks = tasks

        self.skills_needed = set()
        for task in self.tasks:
            task = self.tasks[task]
            self.skills_needed.update(task.skills_needed)

        self.task_count = len(self.tasks)

    def __repr__(self):
        s = f'{self.name:^80}\n'
        for task in self.tasks:
            s += f'|~> {task}\n'
        return s

    def __json__(self):
        return {
            'name': self.name,
            'tasks': self.tasks
        }


class Developer:

    def __init__(self, id, name, skills, cost, traits):
        self.id = id
        self.name = name
        # dictionary: { "name": level, ... }
        self.skills = skills
        # 5-tuple
        self.traits = traits

        self.cost = cost

        self.skill_set = set(self.skills.keys())

    def __repr__(self):
        return f'{self.name}: {self.traits}, {self.skills}'

    def __json__(self):
        return {
            'name': self.name,
            'skills': self.skills,
            'traits': self.traits,
            'cost': self.cost
        }


class Team:

    def __init__(self, name, developers):
        self.name = name
        self.developers = developers

        self.available_skills = set()
        for dev in self.developers:
            dev = self.developers[dev]
            self.available_skills.update(dev.skills.keys())

    @property
    def size(self):
        return len(self.developers)

    def __repr__(self):
        s = f'{self.name:^80}\n'
        for dev in self.developers:
            s += f'|~> {dev}\n'
        return s

    def __json__(self):
        return {
            'name': self.name,
            'developers': self.developers
        }


class Instance:

    def __init__(self, project, team):
        self.project = project
        self.team = team

        # pega as chaves dos dicionarios ;p
        self.task_ids = [x for x in self.project.tasks]
        self.developer_ids = [x for x in self.team.developers]

    @property
    def task_count(self):
        return self.project.task_count

    @property
    def team_size(self):
        return self.team.size


def read_instance(project_file, team_file):
    project = None
    team = None
    with open(project_file, 'r') as f:
        data = json.load(f)
        name = data['name']
        tasks = {}
        for tid in data['tasks']:
            task_data = data['tasks'][tid]
            tid = int(tid)
            name = task_data['name']
            duration = task_data['expected_duration']
            skills = set(task_data['skills_needed'])
            traits = task_data['traits']
            deps = task_data['dependencies']
            tasks[tid] = Task(tid, name, duration, skills, traits, deps)
        project = Project(name, tasks)

    with open(team_file, 'r') as f:
        data = json.load(f)
        name = data['name']
        developers = {}
        for did in data['developers']:
            dev_data = data['developers'][did]
            did = int(did)
            name = dev_data['name']
            skills = dev_data['skills']
            traits = dev_data['traits']
            cost = dev_data['cost']
            developers[did] = Developer(tid, name, skills, cost, traits)
        team = Team(name, developers)

    return Instance(project, team)
