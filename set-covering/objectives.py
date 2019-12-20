def makespan(solution, instance):
    end = 0
    for task_id in solution[0][-1]:
        duration = instance.project.tasks[task_id].expected_duration
        end = max(end, solution[2][task_id] + duration)
    return end


def affection(solution, instance):
    affection = 0
    for did in solution[1]:
        dev_traits = instance.team.developers[did].traits
        error = 0
        for tid in solution[1][did]:
            task_traits = instance.project.tasks[tid].traits
            error += sum([y - x for y, x in zip(task_traits, dev_traits)])**2
            error /= len(solution[1][did])
            affection += error
    return affection / instance.team_size


def work_force(solution, instance):
    force = 0
    for step in solution[0]:
        for tid in step:
            task = instance.project.tasks[tid]
            need = task.skills_needed
            sm = 0
            for did in step[tid]:
                dev = instance.team.developers[did]
                has = dev.skill_set
                using = need & has
                for skill in using:
                    sm += dev.skills[skill]
            force += sm / (len(need) * len(step))
    return -force


def missing_skills(solution, instance):
    missing = 0
    for step in solution[0]:
        for tid in step:
            skills = instance.project.tasks[tid].skills_needed.copy()
            for did in step[tid]:
                dev_skills = instance.team.developers[did].skill_set
                skills -= dev_skills
            missing += len(skills)
    return missing


def mean_tasks_by_resource(solution, instance):
    usage = 0
    for dev in solution[1]:
        usage -= len(solution[1][dev])
    return usage / len(solution[1])


def total_cost(solution, instance):
    total_cost = 0
    for dev in solution[1]:
        cost = instance.team.developers[dev].cost
        time = 0
        for task_id in solution[1][dev]:
            time += instance.project.tasks[task_id].expected_duration
        total_cost += cost * time
    return total_cost


def usage(solution, instance):
    horizon = makespan(solution, instance) * len(solution[1])
    hours = sum([
        instance.project.tasks[t].expected_duration
        for d in solution[1]
        for t in solution[1][d]])
    return - hours / horizon


OBJ_NAMES = {
    'makespan': makespan,
    'affection': affection,
    'work_force': work_force,
    'missing_skills': missing_skills,
    'mean_tasks_by_resource': mean_tasks_by_resource,
    'total_cost': total_cost,
    'usage': usage
}
