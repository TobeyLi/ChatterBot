import jieba
import os

def word_div():
    filepath = os.path.join(os.getcwd(), 'corpus')
    filelist = os.listdir(filepath)
    for filename in filelist:
        if filename.endswith(".txt"):  # Specify to find the txt file.
            filename = filepath + '\\' + filename
            f1 = open(filename)
            newfilename = filename[:-4] + "_result.txt"
            f2 = open(newfilename, 'a')
            lines = f1.readlines()  # 读取全部内容
            for line in lines:
                line.replace('\t', '').replace('\n', '').replace(' ', '')
                seg_list = jieba.cut(line, cut_all=False)
                f2.write(" ".join(seg_list))
            f1.close()
            f2.close()
            os.remove(filename)
word_div()