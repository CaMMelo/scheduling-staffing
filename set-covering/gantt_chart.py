import re
import os
import json
import cairo



BLOCK_SIZE = (20, 20)
TEXT_WIDTH = 200
PAD = 10

def gantt_chart(solution, out):
    with open(solution) as file:
        data = json.load(file)

    width = BLOCK_SIZE[0] * data['objectives']['makespan'] + TEXT_WIDTH + 2*PAD
    height = BLOCK_SIZE[1] * len(data['schedule']) + 2*PAD

    surface = cairo.ImageSurface(cairo.FORMAT_RGB16_565, width, height)
    ctx = cairo.Context(surface)

    ctx.rectangle(0, 0, width, height)
    ctx.set_source_rgb(1, 1, 1)
    ctx.fill()

    ctx.set_source_rgb(.7, .7, .7)
    ctx.set_dash([1])
    for i in range(width - PAD):
        ctx.move_to(i * BLOCK_SIZE[0] + TEXT_WIDTH + PAD, PAD)
        ctx.line_to(i * BLOCK_SIZE[0] + TEXT_WIDTH + PAD, height - PAD)
        ctx.stroke()
    ctx.set_dash([])

    ctx.select_font_face("Purisa", cairo.FONT_SLANT_NORMAL, 
                         cairo.FONT_WEIGHT_NORMAL)
    ctx.set_font_size(BLOCK_SIZE[1])
    ctx.set_source_rgb(0, 0, 0)
    for i, task in enumerate(data['schedule']):
        ctx.move_to(PAD, (i+1)*BLOCK_SIZE[1] + PAD)
        ctx.show_text(task)

        task = data['schedule'][task]

        ctx.rectangle(task['start'] * BLOCK_SIZE[0] + TEXT_WIDTH + PAD,
                      i * BLOCK_SIZE[1] + PAD, BLOCK_SIZE[0] * task['duration'],
                      BLOCK_SIZE[1])
        ctx.set_source_rgb(35/255, 132/255, 173/255)
        ctx.fill()

        ctx.rectangle(task['start'] * BLOCK_SIZE[0] + TEXT_WIDTH + PAD,
                      i * BLOCK_SIZE[1] + PAD, BLOCK_SIZE[0] * task['duration'],
                      BLOCK_SIZE[1])
        ctx.set_line_join(cairo.LINE_JOIN_MITER)
        ctx.set_line_width(2)
        ctx.set_source_rgb(0, 0, 0)
        ctx.stroke()
    out = re.sub('\.json$', '', out)
    surface.write_to_png(f'{out}.gantt.png')


def gantt_resource(solution, out):
    with open(solution) as file:
        data = json.load(file)

    developers = filter(lambda x: data['assignment'][x], data['assignment'])
    developers = [x for x in developers]
    width = BLOCK_SIZE[0] * data['objectives']['makespan'] + TEXT_WIDTH + 2*PAD
    height = BLOCK_SIZE[1] * len(developers) + 2*PAD

    surface = cairo.ImageSurface(cairo.FORMAT_RGB16_565, width, height)
    ctx = cairo.Context(surface)

    ctx.rectangle(0, 0, width, height)
    ctx.set_source_rgb(1, 1, 1)
    ctx.fill()

    ctx.set_source_rgb(.7, .7, .7)
    ctx.set_dash([1])
    for i in range(width - PAD):
        ctx.move_to(i * BLOCK_SIZE[0] + TEXT_WIDTH + PAD, PAD)
        ctx.line_to(i * BLOCK_SIZE[0] + TEXT_WIDTH + PAD, height - PAD)
        ctx.stroke()
    ctx.set_dash([])

    ctx.select_font_face("Purisa", cairo.FONT_SLANT_NORMAL,
                         cairo.FONT_WEIGHT_NORMAL)
    ctx.set_font_size(BLOCK_SIZE[1])
    ctx.set_source_rgb(0, 0, 0)

    for j, developer in enumerate(developers):
        ctx.move_to(PAD, (j+1)*BLOCK_SIZE[1] + PAD)
        ctx.show_text(developer)

        for i, task in enumerate(data['assignment'][developer]):
            task = data['schedule'][task]

            ctx.rectangle(task['start'] * BLOCK_SIZE[0] + TEXT_WIDTH + PAD,
                        j * BLOCK_SIZE[1] + PAD, BLOCK_SIZE[0] * task['duration'],
                        BLOCK_SIZE[1])
            ctx.set_source_rgb(35/255, 132/255, 173/255)
            ctx.fill()

            ctx.rectangle(task['start'] * BLOCK_SIZE[0] + TEXT_WIDTH + PAD,
                        j * BLOCK_SIZE[1] + PAD, BLOCK_SIZE[0] * task['duration'],
                        BLOCK_SIZE[1])
            ctx.set_line_join(cairo.LINE_JOIN_MITER)
            ctx.set_line_width(2)
            ctx.set_source_rgb(0, 0, 0)
            ctx.stroke()
    out = re.sub('\.json$', '', out)
    surface.write_to_png(f'{out}.resources.png')



def build_results(folder):
    try:
        os.mkdir(f'{folder}/solutions/images')
    except FileExistsError:
        pass
    for _, _, f in os.walk(f'{folder}/solutions'):
        for file in f:
            solution = f'{folder}/solutions/{file}'
            out = f'{folder}/solutions/images/{file}'
            gantt_chart(solution, out)
            gantt_resource(solution, out)
