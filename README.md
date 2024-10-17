# 艺术品馆藏系统

### 概述
基于Spring + Spring MVC + MyBatis的艺术品馆藏系统，使用Maven进行包管理。主要功能包括：艺术品查询、艺术品管理、艺术品信息编辑、用户（普通用户与管理员）管理、艺术品的出借（其他展馆或私人）与归还以及借还日志的记录等。

### 环境配置
#### 开发环境：Windows 10，IntelliJ IDEA 2018.3
#### 运行配置
1. 首先安装Mysql5.7，设置用户名为root，密码为123456，并保证其在运行状态，并执行library.sql文件导入数据。
2. 然后再配置Maven到环境变量中，在源代码目录下运行
```sh
# mvn jetty:run
```
3. 使用浏览器访问http://localhost:8080即可进入系统。

### 概念设计
用户分为两类：普通参观用户、艺术/美术馆管理员。管理员可以修改普通用户信息，修改艺术品信息，查看所有借还日志等；普通用户仅可以修改个人信息、出借或归还艺术品、查看自己的借还记录。
<img src="./preview/1.png" style="width: 50%"><img src="./preview/2.png" style="width: 50%;float: right">

#### 数据库E-R图
<img src="./preview/3.png">

### 逻辑设计
共有6个表：

#### 1. 艺术品目表book_info
| 名           | 类型    | 长度 | 小数点 | NULL | 用途     | 键   |
| :----------- | :------ | ---- | ------ | ---- | -------- | ---- |
| book_id      | bigint  | 20   | 0      | 否   | 编号     | ✔    |
| name         | varchar | 20   | 0      | 否   | 艺术品名  |      |
| author       | varchar | 15   | 0      | 否   | 作者     |      |
| publish      | varchar | 20   | 0      | 否   | 产权公司  |      |
| ISBN         | varchar | 15   | 0      | 否   | 标准号   |      |
| introduction | text    | 0    | 0      | 是   | 简介     |      |
| language     | varchar | 4    | 0      | 否   | 国家     |      |
| price        | decimal | 10   | 2      | 否   | 估价     |      |
| pub_date     | date    | 0    | 0      | 否   | 问世时间  |      |
| class_id     | int     | 11   | 0      | 是   | 分类号    |      |
| number       | int     | 11   | 0      | 是   | 数量     |      |

#### 2. 数据库管理员表admin
| 名       | 类型    | 长度 | 小数点 | NULL | 用途   | 键   |
| :------- | :------ | ---- | ------ | ---- | ------ | ---- |
| admin_id | bigint  | 20   | 0      | 否   | 账号   | ✔    |
| password | varchar | 15   | 0      | 否   | 密码   |      |
| username | varchar | 15   | 0      | 是   | 用户名 |      |

#### 3. 艺术品分类表class_info
| 名         | 类型    | 长度 | 小数点 | NULL | 用途   | 键   |
| :--------- | :------ | ---- | ------ | ---- | ------ | ---- |
| class_id   | int     | 11   | 0      | 否   | 类别号 | ✔    |
| class_name | varchar | 15   | 0      | 否   | 类别名 |      |

#### 4. 借还信息表lend_list
| 名        | 类型   | 长度 | 小数点 | NULL | 用途     | 键   |
| :-------- | :----- | ---- | ------ | ---- | -------- | ---- |
| ser_num   | bigint | 20   | 0      | 否   | 流水号   | ✔    |
| book_id   | bigint | 20   | 0      | 否   | 艺术品编号   |      |
| reader_id | bigint | 20   | 0      | 否   | 用户编号 |      |
| lend_date | date   | 0    | 0      | 是   | 借出日期 |      |
| back_date | date   | 0    | 0      | 是   | 归还日期 |      |

#### 5. 借还信息表reader_card
| 名        | 类型    | 长度 | 小数点 | NULL | 用途     | 键   |
| :-------- | :------ | ---- | ------ | ---- | -------- | ---- |
| reader_id | bigint  | 20   | 0      | 否   | 用户编号 | ✔    |
| password  | varchar | 15   | 0      | 否   | 密码     |      |
| username  | varchar | 15   | 0      | 是   | 用户名   |      |

#### 6. 用户信息表reader_info
| 名        | 类型    | 长度 | 小数点 | NULL | 用途     | 键   |
| :-------- | :------ | ---- | ------ | ---- | -------- | ---- |
| reader_id | bigint  | 20   | 0      | 否   | 用户编号 | ✔    |
| name      | varchar | 10   | 0      | 否   | 姓名     |      |
| sex       | varchar | 2    | 0      | 否   | 性别     |      |
| birth     | date    | 0    | 0      | 否   | 生日     |      |
| address   | varchar | 50   | 0      | 否   | 地址     |      |
| phone     | varchar | 15   | 0      | 否   | 电话     |      |

### 功能展示
#### 1.	首页登陆
管理者账号：123456/123456
用户账号：10000/123456
<img src="./preview/5.png">

#### 2.	管理员系统
用登陆进入
##### 2.1 艺术品管理
<img src="./preview/6.png">

##### 2.2 艺术品详情
<img src="./preview/7.png">

##### 2.3 普通用户管理
<img src="./preview/8.png">

##### 2.4 借还管理
<img src="./preview/9.png">

#### 3.	普通用户操作系统
##### 3.1 查看全部艺术品
<img src="./preview/10.png">

##### 3.2 个人信息查看，可以修个个人信息
<img src="./preview/11.png">

##### 3.3 个人借还情况查看
<img src="./preview/12.png">


