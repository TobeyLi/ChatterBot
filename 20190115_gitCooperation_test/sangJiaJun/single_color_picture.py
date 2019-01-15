#!/usr/bin/env python
# coding=utf-8
 
from PIL import Image, ImageDraw, ImageFont
 
image = Image.new(mode='RGB', size=(1920, 1080),color = '#FFE4B5')
draw_table = ImageDraw.Draw(im=image)
 
image.show()  # 直接显示图片
image.save('#FFE4B5.PNG', 'PNG')  # 保存在当前路径下，格式为PNG
image.close()