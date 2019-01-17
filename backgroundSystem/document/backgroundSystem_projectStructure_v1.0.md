# 一、简介

​	本项目在idea中搭建和开发，建立maven父子项目和聚合项目，用于小组的团队协作，后台系统主要是一个web系统，因此本项目整体上是一个web项目。

# 二、继承关系

​	使用maven关系整个项目，在继承关系中，子项目继承父项目的依赖，将子项目作为父项目的模块，便于依赖的统一管理， 也便于父子项目的统一编译、打包和部署。

![img](file:///C:/Users/hiram_he/AppData/Local/Temp/msohtmlclip1/01/clip_image002.png)

​						图 2-1 项目结构的继承关系

# 三、依赖关系

​	一个子项目可以依赖其他子项目，从而实现分模块开发。依赖实现在子项目的pom.xml配置文件中以<dependency></denpendency>方式说明，且依赖关系可以传递。

![img](file:///C:/Users/hiram_he/AppData/Local/Temp/msohtmlclip1/01/clip_image004.png)

​								图 3-1 项目结构的依赖关系

 

​	由继承关系可知，bs_parent_common项目中有bean模块，bs_parent_taskOfDeveloper1、taskOfDeveloper1项目中的模块主要是Dao、service，bs_parent_web项目中的模块是controller。由web项目的基本依赖关系，controller层依赖service层，service层依赖Dao层，controller、service、Dao均可能用到bean，因此service、Dao层依赖bean，而controller通过依赖传递也实现了对bean的依赖。这就是图中所体现出来的依赖关系。