#1、php之父是谁？P
###
Rasmus Lerdorf，拉斯姆斯?勒多夫
##########
#2、 $name和$$name有什么区别？P
###
$name是变量，$$name是引用变量，如：
$name=’sex’; $$name=’male’;
则$sex = ‘male’;
##########
#3、如何提交form表单而不是用submit按钮？J
###
使用javascript的submit()方法，如onclick时调用 document.formname.submit()
##########
#4、用什么方法可以从mysql结果集中获取数据？M
###
mysql_fetch_row，mysql_fetch_array,mysql_fetch_object,mysql_fetch_assoc
##########
#5、mysql_fetch_object()和mysql_fetch_array()有什么区别？M
###
前者返回对象，需要用对象的方式遍历数据，后者返回数组，可以使用关联数组或索引数组的方式遍历数据。
##########
#6、get和post方法有什么区别？P
###
1）get方法有数据长度限制，最大2kb，post方法没有限制。
2）get方法请求数据直接显示在url上，不安全，post方法适合传输敏感请求。
##########
#7、如何从http://info@pcds.co.in中获取”pcds.co.in”？P
###
Preg_match(“/@(\S+)$/”, “http://info@pcds.co.in”, $matches);
Echo $matches[1];
##########
#8、用php和mysql如何创建一个数据库？P
###
Mysql_create_db(‘dbname’);
##########
#9、require和include有什么区别？P
###
都是用来加载文件的。
1）include报警报，require报致命错误。
2）include执行时文件每次都要进行读取和评估，require只处理一次。
3）include受流程控制影响，require不走流程控制。
##########
#10、在php文件中能否多次使用include(“xyz.php”)？P
###
可以，但如果xyz.php中有函数定义，第二次include时会报函数不能重定义错误。
##########
#11、mysql数据表引擎有什么区别，哪个是默认的？
###
1）MyISAM，默认，这种存储引擎在硬盘上会存三个文件，文件名为表名，后缀名分别为.frm(存储表结构)、.myd(存储数据)、.myi（存储索引）。
2）InnoDB，支持事务安全的存储引擎，支持提交、回滚和恢复。
3）Merge，
4）Heap（MEMORY）,内存存储引擎
5）BDB（BerkeleyDB），同样支持提交和回滚
6）EXAMPLE,
7）FEDERATED，
8）ARCHIVE，
9）CSV，
10）BLACKHOLE，
##########
#12、header()函数的作用？
###
可以给客户端发送报文头，必须在任何实际输出被发送之前调用header()函数。
利用它header()重定向，如： header(‘Location:http://baidu.com/’);
##########
#13、如何在命令行模式下执行php脚本？
###
利用PHP CLI（Command Line Interface），将脚本名作为参数，如：
$ php test1.php
##########
#14、如何配置zend框架，使其支持简写标记<??>?
###
修改php.ini文件，设置short_open_tag=on即可开启。
##########
#15、Shopping cart online validation i.e. how can we configure Paypal,etc.?
###
Nothing more we have to do only redirect to the payPal url after
submit all information needed by paypal like amount,adresss etc.
##########
#16、nl2br()函数的作用？
###
在html换行符前加<br/>标签。
##########
#17、什么是htaccess？为什么使用它？
###
.htaccess文件是apache服务器提供的配置文件方法，使用它可以实现针对指定目录的基础配置更改，被放置该文件的目录和其所有只目录都适用文件中的配置。
##########
#18、如何获取客户端ip地址，来源地址？
###
使用$_SERVER['REMOTE_ADDR']和$_SERVER['HTTP_REFERER']。
##########
#19、为什么使用lamp环境替代其他程序、服务和运行环境？
###
Lamp是开源的，linux相比windows安全性更高，apache相比iis也具函数性和安全性，mysql是目前最受欢迎的开源数据库，php相比asp等其他脚本语言更加快速。
##########
#20、如何利用mysql加密和解密数据？
###
使用AES_ENCRYPT () 和 AES_DECRYPT ()。
##########
#21、如何用php加密用户名和密码?
###
Php中的加密和解密功能：
加密				解密
AES_ENCRYT()	 	AES_DECRYPT()
ENCODE() 			DECODE()
DES_ENCRYPT() 		DES_DECRYPT()
ENCRYPT() 			不可逆
MD5() 			不可逆
OLD_PASSWORD() 	不可逆
PASSWORD() 		不可逆
SHA() 和 SHA1()		不可逆
不可逆				UNCOMPRESSED_LENGTH()
##########
#22、面向对象编程的特点和优势？
###
面向对象程序的主要优势是其易维护和易扩展性，可以有效降低维护成本。
相比过程化编程，它与现实世界认知模式更接近，更容易让非技术人员理解，使他们更容易参与和改进项目。对于某些系统，面向对象方法可以加快开发时间，因为许多对象是标准的跨系统可重复使用的，比如时间管理、航运、购物车等组件，可以供多个系统复用。
##########
#23、过程化编程和面向对象编程的区别？
###
1）过程化编程易于上手，但相比面向对象编程，它更复杂、让人难于了解整个系统。
2）过程化编程，很难使用mvc等设计模式。
3）在面向对象编程中，我们可以使用继承和多态去复用功能，但过程化编程中需要复制和粘贴。
##########
#24、友元函数有什么作用？
###

##########
#25、public, private, protected,static, transient, final 和 volatile有什么区别？
###
Public：被声明为public的元素可以在任何地方访问。
Protected：被声明为protected的元素之能在父类或定义它的类中访问。
Private：被声明为私有private的元素只能在定义它的类中访问。
Static：声明属性或方法为静态，就可以不实例化而知己访问。静态属性不能通过一个类已实例化的对象来访问（但静态方法可以）。
Final：如果父类方法声明为final，则子类无法覆盖该方法，如果一个类被声明为final，则不能被继承。
Transient：临时变量（private）不能被序列化。
Volatile：多线程时使用，声明为volatile的变量将不会由编译器进行优化，因为它们的值可能随时改变。
##########
#26、php错误有哪些类型？
###
1）notices：提示，如使用未定义变量。
2）warnings：警告，如include一个不存在的文件。
3）fatal errors：致命错误，会终止脚本运行，如实例化一个不存在的类、访问一个不存在的函数。
##########
#27、substr和subistr的功能？
###
Substr返回字符串的一部分，从第一个字符开始查找，可以传偏移量和截取个数。
Subistr是substr的不分大小写版本。
##########
#28、php3、php4和php5有什么区别？
###
很多区别，列举一些：
1）
##########
#29、如何asp页面转换为php页面？
###
有很多工具可以实现，比如http://asp2php.naken.cc./

##########
#30、函数htmlentities的作用？
###
将字符转换为html实体。如“&”会被转换为“&amp;”
##########
#31、如何获取当前时间的秒数？
###
$second = date(“s”);
##########
#32、php中如何转换时区？
###
使用date_default_timezome_get和date_default_timezone_set函数。
##########
#33、urlencode和urldecode有什么作用？
###
编码和解码url字符串，编码时会将除了-_.之外的非字符数字字符都转换为百分号（%）后跟两位十六进制数的形式，空格则编码为加号（+）。
此编码与WWW表单POST数据的编码方式是一样的，同时与application/x-www-form-urlencoded 的媒体类型编码方式一样。
##########
#34、unlink和unset函数有什么区别？
###
Unlink用于删除文件，unset用于销毁变量。
##########
#35、如何将变量写入session？
###
$_SESSION[‘name’] = ‘sonia’;
##########
#36、利用php图片函数如何获取图片的大小、类型、宽度和高度？
###
Exif_imagetype()，获取图片类型。
Getimagesize()，获取图片大小。
Imagesx()，获取图片宽度。
Imagesy()，获取图片高度。
##########
#37、php如何获取用户浏览器信息？
###
$_SERVER[‘HTTP_USER_AGENT’]
##########
#38、php上传文件大小上限是多少，如何修改上限？
###
默认上限是2mb，可以修改php.ini调整，如下：
Upload_max_filesize = 2M
##########
#39、如何提高php脚本执行时间限制？
###
修改php.ini，如下：
Max_excution_time = 30
每个脚本执行时间，单位为秒。
##########
#40、如何备份mysql表，如何恢复？
###
备份：
BACKUP TABLE 
##########
#41、如何优化或增加mysql查询语句的速度？
###
1）不使用select * ，只查询需要的字段
2）给适当的字段增加索引
3）使用limit关键字控制数据条数。
##########
#42、有什么方法可以获取当前的session id？
###
Session_id()
##########
#43、如何销毁session，如何销毁session中的变量？
###
Session_unregister可以销毁当前的sesssion
Session_unset可以释放session中的变量
##########
#44、php如何设置和销毁cookie？
###
设置：Setcookie（’user’, value, expire, path, domain）;
销毁：setcookie(‘user’, ‘’, time()-3600)
##########
#45、有什么方法可以在页面之间传递变量？
###
GET/QueryString
POST
##########
#46、ereg_replace和eregi_replace有什么区别？
###
都是替换，后者忽略大小写
##########
#47、有哪些数组排序函数？
###
Sort()，arsort()
Assort(),ksort()
Natsort(),natcasesort()
Rsort(),usort()
Array_muletisort(),uksort()
##########
#48、如何获取数组中的元素个数？
###
1)sizeof()，count()的别名
2)count()
##########
#49、session_set_save_handler 有什么作用？
###
用户级session存储函数，可以将数据存储到session中。
##########
#50、如何判断一个变量是数字？
###
1）is_numeric()，如果是数字或数字字符串返回true，否则返回false。
2）isNaN()，用于判断一个值是否不是一个数字
##########
#51、有什么工具可以画mysql的E-R图？
###
Case studio
Smart Draw
##########
#52、php中如何从一个数据库查询数据，然后将数据存储到另一个数据库中？
###

##########
#53、列出php中的预定义类？
###
Directory
stdClass
__PHP_Incomplete_Class
Exception
Php_user_filter
##########
#54、如何写一个脚本支持双语（如英语、德语）？
###
可以生成两个语言文件，分别存储变量，在运行php脚本时选择所需的语言，引入该语言的变量。
##########
#55、抽象类和接口有什么区别？
###
抽象类中可能有一个或多个抽象方法，但不必所有方法都是抽象的。
抽象类的抽象方法必须由子类实现。
接口中的所有方法都是抽象方法。
实现接口的类必须实现所有的抽象方法。
##########
#56、使用javascript如何发送邮件？
###
Js没有任何网络功能，因为他是为客户端设计的。
但我们可以用js调用客户端的邮件协议mailto来提示发送邮件，这需要客户端的批准。
##########
#58、存储过程、触发器、索引有什么好处？
###

##########
#59、mysql表名、数据库名和字段名的最大长度?
###
Database	64
Table		64
Column	64
Index		64
Alias		255
##########
#60、mysql中SET函数能接收多少值？
###
最多64个值
##########
#61、除了explain命令还有什么命令可以获取表结构？
###
Desc(ribe) 表名；
##########
#62、在创建表时，有多少个表会创建，都是什么？
###
.frm文件，用于存储表结构
.MYD文件，用于存储数据
.MYI文件，用于存储索引
##########
#63、.frm、.myd、.myi扩展名的文件包含什么，有什么作用？
###
Mysql默认表类型是MyISAM，每个MyISAM表在硬盘上存储都包含这三种文件。
同上一题
##########
#64、mysql数据库最大容量是？
###

##########
#65、mysql如何使用grant和revoke命令？
###

##########
#66、解释归一化的概念？
###
##########
#67、mysql中如何获取一张表的数据条数？
###
SELECT COUNT（*） FROM table_name;
##########
#68、php中如何从结果集中获取数据条数？
###
$result = mysql_qurery($sql, $db_link);
$num = mysql_num_rows($result);
##########
#69、mysql中如何获取当前时间？
###
日期：SELECT CURDATE();
	CURRENT_DATE()  = CURDATE()
时间：SELECT CURTIME();
	CURRENT_TIME() = CURTIME()
##########
#70、css有什么优缺点？
###

##########
#71、php支持什么类型的继承？
###
Php支持单继承，使用extends关键词继承类。
##########
#72、Primary key和unique key有什么区别？
###
Primary key：一张表只能有一个字段为主键，主键上每条数据的值唯一，值不能为NULL。
Unique key：一张表中可以存在多个字段为unique key，用于保证字段中数据的唯一性，值可以为NULL。
##########
#73、什么是垃圾回收？默认时间？刷新时间？
###
垃圾回收在php中是自动化的，
##########
#74、mysql和php有什么优劣势？
###
两者都是开源免费的，php比asp和jsp运行都快。
##########
#75、在sql中group by和order by有什么区别？
###
Order by 是在同一字段上对每行的值进行比较。
Group by是在一个或多个字段上对数据进行分组，将相同值的行合并，可以配合COUNT、SUM、AVG使用。
##########
#76、char和varchar类型有什么区别？
###
Char类型占用字节数固定，如char（15），存储’name’会占用2字节，有13个字节会浪费。
Varchar类型占用字节数跟存储数据有关，如varchar（15），存储’name’会占用2字节，不会多占用13个字节。
##########
#77、php中md5的用法？
###
Md5加密会得到32位的字串，不可逆。
##########
#78、如何将文本数据导入数据库？
###
命令：LOAD DATA INFILE file_name;要保证文件中的数据结构正确。
##########
#79、mysql如何获取两个日期的时间差？
###
SELECT DATEDIFF(‘2013-01-20’, ‘2013-09-30’);
##########
#80、php如何获取两个日期的时间差？
###
$date1 = date(‘Y-m-d’);
$date2 = ‘2013-10-30’;
$days = (strtotime($date1) – strtotime($date2)) / (60*60*24);
##########
#81、php如何自动加载类？
###
使用spl_autoload_register();
详细。。。
##########
#82、php中有几种继承，如何实现？
###
Php类只支持单继承，但接口可以实现多继承。
##########
#83、php如何获知用户读取了邮件？
###
？？Disposition-Notification-To
##########
#84、session默认生存时间和路径？
###
Php中Session默认生存时间为1440秒或24分钟。
默认路径为/tmp
##########
#85、如何判断用户退出？何时空闲？
###
在加载页面时，通过检查session变量是否存在可以判断用户登录状态。默认情况下session在浏览器关闭时过期，可以在php.ini中修改过期时间，如要改成关闭浏览器后5分钟，则session.cookie_lifetime = 300，重启apache。
##########
#86、如何跟踪用户登录？
###
如果用户登录获取用户ip、userid等配置，存储到数据库中标记为在线，如果用户登出或session过期则标记为离线，这样计算标记为在线的数据条数就可以知道在线人数。
##########
#87、php中有什么库可以操作pdf？
###
PDFlib，php4中提供函数，php5中提供面向对象接口。
FPDF是一个php类，可以实现pdf操作。
##########
#88、php有什么图片操作类库？
###
GD库，还有其他库可用，看需要处理什么类型的图片
##########
#89、什么是设计模式？单例模式？
###
设计模式是一般的可复用的解决方案，解决软件设计中经常出现的问题。
单例模式，确保一个类只有一个实例，并提供一个全局访问点。
##########
#90、什么是魔术方法？魔术常量？
###
魔术方法是所有类的实例可以使用的方法。
魔术方法已”__”开头。目前有以下魔术方法：
__construct() __destruct() __set() __get() __call() __toString() __sleep()
__wakeup() __isset() __unset() __autoload() __clone()
魔术常量是php中的预定义常量。包括：
__LINE__，文件中的当前行号
__FILE__，文件的完整路径和文件名。
__DIR__，文件所在的目录。
__FUNCTION__，函数名称
__CLASS__，类名称。
__TRAIT__，Trait名称
__METHOD__，类的方法名
__NAMESPACE__，当前命名空间名称。

##########
#91、什么是魔术引号？
###
魔术引号（magic quote）是一个自动将php脚本的数据进行转义的过程。最好在编码时不要转义而在运行时根据需要而转义。
##########
#92、什么是跨站脚本？SQL注入？
###
跨站脚本（XSS）是一种计算机安全漏洞，是代码注入的一种，通常出现在web应用程序上。它允许恶意用户将代码注入到网页上，其他用户观看网页时就会收到影响。这种攻击通常包含了html以及客户端脚本语言。
SQL注入是发生于应用程序数据库层的安全漏洞。是在输入的字符中注入SQL指令，在设计不良的程序中忽略了检查，那么这些注入的指令会被数据库误认为是正常的SQL指令而运行，因此遭到破坏。
##########
#93、什么是url重写？
###
url重写可以将动态url转为静态url。
静态url的好处：
1）静态url在搜索引擎上能得到更好的排名
2）搜索引擎认为动态url页面比静态url页面慢很多
3）静态url对用户更友好
我们可以利用url重写将变量/cookies写到url上，从而处理session
##########
#94、php主要的安全漏洞是什么？如何预防？
###
1）在仔细检查用户输入前，不要include、require甚至打开一个用户输入的文件。
2）注意不要轻易在用户输入值上使用eval()函数，避免执行到危险命令。
3）不要轻易使用register_globals = ON，它的设计目的是使php更简单，但也会带来更多安全漏洞。
4）永远不要执行未转义的查询。
5）为保护区域，使用session或每次验证的登录
6）如果不想文件被看见，把文件加上.php后缀
##########
#95、php是否支持微软的SQL server？
###
支持，使用mssql或odbc模块可以访问SQL server
##########
#96、什么是MVC？为什么使用它？
###
MVC是软件工程中的一种设计模式。把软件系统分为三个部分：
模型：算法或数据库管理
视图：界面设计人员进行图形界面设计。
控制器：负责转发请求，对请求进行处理

##########
#97、什么是框架？工作原理？有什么优点？
###
在一般情况下，
##########
#98、什么是CURL？
###
CURL是client URL library的简称。
Curl是一种传输文件的命令行工具，支持多种协议，如FTP, FTPS, HTTP, HTTPS, SCP, SFTP, TFTP, TELNET,DICT, LDAP, LDAPS and FILE。

##########
#99、什么是PDO？
###
Pdo扩展定义了一个轻量级的、一致的接口用于在php中访问数据库。支持多种数据库服务器。
Php有很多优点，如干净、简单、可移植的api，但也有缺点，如它不允许使用一些数据库新功能，如mysql的多语句支持。
##########
#100、什么是php的mysqli扩展？
###
Mysqli扩展增加了mysql4.1.3以后的新特性，php5开始支持。
Mysqli扩展的新特性：
面向对象接口
支持预处理
支持多个语句
支持事务
增强的调试功能
嵌入式服务器支持



Linux=L
Apache=A
Mysql=M
Php=P
HTML=H
Javascript =J

##########
#1、php之父是谁？P
###
Rasmus Lerdorf，拉斯姆斯?勒多夫
##########
#2、 $name和$$name有什么区别？P
###
$name是变量，$$name是引用变量，如：
$name=’sex’; $$name=’male’;
则$sex = ‘male’;
##########
#3、如何提交form表单而不是用submit按钮？J
###
使用javascript的submit()方法，如onclick时调用 document.formname.submit()
##########
#4、用什么方法可以从mysql结果集中获取数据？M
###
mysql_fetch_row，mysql_fetch_array,mysql_fetch_object,mysql_fetch_assoc
##########
#5、mysql_fetch_object()和mysql_fetch_array()有什么区别？M
###
前者返回对象，需要用对象的方式遍历数据，后者返回数组，可以使用关联数组或索引数组的方式遍历数据。
##########
#6、get和post方法有什么区别？P
###
1）get方法有数据长度限制，最大2kb，post方法没有限制。
2）get方法请求数据直接显示在url上，不安全，post方法适合传输敏感请求。
##########
#7、如何从http://info@pcds.co.in中获取”pcds.co.in”？P
###
Preg_match(“/@(\S+)$/”, “http://info@pcds.co.in”, $matches);
Echo $matches[1];
##########
#8、用php和mysql如何创建一个数据库？P
###
Mysql_create_db(‘dbname’);
##########
#9、require和include有什么区别？P
###
都是用来加载文件的。
1）include报警报，require报致命错误。
2）include执行时文件每次都要进行读取和评估，require只处理一次。
3）include受流程控制影响，require不走流程控制。
##########
#10、在php文件中能否多次使用include(“xyz.php”)？P
###
可以，但如果xyz.php中有函数定义，第二次include时会报函数不能重定义错误。
##########
#11、mysql数据表引擎有什么区别，哪个是默认的？
###
1）MyISAM，默认，这种存储引擎在硬盘上会存三个文件，文件名为表名，后缀名分别为.frm(存储表结构)、.myd(存储数据)、.myi（存储索引）。
2）InnoDB，支持事务安全的存储引擎，支持提交、回滚和恢复。
3）Merge，
4）Heap（MEMORY）,内存存储引擎
5）BDB（BerkeleyDB），同样支持提交和回滚
6）EXAMPLE,
7）FEDERATED，
8）ARCHIVE，
9）CSV，
10）BLACKHOLE，
##########
#12、header()函数的作用？
###
可以给客户端发送报文头，必须在任何实际输出被发送之前调用header()函数。
利用它header()重定向，如： header(‘Location:http://baidu.com/’);
##########
#13、如何在命令行模式下执行php脚本？
###
利用PHP CLI（Command Line Interface），将脚本名作为参数，如：
$ php test1.php
##########
#14、如何配置zend框架，使其支持简写标记<??>?
###
修改php.ini文件，设置short_open_tag=on即可开启。
##########
#15、Shopping cart online validation i.e. how can we configure Paypal,etc.?
###
Nothing more we have to do only redirect to the payPal url after
submit all information needed by paypal like amount,adresss etc.
##########
#16、nl2br()函数的作用？
###
在html换行符前加<br/>标签。
##########
#17、什么是htaccess？为什么使用它？
###
.htaccess文件是apache服务器提供的配置文件方法，使用它可以实现针对指定目录的基础配置更改，被放置该文件的目录和其所有只目录都适用文件中的配置。
##########
#18、如何获取客户端ip地址，来源地址？
###
使用$_SERVER['REMOTE_ADDR']和$_SERVER['HTTP_REFERER']。
##########
#19、为什么使用lamp环境替代其他程序、服务和运行环境？
###
Lamp是开源的，linux相比windows安全性更高，apache相比iis也具函数性和安全性，mysql是目前最受欢迎的开源数据库，php相比asp等其他脚本语言更加快速。
##########
#20、如何利用mysql加密和解密数据？
###
使用AES_ENCRYPT () 和 AES_DECRYPT ()。
##########
#21、如何用php加密用户名和密码?
###
Php中的加密和解密功能：
加密				解密
AES_ENCRYT()	 	AES_DECRYPT()
ENCODE() 			DECODE()
DES_ENCRYPT() 		DES_DECRYPT()
ENCRYPT() 			不可逆
MD5() 			不可逆
OLD_PASSWORD() 	不可逆
PASSWORD() 		不可逆
SHA() 和 SHA1()		不可逆
不可逆				UNCOMPRESSED_LENGTH()
##########
#22、面向对象编程的特点和优势？
###
面向对象程序的主要优势是其易维护和易扩展性，可以有效降低维护成本。
相比过程化编程，它与现实世界认知模式更接近，更容易让非技术人员理解，使他们更容易参与和改进项目。对于某些系统，面向对象方法可以加快开发时间，因为许多对象是标准的跨系统可重复使用的，比如时间管理、航运、购物车等组件，可以供多个系统复用。
##########
#23、过程化编程和面向对象编程的区别？
###
1）过程化编程易于上手，但相比面向对象编程，它更复杂、让人难于了解整个系统。
2）过程化编程，很难使用mvc等设计模式。
3）在面向对象编程中，我们可以使用继承和多态去复用功能，但过程化编程中需要复制和粘贴。
##########
#24、友元函数有什么作用？
###

##########
#25、public, private, protected,static, transient, final 和 volatile有什么区别？
###
Public：被声明为public的元素可以在任何地方访问。
Protected：被声明为protected的元素之能在父类或定义它的类中访问。
Private：被声明为私有private的元素只能在定义它的类中访问。
Static：声明属性或方法为静态，就可以不实例化而知己访问。静态属性不能通过一个类已实例化的对象来访问（但静态方法可以）。
Final：如果父类方法声明为final，则子类无法覆盖该方法，如果一个类被声明为final，则不能被继承。
Transient：临时变量（private）不能被序列化。
Volatile：多线程时使用，声明为volatile的变量将不会由编译器进行优化，因为它们的值可能随时改变。
##########
#26、php错误有哪些类型？
###
1）notices：提示，如使用未定义变量。
2）warnings：警告，如include一个不存在的文件。
3）fatal errors：致命错误，会终止脚本运行，如实例化一个不存在的类、访问一个不存在的函数。
##########
#27、substr和subistr的功能？
###
Substr返回字符串的一部分，从第一个字符开始查找，可以传偏移量和截取个数。
Subistr是substr的不分大小写版本。
##########
#28、php3、php4和php5有什么区别？
###
很多区别，列举一些：
1）
##########
#29、如何asp页面转换为php页面？
###
有很多工具可以实现，比如http://asp2php.naken.cc./

##########
#30、函数htmlentities的作用？
###
将字符转换为html实体。如“&”会被转换为“&amp;”
##########
#31、如何获取当前时间的秒数？
###
$second = date(“s”);
##########
#32、php中如何转换时区？
###
使用date_default_timezome_get和date_default_timezone_set函数。
##########
#33、urlencode和urldecode有什么作用？
###
编码和解码url字符串，编码时会将除了-_.之外的非字符数字字符都转换为百分号（%）后跟两位十六进制数的形式，空格则编码为加号（+）。
此编码与WWW表单POST数据的编码方式是一样的，同时与application/x-www-form-urlencoded 的媒体类型编码方式一样。
##########
#34、unlink和unset函数有什么区别？
###
Unlink用于删除文件，unset用于销毁变量。
##########
#35、如何将变量写入session？
###
$_SESSION[‘name’] = ‘sonia’;
##########
#36、利用php图片函数如何获取图片的大小、类型、宽度和高度？
###
Exif_imagetype()，获取图片类型。
Getimagesize()，获取图片大小。
Imagesx()，获取图片宽度。
Imagesy()，获取图片高度。
##########
#37、php如何获取用户浏览器信息？
###
$_SERVER[‘HTTP_USER_AGENT’]
##########
#38、php上传文件大小上限是多少，如何修改上限？
###
默认上限是2mb，可以修改php.ini调整，如下：
Upload_max_filesize = 2M
##########
#39、如何提高php脚本执行时间限制？
###
修改php.ini，如下：
Max_excution_time = 30
每个脚本执行时间，单位为秒。
##########
#40、如何备份mysql表，如何恢复？
###
备份：
BACKUP TABLE 
##########
#41、如何优化或增加mysql查询语句的速度？
###
1）不使用select * ，只查询需要的字段
2）给适当的字段增加索引
3）使用limit关键字控制数据条数。
##########
#42、有什么方法可以获取当前的session id？
###
Session_id()
##########
#43、如何销毁session，如何销毁session中的变量？
###
Session_unregister可以销毁当前的sesssion
Session_unset可以释放session中的变量
##########
#44、php如何设置和销毁cookie？
###
设置：Setcookie（’user’, value, expire, path, domain）;
销毁：setcookie(‘user’, ‘’, time()-3600)
##########
#45、有什么方法可以在页面之间传递变量？
###
GET/QueryString
POST
##########
#46、ereg_replace和eregi_replace有什么区别？
###
都是替换，后者忽略大小写
##########
#47、有哪些数组排序函数？
###
Sort()，arsort()
Assort(),ksort()
Natsort(),natcasesort()
Rsort(),usort()
Array_muletisort(),uksort()
##########
#48、如何获取数组中的元素个数？
###
1)sizeof()，count()的别名
2)count()
##########
#49、session_set_save_handler 有什么作用？
###
用户级session存储函数，可以将数据存储到session中。
##########
#50、如何判断一个变量是数字？
###
1）is_numeric()，如果是数字或数字字符串返回true，否则返回false。
2）isNaN()，用于判断一个值是否不是一个数字
##########
#51、有什么工具可以画mysql的E-R图？
###
Case studio
Smart Draw
##########
#52、php中如何从一个数据库查询数据，然后将数据存储到另一个数据库中？
###

##########
#53、列出php中的预定义类？
###
Directory
stdClass
__PHP_Incomplete_Class
Exception
Php_user_filter
##########
#54、如何写一个脚本支持双语（如英语、德语）？
###
可以生成两个语言文件，分别存储变量，在运行php脚本时选择所需的语言，引入该语言的变量。
##########
#55、抽象类和接口有什么区别？
###
抽象类中可能有一个或多个抽象方法，但不必所有方法都是抽象的。
抽象类的抽象方法必须由子类实现。
接口中的所有方法都是抽象方法。
实现接口的类必须实现所有的抽象方法。
##########
#56、使用javascript如何发送邮件？
###
Js没有任何网络功能，因为他是为客户端设计的。
但我们可以用js调用客户端的邮件协议mailto来提示发送邮件，这需要客户端的批准。
##########
#58、存储过程、触发器、索引有什么好处？
###

##########
#59、mysql表名、数据库名和字段名的最大长度?
###
Database	64
Table		64
Column	64
Index		64
Alias		255
##########
#60、mysql中SET函数能接收多少值？
###
最多64个值
##########
#61、除了explain命令还有什么命令可以获取表结构？
###
Desc(ribe) 表名；
##########
#62、在创建表时，有多少个表会创建，都是什么？
###
.frm文件，用于存储表结构
.MYD文件，用于存储数据
.MYI文件，用于存储索引
##########
#63、.frm、.myd、.myi扩展名的文件包含什么，有什么作用？
###
Mysql默认表类型是MyISAM，每个MyISAM表在硬盘上存储都包含这三种文件。
同上一题
##########
#64、mysql数据库最大容量是？
###

##########
#65、mysql如何使用grant和revoke命令？
###

##########
#66、解释归一化的概念？
###
##########
#67、mysql中如何获取一张表的数据条数？
###
SELECT COUNT（*） FROM table_name;
##########
#68、php中如何从结果集中获取数据条数？
###
$result = mysql_qurery($sql, $db_link);
$num = mysql_num_rows($result);
##########
#69、mysql中如何获取当前时间？
###
日期：SELECT CURDATE();
	CURRENT_DATE()  = CURDATE()
时间：SELECT CURTIME();
	CURRENT_TIME() = CURTIME()
##########
#70、css有什么优缺点？
###

##########
#71、php支持什么类型的继承？
###
Php支持单继承，使用extends关键词继承类。
##########
#72、Primary key和unique key有什么区别？
###
Primary key：一张表只能有一个字段为主键，主键上每条数据的值唯一，值不能为NULL。
Unique key：一张表中可以存在多个字段为unique key，用于保证字段中数据的唯一性，值可以为NULL。
##########
#73、什么是垃圾回收？默认时间？刷新时间？
###
垃圾回收在php中是自动化的，
##########
#74、mysql和php有什么优劣势？
###
两者都是开源免费的，php比asp和jsp运行都快。
##########
#75、在sql中group by和order by有什么区别？
###
Order by 是在同一字段上对每行的值进行比较。
Group by是在一个或多个字段上对数据进行分组，将相同值的行合并，可以配合COUNT、SUM、AVG使用。
##########
#76、char和varchar类型有什么区别？
###
Char类型占用字节数固定，如char（15），存储’name’会占用2字节，有13个字节会浪费。
Varchar类型占用字节数跟存储数据有关，如varchar（15），存储’name’会占用2字节，不会多占用13个字节。
##########
#77、php中md5的用法？
###
Md5加密会得到32位的字串，不可逆。
##########
#78、如何将文本数据导入数据库？
###
命令：LOAD DATA INFILE file_name;要保证文件中的数据结构正确。
##########
#79、mysql如何获取两个日期的时间差？
###
SELECT DATEDIFF(‘2013-01-20’, ‘2013-09-30’);
##########
#80、php如何获取两个日期的时间差？
###
$date1 = date(‘Y-m-d’);
$date2 = ‘2013-10-30’;
$days = (strtotime($date1) – strtotime($date2)) / (60*60*24);
##########
#81、php如何自动加载类？
###
使用spl_autoload_register();
详细。。。
##########
#82、php中有几种继承，如何实现？
###
Php类只支持单继承，但接口可以实现多继承。
##########
#83、php如何获知用户读取了邮件？
###
？？Disposition-Notification-To
##########
#84、session默认生存时间和路径？
###
Php中Session默认生存时间为1440秒或24分钟。
默认路径为/tmp
##########
#85、如何判断用户退出？何时空闲？
###
在加载页面时，通过检查session变量是否存在可以判断用户登录状态。默认情况下session在浏览器关闭时过期，可以在php.ini中修改过期时间，如要改成关闭浏览器后5分钟，则session.cookie_lifetime = 300，重启apache。
##########
#86、如何跟踪用户登录？
###
如果用户登录获取用户ip、userid等配置，存储到数据库中标记为在线，如果用户登出或session过期则标记为离线，这样计算标记为在线的数据条数就可以知道在线人数。
##########
#87、php中有什么库可以操作pdf？
###
PDFlib，php4中提供函数，php5中提供面向对象接口。
FPDF是一个php类，可以实现pdf操作。
##########
#88、php有什么图片操作类库？
###
GD库，还有其他库可用，看需要处理什么类型的图片
##########
#89、什么是设计模式？单例模式？
###
设计模式是一般的可复用的解决方案，解决软件设计中经常出现的问题。
单例模式，确保一个类只有一个实例，并提供一个全局访问点。
##########
#90、什么是魔术方法？魔术常量？
###
魔术方法是所有类的实例可以使用的方法。
魔术方法已”__”开头。目前有以下魔术方法：
__construct() __destruct() __set() __get() __call() __toString() __sleep()
__wakeup() __isset() __unset() __autoload() __clone()
魔术常量是php中的预定义常量。包括：
__LINE__，文件中的当前行号
__FILE__，文件的完整路径和文件名。
__DIR__，文件所在的目录。
__FUNCTION__，函数名称
__CLASS__，类名称。
__TRAIT__，Trait名称
__METHOD__，类的方法名
__NAMESPACE__，当前命名空间名称。

##########
#91、什么是魔术引号？
###
魔术引号（magic quote）是一个自动将php脚本的数据进行转义的过程。最好在编码时不要转义而在运行时根据需要而转义。
##########
#92、什么是跨站脚本？SQL注入？
###
跨站脚本（XSS）是一种计算机安全漏洞，是代码注入的一种，通常出现在web应用程序上。它允许恶意用户将代码注入到网页上，其他用户观看网页时就会收到影响。这种攻击通常包含了html以及客户端脚本语言。
SQL注入是发生于应用程序数据库层的安全漏洞。是在输入的字符中注入SQL指令，在设计不良的程序中忽略了检查，那么这些注入的指令会被数据库误认为是正常的SQL指令而运行，因此遭到破坏。
##########
#93、什么是url重写？
###
url重写可以将动态url转为静态url。
静态url的好处：
1）静态url在搜索引擎上能得到更好的排名
2）搜索引擎认为动态url页面比静态url页面慢很多
3）静态url对用户更友好
我们可以利用url重写将变量/cookies写到url上，从而处理session
##########
#94、php主要的安全漏洞是什么？如何预防？
###
1）在仔细检查用户输入前，不要include、require甚至打开一个用户输入的文件。
2）注意不要轻易在用户输入值上使用eval()函数，避免执行到危险命令。
3）不要轻易使用register_globals = ON，它的设计目的是使php更简单，但也会带来更多安全漏洞。
4）永远不要执行未转义的查询。
5）为保护区域，使用session或每次验证的登录
6）如果不想文件被看见，把文件加上.php后缀
##########
#95、php是否支持微软的SQL server？
###
支持，使用mssql或odbc模块可以访问SQL server
##########
#96、什么是MVC？为什么使用它？
###
MVC是软件工程中的一种设计模式。把软件系统分为三个部分：
模型：算法或数据库管理
视图：界面设计人员进行图形界面设计。
控制器：负责转发请求，对请求进行处理

##########
#97、什么是框架？工作原理？有什么优点？
###
在一般情况下，
##########
#98、什么是CURL？
###
CURL是client URL library的简称。
Curl是一种传输文件的命令行工具，支持多种协议，如FTP, FTPS, HTTP, HTTPS, SCP, SFTP, TFTP, TELNET,DICT, LDAP, LDAPS and FILE。

##########
#99、什么是PDO？
###
Pdo扩展定义了一个轻量级的、一致的接口用于在php中访问数据库。支持多种数据库服务器。
Php有很多优点，如干净、简单、可移植的api，但也有缺点，如它不允许使用一些数据库新功能，如mysql的多语句支持。
##########
#100、什么是php的mysqli扩展？
###
Mysqli扩展增加了mysql4.1.3以后的新特性，php5开始支持。
Mysqli扩展的新特性：
面向对象接口
支持预处理
支持多个语句
支持事务
增强的调试功能
嵌入式服务器支持

##########
#101、写出Zend框架的目录结构，简单说明目录作用？
###
|--application			应用目录
|--controllers		控制器目录
		|--models			模型目录
		|--views			视图目录
		|--config			配置文件目录
	|--library				通用类目录
		|--zend				zend类
		|--smarty			smarty模板引擎
	|--www					文档根目录
		|--images			图片目录
		|--css				样式表目录
		|--js				Javascript目录
	|--tmp					临时文件目录
##########
#102、php如何抛出和接收错误？
###
使用try{……}catch(Exception $e){……}语法抛出和接收错误。
在catch体内使用$e->getMessage();可以获取错误信息。
##########
#103、下面的类是否正确，如果正确请补全方法输入类属性$_a;错误请修改并输出属性$_a
###
<?php
Class A 
{
	Prorected $_a=1;
	Public function test()
{	
}
}
?>
错误，改正为：
<?php
Class A{
protected $_a=1;
Public function test()
{	
Echo $this->_a;
}
}
$b=new A();
$b->test();
?>
##########
#102、请取出数组中的最大值
###
$a=array(1,9,3,5,6,8);
$max=array_shift(rsort($a));
或
Echo max($a);
##########
#103、请说明PHP中传值和引用的区别。什么时候传值什么时候引用？
###
传值只是把一个变量的值传给了另一个变量，而引用使两者指向同一个地址。
如果不想改变原来的值的时候用传值，如果要让函数改变原变量的值就可以使用引用。
##########
#104、有一个一维数组，里面存储整形数据，请写一个函数，将他们按从大到校的顺序排列。要求执行效率高。并说明如何改善执行效率。（该函数必须自己实现，不能使用PHP函数）
###
$a=array(1,9,3,5,6,8,7);
function mp_rsort($arr){
		$count=count($arr);
		if($count<=0){
			return false;
}
for($i=0;$i<$m-1;$i++){
			for($j=m;$j>0;$j--){
				if($arr[$j]>$arr[$j-1]){
					$tmp=$arr[$j];
					$arr[$j]=$arr[$j-1];
					$arr[$j-1]=$tmp;
}
}
}
return $arr;
}
print_r(mp_rsort($a));
将数组长度计算放在循环之前，可以提高执行效率，因为不用每次重新计算。
可以换快速排序。
##########
#105、请问同时满足这样条件的数：被10除于9，被9除于8，被8除于7，在100—1000之间，有几个这样的数？（并写出算法）C
###
A不存在，B 1个  C2个   D 3个
	该数加1都能被10、9、8整除，所以是10、9、8公倍数减1的数。
	最小公倍数是360，所以：
	360-1 ，360*2-1
	算法如下。
	For($i=100;$i<=1000;$i++){
		If($i%10==9 && $i%9==8  && $i%8==7){
			$arr[]=$i;
}
}
Print_r($arr);
结果:
Array(0=>359,1=>719);
##########
#106、请写出一个简单的静态数组？
###
Static $arr=array();
##########
#107、写一个简单的jquery显示隐藏代码？
###
$(“#test”).hide();
$(“#test”).show();
##########
#108、用PHP获取当前时间并打印，打印格式：2006-5-10 22:21:21
###
 Echo data(“Y-m-d H:i:s”);
##########
#109、字符串转数组,数组转字符串,字符串截取,字符串替换,字符串查找的函数分别是什么?
###
字符串转数组：Explode、str_split
数组转字符串：Implode、join
字符串截取：substr
字符串替换：Str_replace
字符串查找：Strpos、stripos、strstr、strrchr
##########
#110、写出下列代码的数据结果。 undone
###
$date='08/26/2003';
print ereg_replace(“([0-9]+)/([0-9]+)/([0-9]+)”,2/1/3,$date);
没有输出结果
##########
#111、从表login中选出name字段包含admin的前10条结果所有信息的sql语句 
###
SELECT * FROM login WHERE name LIKE ‘%admin%’ LIMIT 0,10;

##########
#112、解释左连接,右连接,内连接,全连接，索引
###
左连接：以左表为基础，显示左表中的所有列，不管是否与关联条件相匹配，而右表中的数据只显示与关联条件相匹配的列，不匹配的列以NULL字符填充。
右连接：以右表为基础，显示右表中的所有列，不管是否与关联条件相匹配，而左表中的数据只显示与关联条件相匹配的列，不匹配的列以NULL字符填充。
内连接：只显示多表之间与管理按条件相匹配的列
全连接：显示多个表中的所有列，不匹配关联条件的列以NULL字符填充，mysql本身不支持全连接，可以用左连接union右连接实现。
索引：是对数据库表中一列或多列的值进行排序的一种结构，使用索引可以快速访问数据库表中的特定信息。
##########
#113、简述论坛中无限分类的实现原理。
###
论坛中版块要使用到无限分类，设计表时需要三个字段，id（版块id，主键自增）、pid（上级版块id）和path（版块路径）。
版块添加时(需要判断，如果是一级版块则pid为0)，分两步，第一步拿到pid和其他字段信息存入数据库并取得版块自增id，第二步，使用pid查询上级版块的path值，将这个path值和刚获取的自增id使用特定分隔符拼成字符串，将这个新的path值更新到新版块信息中。
版块查询时，如果需要遍历所有版块，则查询时按path排序。如果需要查询某版块下的所有子分类和更深层级分类，可以使用like条件按path相同部分查询，如：SELECT * FROM forums WHERE path LIKE ‘0,1%’。

##########
#114、写一个函数，尽可能高效的，从一个标准 url 里取出文件的扩展名
###
例如: http://www.test.com.cn/abc/de/fg.php?id=1需要取出php或.php
<?php
	Function getSuffix($url){
		$b=parse_url($url);
$reg=’/\.\w+/’;
		preg_match($reg,$b[‘path’],$arr);
		Return $arr[0];
}
Echo getSuffix($url);
?>
##########
#115、描述一下大流量高并发量网站的解决方案
###
1）确认服务器硬件是否足够支持当前的流量。
2）使用memcache缓存技术，将动态数据缓存到文件中，动态网页直接调用这些文件，而不必在访问数据库。
3）禁止外部的盗链。外部网站的图片或者文件盗链往往会带来大量的负载压力，因此应该严格限制外部对自身图片或者文件盗链，可以通过apache的URL重定向来防止盗链。
4）控制大文件的下载。大文件的下载会占用很大的流量，对于非SCSI硬盘来说会消耗，使得网站响应能力下降。
5）使用不同的主机分流主要流量。
6）使用流量统计软件。在网站上安装一个流量统计软件，可以即时知道哪些地方耗费了大量流量，哪些页面需要再进行优化。
##########
#116、如何设计或配置Mysql，才能达到高效使用的目的。
###
1）数据库设计方面，设计结构良好的数据库，允许部分数据冗余。
	选取最适用的字段属性，尽可能把字段设置为NOTNULL，这样在查询的时候，数据库不用去比较NULL值。
2）系统架构设计方面，表散列，把海量数据散列到几个不同的表里面，集群，数据库查询和写入分开。
	写高效sql语句，以提高效率。
	使用连接(join)来代替子查询
	使用联合(union)来代替手动创建的临时表
	所得皆必须，只从数据库取必须的数据。
	必要的时候用不同的存储引擎，比如Innodb可以减少死锁，HEAP可以提高一个数量级的查询速度。
	使用事务
	使用外键
	使用索引

##########
#117、如何进行防SQL注入？
###
1）过滤掉一些常见的数据库操作关键字：select,insert,update,delete,and,*等
或者通过系统函数：addslashes(需要被过滤的内容)来进行过滤。
2）在PHP配置文件中
Register_globals=off;设置为关闭状态 //作用将注册全局变量关闭。
比如：接收POST表单的值使用$_POST['user'],如果将register_globals=on;直接使用$user可以接收表单的值。
 3）SQL语句书写的时候尽量不要省略小引号(tab键上面那个)和单引号
 4）提高数据库命名技巧，对于一些重要的字段根据程序的特点命名，取不易被猜到的
 5）对于常用的方法加以封装，避免直接暴漏SQL语句
 6）开启PHP安全模式
Safe_mode=on;
 7）打开magic_quotes_gpc来防止SQL注入
Magic_quotes_gpc=off;默认是关闭的，它打开后将自动把用户提交的sql语句的查询进行转换，把'转为\'，这对防止sql注入有重大作用。
 8）控制错误信息
关闭错误提示信息，将错误信息写到系统日志。

##########
#118、用PHP写出一个安全的用户登录系统需要注意哪些方面？
###
1）密码要进行加密，如MD5()。
2）登录表单的名称不要跟数据库字段一样，以免暴露表字段。
3）用户表的表名、字段名、密码尽量用不容易被猜到的。
4）要使用验证码验证登陆，以防止暴力破解。
5）验证提交的数据是不是来自本网站。
6）登录后台处理代码数据库部分使用预处理，做好过滤，防止sql注入。

##########
#119、使用过哪些PHP框架？试描述其优劣点。
###
Thinkphp
优点：功能比较全面，配置相对比较简单，操作相对比较简单，有很多使用示例程序。
缺点：提供的操作方法太多，新手不知如何选择，文档不够全面。
Yii
	优点：功能强大、有代码自动生成功能
	缺点：中文资料欠缺，上手困难。
brophp
优点：轻量级学习型框架，配置简单，操作简单，容易上手，提供了比较全面的文档。
缺点：功能少

##########
#120、用过哪些版本控制工具？
###
Svn，git

##########
#121、 输出为Mozilla/4.0(compatible;MSIE5.01;Window NT 5.0)时，可能的输出语句是：B
###
   A. $_SERVER['HTTP_USER_AGENT_TYPE'];
   B. $_SERVER['HTTP_USER_AGENT'];
   C. $_SERVER['USER_AGENT'];
   D. $_SERVER['AGENT'];
   
##########
#122、下面功能PHP无法实现的是：D
###
   A. 服务器端脚本运行
   B. 命令行脚本运行
   C. 客户端图形界面（GUI）程序
   D. 浏览器端执行DOM操作
   
##########
#123、下面说法不正确的是：C，resource和NULL是特殊类型
###
   A. PHP有四种标量类型：布尔型(boolean),整型(integer),浮点型(float),字符串(string)
   B. 浮点型(float)与双精度型(double)是同一种类型
   C. 符合类型包括:数组(array),对象(object),资源(resource) 
   D. 伪类型：混合型(mixed),数字型(number),回调(callback)
   
##########
#124、执行下面的代码后，
###
    <?php
      echo function_exists('print');
    ?>
    得到的输出是：A
   A. 空 
   B. true
   C. false
   D. FALSE
##########
#125、下面不是PHP语法的组成部分的函数是：AD
###
   A. array
   B. eval
   C. each
   D. list
   
##########
#126、 执行下面的代码的结果是什么？A
###
   <?php
      $bool = TRUE;
      echo gettype($bool);
      echo is_string($bool);
   ?>
   A. boolean 
   B. boolean0
   C. booleanFALSE
   D. booleanfalse
   
##########
#127、写出下面代码执行的结果：
###
   <?php
      $a = 12;
      $b = 012;
      $c = 0x12;
      echo $a,"\n",$b,"\n",$c;
   ?>
   12 10 18
##########
#128、下面代码的执行结果是什么？C
###
    <?php
    echo 1+2+"3+4+5";
   ?>
   A. 0
   B. 3
   C. 6 
   D. "33+4+5";
   
##########
#129、下面代码加入下面哪个函数后返回TRUE: B
###
   return ? == 'A';
   A. ord(65)
   B. chr(65) 
   C. 65+''
   D. ''+65
   
##########
#130、下面代码的输出正确的是：C
###
   <?php
      $a = array(1=>5,5=>8,22,2=>'8',81);
      echo $a[7];
      echo $a[6];
      echo $a[3];
   ?>
   A. 空2281 B.空8122 C.8122空 D.空空空
  
##########
#131、下面代码的输出结果：D
###
   <?php
      $a[bar]='hello';
      echo $a[bar];
      echo $a['bar'];
   ?>
   A. hello B. 空空 C.报错 D.hellohello 
   
##########
#132、写出下面代码的结果：C左移相当于乘2，右移相当于除2
###
   <?php
      echo 1>>0;
      echo 2>>1;
      echo 3<<2;
   ?>
   A. 012 B. 106 C. 1112D.123

##########
#133、 下面代码的执行结果：D
###
   <?php
      for($i=0;i<10;$i++){
         print $i;
      }
   ?>
   A. 0123456789 B. 012345678910 C. 无输出 D. 死循环
   
##########
#134、下面对于echo, print 的描述正确的是：C
###
   A. echo, print 都可以打印多个参数
   B. print 可以打印多个参数,echo 不可以
   C. echo  可以打印多个参数,print不可以
   D. echo, print 都不可以打印多个参数
   
##########
#135、对于下0面的代码
###
   <?php
      $fruits = array('strawberry'=>'red', 'banana'=>'yellow');
   ?>
   能够正确得到结果'yellow'的代码是：ACD
   A. echo "A banana is {$fruits['banana']}"; 
   B. echo "A banana is $fruits['banana']";
   C. echo "A banana is {$fruits[banana]}";
   D. echo "A banana is $fruits[banana]";
   
##########
#136、 下面代码执行完成后的结果是什么？12
###
   <?php
      function change(){
         static $i = 0;
         $i++;
         return $i;
      }
      print change();
      print change();
   ?>
##########
#137、下面的include语句不正确的是？	A
###
   A. include "mms://www.abc.com/a.php";
   B. include "http://www.abc.com/a.php";
   C. include "https://www.abc.com/a.php";
   D. include "ftp://www.abc.com/home/a.php";
   
##########
#138、<?php
###
      $foo = 'test';
$bar = <<<'EOT'
   $foo bar
EOT;
echo $bar;
      ?>
上面的语句输出结果:C
   a. $foo bar; 
   b. 'EOT' $foo bar EOT;
   c. test bar;
   d. 'EOT' test bar EOT;

##########
#139、$a=3; $b=4;
###
   if($a || $b=5){
      echo 'todo';
   }
   $b的值是: A
   a. 4;
   b. 5;
   c. 3;
   d. false
##########
#140、什么是面向对象？主要特征是什么？
###
面向对象是一种编程方法，可以使编程的代码更简洁、更易于维护、并且具有更强的可重用性。
	主要特征：封装、继承和多态。
##########
#141、SESSION 与 COOKIE的区别是什么，请从协议，产生的原因与作用说明?
###
	HTTP是无状态协议，不能区分用户是从同一个网站上来的，同一个用户请求的不同页面不能看作是一同一个用户，为了解决这个问题，SESSION和COOKIE诞生了，他们都可以用来保存用户数据。
SESSION保存在服务器端，COOKIE保存在客户端。
1）cookie数据存放在客户的浏览器上，session数据放在服务器上。
2）cookie不是很安全，别人可以分析存放在本地的COOKIE并进行COOKIE欺骗
   考虑到安全应当使用session。
3）session会在一定时间内保存在服务器上。当访问增多，会比较占用你服务器的性能
   考虑到减轻服务器性能方面，应当使用COOKIE。
4）单个cookie保存的数据不能超过4K，很多浏览器都限制一个站点最多保存20个cookie。

##########
#142、HTTP 状态中302、403、 500代码含义？
###
	302重定向，403服务器拒绝访问，500服务器内部错误
##########
#143、Linux 下建立压缩包，解压缩包的命令。
###
	压缩：gzip、tar –cvfz、zip、bzip2
	解压：gunzip、tar –zxvf、unzip、bunzip2
##########
#144、请写出数据类型(int char varchar datetime text)的意思；请问 varchar和char有什么区别？
###
Int 整形
Char定长字符型
Varchar 可变长度字符型
Datetime 时间日期类型
Text 文本类型
Varchar 是可变长度类型，占用的空间是字符串的长度+1，而char是固定长度字符串类型，定义了多少空间就占用多少空间。
##########
#145、MyISAM 和 InnoDB 的基本区别？
###
MYISAM不支持外键和事务处理，支持全文索引，采用表锁机制，查询速度稍快，数据存储文件有3个，占用空间小。
InnoDB支持外键和事务处理，不支持全文索引，采用行锁机制，查询速度比MYISAM稍慢，数据存储文件只有一个，占用空间大。

##########
#146、不使用cookie向客户端发送一个cookie？
###
	Header(“Set-cookie:user:admin;age=10”);
##########
#147、 线性表和顺序表的区别？
###
线性表包括顺序表和链表
顺序表中的元素的地址是连续的，链表里面节点的地址不是连续的，是通过指针连起来的。
##########
#148、如何实现多个线程安全的写入一个文件数据？
###
采用锁机制，当一个用户在对此文件进行读写入操作时，将此文件锁定，操作完毕后解除锁定，在该用户进行读写入操作过程中，其他用户不能操作此文件，需要排队等待。
##########
#149、isset() 和 empty() 区别，对不同数据的判断结果？$a=0;$a='0';$a='';$a=false;$a=null;
###
Isset判断变量是否存在，如果存在则返回真，empty判断变量是否为空，如果为空则返回真。
Isset判断：true,true,true,true,false
Empty判断：true,true,true,true,true
##########
#150、 什么是满二叉树？什么是完全二叉树？
###
满二叉树：除了叶子节点外每一个节点都有左右子叶且叶节点都处在 最底层的二叉树。
完全二叉树：若设二叉树高度为h，除了第h层外，其它层的节点数都达到最大个数，第h层有叶子节点，这就是完全二叉树。
##########
#151、如何在页面之间传递变量(至少两种方式) ?
###
使用GET、POST、SESSION、COOKIE方式传递变量。
##########
#152、写出匹配URL的正则表达式.
###
$url=’/^\w+:\/\/(\w+\.)+[\w-]+([\w-\.\/\?\%\&\=]*)?/I’;
##########
#153、请写出常见的排序算法(至少三种)，并用PHP实现冒泡排序，将数组$a = array()按照从小到大的方式进行排序。
###
冒泡排序法、快速排序法，插入排序法
$a=array(1,20,40,29,50,22);
Function mp_sort($a){
	$len=count($a);
	If($len<=1){
		Return false;
}
For($i=0;$i<$len;$i++){
	For($j=0;$j<$len-1;$j++){
		If($a[$j]>$a[$j+1]){
			$tmp=$a[$j];
			$a[$j]=$a[$j+1];
			$a[$j+1]=$tmp;
}
}
}
Return $a;
}

function quick_sort($array) {
    if (count($array) <= 1) {
        return $array;
    }
    $key = $array[0];
    $left_arr = array();
    $right_arr = array();
    for ($i=1; $i<count($array); $i++) {
        if ($array[$i] <= $key) {
            $left_arr[] = $array[$i];
        } else {
            $right_arr[] = $array[$i];
        }
    }
    $left_arr = quick_sort($left_arr);
    $right_arr = quick_sort($right_arr);
    return array_merge($left_arr, array($key), $right_arr);
}

function insertion_sort($a) {
    for ($i = 1, $len = count($a); $i < $len; $i++) {
        $key = $a[$i]; 
        $j = $i - 1;
        while ($j > -1 && $a[$j] > $key) {
            $a[$j + 1] = $a[$j];
            $j--;
        }
        $a[$j + 1] = $key;
    }
    return $a;
}
##########
#154、在数据库test中的一个表student，字段是name，class，score。分别代表姓名、所在班级，分数。
###
   1) 查出每个班级中的学生，按照成绩降序排序;
   2) 查出每个班的及格人数和不及格人数，格式为：class、及格人数、不及格人数；
   3) 用PHP写入连接数据库("localhost","msuser","mspass")、执行以上SQL、显示结果、判断错误、关闭数据库的过程；

$mysqli=new mysqli(‘localhost’,’msuser’,’mspass’,’test’);
$sql1=’SELECT * FROM sdudent ORDER BY score DESC’;
$sql2= SELECT a.class 班级,a.num 及格人数,b.num 不及格人数 FROM (SELECT class,COUNT(id) AS num FROM stu WHERE score>=60 GROUP BY class) a,(SELECT class,COUNT(id) AS num FROM stu WHERE score<60 GROUP BY class) b WHERE a.class=b.class;

$result1=$mysqli->query($sql1);
If($result1){
	Print_r($result1);
}else{
	Echo ‘查询成绩失败！’;
}
$result2=$mysqli->query($sql2);
If($result2){
	While($row=$result2->fetch_assoc()){
			Echo $row[“class”].’班及格人数:’.$row[“及格人数”].’不及格人数’:$row[“不及格人数”];
}
}else{
	
}
$mysqli->close();


##########
#155、ftp://pub.foo.bar.com:2121/incoming/rls.sfv 请给出这个URL各部分的意义 ？
###
协议ftp
域名pub.foo.bar.com
端口号2121
访问的文件 inincoming/rls.sfv

##########
#156、请列出4个常用的HTML标签名？
###
<div>、<table>、<form>、<a>

##########
#157、下列不属于Javascript语法关键/保留字的是 ？ B
###
var 
$
function
while

##########
#158、下列不属于Javascrip DOM操作事件的是？C
###
A. onclick
B. onkeydown
C. onbodyload
D. onmouseover

##########
#159、请写出5个常用的unix操作命令。
###
	Ls
	find
	Tar –zxvf
	Touch
	Cat
	Mkdir
	rm

##########
#160、 请写出以下5个UNIX系统配置文件/服务的作用
###
/etc/passwd 用户信息文件
/etc/hosts 主机名设置文件
/etc/fstab 保存系统所有分区信息
Crontab 计划任务服务
sshd 远程连接服务
##########
#161、请写出5个常用的SQL操作关键字。
###
SELECT INSERT DELETE UPDATE WHERE
##########
#162、请列出5个常用的PHP操作MySQL的函数 。
###
Mysql_connect、mysql_fetch_row、mysql_affected_rows、mysql_fetch_assoc、mysql_query

##########
#163、有两张数据表，表user(id, name)记录了用户的ID和昵称，表article(id, title, content, time)记录了用户发表的文章标题、内容和时间，写一个SQL语句打印出每个用户的昵称及其发表的文章总数。
###
SELECT user.name,a.id,a.num FROM user,(SELECT id,count(*) as ‘num’ FROM article) as a WHERE user.id=a.id;
##########
#164、下列PHP函数中不能直接在页面输出字符串的函数是 ？B
###
A. echo 
B. sprintf
C. printf
##########
#165、在PHP中，'+'操作符的功能不包括？A undone
###
A. 字符串连接
B. 数组数据合并
C. 变量数据相加

##########
#166、下面哪个选项没有将john添加到users数组中？ C
###
(A) $users[] = 'john';
(B) array_push($users, 'john');
(C) $users ||= 'john';
(D) array_unshift($users, 'john');

##########
#167、请列出3种PHP数组循环操作的语法，并注明每种循环的优缺点？undone
###
For、while、foreach
For循环适合遍历定长数组
While循环适合遍历不定长数组
Foreach适合遍历关联数组和索引数组
##########
#168、请列出3个PHP中的预定义全局变量？
###
$_SERVER $_FILE $_SESSION

##########
#169、从PHP4.2.0开始 PHP默认配置将register_globals配置设定为off,请指出这个设定的作用和对PHP相关程序的影响？
###
Register_globals=off;的时候，关闭了全局变量注册，访问POST、GET、COOKIE、SESSION、ENV全局变量时不能使用简易方式，只能用$_全局变量名方式访问，加强了安全性。

##########
#170、写一个函数实现字符串翻转 ？
###
Function strTurn($str){
$m=strlen($str);
For($i=m; $i>=0;$i--){
$string.=$str[$i];
}
Return $string;
}
##########
#171、请写出下列PHP代码的执行结果 。
###
$var1 = 5;
$var2 = 10;
function foo(&$my_var)
{
 global $var1;
 $var1 += 2;
 $var2 = 4;
 $my_var += 3; 
 return $var2;
}
$my_var = 5;
echo foo($my_var) . "\n"; 	4
echo $my_var . "\n"; 		8
echo $var1 . "\n";		7
echo $var2 . "\n";		10
$bar = 'foo';
$my_var = 10;
echo $bar($my_var) . "\n";	4
##########
#172、不断在文件hello.txt头部写入一行“Hello World”字符串，要求代码完整。Undone
###
$file=’hello.txt’;
$con=file_get_cotents($file);
While(1){
	File_put_contents($file,’Hello World\n’.$con)
}

##########
#173、 输出用户的IP地址，并且判断用户的IP地址是否在192.168.1.100 --- 192.168.1.150之间。
###
$ip=$_SERVER[“REMOTE_ADDR”];
Echo $ip;
$pos=strrpos($ip,’.’)+1;
$head=substr($ip,0,$pos);
$my=substr($ip,$pos);
If($head=='192.168.1.' && $my>100 && $m<150){
	Echo ‘IP在指定区间内’;
}else{
	Echo ‘IP不在指定区间内’;
}
##########
#174、 请将2维数组按照name的长度进行重新排序，按照顺序将id赋值(从1开始)。
###
<?php
$Tarray = array(
	array(‘id’ => 0, ‘name’ => ‘123’),
	array(‘id’ => 0, ‘name’ => ‘1234’),
	array(‘id’ => 0, ‘name’ => ‘1235’),
	array(‘id’ => 0, ‘name’ => ‘12356’),
	array(‘id’ => 0, ‘name’ => ‘123abc’)
)

foreach($Tarray as $k=>$v){
	$name[]=$v["name"];
}
array_multisort($name,SORT_DESC,$Tarray);
$m=count($Tarray);
for($i=0;$i<$m;$i++){
	$Tarray [$i]["id"]=$i+1;
}
echo '<pre>';
print_r($Tarray);
echo '</pre>';

##########
#175、表单数据提交方式POST和GET的区别，URL地址传递的数据最大长度是多少？undone
###
POST方式提交没有长度限制且URL地址中不可见，GET提交数据有最大长度限制并在URL中可见。
URL地址传递数据最大长度为，IE浏览器2083（2k+53）。

##########
#176、SESSION和COOKIE的作用和区别，SESSION信息的存储方式，如何进行遍历？
###
两者都能够存储数据在一个站点多个页面间传递。
SESSION：存储在服务器端
COOKIE：存储在客户端
SESSION信息的存储方式有文件、内存和用户自定义几种方式。
通过全局数组$_SESSION可以取到SESSION信息并遍历。

##########
#177、通过PHP函数的方式对目录进行遍历，写出程序
###
function listDir($dir){
	if(is_dir($dir)){
		if ($dh = opendir($dir)){
			while(($file= readdir($dh)) !== false){
				if((is_dir($dir."/".$file)) && $file!="." && $file!=".."){
					echo "<b><font color='red'>文件夹：</font></b>",$file,"<br><hr>";
					listDir($dir."/".$file."/");
					echo '<hr>';
				}else{
					if($file!="." && $file!=".."){
						echo $file."<br>";
					}
				}
			}
			closedir($dh);
		}
	}
}

##########
#178、Linux的目录进行遍历，编写shell脚本?undone
###
#!/bin/sh  使用bash做为默认shell
 list_alldir(){
     for file in $1/*
     do
         if [ -d $file ]; then
             echo $file
             list_alldir $file    #在这里递归调用
         fi
     done
 }

 #下面是定义初始化路径
 if [ $# -gt 0 ]
 then
     list_alldir "$1"
 else
     list_alldir "."
 fi

##########
#179、什么是数据库索引，主键索引，唯一索引的区别，索引的缺点是什么？
###
数据库索引是对数据库表中一列或多列的值进行排序的一种结构，使用索引可以快速访问数据库表中的特定信息。
主键和唯一的区别，每个表只能有一个主键索引，但可以有多个唯一索引。
索引的缺点：
	1）创建索引和维护索引要耗费时间，这种时间随着数据量的增加而增加。	
	2）索引需要占物理空间，除了数据表占空间之外，每一个索引还要占一定的物理空间。
	3）当对表的数据进行增加、删除和修改时，索引也要动态维护，这样就降低了数据库的维护速度。

##########
#180、数据库设计时，常遇到的性能瓶颈有哪些，常有的解决方案？
###
通常造成数据库瓶颈的原因是：
1）数据库系统本身性能不佳，例如你用桌面数据库Access 来做web应用的后台数据库 显然是不行的；
2）数据库结构设计不合理，导致不必要的、过多的数据库访问，这需要优化数据表结构设计，必要时引入Cache系统；
3）数据库连接池设置不当，为了提供数据库的服务能力，在有潜在并发访问数据库的情况下，我们会使用连接池技术，如果池的大小与实际需求不符，则会带来访问数据库时的排队等候。
4）程序实现适当，例如对 数据库连接长期占有，导致其它访问必须进行排队 

当然，即时没有以上的错误做法，当一个系统规模不断变大时，数据库系统也会成为瓶颈所在，但针对此业界有一些解决方法的，例如进行数据库水平/垂直分割、集群、缓存等等。


##########
#181、编写一个在线留言本，实现用户的在线留言功能，留言信息存储到数据库？undone
###
数据表字段：aid、author、title、content、posttime、edittime、ip
脚本：
index.php
留言列表、回复留言按钮、提交留言表单
action.php（业务处理脚本）
处理表单提交、增改留言数据表

##########
#182、通过JS创建一个当前窗口的子窗口，通过程序实现子窗口对父窗口的操作实例？
###
1）IE中使用方法：
父窗口调用子窗口：iframe_ID.iframe_document_object.object_attribute = attribute_value 
例子：onClick="iframe_text.myH1.innerText='http://www.pint.com';" 
子窗口调用父窗口：parent.parent_document_object.object_attribute = attribute_value 
例子：onclick="parent.myH1.innerText='http://www.pint.com';"
2）Firefox中使用方法：
上面在IE下没有问题，但在firefox下不正常。在firefox下，应该是如下调用方法：
父窗口调用子窗口：window.frames["iframe_ID"].document.getElementById("iframe_document_object"-).object_attribute = attribute_value 
例： window.frames["iframe_text"].document.getElementById("myH1").innerHTML= "http://hi.wonsoft.cn"; 
子窗口调用父窗口：parent.document.getElementById("parent_document_object").object_attribute = attribute_value 
例： parent.document.getElementById("myH1").innerHTML = "http://wonsoft.cn";
##########
#183、通过JS实现页面的前进和后退操作？
###
<a href=”#”onclick=”history.back()”>后退</a>
<a href=”#”onclick=”history.forward()”>前进</a>
##########
#184、浏览器IE和非IE浏览器的划分，区别是什么？
###
IE浏览器指的是使用IE内核的浏览器，对一些W3C标准的网页代码的支持不是很好。
非IE浏览器指的是没有使用IE内核的浏览器，对W3C标准的网页代码有很好的支持。

##########
#185、设定网站的用户数量在千万级，但是活跃用户的数量只有1%，如何通过优化数据库提高活跃用户的访问速度？
###
可以使用分表技术，将高活跃用户单独存到一个有同样字段但表名不同的表里，当用户登陆时首先查询这个表，如果不是高活跃用户再查询大表。

##########
#186、服务器在运行的过程中，随着用户访问数量的增长，如何通过优化，保证性能？如果数据库已经达到最优化，请设计出继续升级的解决方案？
###
1）确定当前的服务器的硬件设备能不能满足流量需求，如果满足不了就添加新的设备。
2）使用memcache缓存技术，将动态数据缓存到文件中，动态网页直接调用这些文件，而不必再访问数据库。
3）禁止外部盗链，图片、或文件盗链会给服务器带来大量的负载压力，因此可以通过refer来控制盗链，或者用apache来配置禁止盗链。
4）控制大文件的下载，大文件的下载对于非SCSI硬盘来说会占用大量资源，使得网站响应能力下降。
5）使用不同的主机分流主要流量，使得服务器均衡负载。
6）使用流量统计软件进行流量统计和分析，可以即时了解哪些地方耗费了大量的流量，哪些页面需要再进行优化。

##########
#187、写出程序运行的结果 
###
<?php
	$a=0;
	$b=0;
	If($a=3 || $b=3){
		$a++;
		$b++;
}
Echo $a.”,”.$b;
?>
 结果：4,4

##########
#188、数据库中的事务是什么？
###
数据库事务，是指作为单个逻辑工作单元执行的一系列操作。 事务处理可以确保除非事务性单元内的所有操作都成功完成，否则不会永久更新数据库。通过将一组相关操作组合为一个要么全部成功要么全部失败的单元，可以简化错误恢复并使应用程序更加可靠。

##########
#189、实现不使用第3个变量，交换$a、$b的值，$a、$b的初始值自己定。
###
$a='aa';
$b='bb';
$b.=$a;
$a=substr($b,strpos($b,'a'));
$b=substr($b,0,strpos($b,'a'));
##########
#190、用php打印出前一天的时间格式是2006-5-10 22:21:21
###
date_default_timezone_set('PRC');
echo Date('Y-m-d H:i:s',time()-60*60*24);
##########
#191、如何实现字符串翻转？
###
strrev函数
##########
#192、PHP的意思，它能干些什么？
###
PHP，是英文超级文本预处理语言Hypertext Preprocessor的缩写。PHP 是一种 HTML 内嵌式的语言，是一种在服务器端执行的嵌入HTML文档的脚本语言，语言的风格有类似于C语言，被广泛的运用。
##########
#193、GD库是做什么用的?
###
gd库是php处理图形的扩展库，gd库提供了一系列用来处理图片的API，使用GD库可以处理图片，或者生成图片。 在网站上GD库通常用来生成缩略图或者用来对图片加水印或者对网站数据生成报表。
##########
#194、echo(),print(),print_r()的区别？
###
echo 是语法结构，也就是关键字，不是函数。使用的时候不用加括号，加上也可以。显示多个值的时候可以用逗号隔开。只支持基本类型，布尔型除外，echo true的时候显示1，echo false的时候啥都没有。
print 和 echo 基本一致。但是print 不支持逗号分隔多个显示变量的语法。
print_r 是函数，不仅可以打印变量的的值，还能显示变量类型，而且也可以显示数组和对象这样复杂的变量类型。print_r() 将把数组的指针移到最后边。使用 reset() 可让指针回到开始处。
##########
#195、对于大流量的网站,您采用什么样的方法来解决访问量问题?
###
确认服务器硬件是否足够支持当前的流量,数据库读写分离,优化数据表, 程序功能规则,禁止外部的盗链,控制大文件的下载,使用不同主机分流主要流量
##########
#196、mysql_fetch_row() 和mysql_fetch_array之间有什么区别?
###
前者返回的结果集是一个索引数组，后者返回的结果集既包含索引数组又包含关联数组。
##########
#197、优化MYSQL数据库的方法？
###
1）数据库设计方面,这是DBA和Architect的责任,设计结构良好的数据库,必要的时候,去正规化(英文是这个:denormalize,中文翻译成啥我不知道),允许部分数据冗余,避免JOIN操作,以提高查询效率 。
2）系统架构设计方面,表散列,把海量数据散列到几个不同的表里面。快慢表,快表只留最新数据,慢表是历史存档.集群,主服务器Read & write,从服务器read only,或者N台服务器,各机器互为Master 。
3）(1)和(2)超越PHP Programmer的要求了,会更好,不会没关系.检查有没有少加索引 
4）写高效的SQL语句,看看有没有写低效的SQL语句,比如生成笛卡尔积的全连接啊,大量的Group By和order by,没有limit等等.必要的时候,把数据库逻辑封装到DBMS端的存储过程里面，缓存查询结果,explain每一个sql语句 
5)所得皆必须,只从数据库取必需的数据,比如查询某篇文章的评论数,select count(*) ... where article_id = ? 就可以了,不要先select * ... where article_id = ?然后msql_num_rows. 
只传送必须的SQL语句,比如修改文章的时候,如果用户只修改了标题,那就update ... set title = ? where article_id = ?不要set content = ?(大文本) 
6）必要的时候用不同的存储引擎.比如InnoDB可以减少死锁.HEAP可以提高一个数量级的查询速度。
##########
#198、实现中文字串截取无乱码的方法？undone
###
function substr_for_utf8($sourcestr,$cutlength){
	$returnstr=”;
	$i=0;
	$n=0;
	$str_length=strlen($sourcestr);    //字符串的字节数
	while (($n<$cutlength) and ($i<=$str_length)){
		$temp_str=substr($sourcestr,$i,1);
		$ascnum=Ord($temp_str); //得到字符串中第$i位字符的ascii码
		if ($ascnum>=224) //如果ASCII位高与224，
		{
			$returnstr=$returnstr.substr($sourcestr,$i,3); //根据UTF-8编码规范，将3个连续的字符计为单个字符
			$i=$i+3; //实际Byte计为3
			$n++; //字串长度计1
		}
		elseif ($ascnum>=192)//如果ASCII位高与192，
		{
			$returnstr=$returnstr.substr($sourcestr,$i,2); //根据UTF-8编码规范，将2个连续的字符计为单个字符
			$i=$i+2; //实际Byte计为2
			$n++; //字串长度计1
		}
		elseif ($ascnum>=65 && $ascnum<=90) //如果是大写字母，
		{
			$returnstr=$returnstr.substr($sourcestr,$i,1);
			$i=$i+1; //实际的Byte数仍计1个
			$n++; //但考虑整体美观，大写字母计成一个高位字符
		}
		else //其他情况下，包括小写字母和半角标点符号，
		{
			$returnstr=$returnstr.substr($sourcestr,$i,1);
			$i=$i+1;    //实际的Byte数计1个
			$n=$n+0.5;    //小写字母和半角标点等与半个高位字符宽…
		}
	}

	if ($str_length>$cutlength){
		$returnstr = $returnstr . “…”;    //超过长度时在尾处加上省略号
	}

	return $returnstr;
}
##########
#199、用PHP写出显示客户端IP与服务器IP的代码。
###
客户端IP：$_SERVER[“REMOTE_ADDR”];
服务器端IP：$_SERVER[SERVER_ADDR];
##########
#200、有一个网页地址, 比如PHP开发资源网主页: http://www.phpres.com/index.html,如何得到它的内容?
###
$file=file_get_contents(' http://www.phpres.com/index.html ');
file_put_contents('file11.txt',$file);
##########
#201、请写一个函数验证电子邮件的格式是否正确。
###
$reg=’/\w+@(\w+\.)+\w{2,}$/’;
$mail=’aaa@sina.com’;
If(preg_match($reg,$mail)){
	Echo ‘正确’;
}else{
	Echo ‘错误’;
}
##########
#202、简述如何得到当前执行脚本路径，包括所得到参数。
###
$_SERVER[“SCRIPT_NAME”]
__DIR__
basename(__file__);
##########
#203、JS表单弹出对话框函数是?获得输入焦点函数是? 
###
弹框函数alert()、prompt()、confirm()获取焦点函数focus()。
##########
#204、写一个函数，算出两个文件的相对路径 　　
###
如 
$a = '/a/b/c/d/e.php'; 　　
$b = '/a/b/12/34/c.php'; 　　
计算出 $b 相对于 $a 的相对路径应该是 http://www.cnblogs.com/c/d将()添上
function getPath($a,$b){
	$m=strlen($a);
	for($i=1;$i<$m;$i++){
		$str=substr($a,0,-$i);
		$reg='/'.str_replace('/','\/',$str).'/';
		if(preg_match($reg,$b)){
			$not=str_replace($str,'',$a);
			$count=substr_count($not,'/');
			for($j=0;$j<$count;$j++){
				$path.='../';
			}
			$path.=str_replace($str,'',$b);
			return $path;	
		}	
	}
}
echo getPath($a,$b);
##########
#206、中文占用unicode码范围？
###
0080-07FF
##########
#207、$_REQUEST、$_POST、$_GET、$_COOKIE、$_SESSION、$_FILE的意思是什么？
###
都是超全局数组。
$_REQUEST可以获取POST和GET传值
$_POST可以获取POST传值
$_GET可以获取GET传值
$_COOKIE服务器端可以使用setCookie（）函数设置信息到客户端浏览器中，通过 $_COOKIE数组可以获取设置的值。
$_SESSION当服务器页面中使用session_start()函数开启session后。就可以使用这个全局变量，用户就可以在整个网站中访问这些会话信息。
$_FILE可以获取表单上传文件信息。
##########
#208、数组中下标最好是什么类型的，为什么？
###
字符串类型，因为处理方便。
##########
#209、++i和i++哪一个效率高，为什么？
###
++i效率高，因为i++在运算结束后还会自加一次。
##########
#210、magic_quotes_gpc()、magic_quotes_runtime()的意思是什么？
###
magic_quotes_gpc()是否对输入的GET/POST/COOKIE数据使用自动字符串转义。
Magic_quotes_runtime()是否对进行时从外部资源换产生的数据使用自动字符转义，如SQL语句。
##########
#211、框架中什么是单一入口和多入口，单一入口的优缺点？
###
单一入口是指一个项目或一个应用具有统一的入口文件，项目的所有功能操作都是通过这个入口文件进行的，并且往往入口文件是第一步被执行的。
单一入口的优点：
加载文件方便、权限验证容易、URL重写简单。
单一入口的缺点：URL地址不利于搜索引擎，但是可以通过URL重写解决
##########
#212、打印一个用‘.’链接的字符串时候，还可以用什么代替‘.’链接效率更高些？
###
可以用’,’替换
##########
#213、提示类型200、404、502是什么意思。
###
200请求成功
404请求失败，找不到页面
502作为网管或代理的服务器常识执行请求时，从上游服务器接收到无效的响应。
##########
#214、你对Memcache的理解，优点有哪些？ 
###
Memcache是一个高性能的分布式内存对象缓存系统，它能够用来存储各种格式的数据，包括图像、视频、文件以及数据库检索结果等。
优点：解决了共享内存只能是单机的弊端、降低了数据库检索压力、提高了访问获取数据的速度。
##########
#215、MySQL字段类型有很多种，如int ,bigint , char, varchar, text等等, 请描述每种字段占用的字节数和最大范围。
###
注意：平台环境为32位字长计算机,Mysql 5.0+, 数字型字段使用unsigned属性
Int 4字节，带符号值：-2147483648~2147483647，无符号值：0~4294967295
Bigint 8字节
Char M字节 固定长度，M取值0-255
Varchar L+1字节，可变长度，根据存放值长度而定，取值范围0-255
Text 255字节
##########
#216、对关系型数 据库而言，索引是相当重要的概念，请回答有关索引几个问题:
###
1）索引的目的是什么?
	建立索引的目的是加快对表中记录的查找或排序
2）索引对数据库系统的负面影响是什么?
一是增加了数据库的存储空间，二是在插入和修改时要花费较多的时间。
3）为数据表建立索引的原则有哪些?
表的主键、外键必须有索引；
数据量超过300 的表应该有索引；
经常与其他表进行连接的表，在连接字段上应该建立索引；
经常出现在where字句中的字段，特别是大表的字段，应该建立索引；
索引应该建立在选择性高的字段上；
频繁进行数据稍作的表，不要建立太多索引；
删除无用的索引，避免对执行计划造成负面影响。

4）什么情况下不宜建立索引?
	数据表数据少和字段值重复太多,不适宜建立索引,不起到提速,反而会消耗大量内存。
##########
#217、web应用中,数据库的读取频率远高于写入频率, 如何优化MySQL而应对此种情景 ?
###
使用memcache缓存技术，将动态数据缓存到文件，访问动态页面时直接调用缓存文件，而不必重新访问数据库，这样就减少了查询数据库的次数。
如果网站的访问量很大，可以把数据库读写服务器分开，使用多态服务器去处理数据库查询，使用较少的服务器去处理数据库的写入和修改。
##########
#218、PHP字符串中单引号与双引号的区别?
###
双引号能解析变量和转义字符，而单引号不能。
##########
#219、指出以下代码片段中的SQL注入漏洞以及解决方法(magic_quotes_gpc = off)
###
mysql_query("select id,title from content where catid='{$_GET[catid]}' and title like '%$_GET[keywords]%'", $link);  
可以在$_GET[catid]和$_GET[keywords]变量上做文章，如传catid= 10’;select * from content—
##########
#220、分别指出php.ini中 magic_quotes_gpc, magic_quotes_runtime两项参数的作用。
###
magic_quotes_gpc开启可以对输入GET/POST/cookie数据使用自动字符串转义，可以有效防止sql注入。
magic_quotes_runtime开启可以对运行时从外部资源产生的数据使用自动字符串转义。php5.4已移除。
##########
#221、什么是时间戳? 如何取得当前时间戳?
###
UNIX时间戳是从1970年1月1日零点开始起到当前时间经过的秒数。
使用time()和microtime()函数可以获取当前时间戳。
##########
#222、session与cookie的区别与关系, 禁用cookie后, session能否正常使用?
###
前者是在服务器端存储，后者在服务器端存储，
Session有两种方式传递，一种是将sessionid存储到cookie中，另一种是通过url传递
禁用cookie后仍可以使用session，使用url传递
##########
#223、了解XSS攻击吗? 如何防止 ?
###
XSS攻击：跨站脚本攻击，是一种经常出现在web应用的计算机安全漏洞，它允许web用户将代码植入到提供给其他用户使用的页面中。
XSS攻击的危害包括：盗取各类用户帐号，控制企业数据，盗窃企业重要资料，非法转账，强制发送电子邮件，网站挂马，控制受害者及其攻击其他网站。
##########
#224、写出192.168.0.1 ip地址的二进制和10进制表示形式。
###
128 10000000
64 1000000
32 100000
16 10000
8 1000
4 100
2 10
1 1
11000000 10000100 0 1
##########
#225、一个字节占多少bit ? 一个IPv4地址占几个字节? 一个IPv6地址呢?
###
一个字节占8bit，一个IPV4占用30字节，一个IPV6占用46字节

##########
#226、2M ADSL宽带连接, 理想情况下, 最大下载速度是多少KB/s  ?
###
 下载速度一般是用kB/s表示，而不是kb/s。网络的带宽一般是按bit（比特）作为单位，也就是位。2M的带宽就是网速可以达到2Mbps。软件上表示的下载/上传速度的单位一般是Byte（字节），因为1Byte＝8bit，所以2M带宽，最大的下载速度可以是2M/8=256k 字节/秒，也就是256kB/s。

##########
#227、 Fatal error: Call to undefined method ge_user() in /website/index.php on line 39
###
没有ge_user()方法，可能是方法名写错了，检查方法名。
##########
#228、Fatal error: Class 'client' not found in /website/index.php on line 173
###
没有找到client这个类，类名写错了，检查类名，如果是加载进来的类文件，检查下文件是否加载。
##########
#229、 Warning: Missing argument 1 for member::register(), called in /website/index.php on line 43 and defined in /usr/website/member.class.php on line 96
###
缺少一个参数，检查register()函数需要参数类型，并正确传参。
##########
#230、 Warning: file_put_contents(): Permission denied in /website/index.php on line 4
###
对文件没有写权限，更改文件权限为777。
##########
#231、Warning: Cannot modify header information - headers already sent by (output started at /website/index.php:1) in /website/index.php  on line 3
###
setcookie、header、session函数前不能有输出。
##########
#232、 Warning:session_start(): open(/website/tmp/sess_47e067121facf033785f9a1cb16d243b,   O_RDWR) failed: No such file or directory (2) in /website/index.php on line  10 
###
没有找到文件或目录，检查文件是否存在
##########
#233、Parse error: syntax error, unexpected T_STRING in /website/index.php on line 18
###
	18行语法错误，检查语法
##########
#234、Warning: fopen(welcome.txt) [function.fopen]: failed to open stream: No such file or directory in /website/index.php on line 2
###
打开文件失败，没有welcome.txt这个文件，检查文件名书写是否正确。
##########
#235、 windows平台, Apache Http Server启动失败, 排错思路是什么?
###
可能情况一：安装apache2的路径中不能含有中文，将中文都改成英文。
可能情况二：有其他服务占用80端口，修改端口。
可能情况三：配置文件修改错误，还原配置文件。
##########
#236、 你所知道的php数组相关的函数？
###
Array_rand、in_array、array_flip、array_values 、array_keys、sort、rsort、shuffle
Array_push、array_pop、array_shift、array_unshift、array_merge、range、array_pad
##########
#237、php读取文件内容的几种方法和函数？
###
Fread、file_get_contents、fgets、fgetc、file
##########
#238、以下程序，变量str什么值的情况下输入111? if( ! $str ) { echo 111; }
###
当$str为整数0、浮点型0.0、空字符串和字符串”0”、布尔值false、空数组、特殊类型NULL时
##########
#239、说说你对缓存技术的了解？
###
缓存技术是将动态内容缓存到文件或内存中，在一定时间内访问动态页面直接调用缓存，而不必重新访问数据库。
Memcached，redis
##########
#240、你所知道的设计模式有哪些？
###
单例、工厂、MVC、适配器、组合、观察者、命令、迭代器、代理、策略

##########
#241、说说你对SVN的了解？优缺点？ 
###
程序员开发的代码递交到版本服务器进行集中管理。
优点：代码进行集中管理，版本控制容易，操作比较简单，权限控制方便。
缺点：每个文件夹都带一个.svn的文件夹，不能随意修改服务器项目文件夹
##########
#242、怎么找到PHP.ini的路径？
###
Echo phpinfo();
##########
#243、PHP加速模式/扩展？ PHP调试模式/工具？
###
Zend Optimizer加速扩展
调试工具：xdebug
##########
#244、你常用到的mysql命令？
###
SELECT INSERT DELETE UPDATE 
##########
#245、进入mysql管理命令行的命令？
###
Mysql –u root –ppass
Mysql –h localhost –u root –p123456
##########
#246、show databases; 这个命令的作用？
###
查看数据库列表
##########
#247、show create database mysql; 这个命令的作用？
###
查看mysql库建库语句
##########
#248、show create table user; 这个命令的作用？
###
查看user表的建表语句
##########
#249、 desc user; 这个命令的作用？
###
查看user表的表结构
##########
#250、explain select * from user; 这个命令的作用？
###
查看查询语句信息
##########
#251、show processlist; 这个命令的作用？
###
查看进程信息
##########
#252、 SHOW VARIABLES; 这个命令的作用？
###
查看系统变量
##########
#253、SHOW VARIABLES like '%conn%'; 这个命令的作用？
###
查看字段名含有conn的系统变量。
##########
#254、LEFT JOIN 写一个SQL语句？
###
SELECT a.username,p.content FROM user as a LEFT JOIN post as p ON a.id=p.uid WHERE a.id=3;
##########
#255、in, not ni, exist, not exist的作用和区别？
###
In在此范围内
Not in 不在此范围内
Exist 存在
Not exist不存在
##########
#256、怎么找到数据库的配置文件路径？
###
my.conf/my.ini
##########
#257、简述Linux下安装PHP的过程？
###
安装软件之前先安装编译工具gcc、gcc-c++
拷贝源码包，解包解压缩
Cd /lamp/php进入php目录
./configure –prefix=/usr/local/php –with-config-file-path=/usr/local/php/etc指定安装目录和配置文件目录
Make 编译
Make install安装
##########
#258、简述Linux下安装Mysql的过程？
###
Groupadd mysql 添加一个用户组mysql
Useradd -g mysql mysql 添加一个mysql用户指定分组为mysql
Cd /lamp/mysql 进入mysql目录
./configure –prefix=/usr/local/mysql/ –with-extra-charsets=all
Make
Make all 
##########
#259、简述Linux下安装apache的过程？
###
Cd /lamp/httpd 进去apache软件目录
./configure –prefix=/usr/local/apache2/ –sysconfdir=/etc/httpd/ –with-included-apr
Make
Make all 
##########
#260、用javascript取得一个input的值？取得一个input的属性？
###
Document.getElementsByTagName(‘input’)[0];
Document.getElementsByTagName(‘input’)[0].type
##########
#261、用Jquery取得一个input的值？取得一个input的属性？
###
$(function(){
	$(‘input’).val();
	$(‘input’).attr(‘type’);
})
##########
#262、 请您写一段ajax提交的js代码，或者写出ajax提交的过程逻辑。Undone
###
<script>
	Function sendAjax(){
		Var aj=’’;
		Try{
			Aj=new XMLHttpRequest();
}catch(e1){
	Try{
		Aj=new ActiveXObject(‘Msxml2.XMLHTTP’);
}catch(e2){
	Try{
		Aj=new ActiveXObject(‘Microsoft.XMLHTTP’);
}catch(e3){
	Aj=false;
}
}
}
Var str=’username=zhang&password=123’;
Var url=’http://localhost/ajax/re.php’;
Aj.open(‘post’,url);
Aj.onreadystatechange=function(){
	If(aj.readystate==4){
		If(aj.status==200){
			Callback(aj.response.text);
}
}
}
aj.setRequestHeader(‘Content-Type’,’application/x-www-forum-urlencoded’);
aj.send(str);
		function callback(data){
			alert(data);
}
}
</script>
过程逻辑；
1）创建ajax对象
2）打开服务器连接
3）判断请求状态
4）如果是post发送，需要设置请求头部信息
5）发送请求
6）处理响应
##########
#263、写出你认为语言中的高级函数
###
Imagecreate
Imagecolorallocate
Imagesetpixel
Imagettftext
Iconv
Mb_substr
Mysql_connect()
Mysql_select_db
Mysql_query
mysql_fetch_row
Mysql_close
##########
#264、简述Cookie的设置及获取过程。
###
只要用户的浏览器支持cookie功能，就可以使用php的setcookie函数来建立一个cookie。
Setcookie函数需要传三个必要参数,cookie识别名称、cookie值和cookie生存时间。还可以设置其他三个可选参数，分别是服务器端指定路径、所属服务器网址和是否通过 https连接。
使用$_COOKIE全局数组可以获取cookie信息。

##########
#265、写出Smarty模板引擎中你最常用的关键词
###
Assign
Display
Foreach
Section
Loop
Item
$smarty
Now
Const
get


##########
#266、如下user表结构
###
    
名称	类型	说明	备注
Uid	Int unsigned	主键	
Name	Varchar(20)		
Age	Tinyint unsigned		
需求：
1）增加一个字段性别sex，写出修改语句
Alter user ADD sex ENUM(‘1’,‘0’) NOT NULL DEFAULT ‘1’ AFTER  Age; 2）查询出年龄介于20岁到30岁之间的用户
SELECT * FROM user WHERE age BETWEEN 20 AND 30;
3）如果是一个Web频繁访问的查询，上题的查询如何优化？
可以使用预处理，也可以将查询结果集缓存到memcache服务器。
##########
#267、$str[1]=’123456’;
###
$str[2]=’asassasasas’;
$str[1][2]=’abcdefgh’;
var_dump($str);
写出此程序运行结果
array(2) { [1]=> string(6) "12a456" [2]=> string(6) " asassasasas " }
##########
#268、memcache 是什么？使用过吗？， 有什么用? 请详细描述其操作过程。
###
memcache是一个高性能的分布式的内存对象缓存系统，通过在内存里维护一个统一的巨大的hash表，用来存储数据。
作用：它能够用来存储各种格式的数据，包括图像、视频、文件以及数据库检索的结果等。
操作过程：
Memcached.exe –d install
Memcache.exe –d start
telnet localhost(IP地址) 11211(端口号)
add one(名称) 1(标记) 300(有效时间) 10(字符串长度)
##########
#269、请写一个函数将1234567890转换成1,234,567,890 每3位用逗号隔开的形式。Undone
###
<?php      
$str1 = "1234567890";   
$new_str = preg_replace('/^(\d{1,3})((\d{3})+)$/','$1,$2',$str1);   
$new_str = preg_replace('/(?<=\d{3})(\d{3})/',',$1',$new_str);   
print $new_str."\n";   

第二种方法：echo number_format($str1);
?> 

##########
#270、用JS实现以下功能
###
	1）得到当前的年份 
     Var d=new Date();
     Document.write(d.getYear());
	2）div的id为hot_nav的高、
##########
#271、写出string的方法，例如  substring 
###
Strlen、strstr、strrev、strtr。。。
##########
#272、找到当前目录下文件名含有lo.com.cn 中的php文件。
###
Find . –name *lo.com.cn*.php 
##########
#273、投票 vota实现
###
投票标题 varchar(255)
选项内容 varchar(255)
用户登录id vota_uid 
投票用户id vota_vid
投票时间 vota_time
投票总数 vota_total
1）创建数据库表结构 有没列举出的字段 自己补充，如vota_id（可以写出sql语句，也可以画图说明）
Create table vota(id int auto_increment primarykey,title varchar(255),content varchar(155));
2）有人刷恶意投票 请提供解决恶意刷票的方案 多种方案
用$_SERVER[‘REMOTE_ADDR’]判断，一个IP只能投票一次。
限制用户登录投票
验证码
3）现在有某几个热门的投票  服务器表示鸭梨很大 有什么给力的解决方案
采用读写分离
##########
#274、HTTP1.0中 301 ，302状态代表什么意思？
###
301
Moved Permanently
请求的网页已永久移动到新位置。服务器返回此响应（对 GET 或 HEAD 请求的响应）时，会自动将申请人转到新位置。您应使用此代码告诉 Googlebot 某个网页或网站已永久移动到新位置302
Found
服务器目前从不同位置的网页响应请求，但申请人应当继续使用原有位置来响应以后的请求。此代码与响应 GET 和HEAD 请求的 301 代码类似，会自动将申请人转到不同的位置，但不应使用此代码来告诉 Googlebot 页面或网站已经移动，因为 Googlebot 要继续抓取原来的位置并编制索引

##########
#275、请说明如何优化mysql数据库
###
1）尽量使用缓存机制减少连接数据库的次数
2）通过sql语句的优化减少每次sql语句执行的时间
3）尽量精准的从数据库中获取内容，减少select * 。。。这样的语句



##########
#276、===和==的区别？举例说明？
###
答:===是严格等于
==是等于
如$a=1.0 $b=(int)$a $a===$b 为false  而 $a==$b为true;
##########
#277、if($a==$b) print(“$a==$b”); else print(“$a!==$b”);写出输出的结果
###
答:运行的结果是 ==  因为$a 和$b没有值
##########
#278、define(“$myvalue”,10);
###
$myarray[10]=”dog”;
$myarray[]=”human”;
$myarray[“myvalue”]=”cat”;
$myarray[“dog”]=”cat”;
print ”The value is:”;
print $myarray[“myvalue”];
答:cat
##########
#279、怎样防止图片防盗连接?
###
1）可以把真实的图片做为背景图片，而使用一张透明图片匹配尺寸并覆盖到真实图片上面。
<div id="image1" style="background-image: url(originalImage.jpg);">
<img src="blank.gif" height="250px" width="300px">
</div>
这样，当别人使用右键查看或保存图片的时候，得到的是这张透明图片。
2）自动切片这是一个非常有效的图片防盗链方法.
它支持两种方案:
让用户下载到的是被裁切过的图片。 
让用户下载到的是打上水印的图片。 
当用户尝试下载图片的时候，它就会进行截切或添加水印操作，但是这个方法也有很大的劣势:
造成太多的服务器请求负荷，对网站整体性能影响不好 
你将拥有许多的图片文件
3）使用带水印的图片 (预先生成)
预先给图片添加水印也是个防止图片被盗的有效方法，就算别人要盗，至少也为你免费宣传了一下自己的网站。
但缺点也来了:
图片会看的不清楚或不美观了(这对于图片展示类的网站尤其重要，但又正是该类网站特尤其图片防盗) 
可以下载然后裁剪水印(当然，如果你是那种把水印放在图片中间或水印有图片这么1/3大的家伙，就不用担心这个问题了) 
要手动添加水印的话，可以使用photoshop，GIMP，轻松水印等软件。也可以选择下面的一些在线图片水印工具
4）使用水印 (服务器端生成)
使用服务器端自动为图片添加水印，是件省心的事情。只是需要一些脚本知识。
5）使用Flash来显示图片
6）基于浏览器的图片防盗
通过JavaScript来禁用点键菜单 是图片防盗的一个方法，但它仅仅是对于网络菜鸟来说，中等点的网民可以很轻松的查看到代码获取图片地址，再高等点的可以轻松破解，禁用你的禁用!
所以这并不是一个好方法，更重要的是它是极不利于用户浏览体验的。
这有一个折中的方法，你可以通过一个jQuery 插件 来实现仅仅禁用保存功能.
7）禁用IE6的图像工具条
在IE6下，当鼠标悬浮在一张图片上时，会出现工具条，上面有保存功能，你可以使用下面的代码禁用:
<meta http-equiv="imagetoolbar" content="no">
##########
#281、以下代码输出结果是？
###
for($i=0;$i<10;$i++){
	$sum+=0.1;
}
echo (int)$sum;
输出0
##########
#282、简述你使用的过JQuery插件的优缺点（说两个以上）。
###
autocomplete，tags-input、cookie
##########
#283、公司有800员工资料都存在employee表里写一个SQL语句统计出重名员工的人数？
###
select name, count(*) as num from stu group by name having count(name) > 1;

##########
#284、PHP URL重写（伪静态）  
###
1）让Apache支持mod_rewrite
打开Apache配置文件httpd.conf,找到如下：#LoadModule rewrite_module modules/mod_rewrite.so
开启rewrite，去点前面"#"
2）开始重载Allowoverride
查找apache配置文件找到如下
<Directory /> 
Options FollowSymLinks 
    AllowOverride None
</Directory>
将AllowOverride None改为 AllowOverride All
修改
#APMServ默认虚拟主机
NameVirtualHost *:803
<VirtualHost *:803>
 ServerName *
 DocumentRoot "D:/APMServ/APMServ5.2.0/www/htdocs"
</VirtualHost>
<Directory "D:/APMServ/APMServ5.2.0/www/htdocs"> 
 Options FollowSymLinks IncludesNOEXEC Indexes
 DirectoryIndex index.html index.htm default.htm index.php default.php index.cgi default.cgi index.pl default.pl index.shtml
 AllowOverride All
 Order Deny,Allow 
 Allow from all 
</Directory>
AllowOverride none 改为 All
3）写规则，匹配页面
apache配置文件
<ifmodule mod_rewrite.c> 
RewriteEngine On 
RewriteRule index\.html   index\.php 
RewriteRule (.*)\.html   $1\.php [L]   #匹配所有页面 
</ifmodule>
4）新建.htaccess
内容如下
RewriteEngine On 
RewriteRule index\.html   index\.php 
RewriteRule (.*)\.html   $1\.php [L]   #匹配所有页面
为了方便测试，我在htdocs目录下建立一个product.php的文件
<?php
       echo "You have selected product #". $_GET["id"];
?>
http://localhost:803/product.php?id=2;
Result：You have selected product #2;
###
如果我要实行这个效果：
http://localhost:803/product.html
RewriteEngine on 这个要打开啊。
RewriteRule ^product\.html$ product.php?id=123
Result: You have selected product #123
###
http://localhost:803/product/p123.html
RewriteRule ^product/p([0-9]*)\.html$ product.php?id=$1 [L]
Result: You have selected product #123
###
##########
#285、PHP伪静态如何实现?
###
PHP伪静态，主要是为了隐藏传递的参数名；于网上搜索后整理伪静态四法
<?php
//伪静态方法一

// localhost/php100/test.php?id|1@action|2
$Php2Html_FileUrl = $_SERVER["REQUEST_URI"];
echo $Php2Html_FileUrl."<br>";// /php100/test.php?id|1@action|2
$Php2Html_UrlString = str_replace("?","",str_replace("/", "", strrchr(strrchr($Php2Html_FileUrl, "/"),"?")));
echo $Php2Html_UrlString."<br>";// id|1@action|2
$Php2Html_UrlQueryStrList = explode("@", $Php2Html_UrlString);
print_r($Php2Html_UrlQueryStrList);// Array ( [0] => id|1 [1] => action|2 )
echo "<br>";
foreach($Php2Html_UrlQueryStrList as $Php2Html_UrlQueryStr)
{
$Php2Html_TmpArray = explode("|", $Php2Html_UrlQueryStr);
print_r($Php2Html_TmpArray);// Array ( [0] => id [1] => 1 ) ; Array ( [0] => action [1] => 2 )
echo "<br>";
$_GET[$Php2Html_TmpArray[0]] = $Php2Html_TmpArray[1];
}
//echo '假静态：$_GET变量<br />';
print_r($_GET); // Array ( [id|1@action|2] => [id] => 1 [action] => 2 )
echo "<br>";
echo "<hr>";
echo $_GET[id]."<br>";// 1
echo $_GET[action];// 2
?>

<?php
//伪静态方法二
// localhost/php100/test.php/1/2
$filename = basename($_SERVER['SCRIPT_NAME']);
echo $_SERVER['SCRIPT_NAME']."<br>";// /php100/test.php
echo $filename."<br>";// test.php

if(strtolower($filename)=='test.php'){
if(!empty($_GET[id])){
$id=intval($_GET[id]);
echo $id."<br>";
$action=intval($_GET[action]);
echo $action."<br>";
}else{
$nav=$_SERVER['REQUEST_URI'];
echo "1:".$nav."<br>";// /php100/test.php/1/2
$script=$_SERVER['SCRIPT_NAME'];
echo "2:".$script."<br>";// /php100/test.php
$nav=ereg_replace("^$script","",urldecode($nav));
echo $nav."<br>"; // /1/2
$vars=explode("/",$nav);
print_r($vars);// Array ( [0] => [1] => 1 [2] => 2 )
echo "<br>";
$id=intval($vars[1]);
$action=intval($vars[2]);
}
echo $id.'&'.$action;
}
?>

<?php
//伪静态方法三


function mod_rewrite(){
global $_GET;
$nav=$_SERVER["REQUEST_URI"];
echo $nav."<br>";
$script_name=$_SERVER["SCRIPT_NAME"];
echo $script_name."<br>";
$nav=substr(ereg_replace("^$script_name","",urldecode($nav)),1);
echo $nav."<br>";
$nav=preg_replace("/^.ht(m){1}(l){0,1}$/","",$nav);//这句是去掉尾部的.html或.htm
echo $nav."<br>";
$vars = explode("/",$nav);
print_r($vars);
echo "<br>";
for($i=0;$i<Count($vars);$i+=2){
$_GET["$vars[$i]"]=$vars[$i+1];
}
return $_GET;
}
mod_rewrite();
$year=$_GET["year"];//结果为'2006'
echo $year."<br>";
$action=$_GET["action"];//结果为'_add'
echo $action;
?>

<?php
//伪静态方法四

//利用server变量 取得PATH_INFO信息 该例中为 /1,100,8630.html 也就是执行脚本名后面的部分
if(@$path_info =$_SERVER["PATH_INFO"]){
//正则匹配一下参数if(preg_match("/\/(\d+),(\d+),(\d+)\.html/si",$path_info,$arr_path)){
$gid =intval($arr_path[1]); //取得值 1
$sid =intval($arr_path[2]); //取得值100
$softid =intval($arr_path[3]); //取得值8630
}else die("Path:Error!");
//相当于soft.php?gid=1&sid=100&softid=8630
}else die('Path:Nothing!');
?>

##########
#286、PHP防注入如何实现？
###
主要是为了防止恶意写入后台数据库
//防注入函数
function inject_check($sql_str){
$check=eregi('select|insert|update|delete|\'|\/\*|\*|\.\.\/|\.\/|union|into|load_file|outfile', $sql_str);
if($check){
echo "输入非法内容";
exit();
}else{
return $sql_str;
}
}
//接收传递参数后进行转换
$_GET[type]=inject_check($_GET[type]);
//之后再使用转换后的参数
##########
#287、URL重写是实现PHP伪静态
###
应该这样说才是,URL重写是实现PHP伪静态的方式之一,
具体如:
http://www.plframe.com/?x=1&y=2&z=3
换成
http://www.plframe.com/1-2-3.html
这种伪静态方式访问的话,其他最简单的方法是在网站根目录下面建一个.htaccess 文件，其内容如下:
<IfModule mod_rewrite.c>
RewriteEngine on
RewriteRule /([d]+)-([d]+)-([d]+).html /?x=$1&y=$2&z=$3 
</IfModule>

最后再APACHE的虚拟域名配置文件里面找到项目所用的域名设置项<VirtualHost></VirtualHost>，
在其中再找到<Directory></Directory>,将AllowOverride None 改成 AllowOverride All，
若没有<Directory></Directory>,则增加如下内容
<Directory 目录路径>
Options Indexes FollowSymLinks MultiViews
AllowOverride All
Order allow,deny
allow from all
DirectoryIndex index.php
</Directory> 在<VirtualHost></VirtualHost>中间重启APACHE即可.
你规则前面的 ^([0-9]*)-[a-zA-Z0-9&-+._'"]*/ 是正表达式，这里面用()括起来的东西，在后面依次使用$1、$2来引用，叫做匹配项。

在你的这个例子中，$1对于的就是([0-9]*)，就是前面的所有数字
RewriteRule ^id/([0-9]+)$ article.php?id=$1

前面的 你自己可以随便搞

下面是我站的 /还有提醒一下！＠linux 下的 规则有所不同

RewriteEngine On
RewriteBase /
RewriteRule ^type/(.*)/order/([0-9]+)$ index_c.php?type=$1&order=$2
RewriteRule ^type/(.*)/order/([0-9]+)/page/([0-9]+)$ index_c.php?type=$1&order=$2&page=$3

RewriteRule ^user/([0-9]+)$ index_c.php?uid=$1

RewriteRule ^user/([0-9]+)/type/(.*)/page/([0-9]+)$ index_c.php?uid=$1&type=$2&page=$3
RewriteRule ^user/([0-9]+)/type/(.*)$ index_c.php?uid=$1&type=$2

RewriteRule ^user/([0-9]+)/myclick/(.*)/page/([0-9]+)$ index_c.php?uid=$1&myclick=$2&page=$3
RewriteRule ^user/([0-9]+)/myclick/(.*)$ index_c.php?uid=$1&myclick=$2
RewriteRule ^user/([0-9]+)/page/([0-9]+)$ index_c.php?uid=$1&page=$2

RewriteRule ^re1d-([0-9]+)$ /top.php?itemid=$1
RewriteRule ^s=(.*)$ /search.php?s=$1

RewriteRule ^type/(.*)/page/([0-9]+)$ index_c.php?type=$1&page=$2
RewriteRule ^type/(.*)$ index_c.php?type=$1 [L]
现在的搜索引擎越来越对静态页面友好，以前不知道自己的服务器支不支持静态化，今天向空间商咨询后发现，其实自己的服务器是支持静态化的，于是在DZ论坛上下来个.htaccess文件修改了其中的一个代码，上传到我的linux服务器，到Discuz!论坛后台选择静态化选项，前台打开一看，呵呵 已经显示静态化了
下面是修改的.htaccess文件文件内容
# 将 RewriteEngine 模式打开
RewriteEngine On
# 修改以下语句中的 /discuz 为你的论坛目录地址，如果程序放在根目录中，请将 /discuz 修改为 /
RewriteBase /
# Rewrite 系统规则请勿修改
RewriteRule ^archiver/((fid|tid)-[w-]+.html)$ archiver/index.php?$1
RewriteRule ^forum-([0-9]+)-([0-9]+).html$ forumdisplay.php?fid=$1&page=$2
RewriteRule ^thread-([0-9]+)-([0-9]+)-([0-9]+).html$ viewthread.php?tid=$1&extra=page%3D$3&page=$2
RewriteRule ^space-(username|uid)-(.+).html$ space.php?$1=$2
RewriteRule ^tag-(.+).html$ tag.php?name=$1
如果你有需要将这段代码保存为.htaccess文件上传到空间即可，再到后台更改选择静态化就OK了.

##########
#288、HTTP协议中几个状态码的含义:503 500 401 403 404 200 301 302。。。
###
200 : 请求成功，请求的数据随之返回。
301 : 永久性重定向。
302 : 暂时行重定向。
401 : 当前请求需要用户验证。
403 : 服务器拒绝执行请求，即没有权限。
404 : 请求失败，请求的数据在服务器上未发现。
500 : 服务器错误。一般服务器端程序执行错误。
503 : 服务器临时维护或过载。这个状态时临时性的。
##########
#289、PHP/Mysql中几个版本的进化史，比如mysql4.0到4.1，PHP 4.x到5.1的重大改进等等。
###
##########
#290、 HEREDOC介绍
###
一种定义字符串的方法。
结构：
<<<。在该提示符后面，要定义个标识符（单独一行），
然后是一个新行。接下来是字符串 本身，
最后要用前面定义的标识符作为结束标志（单独一行）
注意：
标识符的命名也要像其它标签一样遵守PHP的规则：
只能包含字母、数字和下划线，并且必须以字母和下划线作为开头

##########
#291、一些编译php时的configure 参数
###
–prefix=/usr/local/php    php安装目录
–with-config-file-path=/usr/local/php/etc 指定php.ini位置
–with-mysql=/usr/local/mysql mysql安装目录，对mysql的支持
–with-mysqli=/usr/local/mysql/bin/mysql_config mysqli文件目录,优化支持
–enable-safe-mode 打开安全模式
–enable-ftp 打开ftp的支持
–enable-zip 打开对zip的支持
–with-bz2 打开对bz2文件的支持
–with-jpeg-dir 打开对jpeg图片的支持
–with-png-dir 打开对png图片的支持
–with-freetype-dir 打开对freetype字体库的支持
–without-iconv关闭iconv函数，种字符集间的转换
–with-libxml-dir 打开libxml2库的支持
–with-xmlrpc 打开xml-rpc的c语言
–with-zlib-dir 打开zlib库的支持
–with-gd 打开gd库的支持
更多可以使用 ./configure help 查看
 
##########
#292、 向php传入参数的三种方法。
###
/*
     * 方法一 使用$argc $argv
     *  在命令行下运行 /usr/local/php/bin/php ./getopt.php -f 123 -g 456
     */
//    if ($argc > 1){
//        print_r($argv);
//    }

    /**
     * 运行结果
     *
     sync@MySUSE11:~/web_app/channel3/interface> /usr/local/php/bin/php ./getopt.php -f 123 -g 456
        Array
        (
            [0] => ./getopt.php
            [1] => -f
            [2] => 123
            [3] => -g
            [4] => 456
        )
     */
 

     /*
     * 方法二 使用getopt函数（）
     *  在命令行下运行 /usr/local/php/bin/php ./getopt.php -f 123 -g 456
     */

//    $options = "f:g:";
//    $opts = getopt( $options );
//    print_r($opts);

    /**
     * 运行结果
     *
     sync@MySUSE11:~/web_app/channel3/interface> /usr/local/php/bin/php ./getopt.php -f 123 -g 456
        Array
        (
            [f] => 123
            [g] => 456
        )
     */

    /*
     * 方法三 提示用户输入，然后获取输入的参数。有点像C语言
     *  在命令行下运行 /usr/local/php/bin/php ./getopt.php
     */
    fwrite(STDOUT, "Enter your name: ");
    $name = trim(fgets(STDIN));
    fwrite(STDOUT, "Hello, $name!");
    /**
     * 运行结果
     *
     sync@MySUSE11:~/web_app/channel3/interface> /usr/local/php/bin/php ./getopt.php
     Enter your name: francis
     Hello, francis!
     */
 
##########
#293、 error_reporting 等调试函数使用
###
error_reporting() 函数能够在运行时设置php.ini中 error_reporting 指令。
所以可以再程序中随时调节显示的错误级别。
使用此函数时 display_errors必须是打开状态。
##########
#294、 posix和perl标准的正则表达式区别？
###
定界符，posix没有perl有（任意非数字、字母或反斜线”\”的字符）
修正符，posix没有perl有
[]之外不一致的元字符，”.”在posix中匹配除了换行外的字符，perl中匹配任意字符
[]之内不一致的元字符，”-”在posix中[a-c-e]会抛出错误，perl中[a-c-e]等价于[a-e]

##########
#295、Safe_mode 打开后哪些地方受限.
###
启动safe_mode，会对许多PHP函数进行限制，特别是和系统相关的文件打开、命令执行等函数.
所有操作文件的函数将只能操作与脚本UID相同的文件.

##########
#296、写代码来解决多进程/线程同时读写一个文件的问题。
###
PHP是不支持多线程的，可以使用php的flock加锁函数实现。
$fp = fopen("/tmp/lock.txt", "w+");
if (flock($fp, LOCK_EX)) { // 进行排它型锁定
fwrite($fp, "Write something here\n");
flock($fp, LOCK_UN); // 释放锁定
} else {
echo "Couldn't lock the file !";
}
fclose($fp);

##########
#297、写一段上传文件的代码。
###
upload.html
<form enctype="multipart/form-data" method="POST" action="upload.php">
Send this file: <input name="name" type="file" />
<input type="submit" value="Send File" />
</form>
upload.php
$uploads_dir = '/uploads';
foreach ($_FILES["error"] as $key => $error) {
if ($error == UPLOAD_ERR_OK) {
$tmp_name = $_FILES["tmp_name"][$key];
$name = $_FILES["name"][$key];
move_uploaded_file($tmp_name, "$uploads_dir/$name");
}
}
 

##########
#298、Mysql 的存储引擎,myisam和innodb的区别。
###
1） MyISAM类型不支持事务处理等高级处理，而InnoDB类型支持.
2）MyISAM类型的表强调的是性能，其执行数度比InnoDB类型更快.
3）InnoDB不支持FULLTEXT类型的索引.
4）InnoDB 中不保存表的具体行数，也就是说，
执行select count(*) from table时，InnoDB要扫描一遍整个表来计算有多少行，
但是MyISAM只要简单的读出保存好的行数即可.
5）对于AUTO_INCREMENT类型的字段，InnoDB中必须包含只有该字段的索引，但是在MyISAM表中，可以和其他字段一起建立联合索引。
6）DELETE FROM table时，InnoDB不会重新建立表，而是一行一行的删除。
7） LOAD TABLE FROM MASTER操作对InnoDB是不起作用的，解决方法是首先把InnoDB表改成MyISAM表，导入数据后再改成InnoDB表，
但是对于使用的额外的InnoDB特性(例如外键)的表不适用.
8）MyISAM支持表锁，InnoDB支持行锁。
##########
#299、介绍xdebug,apc,eAccelerator,Xcache,Zend opt的使用经验。undone
###
xdebug是php调试工具
apc是缓存工具
##########
#300、MySQL数据库作发布系统的存储，一天五万条以上的增量，预计运维三年,怎么优化？
###
1）设计良好的数据库结构，允许部分数据冗余，尽量避免join查询，提高效率。
2）选择合适的表字段数据类型和存储引擎，适当的添加索引。
3）mysql库主从读写分离。
4）找规律分表，减少单表中的数据量提高查询速度。
5）添加缓存机制，比如memcached，apc等。
6）不经常改动的页面，生成静态页面。
7）书写高效率的SQL。比如 SELECT * FROM TABEL 改为 SELECT field_1, field_2, field_3 FROM TABLE.

##########
#301、写出一种排序算法（原理），并说出优化它的方法。undone
###
快速排序，随机化
##########
#302、 请简单阐述您最得意的开发之作。undone
###

##########
#303、对于大流量的网站,您采用什么样的方法来解决各页面访问量统计问题？
###
统一布码监测
##########
#304、请介绍Session的原理,大型网站中Session方面应注意什么?undone
###
 为解决html无状态协议问题，记录客户端状态信息，使用session，可以通过url传递或cookie传递。
##########
#305、测试php性能和mysql数据库性能的工具,和找出瓶颈的方法？undone
###

##########
#306、 介绍一下常见的SSO(单点登陆)方案(比如dedecms整合discuz的passport)的原理。undone
###

##########
#307、您写过的PHP框架的特点，主要解决什么问题，与其他框架的不同点。undone
###

##########
#308、大型的论坛/新闻文章系统/SNS网站在性能优化上有什么区别?undone
###

##########
#309、相册类应用:要求在浏览器中能同时选中并上传多个文件，图片要求能剪裁，压缩包在服务器端解压。能上传单个达50M的文件。上传过程中有进度条显示。每个图片能生成四种大小缩略图，视频文件要转成flv供flash播放。叙述要涉及的各类开源软件和简单用途。？undone
###

##########
#310、一群猴子排成一圈，按1，2，…，n依次编号。然后从第1只开始数，数到第m只,把它踢出圈，从它后面再开始数，再数到第m只，在把它踢出去…，如此不停的进行下去，直到最后只剩下一只猴子为止，那只猴子就叫做大王。要求编程模拟此过程，输入m、n, 输出最后那个大王的编号。用程序模拟该过程。
###
/*
 * 约瑟夫环
 */
function josehpus1($n, $m) {
    $a = array();
    for ($i = 1; $i <= $n; $i++) {
        $a[] = $i;
    }
    $i = 1;
    while (count($a) > 1) {
        $x = array_shift($a);
        if ($i % $m != 0) {
            $a[] = $x;
        } else {
            echo '<br/>- ' . $x . ' = ';
            print_r($a);
        }
        $i++;
    }
    return $a[0];
}

function josehpus2($n, $m) {
    $s = 0;
    for ($i = 2; $i <= $n; $i ++) {
        $s = ($s + $m) % $i;
    }
    return $s + 1;
}

echo josehpus1(10, 7);
echo '<br/>';
echo josehpus2(10, 7);
##########
#311、linux下查看当前系统负载信息的一些方法。undone
###
##########
#312、vim的基本快捷键。undone
###

##########
#313、 ssh 安全增强方法;密码方式和rsa key 方式的配置。undone
###

##########
#314、 rpm/apt/yum/ports 装包，查询，删除的基本命令。Undone
###
安装
rpm -ivh package.rpm
apt-get install package
yum localinstall package.rpm
查询
rpm –q string
apt-cache search string
yum search string
删除
rpm -e package
apt-get remove package
yum remove package

##########
#315、Makefile的基本格式，gcc 编译，连接的命令,-O0 和-O3区别。undone
###

##########
#316、 gdb,strace,valgrind的基本使用.undone
###

##########
#317、css盒模型。undone
###
##########
#318、javascript中的prototype。Undone
###
原型链，用于实现继承。
方法一：
var a = {
  x: 10,
  calculate: function (z) {
    return this.x + this.y + z
  }
};

var b = {
  y: 20,
  __proto__: a
};

var c = {
  y: 30,
  __proto__: a
};

// call the inherited method
b.calculate(30); // 60
c.calculate(40); // 80
方法二：
function a() {
    this.x = 1;
    a.prototype.add = function(){
        return this.x + 2; 
    }
}

var obj1 = new a();
var obj2 = new a();
##########
#319、javascript中this对象的作用域。undone
###
##########
#320、IE和firefox事件冒泡的不同。undone
###
##########
#321、什么是怪异模式,标准模式，近标准模式。undone
###
##########
#322、DTD的定义undone
###
##########
#323、IE/firefox常用hack. undone
###
##########
#324、firefox,IE下的前端js/css调试工具。undone
###

##########
#325、面试官看过你的简历，会问一些你做的项目的用户量、pv、吞吐量、相关难点和解决方法等。undone
###
##########
#326、数据库设计经验,为什么进行分表? 分库? undone
###
   一般多少数据量开始分表? 分库? 分库分表的目的? 什么是数据库垂直拆分? 水平拆分? 分区等等？可以举例说明
##########
#327、web开发方面会遇到哪些缓存? 分别如何优化? undone
###
##########
#328、给你256M的内存,对10G的文件进行排序(文件每行1个数字),如何实现？   对10G的文件进行查找如何实现？ 统计10G文件每个关键字出现的次数如何实现？
###
undone
300万个字符串最多（假设没有重复，都是最大长度）占用内存3M*1K/4=0.75G。所以可以将所有字符串都存放在内存中进行处理。
　　可以使用key为字符串（事实上是字符串的hash值），值为字符串出现次数的hash来统计每个每个字符串出现的次数。并用一个长度为10的数组/链表来存储目前出现次数最多的10个字符串。
　　这样空间和时间的复杂度都是O(n)。
##########
#329、假如你现在是12306火车订票的设计师,你该如何设计满足全国人民订票? undone
###
##########
#330、假如有1亿用户的访问量,你的服务器架构是怎样的? 用户信息的存储方案如何设计? undone
###
##########
#331、如果你是技术组长,所带团队任务进度无法完成你该如何解决? undone
###
   如果在进度排满的前提下插入任务,你该如何保证总进度不延期? undone
   如果有的工程师今天预定任务没有完成,你该如何解决? undone
##########
#332、从你的经验方面谈一下如何构建高性能web站点? 需要哪些环节? 步骤? 每个步骤需要注意什么如何优化等? undone
###
##########
#333、 如何处理多服务器共享session? undone
###
##########
#334、 一个10G的表,你用php程序统计某个字段出现的次数,思路是? undone
###
##########
#335、会告诉你一个nginx日志例子,用你认为最佳的编程语言统计一下http响应时间超过1秒的前10个url? undone
###
##########
#336、给你一个mysql配置文件,用你认为最佳的编程语言解析该文件? undone
###
##########
#337、给你一个url,在nginx配置一下rewrite指定到某个具体路径? undone
###
##########
#338、一个php文件的解释过程是? 一般加速php有哪些?  提高php整体性能会用到哪些技术? undone
###
1）解析过程
解析命令行参数，初始化环境，编译执行PHP代码，zend引擎，清理环境并返回退出
2）加速
PHP加速软件是一种将PHP程式码编译之后所产生的bytecode暂存在共享内存内供重复使用，以提升执行效率的插件软件。
如：Zend Optimizer、APC、XCache
##########
#339、chrome号称为多线程的,所以多线程和多进程的区别为? undone
###
进程是资源分配的最小单位，线程是CPU调度的最小单位
线程和进程的区别在于,子进程和父进程有不同的代码和数据空间,而多个线程则共享数据空间,每个线程有自己的执行堆栈和程序计数器为其执行上下文.多线程主要是为了节约CPU时间,发挥利用,根据具体情况而定. 线程的运行中需要使用计算机的内存资源和CPU。340、 php在2011年底出现hash碰撞,hash碰撞原理为? 如何进行修复?
PHP是使用单链表存储碰撞的数据，因此实际上PHP哈希表的平均查找复杂度为O(L)，其中L为桶链表的平均长度；而最坏复杂度为O(N)，此时所有数据全部碰撞，哈希表退化成单链表。
哈希表碰撞攻击就是通过精心构造数据，使得所有数据全部碰撞，人为将哈希表变成一个退化的单链表，此时哈希表各种操作的时间均提升了一个数量级，因此会消耗大量CPU资源，导致系统无法快速响应请求，从而达到拒绝服务攻击（DoS）的目的。
攻击者只要构造一个含有大量碰撞key的post请求，就可以达到攻击的目的。具体做法不再演示。
在>=PHP5.3.9的版本中增加了一个配置项max_input_vars，用于标识一次http请求最大接收的参数个数，默认为1000。
理论上，只要PHP代码中某处构造Array的数据依赖于外部输入，则都可能造成这个问题，因此彻底的解决方案要从Zend底层HashTable的实现动手。一般来说有两种方式，一是限制每个桶链表的最长长度；二是使用其它数据结构如红黑树取代链表组织碰撞哈希（并不解决哈希碰撞，只是减轻攻击影响，将N个数据的操作时间从O(N^2)降至O(NlogN)，代价是普通情况下接近O(1)的操作均变为O(logN)）。
##########
#341、web不安全因素有哪些? 分别如何防范? undone
###
对于以往安全事故的分析表明，大多数安全问题都属于下面三种类型之一：
服务器向公众提供了不应该提供的服务。
服务器把本应私有的数据放到了可公开访问的区域。
服务器信赖了来自不可信赖数据源的数据。
##########
#342、假如两个单链表相交,写一个最优算法计算交点位置,说思路也可以? undone
###
##########
#343、nginx负载均衡有哪些? 如果其中一台服务器挂掉,报警机制如何实现? undone
###
##########
#344、不优化前提下,apache一般最大连接数为? nginx一般最大连接数为? mysql 每秒insert ? select ? update ? delete? undone
###
apache默认最大连接数256，nginx默认是1024
##########
#345、mysql 数据类型有哪些 ? 分别占用多少存储空间 ? undone
###
##########
#346、nginx设置缓存js、css、图片等信息,缓存的实现原理是? undone
###
##########
#347、如何提高缓存命中率? 如何对缓存进行颗粒化? undone
###
##########
#348、php的内存回收机制是? undone
###
在PHP中，没有任何变量指向这个对象时，这个对象就成为垃圾。PHP会将其在内存中销毁；这是PHP的GC垃圾处理机制，防止内存溢出。
当一个PHP线程结束时，当前占用的所有内存空间都会被销毁，当前程序中所有对象同时被销毁。GC进程一般都跟着每起一个SESSION而开始运行的.gc目的是为了在session文件过期以后自动销毁删除这些文件.
__destruct() 析构函数，是在垃圾对象被回收时执行。 
unset 销毁的是指向对象的变量，而不是这个对象。
<?php
gc_enable(); // Enable Garbage Collector
var_dump(gc_enabled()); // true
var_dump(gc_collect_cycles()); // # of elements cleaned up
gc_disable(); // Disable Garbage Collector
?>

##########
#349、linux监视一个日志文件a.log 的最新内容?
###
tail –f a.log查看文件最后10行，动态显示。
##########
#350、查看当前服务器的HTTP连接有哪些？
###
假设Apache Httpd
ps –le | grep httpd 说明。。
pgrep httpd
netstat –an | grep 80
##########
#351、说说Linux下的find命令和grep命令的区别？
###
Find查找文件或目录
Grep 在文件内容中/输出结果中查找字符串
##########
#352、如何实现每天0点钟重新启动服务器? 
###
Crontab命令格式：crontab –l/-i/-r/-e 脚本/命令
-l	显示用户crontab内容
-I	删除用户crontab文件前提示
-r	删除用户的crontab文件
-e	编辑用户的crontab文件
时间段含义：
依次是：分钟（0-59）	小时（0-23）	日期（1-31）	月份（1-12）	星期（0-6）
Crontab –e
0 0 * * * /sbin/reboot 应该写绝对路径
##########
#353、请写出5个常用的unix操作命令?
###
Ls cp touch mkdir rm cat kill ps
##########
#354、rm -rf * 是什么意思，其中 f 有什么作用?
###
–r表示递归（删除目录），f强制（可以不提示删除），* 通配符
删除当前目录下所有文件
##########
#355、Linux压缩文件和解压文件的命令?
###
Gzip  tar  bzip  zip
Gunzip  tar  bunzip  unzip
##########
#356、Linux的目录进行遍历，编写shell脚本?
###
Ls –R
Tree 以树状结构显示目录
##########
#357、apache默认使用进程管理还是线程管理？如何判断并设置最大连接数？
###
使用进程管理
startServers
maxClients 设置最大连接数
##########
#358、当前目录下有一个文件为 showme.sh , 如何修改文件，将其指定为使用 /bin/bash 运行，如何修改其权限为所有用户可读写，所有用户可执行?
###
指定用哪个shell来解析，在文件头加shell路径
#!/bin/bash
修改文件权限
Chmod 777 showme.sh
##########
#359、当前目录下有一个文件为 showme.sh,如何修改其所有人为root?
###
Chown root showme.sh
##########
#360、在linux 请写出一种自动定时备份某一个文件的方法和具体实施流程，要求每天凌晨3 点的时候备份一次。Undone
###
Crontab –e
0 3 * * * 
以某个命令为例
Cp –p
Tar
Scp

说明：每个命令要写绝对路径、错误日志输出 2>>、时间戳、完全备份和增量备份
##########
#361、crond后台常驻程序（daemon）用于：D
###
A．负责文件在网络中的共享
B．管理打印子系统Manages theprinting subsystem
C．跟踪管理系统信息和错误
D．管理系统日常任务的调度（scheduing）

##########
#362、怎么了解您在当前目录下还有多大空间？C  正确答案du –s .
###
A．Use df
B．Use du /
C．Use du.
D．Use df.
##########
#205、有一个备份程序mybackup,需要在周一至周五下午一点和晚上八点各运行次，下面哪一条crontab的项可以完成这项工作？B
###
A．0 13,20 * * 1,5 mybackup
B．0 13,20 * * 1,2,3,4,5, mybackup
C．*13,20 * *1,2,3,4,5, mybackup
D．0 13,20 1,5 * *mybackup
##########
#280、下面哪条命令可以把f1.txt复制为f2.txt？A
###
A．cp f1.txt|f2.txt
B．cat f1.txt|f2.txt
C．cat f1.txt|f2.txt
B．copy f1.txt|f2.txt
##########
#340、 使用命令可以查看Linux的启动信息？B
###
A．mesg –d
B．demesg
C．cat /etc/mesg
D．cat /var/mesg




Linux=L
Apache=A
Mysql=M
Php=P
HTML=H
Javascript =J

##########
#1、php之父是谁？P
###
Rasmus Lerdorf，拉斯姆斯?勒多夫
##########
#4、用什么方法可以从mysql结果集中获取数据？M
###
mysql_fetch_row，mysql_fetch_array,mysql_fetch_object,mysql_fetch_assoc
##########
#6、get和post方法有什么区别？P
###
1）get方法有数据长度限制，最大2kb，post方法没有限制。
2）get方法请求数据直接显示在url上，不安全，post方法适合传输敏感数据。
##########
#11、mysql数据表引擎有什么区别，哪个是默认的？
###
1）MyISAM，默认，这种存储引擎在硬盘上会存三个文件，文件名为表名，后缀名分别为.frm(存储表结构)、.myd(存储数据)、.myi（存储索引）。
2）InnoDB，支持事务安全的存储引擎，支持提交、回滚和恢复。
3）Merge，
4）Heap（MEMORY）,内存存储引擎
5）BDB（BerkeleyDB），同样支持提交和回滚
6）EXAMPLE,
7）FEDERATED，
8）ARCHIVE，
9）CSV，
10）BLACKHOLE，
##########
#12、header()函数的作用？
###
可以给客户端发送报文头，必须在任何实际输出被发送之前调用header()函数。
利用它header()重定向，如： header(‘Location:http://baidu.com/’);
##########
#13、如何在命令行模式下执行php脚本？
###
利用PHP CLI（Command Line Interface），将脚本名作为参数，如：
$ php test1.php
##########
#14、如何配置zend框架，使其支持简写标记<??>?
###
修改php.ini文件，设置short_open_tag=on即可开启。
##########
#17、什么是htaccess？为什么使用它？
###
.htaccess文件是apache服务器提供的配置文件方法，使用它可以实现针对指定目录的基础配置更改，被放置该文件的目录和其所有只目录都适用文件中的配置。
##########
#18、如何获取客户端ip地址，来源地址？
###
使用$_SERVER['REMOTE_ADDR']和$_SERVER['HTTP_REFERER']。
##########
#19、为什么使用lamp环境替代其他程序、服务和运行环境？
###
Lamp是开源的，linux相比windows安全性更高，apache相比iis更具函数性和安全性，mysql是目前最受欢迎的开源数据库，php相比asp等其他脚本语言更加快速。
##########
#20、如何利用mysql加密和解密数据？
###
使用AES_ENCRYPT () 和 AES_DECRYPT ()。
##########
#21、如何用php加密用户名和密码?
###
Php中的加密和解密功能：
加密				解密
AES_ENCRYT()	 	AES_DECRYPT()
ENCODE() 			DECODE()
DES_ENCRYPT() 		DES_DECRYPT()
ENCRYPT() 			不可逆
MD5() 			不可逆
OLD_PASSWORD() 	不可逆
PASSWORD() 		不可逆
SHA() 和 SHA1()		不可逆
不可逆				UNCOMPRESSED_LENGTH()
##########
#22、面向对象编程的特点和优势？
###
面向对象程序的主要优势是其易维护和易扩展性，可以有效降低维护成本。
相比过程化编程，它与现实世界认知模式更接近，更容易让非技术人员理解，使他们更容易参与和改进项目。对于某些系统，面向对象方法可以加快开发时间，因为许多对象是标准的跨系统可重复使用的，比如时间管理、航运、购物车等组件，可以供多个系统复用。
##########
#23、过程化编程和面向对象编程的区别？
###
1）过程化编程易于上手，但相比面向对象编程，它更复杂、让人难于了解整个系统。
2）过程化编程，很难使用mvc等设计模式。
3）在面向对象编程中，我们可以使用继承和多态去复用功能，但过程化编程中需要复制和粘贴。
##########
#25、public, private, protected,static, transient, final 和 volatile有什么区别？
###
Public：被声明为public的元素可以在任何地方访问。
Protected：被声明为protected的元素之能在父类或定义它的类中访问。
Private：被声明为私有private的元素只能在定义它的类中访问。
Static：声明属性或方法为静态，就可以不实例化而直接访问。静态属性不能通过一个类已实例化的对象来访问（但静态方法可以）。
Final：如果父类方法声明为final，则子类无法覆盖该方法，如果一个类被声明为final，则不能被继承。
Transient：临时变量（private）不能被序列化。
Volatile：多线程时使用，声明为volatile的变量将不会由编译器进行优化，因为它们的值可能随时改变。
##########
#26、php错误有哪些类型？
###
1）notices：提示，如使用未定义变量。
2）warnings：警告，如include一个不存在的文件。
3）fatal errors：致命错误，会终止脚本运行，如实例化一个不存在的类、访问一个不存在的函数。
##########
#28、php3、php4和php5有什么区别？undone
###
很多区别，列举一些：
1）
##########
#29、如何asp页面转换为php页面？
###
有很多工具可以实现，比如http://asp2php.naken.cc./

##########
#30、函数htmlentities的作用？
###
将字符转换为html实体。如“&”会被转换为“&amp;”
##########
#32、php中如何转换时区？
###
使用date_default_timezone_get和date_default_timezone_set函数。
##########
#33、urlencode和urldecode有什么作用？
###
编码和解码url字符串，编码时会将除了-_.之外的非字符数字字符都转换为百分号（%）后跟两位十六进制数的形式，空格则编码为加号（+）。
此编码与WWW表单POST数据的编码方式是一样的，同时与application/x-www-form-urlencoded 的媒体类型编码方式一样。
##########
#36、利用php图片函数如何获取图片的大小、类型、宽度和高度？
###
Exif_imagetype()，获取图片类型。
Getimagesize()，获取图片大小。
Imagesx()，获取图片宽度。
Imagesy()，获取图片高度。
##########
#37、php如何获取用户浏览器信息？
###
$_SERVER[‘HTTP_USER_AGENT’]
##########
#38、php上传文件大小上限是多少，如何修改上限？
###
默认上限是2mb，可以修改php.ini调整，如下：
Upload_max_filesize = 2M
##########
#39、如何提高php脚本执行时间限制？
###
修改php.ini，如下：
Max_excution_time = 30
每个脚本执行时间，单位为秒。
##########
#40、如何备份mysql表，如何恢复？
###
备份：
BACKUP TABLE 
##########
#41、如何优化或增加mysql查询语句的速度？
###
1）不使用select * ，只查询需要的字段
2）给适当的字段增加索引
3）使用limit关键字控制数据条数。

##########
#43、如何销毁session，如何销毁session中的变量？
###
Session_destroy可以销毁当前的sesssion
Session_unset可以释放session中的变量
##########
#44、php如何设置和销毁cookie？
###
设置：Setcookie（’user’, value, expire, path, domain）;
销毁：setcookie(‘user’, ‘’, time()-3600)
##########
#47、有哪些数组排序函数？
###
Sort()，arsort()
Assort(),ksort()
Natsort(),natcasesort()
Rsort(),usort()
Array_muletisort(),uksort()
##########
#49、session_set_save_handler 有什么作用？
###
用户级session存储函数，可以将session存储到数据库中。
##########
#50、如何判断一个变量是数字？
###
1）is_numeric()，如果是数字或数字字符串返回true，否则返回false。
2）isNaN()，用于判断一个值是否不是一个数字
##########
#51、有什么工具可以画mysql的E-R图？
###
Case studio
Smart Draw
##########
#52、php中如何从一个数据库查询数据，然后将数据存储到另一个数据库中？undone
###
mysqldump -u root top800 > sql_database_bk/top800_database_bk_2011-10-22.sql
mysql -u root -p'123456' top800 < top800_database_bk_2011-11-11.sql
##########
#53、列出php中的预定义类？
###
Directory
stdClass
__PHP_Incomplete_Class
Exception
Php_user_filter
##########
#54、如何写一个脚本支持双语（如英语、德语）？
###
可以生成两个语言文件，分别存储变量，在运行php脚本时选择所需的语言，引入该语言的变量。
##########
#56、使用javascript如何发送邮件？
###
Js没有任何网络功能，因为他是为客户端设计的。
但我们可以用js调用客户端的邮件协议mailto来提示发送邮件，这需要客户端的批准。
##########
#58、存储过程、触发器、索引有什么好处？undone
###

##########
#59、mysql表名、数据库名和字段名的最大长度?
###
单位为字节
Database	64
Table		64
Column		64
Index		64
Alias		255
##########
#60、mysql中SET函数能接收多少值？
###
最多64个值
##########
#61、除了explain命令还有什么命令可以获取表结构？
###
Desc(ribe) 表名；
##########
#62、在创建表时，有多少个表会创建，都是什么？
###
##########
#63、.frm、.myd、.myi扩展名的文件包含什么，有什么作用？
###
Mysql默认表类型是MyISAM，每个MyISAM表在硬盘上存储都包含这三种文件。
.frm文件，用于存储表结构
.MYD文件，用于存储数据
.MYI文件，用于存储索引
##########
#64、mysql数据库最大容量是？undone
###
不同系统不同大小，最小2G
##########
#65、mysql如何使用grant和revoke命令？undone
###

##########
#66、解释归一化的概念？undone
###
##########
#68、php中如何从结果集中获取数据条数？
###
$result = mysql_qurery($sql, $db_link);
$num = mysql_num_rows($result);
##########
#69、mysql中如何获取当前时间？
###
日期：SELECT CURDATE();
	CURRENT_DATE()  = CURDATE()
时间：SELECT CURTIME();
	CURRENT_TIME() = CURTIME()
##########
#70、css有什么优缺点？undone
###
##########
#73、什么是垃圾回收？默认时间？刷新时间？undone
###
垃圾回收在php中是自动化的，
##########
#75、在sql中group by和order by有什么区别？
###
Order by 是在同一字段上对每行的值进行比较。
Group by是在一个或多个字段上对数据进行分组，将相同值的行合并，可以配合COUNT、SUM、AVG使用。
##########
#78、如何将文本数据导入数据库？undone
###
命令：LOAD DATA INFILE file_name;要保证文件中的数据结构正确。
##########
#79、mysql如何获取两个日期的时间差？
###
SELECT DATEDIFF(‘2013-01-20’, ‘2013-09-30’);
##########
#80、php如何获取两个日期的时间差？
###
$date1 = date(‘Y-m-d’);
$date2 = ‘2013-10-30’;
$days = (strtotime($date1) – strtotime($date2)) / (60*60*24);
##########
#81、php如何自动加载类？
###
使用spl_autoload_register($filename)函数，或实现__autoload方法。
##########
#83、php如何获知用户读取了邮件？undone
###
？？Disposition-Notification-To
##########
#84、session默认生存时间和路径？
###
Php中Session默认生存时间为1440秒或24分钟。
默认路径为/tmp
##########
#85、如何判断用户退出？何时空闲？
###
在加载页面时，通过检查session变量是否存在可以判断用户登录状态。默认情况下session在浏览器关闭时过期，可以在php.ini中修改过期时间，如要改成关闭浏览器后5分钟，则session.cookie_lifetime = 300，重启apache。
##########
#86、如何跟踪用户登录？
###
如果用户登录获取用户ip、userid等配置，存储到数据库中标记为在线，如果用户登出或session过期则标记为离线，这样计算标记为在线的数据条数就可以知道在线人数。
##########
#87、php中有什么库可以操作pdf？
###
PDFlib，php4中提供函数，php5中提供面向对象接口。
FPDF是一个php类，可以实现pdf操作。
##########
#88、php有什么图片操作类库？
###
GD、mageick，还有其他库可用，看需要处理什么类型的图片
##########
#89、什么是设计模式？单例模式？
###
设计模式是一般的可复用的解决方案，解决软件设计中经常出现的问题。
单例模式，确保一个类只有一个实例，并提供一个全局访问点。
##########
#90、什么是魔术方法？魔术常量？
###
魔术方法是所有类的实例可以使用的方法。
魔术方法已”__”开头。目前有以下魔术方法：
__construct() 
__destruct() 
__set()	，在给不可访问属性赋值时，__set() 会被调用。
 __get()，读取不可访问属性的值时，__get() 会被调用。
__call() ，调用一个不存在的方法时，会被调用。
__toString() 
__sleep()
__wakeup() 
__isset() ，当对不可访问属性调用 isset() 或 empty() 时，__isset() 会被调用。
__unset()，当对不可访问属性调用 unset() 时，__unset() 会被调用。
__autoload()
 __clone()
魔术常量是php中的预定义常量。包括：
__LINE__，文件中的当前行号
__FILE__，文件的完整路径和文件名。
__DIR__，文件所在的目录。
__FUNCTION__，函数名称
__CLASS__，类名称。
__TRAIT__，Trait名称
__METHOD__，类的方法名
__NAMESPACE__，当前命名空间名称。

##########
#91、什么是魔术引号？
###
魔术引号（magic quote）是一个自动将php脚本的数据进行转义的过程。最好在编码时不要转义而在运行时根据需要而转义。5.4移除
##########
#92、什么是跨站脚本？SQL注入？
###
跨站脚本（XSS）是一种计算机安全漏洞，是代码注入的一种，通常出现在web应用程序上。它允许恶意用户将代码注入到网页上，其他用户观看网页时就会收到影响。这种攻击通常包含了html以及客户端脚本语言。
SQL注入是发生于应用程序数据库层的安全漏洞。是在输入的字符中注入SQL指令，在设计不良的程序中忽略了检查，那么这些注入的指令会被数据库误认为是正常的SQL指令而运行，因此遭到破坏。
##########
#93、什么是url重写？
###
url重写可以将动态url转为静态url。
静态url的好处：
1）静态url在搜索引擎上能得到更好的排名
2）搜索引擎认为动态url页面比静态url页面慢很多
3）静态url对用户更友好
我们可以利用url重写将变量/cookies写到url上，从而处理session
##########
#94、php主要的安全漏洞是什么？如何预防？undone
###
1）在仔细检查用户输入前，不要include、require甚至打开一个用户输入的文件。
2）注意不要轻易在用户输入值上使用eval()函数，避免执行到危险命令。
3）不要轻易使用register_globals = ON，它的设计目的是使php更简单，但也会带来更多安全漏洞。
4）永远不要执行未转义的查询。
5）为保护区域，使用session或每次验证的登录
6）如果不想文件被看见，把文件加上.php后缀

##########
#97、什么是框架？工作原理？有什么优点？
###
框架有助于减轻网页开发时共通性活动的工作负荷，例如许多框架提供数据库访问接口、标准样板以及会话管理等，可提升代码的可再用性。
##########
#98、什么是CURL？
###
CURL是client URL library的简称。
Curl是一种传输文件的命令行工具，支持多种协议，如FTP, FTPS, HTTP, HTTPS, SCP, SFTP, TFTP, TELNET,DICT, LDAP, LDAPS and FILE。

##########
#99、什么是PDO？
###
Pdo扩展定义了一个轻量级的、一致的接口用于在php中访问数据库。支持多种数据库服务器。
Php有很多优点，如干净、简单、可移植的api，但也有缺点，如它不允许使用一些数据库新功能，如mysql的多语句支持。
##########
#100、什么是php的mysqli扩展？
###
Mysqli扩展增加了mysql4.1.3以后的新特性，php5开始支持。
Mysqli扩展的新特性：
面向对象接口
支持预处理
支持多个语句
支持事务
增强的调试功能
嵌入式服务器支持

##########
#101、写出Zend框架的目录结构，简单说明目录作用？
###
|--application			应用目录
|--controllers		控制器目录
		|--models			模型目录
		|--views			视图目录
		|--config			配置文件目录
	|--library				通用类目录
		|--zend				zend类
		|--smarty			smarty模板引擎
	|--www					文档根目录
		|--images			图片目录
		|--css				样式表目录
		|--js				Javascript目录
	|--tmp					临时文件目录
##########
#102、请取出数组中的最大值
###
$a=array(1,9,3,5,6,8);
$max=array_shift(rsort($a));
或
Echo max($a);
##########
#109、字符串转数组,数组转字符串,字符串截取,字符串替换,字符串查找的函数分别是什么?
###
字符串转数组：Explode、str_split
数组转字符串：Implode、join
字符串截取：substr
字符串替换：Str_replace
字符串查找：Strpos、stripos、strstr、strrchr
##########
#110、写出下列代码的数据结果。 undone
###
$date='08/26/2003';
print ereg_replace(“([0-9]+)/([0-9]+)/([0-9]+)”,2/1/3,$date);
没有输出结果

##########
#112、解释左连接,右连接,内连接,全连接，索引
###
左连接：以左表为基础，显示左表中的所有列，不管是否与关联条件相匹配，而右表中的数据只显示与关联条件相匹配的列，不匹配的列以NULL字符填充。
右连接：以右表为基础，显示右表中的所有列，不管是否与关联条件相匹配，而左表中的数据只显示与关联条件相匹配的列，不匹配的列以NULL字符填充。
内连接：只显示多表之间与管理按条件相匹配的列
全连接：显示多个表中的所有列，不匹配关联条件的列以NULL字符填充，mysql本身不支持全连接，可以用左连接union右连接实现。
索引：是对数据库表中一列或多列的值进行排序的一种结构，使用索引可以快速访问数据库表中的特定信息。
##########
#113、简述论坛中无限分类的实现原理。
###
论坛中版块要使用到无限分类，设计表时需要三个字段，id（版块id，主键自增）、pid（上级版块id）和path（版块路径）。
版块添加时(需要判断，如果是一级版块则pid为0)，分两步，第一步拿到pid和其他字段信息存入数据库并取得版块自增id，第二步，使用pid查询上级版块的path值，将这个path值和刚获取的自增id使用特定分隔符拼成字符串，将这个新的path值更新到新版块信息中。
版块查询时，如果需要遍历所有版块，则查询时按path排序。如果需要查询某版块下的所有子分类和更深层级分类，可以使用like条件按path相同部分查询，如：SELECT * FROM forums WHERE path LIKE ‘0,1%’。

##########
#114、写一个函数，尽可能高效的，从一个标准 url 里取出文件的扩展名
###
例如: http://www.test.com.cn/abc/de/fg.php?id=1需要取出php或.php
<?php
	Function getSuffix($url){
		$b=parse_url($url);
$reg=’/\.\w+/’;
		preg_match($reg,$b[‘path’],$arr);
		Return $arr[0];
}
Echo getSuffix($url);
?>
##########
#115、描述一下大流量高并发量网站的解决方案
###
1）确认服务器硬件是否足够支持当前的流量。
2）使用memcache缓存技术，将动态数据缓存到文件中，动态网页直接调用这些文件，而不必在访问数据库。
3）禁止外部的盗链。外部网站的图片或者文件盗链往往会带来大量的负载压力，因此应该严格限制外部对自身图片或者文件盗链，可以通过apache的URL重定向来防止盗链。
4）控制大文件的下载。大文件的下载会占用很大的流量，对于非SCSI硬盘来说会消耗，使得网站响应能力下降。
5）使用不同的主机分流主要流量。
6）使用流量统计软件。在网站上安装一个流量统计软件，可以即时知道哪些地方耗费了大量流量，哪些页面需要再进行优化。
##########
#116、如何设计或配置Mysql，才能达到高效使用的目的。
###
1）数据库设计方面，设计结构良好的数据库，允许部分数据冗余。
	选取最适用的字段属性，尽可能把字段设置为NOTNULL，这样在查询的时候，数据库不用去比较NULL值。
2）系统架构设计方面，表散列，把海量数据散列到几个不同的表里面，集群，数据库查询和写入分开。
	写高效sql语句，以提高效率。
	使用连接(join)来代替子查询
	使用联合(union)来代替手动创建的临时表
	所得皆必须，只从数据库取必须的数据。
	必要的时候用不同的存储引擎，比如Innodb可以减少死锁，HEAP可以提高一个数量级的查询速度。
	使用事务
	使用外键
	使用索引

##########
#117、如何进行防SQL注入？
###
1）过滤掉一些常见的数据库操作关键字：select,insert,update,delete,and,*等
或者通过系统函数：addslashes(需要被过滤的内容)来进行过滤。
2）在PHP配置文件中
Register_globals=off;设置为关闭状态 //作用将注册全局变量关闭。
比如：接收POST表单的值使用$_POST['user'],如果将register_globals=on;直接使用$user可以接收表单的值。
 3）SQL语句书写的时候尽量不要省略小引号(tab键上面那个)和单引号
 4）提高数据库命名技巧，对于一些重要的字段根据程序的特点命名，取不易被猜到的
 5）对于常用的方法加以封装，避免直接暴漏SQL语句
 6）开启PHP安全模式
Safe_mode=on;
 7）打开magic_quotes_gpc来防止SQL注入
Magic_quotes_gpc=off;默认是关闭的，它打开后将自动把用户提交的sql语句的查询进行转换，把'转为\'，这对防止sql注入有重大作用。
 8）控制错误信息
关闭错误提示信息，将错误信息写到系统日志。

##########
#118、用PHP写出一个安全的用户登录系统需要注意哪些方面？
###
1）密码要进行加密，如MD5()。
2）登录表单的名称不要跟数据库字段一样，以免暴露表字段。
3）用户表的表名、字段名、密码尽量用不容易被猜到的。
4）要使用验证码验证登陆，以防止暴力破解。
5）验证提交的数据是不是来自本网站。
6）登录后台处理代码数据库部分使用预处理，做好过滤，防止sql注入。

##########
#119、使用过哪些PHP框架？试描述其优劣点。
###
Thinkphp
优点：功能比较全面，配置相对比较简单，操作相对比较简单，有很多使用示例程序。
缺点：提供的操作方法太多，新手不知如何选择，文档不够全面。
Yii
	优点：功能强大、有代码自动生成功能
	缺点：中文资料欠缺，上手困难。
brophp
优点：轻量级学习型框架，配置简单，操作简单，容易上手，提供了比较全面的文档。
缺点：功能少

   
##########
#123、下面说法不正确的是：C，resource和NULL是特殊类型
###
   A. PHP有四种标量类型：布尔型(boolean),整型(integer),浮点型(float),字符串(string)
   B. 浮点型(float)与双精度型(double)是同一种类型
   C. 符合类型包括:数组(array),对象(object),资源(resource) 
   D. 伪类型：混合型(mixed),数字型(number),回调(callback)
   
##########
#125、下面不是PHP语法的组成部分的函数是：AD
###
   A. array
   B. eval
   C. each
   D. list
   
   
   
##########
#129、下面代码加入下面哪个函数后返回TRUE: B
###
   return ? == 'A';
   A. ord(65)
   B. chr(65) 
   C. 65+''
   D. ''+65
   
   

   
##########
#135、对于下面的代码
###
   <?php
      $fruits = array('strawberry'=>'red', 'banana'=>'yellow');
   ?>
   能够正确得到结果'yellow'的代码是：ACD
   A. echo "A banana is {$fruits['banana']}"; 
   B. echo "A banana is $fruits['banana']";
   C. echo "A banana is {$fruits[banana]}";
   D. echo "A banana is $fruits[banana]";
   
##########
#140、什么是面向对象？主要特征是什么？
###
面向对象是一种编程方法，可以使编程的代码更简洁、更易于维护、并且具有更强的可重用性。
	主要特征：封装、继承和多态。
##########
#141、SESSION 与 COOKIE的区别是什么，请从协议，产生的原因与作用说明?
###
	HTTP是无状态协议，不能区分用户是从同一个网站上来的，同一个用户请求的不同页面不能看作是一同一个用户，为了解决这个问题，SESSION和COOKIE诞生了，他们都可以用来保存用户数据。
SESSION保存在服务器端，COOKIE保存在客户端。
1）cookie数据存放在客户的浏览器上，session数据放在服务器上。
2）cookie不是很安全，别人可以分析存放在本地的COOKIE并进行COOKIE欺骗
   考虑到安全应当使用session。
3）session会在一定时间内保存在服务器上。当访问增多，会比较占用你服务器的性能
   考虑到减轻服务器性能方面，应当使用COOKIE。
4）单个cookie保存的数据不能超过4K，很多浏览器都限制一个站点最多保存20个cookie。

##########
#143、Linux 下建立压缩包，解压缩包的命令。
###
	压缩：gzip、tar –cvfz、zip、bzip2
	解压：gunzip、tar –zxvf、unzip、bunzip2
##########
#145、MyISAM 和 InnoDB 的基本区别？
###
MYISAM不支持外键和事务处理，支持全文索引，采用表锁机制，查询速度稍快，数据存储文件有3个，占用空间小。
InnoDB支持外键和事务处理，不支持全文索引，采用行锁机制，查询速度比MYISAM稍慢，数据存储文件只有一个，占用空间大。

##########
#146、不使用cookie向客户端发送一个cookie？
###
	Header(“Set-cookie:user:admin;age=10”);
##########
#147、 线性表和顺序表的区别？
###
线性表包括顺序表和链表
顺序表中的元素的地址是连续的，链表里面节点的地址不是连续的，是通过指针连起来的。
##########
#149、isset() 和 empty() 区别，对不同数据的判断结果？$a=0;$a='0';$a='';$a=false;$a=null;
###
Isset判断变量是否存在，如果存在则返回真，empty判断变量是否为空，如果为空则返回真。
Isset判断：true,true,true,true,false
Empty判断：true,true,true,true,true
##########
#150、 什么是满二叉树？什么是完全二叉树？
###
满二叉树：除了叶子节点外每一个节点都有左右子叶且叶节点都处在 最底层的二叉树。
完全二叉树：若设二叉树高度为h，除了第h层外，其它层的节点数都达到最大个数，第h层有叶子节点，这就是完全二叉树。
##########
#153、请写出常见的排序算法(至少三种)，并用PHP实现冒泡排序，将数组$a = array()按照从小到大的方式进行排序。
###
冒泡排序法、快速排序法，插入排序法
$a=array(1,20,40,29,50,22);
Function mp_sort($a){
	$len=count($a);
	If($len<=1){
		Return false;
}
For($i=0;$i<$len;$i++){
	For($j=0;$j<$len-1;$j++){
		If($a[$j]>$a[$j+1]){
			$tmp=$a[$j];
			$a[$j]=$a[$j+1];
			$a[$j+1]=$tmp;
}
}
}
Return $a;
}

function quick_sort($array) {
    if (count($array) <= 1) {
        return $array;
    }
    $key = $array[0];
    $left_arr = array();
    $right_arr = array();
    for ($i=1; $i<count($array); $i++) {
        if ($array[$i] <= $key) {
            $left_arr[] = $array[$i];
        } else {
            $right_arr[] = $array[$i];
        }
    }
    $left_arr = quick_sort($left_arr);
    $right_arr = quick_sort($right_arr);
    return array_merge($left_arr, array($key), $right_arr);
}

function insertion_sort($a) {
    for ($i = 1, $len = count($a); $i < $len; $i++) {
        $key = $a[$i]; 
        $j = $i - 1;
        while ($j > -1 && $a[$j] > $key) {
            $a[$j + 1] = $a[$j];
            $j--;
        }
        $a[$j + 1] = $key;
    }
    return $a;
}
##########
#154、在数据库test中的一个表student，字段是name，class，score。分别代表姓名、所在班级，分数。
###
   1) 查出每个班级中的学生，按照成绩降序排序;
   2) 查出每个班的及格人数和不及格人数，格式为：class、及格人数、不及格人数；
   3) 用PHP写入连接数据库("localhost","msuser","mspass")、执行以上SQL、显示结果、判断错误、关闭数据库的过程；

$mysqli=new mysqli(‘localhost’,’msuser’,’mspass’,’test’);
$sql1=’SELECT * FROM sdudent ORDER BY score DESC’;
$sql2= SELECT a.class 班级,a.num 及格人数,b.num 不及格人数 FROM (SELECT class,COUNT(id) AS num FROM stu WHERE score>=60 GROUP BY class) a,(SELECT class,COUNT(id) AS num FROM stu WHERE score<60 GROUP BY class) b WHERE a.class=b.class;

$result1=$mysqli->query($sql1);
If($result1){
	Print_r($result1);
}else{
	Echo ‘查询成绩失败！’;
}
$result2=$mysqli->query($sql2);
If($result2){
	While($row=$result2->fetch_assoc()){
			Echo $row[“class”].’班及格人数:’.$row[“及格人数”].’不及格人数’:$row[“不及格人数”];
}
}else{
	
}
$mysqli->close();


##########
#160、 请写出以下5个UNIX系统配置文件/服务的作用
###
/etc/passwd 用户信息文件
/etc/hosts 主机名设置文件
/etc/fstab 保存系统所有分区信息
Crontab 计划任务服务
sshd 远程连接服务
##########
#162、请列出5个常用的PHP操作MySQL的函数 。
###
Mysql_connect、mysql_fetch_row、mysql_affected_rows、mysql_fetch_assoc、mysql_query



##########
#167、请列出3种PHP数组循环操作的语法，并注明每种循环的优缺点？undone
###
For、while、foreach
For循环适合遍历定长数组
While循环适合遍历不定长数组
Foreach适合遍历关联数组和索引数组

##########
#169、从PHP4.2.0开始 PHP默认配置将register_globals配置设定为off,请指出这个设定的作用和对PHP相关程序的影响？
###
Register_globals=off;的时候，关闭了全局变量注册，访问POST、GET、COOKIE、SESSION、ENV全局变量时不能使用简易方式，只能用$_全局变量名方式访问，加强了安全性。

##########
#172、不断在文件hello.txt头部写入一行“Hello World”字符串，要求代码完整。Undone
###
$file=’hello.txt’;
$con=file_get_cotents($file);
While(1){
	File_put_contents($file,’Hello World\n’.$con)
}

##########
#173、 输出用户的IP地址，并且判断用户的IP地址是否在192.168.1.100 --- 192.168.1.150之间。
###
$ip=$_SERVER[“REMOTE_ADDR”];
Echo $ip;
$pos=strrpos($ip,’.’)+1;
$head=substr($ip,0,$pos);
$my=substr($ip,$pos);
If($head=='192.168.1.' && $my>100 && $m<150){
	Echo ‘IP在指定区间内’;
}else{
	Echo ‘IP不在指定区间内’;
}
##########
#174、 请将2维数组按照name的长度进行重新排序，按照顺序将id赋值(从1开始)。
###
<?php
$Tarray = array(
	array(‘id’ => 0, ‘name’ => ‘123’),
	array(‘id’ => 0, ‘name’ => ‘1234’),
	array(‘id’ => 0, ‘name’ => ‘1235’),
	array(‘id’ => 0, ‘name’ => ‘12356’),
	array(‘id’ => 0, ‘name’ => ‘123abc’)
)

foreach($Tarray as $k=>$v){
	$name[]=$v["name"];
}
array_multisort($name,SORT_DESC,$Tarray);
$m=count($Tarray);
for($i=0;$i<$m;$i++){
	$Tarray [$i]["id"]=$i+1;
}
echo '<pre>';
print_r($Tarray);
echo '</pre>';

##########
#175、表单数据提交方式POST和GET的区别，URL地址传递的数据最大长度是多少？
###
POST方式提交没有长度限制且URL地址中不可见，GET提交数据有最大长度限制并在URL中可见。
URL地址传递数据最大长度为，IE浏览器2083（2k+53）。

##########
#176、SESSION和COOKIE的作用和区别，SESSION信息的存储方式，如何进行遍历？
###
两者都能够存储数据在一个站点多个页面间传递。
SESSION：存储在服务器端
COOKIE：存储在客户端
SESSION信息的存储方式有文件、内存和用户自定义几种方式。
通过全局数组$_SESSION可以取到SESSION信息并遍历。

##########
#177、通过PHP函数的方式对目录进行遍历，写出程序
###
function listDir($dir){
	if(is_dir($dir)){
		if ($dh = opendir($dir)){
			while(($file= readdir($dh)) !== false){
				if((is_dir($dir."/".$file)) && $file!="." && $file!=".."){
					echo "<b><font color='red'>文件夹：</font></b>",$file,"<br><hr>";
					listDir($dir."/".$file."/");
					echo '<hr>';
				}else{
					if($file!="." && $file!=".."){
						echo $file."<br>";
					}
				}
			}
			closedir($dh);
		}
	}
}

##########
#178、Linux的目录进行遍历，编写shell脚本?undone
###
#!/bin/sh  使用bash做为默认shell
 list_alldir(){
     for file in $1/*
     do
         if [ -d $file ]; then
             echo $file
             list_alldir $file    #在这里递归调用
         fi
     done
 }

 #下面是定义初始化路径
 if [ $# -gt 0 ]
 then
     list_alldir "$1"
 else
     list_alldir "."
 fi

##########
#179、什么是数据库索引，主键索引，唯一索引的区别，索引的缺点是什么？
###
数据库索引是对数据库表中一列或多列的值进行排序的一种结构，使用索引可以快速访问数据库表中的特定信息。
主键和唯一的区别，每个表只能有一个主键索引，但可以有多个唯一索引。
索引的缺点：
	1）创建索引和维护索引要耗费时间，这种时间随着数据量的增加而增加。	
	2）索引需要占物理空间，除了数据表占空间之外，每一个索引还要占一定的物理空间。
	3）当对表的数据进行增加、删除和修改时，索引也要动态维护，这样就降低了数据库的维护速度。

##########
#180、数据库设计时，常遇到的性能瓶颈有哪些，常有的解决方案？
###
通常造成数据库瓶颈的原因是：
1）数据库系统本身性能不佳，例如你用桌面数据库Access 来做web应用的后台数据库 显然是不行的；
2）数据库结构设计不合理，导致不必要的、过多的数据库访问，这需要优化数据表结构设计，必要时引入Cache系统；
3）数据库连接池设置不当，为了提供数据库的服务能力，在有潜在并发访问数据库的情况下，我们会使用连接池技术，如果池的大小与实际需求不符，则会带来访问数据库时的排队等候。
4）程序实现适当，例如对 数据库连接长期占有，导致其它访问必须进行排队 

当然，即时没有以上的错误做法，当一个系统规模不断变大时，数据库系统也会成为瓶颈所在，但针对此业界有一些解决方法的，例如进行数据库水平/垂直分割、集群、缓存等等。


##########
#181、编写一个在线留言本，实现用户的在线留言功能，留言信息存储到数据库？undone
###
数据表字段：aid、author、title、content、posttime、edittime、ip
脚本：
index.php
留言列表、回复留言按钮、提交留言表单
action.php（业务处理脚本）
处理表单提交、增改留言数据表

##########
#182、通过JS创建一个当前窗口的子窗口，通过程序实现子窗口对父窗口的操作实例？
###
1）IE中使用方法：
父窗口调用子窗口：iframe_ID.iframe_document_object.object_attribute = attribute_value 
例子：onClick="iframe_text.myH1.innerText='http://www.pint.com';" 
子窗口调用父窗口：parent.parent_document_object.object_attribute = attribute_value 
例子：onclick="parent.myH1.innerText='http://www.pint.com';"
2）Firefox中使用方法：
上面在IE下没有问题，但在firefox下不正常。在firefox下，应该是如下调用方法：
父窗口调用子窗口：window.frames["iframe_ID"].document.getElementById("iframe_document_object"-).object_attribute = attribute_value 
例： window.frames["iframe_text"].document.getElementById("myH1").innerHTML= "http://hi.wonsoft.cn"; 
子窗口调用父窗口：parent.document.getElementById("parent_document_object").object_attribute = attribute_value 
例： parent.document.getElementById("myH1").innerHTML = "http://wonsoft.cn";

##########
#185、设定网站的用户数量在千万级，但是活跃用户的数量只有1%，如何通过优化数据库提高活跃用户的访问速度？
###
可以使用分表技术，将高活跃用户单独存到一个有同样字段但表名不同的表里，当用户登陆时首先查询这个表，如果不是高活跃用户再查询大表。

##########
#186、服务器在运行的过程中，随着用户访问数量的增长，如何通过优化，保证性能？如果数据库已经达到最优化，请设计出继续升级的解决方案？
###
1）确定当前的服务器的硬件设备能不能满足流量需求，如果满足不了就添加新的设备。
2）使用memcache缓存技术，将动态数据缓存到文件中，动态网页直接调用这些文件，而不必再访问数据库。
3）禁止外部盗链，图片、或文件盗链会给服务器带来大量的负载压力，因此可以通过refer来控制盗链，或者用apache来配置禁止盗链。
4）控制大文件的下载，大文件的下载对于非SCSI硬盘来说会占用大量资源，使得网站响应能力下降。
5）使用不同的主机分流主要流量，使得服务器均衡负载。
6）使用流量统计软件进行流量统计和分析，可以即时了解哪些地方耗费了大量的流量，哪些页面需要再进行优化。


##########
#188、数据库中的事务是什么？
###
数据库事务，是指作为单个逻辑工作单元执行的一系列操作。 事务处理可以确保除非事务性单元内的所有操作都成功完成，否则不会永久更新数据库。通过将一组相关操作组合为一个要么全部成功要么全部失败的单元，可以简化错误恢复并使应用程序更加可靠。

##########
#194、echo(),print(),print_r()的区别？
###
echo 是语法结构，也就是关键字，不是函数。使用的时候不用加括号，加上也可以。显示多个值的时候可以用逗号隔开。只支持基本类型，布尔型除外，echo true的时候显示1，echo false的时候啥都没有。
print 和 echo 基本一致。但是print 不支持逗号分隔多个显示变量的语法。
print_r 是函数，不仅可以打印变量的的值，还能显示变量类型，而且也可以显示数组和对象这样复杂的变量类型。print_r() 将把数组的指针移到最后边。使用 reset() 可让指针回到开始处。
##########
#195、对于大流量的网站,您采用什么样的方法来解决访问量问题?
###
确认服务器硬件是否足够支持当前的流量,数据库读写分离,优化数据表, 程序功能规则,禁止外部的盗链,控制大文件的下载,使用不同主机分流主要流量
##########
#196、mysql_fetch_row() 和mysql_fetch_array之间有什么区别?
###
前者返回的结果集是一个索引数组，后者返回的结果集既包含索引数组又包含关联数组。
##########
#197、优化MYSQL数据库的方法？
###
1）数据库设计方面,这是DBA和Architect的责任,设计结构良好的数据库,必要的时候,去正规化(英文是这个:denormalize,中文翻译成啥我不知道),允许部分数据冗余,避免JOIN操作,以提高查询效率 。
2）系统架构设计方面,表散列,把海量数据散列到几个不同的表里面。快慢表,快表只留最新数据,慢表是历史存档.集群,主服务器Read & write,从服务器read only,或者N台服务器,各机器互为Master 。
3）(1)和(2)超越PHP Programmer的要求了,会更好,不会没关系.检查有没有少加索引 
4）写高效的SQL语句,看看有没有写低效的SQL语句,比如生成笛卡尔积的全连接啊,大量的Group By和order by,没有limit等等.必要的时候,把数据库逻辑封装到DBMS端的存储过程里面，缓存查询结果,explain每一个sql语句 
5)所得皆必须,只从数据库取必需的数据,比如查询某篇文章的评论数,select count(*) ... where article_id = ? 就可以了,不要先select * ... where article_id = ?然后msql_num_rows. 
只传送必须的SQL语句,比如修改文章的时候,如果用户只修改了标题,那就update ... set title = ? where article_id = ?不要set content = ?(大文本) 
6）必要的时候用不同的存储引擎.比如InnoDB可以减少死锁.HEAP可以提高一个数量级的查询速度。
##########
#198、实现中文字串截取无乱码的方法？undone
###
function substr_for_utf8($sourcestr,$cutlength){
	$returnstr=”;
	$i=0;
	$n=0;
	$str_length=strlen($sourcestr);    //字符串的字节数
	while (($n<$cutlength) and ($i<=$str_length)){
		$temp_str=substr($sourcestr,$i,1);
		$ascnum=Ord($temp_str); //得到字符串中第$i位字符的ascii码
		if ($ascnum>=224) //如果ASCII位高与224，
		{
			$returnstr=$returnstr.substr($sourcestr,$i,3); //根据UTF-8编码规范，将3个连续的字符计为单个字符
			$i=$i+3; //实际Byte计为3
			$n++; //字串长度计1
		}
		elseif ($ascnum>=192)//如果ASCII位高与192，
		{
			$returnstr=$returnstr.substr($sourcestr,$i,2); //根据UTF-8编码规范，将2个连续的字符计为单个字符
			$i=$i+2; //实际Byte计为2
			$n++; //字串长度计1
		}
		elseif ($ascnum>=65 && $ascnum<=90) //如果是大写字母，
		{
			$returnstr=$returnstr.substr($sourcestr,$i,1);
			$i=$i+1; //实际的Byte数仍计1个
			$n++; //但考虑整体美观，大写字母计成一个高位字符
		}
		else //其他情况下，包括小写字母和半角标点符号，
		{
			$returnstr=$returnstr.substr($sourcestr,$i,1);
			$i=$i+1;    //实际的Byte数计1个
			$n=$n+0.5;    //小写字母和半角标点等与半个高位字符宽…
		}
	}

	if ($str_length>$cutlength){
		$returnstr = $returnstr . “…”;    //超过长度时在尾处加上省略号
	}

	return $returnstr;
}
##########
#202、简述如何得到当前执行脚本路径，包括所得到参数。
###
$_SERVER[“SCRIPT_NAME”]
__DIR__
basename(__file__);
##########
#203、JS表单弹出对话框函数是?获得输入焦点函数是? 
###
弹框函数alert()、prompt()、confirm()获取焦点函数focus()。
##########
#204、写一个函数，算出两个文件的相对路径 　　
###
如 
$a = '/a/b/c/d/e.php'; 　　
$b = '/a/b/12/34/c.php'; 　　
计算出 $b 相对于 $a 的相对路径应该是 http://www.cnblogs.com/c/d将()添上
function getPath($a,$b){
	$m=strlen($a);
	for($i=1;$i<$m;$i++){
		$str=substr($a,0,-$i);
		$reg='/'.str_replace('/','\/',$str).'/';
		if(preg_match($reg,$b)){
			$not=str_replace($str,'',$a);
			$count=substr_count($not,'/');
			for($j=0;$j<$count;$j++){
				$path.='../';
			}
			$path.=str_replace($str,'',$b);
			return $path;	
		}	
	}
}
echo getPath($a,$b);
##########
#206、中文占用unicode码范围？
###
0080-07FF

##########
#210、magic_quotes_gpc()、magic_quotes_runtime()的意思是什么？
###
magic_quotes_gpc()是否对输入的GET/POST/COOKIE数据使用自动字符串转义。
Magic_quotes_runtime()是否对进行时从外部资源产生的数据使用自动字符转义，如SQL语句。
##########
#211、框架中什么是单一入口和多入口，单一入口的优缺点？
###
单一入口是指一个项目或一个应用具有统一的入口文件，项目的所有功能操作都是通过这个入口文件进行的，并且往往入口文件是第一步被执行的。
单一入口的优点：
加载文件方便、权限验证容易、URL重写简单。
单一入口的缺点：URL地址不利于搜索引擎，但是可以通过URL重写解决
##########
#214、你对Memcache的理解，优点有哪些？ 
###
Memcache是一个高性能的分布式内存对象缓存系统，它能够用来存储各种格式的数据，包括图像、视频、文件以及数据库检索结果等。
优点：解决了共享内存只能是单机的弊端、降低了数据库检索压力、提高了访问获取数据的速度。
##########
#215、MySQL字段类型有很多种，如int ,bigint , char, varchar, text等等, 请描述每种字段占用的字节数和最大范围。
###
注意：平台环境为32位字长计算机,Mysql 5.0+, 数字型字段使用unsigned属性
Int 4字节，带符号值：-2147483648~2147483647，无符号值：0~4294967295
Bigint 8字节
Char M字节 固定长度，M取值0-255
Varchar L+1字节，可变长度，根据存放值长度而定，取值范围0-255
Text 255字节
##########
#216、对关系型数 据库而言，索引是相当重要的概念，请回答有关索引几个问题:
###
1）索引的目的是什么?
	建立索引的目的是加快对表中记录的查找或排序
2）索引对数据库系统的负面影响是什么?
一是增加了数据库的存储空间，二是在插入和修改时要花费较多的时间。
3）为数据表建立索引的原则有哪些?
表的主键、外键必须有索引；
数据量超过300 的表应该有索引；
经常与其他表进行连接的表，在连接字段上应该建立索引；
经常出现在where字句中的字段，特别是大表的字段，应该建立索引；
索引应该建立在选择性高的字段上；
频繁进行数据稍作的表，不要建立太多索引；
删除无用的索引，避免对执行计划造成负面影响。

4）什么情况下不宜建立索引?
	数据表数据少和字段值重复太多,不适宜建立索引,不起到提速,反而会消耗大量内存。
##########
#219、指出以下代码片段中的SQL注入漏洞以及解决方法(magic_quotes_gpc = off)
###
mysql_query("select id,title from content where catid='{$_GET[catid]}' and title like '%$_GET[keywords]%'", $link);  
可以在$_GET[catid]和$_GET[keywords]变量上做文章，如传catid= 10’;select * from content—
##########
#220、分别指出php.ini中 magic_quotes_gpc, magic_quotes_runtime两项参数的作用。
###
magic_quotes_gpc开启可以对输入GET/POST/cookie数据使用自动字符串转义，可以有效防止sql注入。
magic_quotes_runtime开启可以对运行时从外部资源产生的数据使用自动字符串转义。php5.4已移除。
##########
#223、了解XSS攻击吗? 如何防止 ?
###
XSS攻击：跨站脚本攻击，是一种经常出现在web应用的计算机安全漏洞，它允许web用户将代码植入到提供给其他用户使用的页面中。
XSS攻击的危害包括：盗取各类用户帐号，控制企业数据，盗窃企业重要资料，非法转账，强制发送电子邮件，网站挂马，控制受害者及其攻击其他网站。
##########
#224、写出192.168.0.1 ip地址的二进制和10进制表示形式。
###
128 10000000
64 1000000
32 100000
16 10000
8 1000
4 100
2 10
1 1
11000000 10000100 0 1
##########
#225、一个字节占多少bit ? 一个IPv4地址占几个字节? 一个IPv6地址呢?undone
###
一个字节占8bit，一个IPV4占用30字节，一个IPV6占用46字节

##########
#230、 Warning: file_put_contents(): Permission denied in /website/index.php on line 4
###
对文件没有写权限，更改文件权限为777。
##########
#231、Warning: Cannot modify header information - headers already sent by (output started at /website/index.php:1) in /website/index.php  on line 3
###
setcookie、header、session函数前不能有输出。
##########
#232、 Warning:session_start(): open(/website/tmp/sess_47e067121facf033785f9a1cb16d243b,   O_RDWR) failed: No such file or directory (2) in /website/index.php on line  10 
###
没有找到文件或目录，检查文件是否存在
##########
#233、Parse error: syntax error, unexpected T_STRING in /website/index.php on line 18
###
	18行语法错误，检查语法
##########
#235、 windows平台, Apache Http Server启动失败, 排错思路是什么?
###
可能情况一：安装apache2的路径中不能含有中文，将中文都改成英文。
可能情况二：有其他服务占用80端口，修改端口。
可能情况三：配置文件修改错误，还原配置文件。
##########
#236、 你所知道的php数组相关的函数？
###
Array_rand、in_array、array_flip、array_values 、array_keys、sort、rsort、shuffle
Array_push、array_pop、array_shift、array_unshift、array_merge、range、array_pad
##########
#237、php读取文件内容的几种方法和函数？
###
Fread、file_get_contents、fgets、fgetc、file
##########
#238、以下程序，变量str什么值的情况下输入111? if( ! $str ) { echo 111; }
###
当$str为整数0、浮点型0.0、空字符串和字符串”0”、布尔值false、空数组、特殊类型NULL时
##########
#240、你所知道的设计模式有哪些？
###
单例、工厂、MVC、适配器、组合、观察者、命令、迭代器、代理、策略

##########
#241、说说你对SVN的了解？优缺点？ 
###
程序员开发的代码递交到版本服务器进行集中管理。
优点：代码进行集中管理，版本控制容易，操作比较简单，权限控制方便。
缺点：每个文件夹都带一个.svn的文件夹，不能随意修改服务器项目文件夹
##########
#243、PHP加速模式/扩展？ PHP调试模式/工具？
###
Zend Optimizer加速扩展
调试工具：xdebug
##########
#245、进入mysql管理命令行的命令？
###
Mysql –u root –ppass
Mysql –h localhost –u root –p123456
##########
#247、show create database mysql; 这个命令的作用？
###
查看mysql库建库语句
##########
#248、show create table user; 这个命令的作用？
###
查看user表的建表语句
##########
#251、show processlist; 这个命令的作用？
###
查看进程信息
##########
#252、 SHOW VARIABLES; 这个命令的作用？
###
查看系统变量
##########
#253、SHOW VARIABLES like '%conn%'; 这个命令的作用？
###
查看字段名含有conn的系统变量。
##########
#254、LEFT JOIN 写一个SQL语句？
###
SELECT a.username,p.content FROM user as a LEFT JOIN post as p ON a.id=p.uid WHERE a.id=3;
##########
#256、怎么找到数据库的配置文件路径？
###
my.conf/my.ini
##########
#257、简述Linux下安装PHP的过程？
###
安装软件之前先安装编译工具gcc、gcc-c++
拷贝源码包，解包解压缩
Cd /lamp/php进入php目录
./configure –prefix=/usr/local/php –with-config-file-path=/usr/local/php/etc指定安装目录和配置文件目录
Make 编译
Make install安装
##########
#258、简述Linux下安装Mysql的过程？
###
Groupadd mysql 添加一个用户组mysql
Useradd -g mysql mysql 添加一个mysql用户指定分组为mysql
Cd /lamp/mysql 进入mysql目录
./configure –prefix=/usr/local/mysql/ –with-extra-charsets=all
Make
Make all 
##########
#259、简述Linux下安装apache的过程？
###
Cd /lamp/httpd 进去apache软件目录
./configure –prefix=/usr/local/apache2/ –sysconfdir=/etc/httpd/ –with-included-apr
Make
Make all 
##########
#260、用javascript取得一个input的值？取得一个input的属性？
###
Document.getElementsByTagName(‘input’)[0];
Document.getElementsByTagName(‘input’)[0].type
##########
#262、 请您写一段ajax提交的js代码，或者写出ajax提交的过程逻辑。Undone
###
<script>
	Function sendAjax(){
		Var aj=’’;
		Try{
			Aj=new XMLHttpRequest();
}catch(e1){
	Try{
		Aj=new ActiveXObject(‘Msxml2.XMLHTTP’);
}catch(e2){
	Try{
		Aj=new ActiveXObject(‘Microsoft.XMLHTTP’);
}catch(e3){
	Aj=false;
}
}
}
Var str=’username=zhang&password=123’;
Var url=’http://localhost/ajax/re.php’;
Aj.open(‘post’,url);
Aj.onreadystatechange=function(){
	If(aj.readystate==4){
		If(aj.status==200){
			Callback(aj.response.text);
}
}
}
aj.setRequestHeader(‘Content-Type’,’application/x-www-forum-urlencoded’);
aj.send(str);
		function callback(data){
			alert(data);
}
}
</script>
过程逻辑；
1）创建ajax对象
2）打开服务器连接
3）判断请求状态
4）如果是post发送，需要设置请求头部信息
5）发送请求
6）处理响应
##########
#263、写出你认为语言中的高级函数
###
Imagecreate
Imagecolorallocate
Imagesetpixel
Imagettftext
Iconv
Mb_substr
Mysql_connect()
Mysql_select_db
Mysql_query
mysql_fetch_row
Mysql_close
##########
#264、简述Cookie的设置及获取过程。
###
只要用户的浏览器支持cookie功能，就可以使用php的setcookie函数来建立一个cookie。
Setcookie函数需要传三个必要参数,cookie识别名称、cookie值和cookie生存时间。还可以设置其他三个可选参数，分别是服务器端指定路径、所属服务器网址和是否通过 https连接。
使用$_COOKIE全局数组可以获取cookie信息。

##########
#265、写出Smarty模板引擎中你最常用的关键词
###
Assign
Display
Foreach
Section
Loop
Item
$smarty
Now
Const
get


##########
#266、如下user表结构
###
    
名称	类型	说明	备注
Uid	Int unsigned	主键	
Name	Varchar(20)		
Age	Tinyint unsigned		
需求：
1）增加一个字段性别sex，写出修改语句
Alter user ADD sex ENUM(‘1’,‘0’) NOT NULL DEFAULT ‘1’ AFTER  Age; 
2）查询出年龄介于20岁到30岁之间的用户
SELECT * FROM user WHERE age BETWEEN 20 AND 30;
3）如果是一个Web频繁访问的查询，上题的查询如何优化？
可以使用预处理，也可以将查询结果集缓存到memcache服务器。
##########
#267、$str[1]=’123456’;
###
$str[2]=’asassasasas’;
$str[1][2]=’abcdefgh’;
var_dump($str);
写出此程序运行结果
array(2) { [1]=> string(6) "12a456" [2]=> string(6) " asassasasas " }
##########
#268、memcache 是什么？使用过吗？， 有什么用? 请详细描述其操作过程。
###
memcache是一个高性能的分布式的内存对象缓存系统，通过在内存里维护一个统一的巨大的hash表，用来存储数据。
作用：它能够用来存储各种格式的数据，包括图像、视频、文件以及数据库检索的结果等。
操作过程：
Memcached.exe –d install
Memcache.exe –d start
telnet localhost(IP地址) 11211(端口号)
add one(名称) 1(标记) 300(有效时间) 10(字符串长度)
##########
#269、请写一个函数将1234567890转换成1,234,567,890 每3位用逗号隔开的形式。Undone
###
<?php      
$str1 = "1234567890";   
$new_str = preg_replace('/^(\d{1,3})((\d{3})+)$/','$1,$2',$str1);   
$new_str = preg_replace('/(?<=\d{3})(\d{3})/',',$1',$new_str);   
print $new_str."\n";   

第二种方法：echo number_format($str1);
?> 

##########
#272、找到当前目录下文件名含有lo.com.cn 中的php文件。
###
Find . –name *lo.com.cn*.php 
##########
#273、投票 vota实现
###
投票标题 varchar(255)
选项内容 varchar(255)
用户登录id vota_uid 
投票用户id vota_vid
投票时间 vota_time
投票总数 vota_total
1）创建数据库表结构 有没列举出的字段 自己补充，如vota_id（可以写出sql语句，也可以画图说明）
Create table vota(id int auto_increment primarykey,title varchar(255),content varchar(155));
2）有人刷恶意投票 请提供解决恶意刷票的方案 多种方案
用$_SERVER[‘REMOTE_ADDR’]判断，一个IP只能投票一次。
限制用户登录投票
验证码
3）现在有某几个热门的投票  服务器表示鸭梨很大 有什么给力的解决方案
采用读写分离

##########
#275、请说明如何优化mysql数据库
###
1）尽量使用缓存机制减少连接数据库的次数
2）通过sql语句的优化减少每次sql语句执行的时间
3）尽量精准的从数据库中获取内容，减少select * 。。。这样的语句

##########
#277、if($a==$b) print(“$a==$b”); else print(“$a!==$b”);写出输出的结果
###
答:运行的结果是 ==  因为$a 和$b没有值
##########
#278、define(“$myvalue”,10);
###
$myarray[10]=”dog”;
$myarray[]=”human”;
$myarray[“myvalue”]=”cat”;
$myarray[“dog”]=”cat”;
print ”The value is:”;
print $myarray[“myvalue”];
答:cat
##########
#279、怎样防止图片防盗连接?
###
1）可以把真实的图片做为背景图片，而使用一张透明图片匹配尺寸并覆盖到真实图片上面。
<div id="image1" style="background-image: url(originalImage.jpg);">
<img src="blank.gif" height="250px" width="300px">
</div>
这样，当别人使用右键查看或保存图片的时候，得到的是这张透明图片。
2）自动切片这是一个非常有效的图片防盗链方法.
它支持两种方案:
让用户下载到的是被裁切过的图片。 
让用户下载到的是打上水印的图片。 
当用户尝试下载图片的时候，它就会进行截切或添加水印操作，但是这个方法也有很大的劣势:
造成太多的服务器请求负荷，对网站整体性能影响不好 
你将拥有许多的图片文件
3）使用带水印的图片 (预先生成)
预先给图片添加水印也是个防止图片被盗的有效方法，就算别人要盗，至少也为你免费宣传了一下自己的网站。
但缺点也来了:
图片会看的不清楚或不美观了(这对于图片展示类的网站尤其重要，但又正是该类网站特尤其图片防盗) 
可以下载然后裁剪水印(当然，如果你是那种把水印放在图片中间或水印有图片这么1/3大的家伙，就不用担心这个问题了) 
要手动添加水印的话，可以使用photoshop，GIMP，轻松水印等软件。也可以选择下面的一些在线图片水印工具
4）使用水印 (服务器端生成)
使用服务器端自动为图片添加水印，是件省心的事情。只是需要一些脚本知识。
5）使用Flash来显示图片
6）基于浏览器的图片防盗
通过JavaScript来禁用点键菜单 是图片防盗的一个方法，但它仅仅是对于网络菜鸟来说，中等点的网民可以很轻松的查看到代码获取图片地址，再高等点的可以轻松破解，禁用你的禁用!
所以这并不是一个好方法，更重要的是它是极不利于用户浏览体验的。
这有一个折中的方法，你可以通过一个jQuery 插件 来实现仅仅禁用保存功能.
7）禁用IE6的图像工具条
在IE6下，当鼠标悬浮在一张图片上时，会出现工具条，上面有保存功能，你可以使用下面的代码禁用:
<meta http-equiv="imagetoolbar" content="no">
##########
#282、简述你使用的过JQuery插件的优缺点（说两个以上）。
###
autocomplete，tags-input、cookie
##########
#283、公司有800员工资料都存在employee表里写一个SQL语句统计出重名员工的人数？
###
select name, count(*) as num from stu group by name having count(name) > 1;

##########
#284、PHP URL重写（伪静态）  
###
1）让Apache支持mod_rewrite
打开Apache配置文件httpd.conf,找到如下：#LoadModule rewrite_module modules/mod_rewrite.so
开启rewrite，去点前面"#"
2）开始重载Allowoverride
查找apache配置文件找到如下
<Directory /> 
Options FollowSymLinks 
    AllowOverride None
</Directory>
将AllowOverride None改为 AllowOverride All
修改
#APMServ默认虚拟主机
NameVirtualHost *:803
<VirtualHost *:803>
 ServerName *
 DocumentRoot "D:/APMServ/APMServ5.2.0/www/htdocs"
</VirtualHost>
<Directory "D:/APMServ/APMServ5.2.0/www/htdocs"> 
 Options FollowSymLinks IncludesNOEXEC Indexes
 DirectoryIndex index.html index.htm default.htm index.php default.php index.cgi default.cgi index.pl default.pl index.shtml
 AllowOverride All
 Order Deny,Allow 
 Allow from all 
</Directory>
AllowOverride none 改为 All
3）写规则，匹配页面
apache配置文件
<ifmodule mod_rewrite.c> 
RewriteEngine On 
RewriteRule index\.html   index\.php 
RewriteRule (.*)\.html   $1\.php [L]   #匹配所有页面 
</ifmodule>
4）新建.htaccess
内容如下
RewriteEngine On 
RewriteRule index\.html   index\.php 
RewriteRule (.*)\.html   $1\.php [L]   #匹配所有页面
为了方便测试，我在htdocs目录下建立一个product.php的文件
<?php
       echo "You have selected product #". $_GET["id"];
?>
http://localhost:803/product.php?id=2;
Result：You have selected product #2;
###
如果我要实行这个效果：
http://localhost:803/product.html
RewriteEngine on 这个要打开啊。
RewriteRule ^product\.html$ product.php?id=123
Result: You have selected product #123
###
http://localhost:803/product/p123.html
RewriteRule ^product/p([0-9]*)\.html$ product.php?id=$1 [L]
Result: You have selected product #123
###
##########
#285、PHP伪静态如何实现?
###
PHP伪静态，主要是为了隐藏传递的参数名；于网上搜索后整理伪静态四法
<?php
//伪静态方法一

// localhost/php100/test.php?id|1@action|2
$Php2Html_FileUrl = $_SERVER["REQUEST_URI"];
echo $Php2Html_FileUrl."<br>";// /php100/test.php?id|1@action|2
$Php2Html_UrlString = str_replace("?","",str_replace("/", "", strrchr(strrchr($Php2Html_FileUrl, "/"),"?")));
echo $Php2Html_UrlString."<br>";// id|1@action|2
$Php2Html_UrlQueryStrList = explode("@", $Php2Html_UrlString);
print_r($Php2Html_UrlQueryStrList);// Array ( [0] => id|1 [1] => action|2 )
echo "<br>";
foreach($Php2Html_UrlQueryStrList as $Php2Html_UrlQueryStr)
{
$Php2Html_TmpArray = explode("|", $Php2Html_UrlQueryStr);
print_r($Php2Html_TmpArray);// Array ( [0] => id [1] => 1 ) ; Array ( [0] => action [1] => 2 )
echo "<br>";
$_GET[$Php2Html_TmpArray[0]] = $Php2Html_TmpArray[1];
}
//echo '假静态：$_GET变量<br />';
print_r($_GET); // Array ( [id|1@action|2] => [id] => 1 [action] => 2 )
echo "<br>";
echo "<hr>";
echo $_GET[id]."<br>";// 1
echo $_GET[action];// 2
?>

<?php
//伪静态方法二
// localhost/php100/test.php/1/2
$filename = basename($_SERVER['SCRIPT_NAME']);
echo $_SERVER['SCRIPT_NAME']."<br>";// /php100/test.php
echo $filename."<br>";// test.php

if(strtolower($filename)=='test.php'){
if(!empty($_GET[id])){
$id=intval($_GET[id]);
echo $id."<br>";
$action=intval($_GET[action]);
echo $action."<br>";
}else{
$nav=$_SERVER['REQUEST_URI'];
echo "1:".$nav."<br>";// /php100/test.php/1/2
$script=$_SERVER['SCRIPT_NAME'];
echo "2:".$script."<br>";// /php100/test.php
$nav=ereg_replace("^$script","",urldecode($nav));
echo $nav."<br>"; // /1/2
$vars=explode("/",$nav);
print_r($vars);// Array ( [0] => [1] => 1 [2] => 2 )
echo "<br>";
$id=intval($vars[1]);
$action=intval($vars[2]);
}
echo $id.'&'.$action;
}
?>

<?php
//伪静态方法三


function mod_rewrite(){
global $_GET;
$nav=$_SERVER["REQUEST_URI"];
echo $nav."<br>";
$script_name=$_SERVER["SCRIPT_NAME"];
echo $script_name."<br>";
$nav=substr(ereg_replace("^$script_name","",urldecode($nav)),1);
echo $nav."<br>";
$nav=preg_replace("/^.ht(m){1}(l){0,1}$/","",$nav);//这句是去掉尾部的.html或.htm
echo $nav."<br>";
$vars = explode("/",$nav);
print_r($vars);
echo "<br>";
for($i=0;$i<Count($vars);$i+=2){
$_GET["$vars[$i]"]=$vars[$i+1];
}
return $_GET;
}
mod_rewrite();
$year=$_GET["year"];//结果为'2006'
echo $year."<br>";
$action=$_GET["action"];//结果为'_add'
echo $action;
?>

<?php
//伪静态方法四

//利用server变量 取得PATH_INFO信息 该例中为 /1,100,8630.html 也就是执行脚本名后面的部分
if(@$path_info =$_SERVER["PATH_INFO"]){
//正则匹配一下参数if(preg_match("/\/(\d+),(\d+),(\d+)\.html/si",$path_info,$arr_path)){
$gid =intval($arr_path[1]); //取得值 1
$sid =intval($arr_path[2]); //取得值100
$softid =intval($arr_path[3]); //取得值8630
}else die("Path:Error!");
//相当于soft.php?gid=1&sid=100&softid=8630
}else die('Path:Nothing!');
?>

##########
#286、PHP防注入如何实现？
###
主要是为了防止恶意写入后台数据库
//防注入函数
function inject_check($sql_str){
$check=eregi('select|insert|update|delete|\'|\/\*|\*|\.\.\/|\.\/|union|into|load_file|outfile', $sql_str);
if($check){
echo "输入非法内容";
exit();
}else{
return $sql_str;
}
}
//接收传递参数后进行转换
$_GET[type]=inject_check($_GET[type]);
//之后再使用转换后的参数
##########
#287、URL重写是实现PHP伪静态
###
应该这样说才是,URL重写是实现PHP伪静态的方式之一,
具体如:
http://www.plframe.com/?x=1&y=2&z=3
换成
http://www.plframe.com/1-2-3.html
这种伪静态方式访问的话,其他最简单的方法是在网站根目录下面建一个.htaccess 文件，其内容如下:
<IfModule mod_rewrite.c>
RewriteEngine on
RewriteRule /([d]+)-([d]+)-([d]+).html /?x=$1&y=$2&z=$3 
</IfModule>

最后再APACHE的虚拟域名配置文件里面找到项目所用的域名设置项<VirtualHost></VirtualHost>，
在其中再找到<Directory></Directory>,将AllowOverride None 改成 AllowOverride All，
若没有<Directory></Directory>,则增加如下内容
<Directory 目录路径>
Options Indexes FollowSymLinks MultiViews
AllowOverride All
Order allow,deny
allow from all
DirectoryIndex index.php
</Directory> 在<VirtualHost></VirtualHost>中间重启APACHE即可.
你规则前面的 ^([0-9]*)-[a-zA-Z0-9&-+._'"]*/ 是正表达式，这里面用()括起来的东西，在后面依次使用$1、$2来引用，叫做匹配项。

在你的这个例子中，$1对于的就是([0-9]*)，就是前面的所有数字
RewriteRule ^id/([0-9]+)$ article.php?id=$1

前面的 你自己可以随便搞

下面是我站的 /还有提醒一下！＠linux 下的 规则有所不同

RewriteEngine On
RewriteBase /
RewriteRule ^type/(.*)/order/([0-9]+)$ index_c.php?type=$1&order=$2
RewriteRule ^type/(.*)/order/([0-9]+)/page/([0-9]+)$ index_c.php?type=$1&order=$2&page=$3

RewriteRule ^user/([0-9]+)$ index_c.php?uid=$1

RewriteRule ^user/([0-9]+)/type/(.*)/page/([0-9]+)$ index_c.php?uid=$1&type=$2&page=$3
RewriteRule ^user/([0-9]+)/type/(.*)$ index_c.php?uid=$1&type=$2

RewriteRule ^user/([0-9]+)/myclick/(.*)/page/([0-9]+)$ index_c.php?uid=$1&myclick=$2&page=$3
RewriteRule ^user/([0-9]+)/myclick/(.*)$ index_c.php?uid=$1&myclick=$2
RewriteRule ^user/([0-9]+)/page/([0-9]+)$ index_c.php?uid=$1&page=$2

RewriteRule ^re1d-([0-9]+)$ /top.php?itemid=$1
RewriteRule ^s=(.*)$ /search.php?s=$1

RewriteRule ^type/(.*)/page/([0-9]+)$ index_c.php?type=$1&page=$2
RewriteRule ^type/(.*)$ index_c.php?type=$1 [L]
现在的搜索引擎越来越对静态页面友好，以前不知道自己的服务器支不支持静态化，今天向空间商咨询后发现，其实自己的服务器是支持静态化的，于是在DZ论坛上下来个.htaccess文件修改了其中的一个代码，上传到我的linux服务器，到Discuz!论坛后台选择静态化选项，前台打开一看，呵呵 已经显示静态化了
下面是修改的.htaccess文件文件内容
# 将 RewriteEngine 模式打开
RewriteEngine On
# 修改以下语句中的 /discuz 为你的论坛目录地址，如果程序放在根目录中，请将 /discuz 修改为 /
RewriteBase /
# Rewrite 系统规则请勿修改
RewriteRule ^archiver/((fid|tid)-[w-]+.html)$ archiver/index.php?$1
RewriteRule ^forum-([0-9]+)-([0-9]+).html$ forumdisplay.php?fid=$1&page=$2
RewriteRule ^thread-([0-9]+)-([0-9]+)-([0-9]+).html$ viewthread.php?tid=$1&extra=page%3D$3&page=$2
RewriteRule ^space-(username|uid)-(.+).html$ space.php?$1=$2
RewriteRule ^tag-(.+).html$ tag.php?name=$1
如果你有需要将这段代码保存为.htaccess文件上传到空间即可，再到后台更改选择静态化就OK了.

##########
#288、HTTP协议中几个状态码的含义:503 500 401 403 404 200 301 302。。。
###
200 : 请求成功，请求的数据随之返回。
301 : 永久性重定向。
302 : 暂时行重定向。
401 : 当前请求需要用户验证。
403 : 服务器拒绝执行请求，即没有权限。
404 : 请求失败，请求的数据在服务器上未发现。
500 : 服务器错误。一般服务器端程序执行错误。
503 : 服务器临时维护或过载。这个状态时临时性的。
##########
#289、PHP/Mysql中几个版本的进化史，比如mysql4.0到4.1，PHP 4.x到5.1的重大改进等等。undone
###
##########
#291、一些编译php时的configure 参数
###
–prefix=/usr/local/php    php安装目录
–with-config-file-path=/usr/local/php/etc 指定php.ini位置
–with-mysql=/usr/local/mysql mysql安装目录，对mysql的支持
–with-mysqli=/usr/local/mysql/bin/mysql_config mysqli文件目录,优化支持
–enable-safe-mode 打开安全模式
–enable-ftp 打开ftp的支持
–enable-zip 打开对zip的支持
–with-bz2 打开对bz2文件的支持
–with-jpeg-dir 打开对jpeg图片的支持
–with-png-dir 打开对png图片的支持
–with-freetype-dir 打开对freetype字体库的支持
–without-iconv关闭iconv函数，种字符集间的转换
–with-libxml-dir 打开libxml2库的支持
–with-xmlrpc 打开xml-rpc的c语言
–with-zlib-dir 打开zlib库的支持
–with-gd 打开gd库的支持
更多可以使用 ./configure help 查看
 
##########
#292、 向php传入参数的三种方法。
###
/*
     * 方法一 使用$argc $argv
     *  在命令行下运行 /usr/local/php/bin/php ./getopt.php -f 123 -g 456
     */
//    if ($argc > 1){
//        print_r($argv);
//    }

    /**
     * 运行结果
     *
     sync@MySUSE11:~/web_app/channel3/interface> /usr/local/php/bin/php ./getopt.php -f 123 -g 456
        Array
        (
            [0] => ./getopt.php
            [1] => -f
            [2] => 123
            [3] => -g
            [4] => 456
        )
     */
 

     /*
     * 方法二 使用getopt函数（）
     *  在命令行下运行 /usr/local/php/bin/php ./getopt.php -f 123 -g 456
     */

//    $options = "f:g:";
//    $opts = getopt( $options );
//    print_r($opts);

    /**
     * 运行结果
     *
     sync@MySUSE11:~/web_app/channel3/interface> /usr/local/php/bin/php ./getopt.php -f 123 -g 456
        Array
        (
            [f] => 123
            [g] => 456
        )
     */

    /*
     * 方法三 提示用户输入，然后获取输入的参数。有点像C语言
     *  在命令行下运行 /usr/local/php/bin/php ./getopt.php
     */
    fwrite(STDOUT, "Enter your name: ");
    $name = trim(fgets(STDIN));
    fwrite(STDOUT, "Hello, $name!");
    /**
     * 运行结果
     *
     sync@MySUSE11:~/web_app/channel3/interface> /usr/local/php/bin/php ./getopt.php
     Enter your name: francis
     Hello, francis!
     */
 
##########
#293、 error_reporting 等调试函数使用
###
error_reporting() 函数能够在运行时设置php.ini中 error_reporting 指令。
所以可以再程序中随时调节显示的错误级别。
使用此函数时 display_errors必须是打开状态。
##########
#294、 posix和perl标准的正则表达式区别？
###
定界符，posix没有perl有（任意非数字、字母或反斜线”\”的字符）
修正符，posix没有perl有
[]之外不一致的元字符，”.”在posix中匹配除了换行外的字符，perl中匹配任意字符
[]之内不一致的元字符，”-”在posix中[a-c-e]会抛出错误，perl中[a-c-e]等价于[a-e]

##########
#295、Safe_mode 打开后哪些地方受限.
###
启动safe_mode，会对许多PHP函数进行限制，特别是和系统相关的文件打开、命令执行等函数.
所有操作文件的函数将只能操作与脚本UID相同的文件.

##########
#296、写代码来解决多进程/线程同时读写一个文件的问题。
###
PHP是不支持多线程的，可以使用php的flock加锁函数实现。
$fp = fopen("/tmp/lock.txt", "w+");
if (flock($fp, LOCK_EX)) { // 进行排它型锁定
fwrite($fp, "Write something here\n");
flock($fp, LOCK_UN); // 释放锁定
} else {
echo "Couldn't lock the file !";
}
fclose($fp);

##########
#297、写一段上传文件的代码。
###
upload.html
<form enctype="multipart/form-data" method="POST" action="upload.php">
Send this file: <input name="name" type="file" />
<input type="submit" value="Send File" />
</form>
upload.php
$uploads_dir = '/uploads';
foreach ($_FILES["error"] as $key => $error) {
if ($error == UPLOAD_ERR_OK) {
$tmp_name = $_FILES["tmp_name"][$key];
$name = $_FILES["name"][$key];
move_uploaded_file($tmp_name, "$uploads_dir/$name");
}
}
 

##########
#298、Mysql 的存储引擎,myisam和innodb的区别。
###
1） MyISAM类型不支持事务处理等高级处理，而InnoDB类型支持.
2）MyISAM类型的表强调的是性能，其执行数度比InnoDB类型更快.
3）InnoDB不支持FULLTEXT类型的索引.
4）InnoDB 中不保存表的具体行数，也就是说，
执行select count(*) from table时，InnoDB要扫描一遍整个表来计算有多少行，
但是MyISAM只要简单的读出保存好的行数即可.
5）对于AUTO_INCREMENT类型的字段，InnoDB中必须包含只有该字段的索引，但是在MyISAM表中，可以和其他字段一起建立联合索引。
6）DELETE FROM table时，InnoDB不会重新建立表，而是一行一行的删除。
7） LOAD TABLE FROM MASTER操作对InnoDB是不起作用的，解决方法是首先把InnoDB表改成MyISAM表，导入数据后再改成InnoDB表，
但是对于使用的额外的InnoDB特性(例如外键)的表不适用.
8）MyISAM支持表锁，InnoDB支持行锁。
##########
#299、介绍xdebug,apc,eAccelerator,Xcache,Zend opt的使用经验。undone
###
xdebug是php调试工具
apc是缓存工具
##########
#300、MySQL数据库作发布系统的存储，一天五万条以上的增量，预计运维三年,怎么优化？
###
1）设计良好的数据库结构，允许部分数据冗余，尽量避免join查询，提高效率。
2）选择合适的表字段数据类型和存储引擎，适当的添加索引。
3）mysql库主从读写分离。
4）找规律分表，减少单表中的数据量提高查询速度。
5）添加缓存机制，比如memcached，apc等。
6）不经常改动的页面，生成静态页面。
7）书写高效率的SQL。比如 SELECT * FROM TABEL 改为 SELECT field_1, field_2, field_3 FROM TABLE.

##########
#301、写出一种排序算法（原理），并说出优化它的方法。undone
###
快速排序，随机化
##########
#302、 请简单阐述您最得意的开发之作。undone
###

##########
#303、对于大流量的网站,您采用什么样的方法来解决各页面访问量统计问题？
###
统一布码监测
##########
#304、请介绍Session的原理,大型网站中Session方面应注意什么?undone
###
 为解决html无状态协议问题，记录客户端状态信息，使用session，可以通过url传递或cookie传递。
##########
#305、测试php性能和mysql数据库性能的工具,和找出瓶颈的方法？undone
###

##########
#306、 介绍一下常见的SSO(单点登陆)方案(比如dedecms整合discuz的passport)的原理。undone
###

##########
#307、您写过的PHP框架的特点，主要解决什么问题，与其他框架的不同点。undone
###

##########
#308、大型的论坛/新闻文章系统/SNS网站在性能优化上有什么区别?undone
###

##########
#309、相册类应用:要求在浏览器中能同时选中并上传多个文件，图片要求能剪裁，压缩包在服务器端解压。能上传单个达50M的文件。上传过程中有进度条显示。每个图片能生成四种大小缩略图，视频文件要转成flv供flash播放。叙述要涉及的各类开源软件和简单用途。？undone
###

##########
#310、一群猴子排成一圈，按1，2，…，n依次编号。然后从第1只开始数，数到第m只,把它踢出圈，从它后面再开始数，再数到第m只，在把它踢出去…，如此不停的进行下去，直到最后只剩下一只猴子为止，那只猴子就叫做大王。要求编程模拟此过程，输入m、n, 输出最后那个大王的编号。用程序模拟该过程。
###
/*
 * 约瑟夫环
 */
function josehpus1($n, $m) {
    $a = array();
    for ($i = 1; $i <= $n; $i++) {
        $a[] = $i;
    }
    $i = 1;
    while (count($a) > 1) {
        $x = array_shift($a);
        if ($i % $m != 0) {
            $a[] = $x;
        } else {
            echo '<br/>- ' . $x . ' = ';
            print_r($a);
        }
        $i++;
    }
    return $a[0];
}

function josehpus2($n, $m) {
    $s = 0;
    for ($i = 2; $i <= $n; $i ++) {
        $s = ($s + $m) % $i;
    }
    return $s + 1;
}

echo josehpus1(10, 7);
echo '<br/>';
echo josehpus2(10, 7);
##########
#311、linux下查看当前系统负载信息的一些方法。undone
###

##########
#313、 ssh 安全增强方法;密码方式和rsa key 方式的配置。undone
###

##########
#314、 rpm/apt/yum/ports 装包，查询，删除的基本命令。Undone
###
安装
rpm -ivh package.rpm
apt-get install package
yum localinstall package
查询
rpm –q string
apt-cache search string
yum search string
删除
rpm -e package
apt-get remove package
yum remove package

##########
#315、Makefile的基本格式，gcc 编译，连接的命令,-O0 和-O3区别。undone
###

##########
#316、 gdb,strace,valgrind的基本使用.undone
###

##########
#318、javascript中的prototype。Undone
###
原型链，用于实现继承。
方法一：
var a = {
  x: 10,
  calculate: function (z) {
    return this.x + this.y + z
  }
};

var b = {
  y: 20,
  __proto__: a
};

var c = {
  y: 30,
  __proto__: a
};

// call the inherited method
b.calculate(30); // 60
c.calculate(40); // 80
方法二：
function a() {
    this.x = 1;
    a.prototype.add = function(){
        return this.x + 2; 
    }
}

var obj1 = new a();
var obj2 = new a();
##########
#319、javascript中this对象的作用域。undone
###
##########
#320、IE和firefox事件冒泡的不同。undone
###
##########
#321、什么是怪异模式,标准模式，近标准模式。undone
###
##########
#322、DTD的定义undone
###
##########
#323、IE/firefox常用hack. undone
###
##########
#324、firefox,IE下的前端js/css调试工具。undone
###

##########
#325、面试官看过你的简历，会问一些你做的项目的用户量、pv、吞吐量、相关难点和解决方法等。undone
###
##########
#326、数据库设计经验,为什么进行分表? 分库? undone
###
   一般多少数据量开始分表? 分库? 分库分表的目的? 什么是数据库垂直拆分? 水平拆分? 分区等等？可以举例说明
##########
#327、web开发方面会遇到哪些缓存? 分别如何优化? undone
###
##########
#328、给你256M的内存,对10G的文件进行排序(文件每行1个数字),如何实现？   对10G的文件进行查找如何实现？ 统计10G文件每个关键字出现的次数如何实现？
###
undone
300万个字符串最多（假设没有重复，都是最大长度）占用内存3M*1K/4=0.75G。所以可以将所有字符串都存放在内存中进行处理。
　　可以使用key为字符串（事实上是字符串的hash值），值为字符串出现次数的hash来统计每个每个字符串出现的次数。并用一个长度为10的数组/链表来存储目前出现次数最多的10个字符串。
　　这样空间和时间的复杂度都是O(n)。
##########
#329、假如你现在是12306火车订票的设计师,你该如何设计满足全国人民订票? undone
###
##########
#330、假如有1亿用户的访问量,你的服务器架构是怎样的? 用户信息的存储方案如何设计? undone
###
##########
#331、如果你是技术组长,所带团队任务进度无法完成你该如何解决? undone
###
   如果在进度排满的前提下插入任务,你该如何保证总进度不延期? undone
   如果有的工程师今天预定任务没有完成,你该如何解决? undone
##########
#332、从你的经验方面谈一下如何构建高性能web站点? 需要哪些环节? 步骤? 每个步骤需要注意什么如何优化等? undone
###
##########
#333、 如何处理多服务器共享session? undone
###
##########
#334、 一个10G的表,你用php程序统计某个字段出现的次数,思路是? undone
###
##########
#335、会告诉你一个nginx日志例子,用你认为最佳的编程语言统计一下http响应时间超过1秒的前10个url? undone
###
##########
#336、给你一个mysql配置文件,用你认为最佳的编程语言解析该文件? undone
###
##########
#337、给你一个url,在nginx配置一下rewrite指定到某个具体路径? undone
###
##########
#338、一个php文件的解释过程是? 一般加速php有哪些?  提高php整体性能会用到哪些技术? undone
###
1）解析过程
解析命令行参数，初始化环境，编译执行PHP代码，zend引擎，清理环境并返回退出
2）加速
PHP加速软件是一种将PHP程式码编译之后所产生的bytecode暂存在共享内存内供重复使用，以提升执行效率的插件软件。
如：Zend Optimizer、APC、XCache
##########
#339、chrome号称为多线程的,所以多线程和多进程的区别为? undone
###
进程是资源分配的最小单位，线程是CPU调度的最小单位
线程和进程的区别在于,子进程和父进程有不同的代码和数据空间,而多个线程则共享数据空间,每个线程有自己的执行堆栈和程序计数器为其执行上下文.多线程主要是为了节约CPU时间,发挥利用,根据具体情况而定. 线程的运行中需要使用计算机的内存资源和CPU。340、 php在2011年底出现hash碰撞,hash碰撞原理为? 如何进行修复?
PHP是使用单链表存储碰撞的数据，因此实际上PHP哈希表的平均查找复杂度为O(L)，其中L为桶链表的平均长度；而最坏复杂度为O(N)，此时所有数据全部碰撞，哈希表退化成单链表。
哈希表碰撞攻击就是通过精心构造数据，使得所有数据全部碰撞，人为将哈希表变成一个退化的单链表，此时哈希表各种操作的时间均提升了一个数量级，因此会消耗大量CPU资源，导致系统无法快速响应请求，从而达到拒绝服务攻击（DoS）的目的。
攻击者只要构造一个含有大量碰撞key的post请求，就可以达到攻击的目的。具体做法不再演示。
在>=PHP5.3.9的版本中增加了一个配置项max_input_vars，用于标识一次http请求最大接收的参数个数，默认为1000。
理论上，只要PHP代码中某处构造Array的数据依赖于外部输入，则都可能造成这个问题，因此彻底的解决方案要从Zend底层HashTable的实现动手。一般来说有两种方式，一是限制每个桶链表的最长长度；二是使用其它数据结构如红黑树取代链表组织碰撞哈希（并不解决哈希碰撞，只是减轻攻击影响，将N个数据的操作时间从O(N^2)降至O(NlogN)，代价是普通情况下接近O(1)的操作均变为O(logN)）。
##########
#341、web不安全因素有哪些? 分别如何防范? undone
###
对于以往安全事故的分析表明，大多数安全问题都属于下面三种类型之一：
服务器向公众提供了不应该提供的服务。
服务器把本应私有的数据放到了可公开访问的区域。
服务器信赖了来自不可信赖数据源的数据。
##########
#342、假如两个单链表相交,写一个最优算法计算交点位置,说思路也可以? undone
###
##########
#343、nginx负载均衡有哪些? 如果其中一台服务器挂掉,报警机制如何实现? undone
###
##########
#344、不优化前提下,apache一般最大连接数为? nginx一般最大连接数为? mysql 每秒insert ? select ? update ? delete? undone
###
apache默认最大连接数256，nginx默认是1024
##########
#345、mysql 数据类型有哪些 ? 分别占用多少存储空间 ? undone
###
##########
#346、nginx设置缓存js、css、图片等信息,缓存的实现原理是? undone
###
##########
#347、如何提高缓存命中率? 如何对缓存进行颗粒化? undone
###
##########
#348、php的内存回收机制是? undone
###
在PHP中，没有任何变量指向这个对象时，这个对象就成为垃圾。PHP会将其在内存中销毁；这是PHP的GC垃圾处理机制，防止内存溢出。
当一个PHP线程结束时，当前占用的所有内存空间都会被销毁，当前程序中所有对象同时被销毁。GC进程一般都跟着每起一个SESSION而开始运行的.gc目的是为了在session文件过期以后自动销毁删除这些文件.
__destruct() 析构函数，是在垃圾对象被回收时执行。 
unset 销毁的是指向对象的变量，而不是这个对象。
<?php
gc_enable(); // Enable Garbage Collector
var_dump(gc_enabled()); // true
var_dump(gc_collect_cycles()); // # of elements cleaned up
gc_disable(); // Disable Garbage Collector
?>

##########
#349、linux监视一个日志文件a.log 的最新内容?
###
tail –f a.log查看文件最后10行，动态显示。
##########
#350、查看当前服务器的HTTP连接有哪些？
###
假设Apache Httpd
ps –le | grep httpd 说明。。
pgrep httpd
netstat –an | grep 80
##########
#351、说说Linux下的find命令和grep命令的区别？
###
Find查找文件或目录
Grep 在文件内容中/输出结果中查找字符串
##########
#352、如何实现每天0点钟重新启动服务器? 
###
Crontab命令格式：crontab –l/-i/-r/-e 脚本/命令
-l	显示用户crontab内容
-I	删除用户crontab文件前提示
-r	删除用户的crontab文件
-e	编辑用户的crontab文件
时间段含义：
依次是：分钟（0-59）	小时（0-23）	日期（1-31）	月份（1-12）	星期（0-6）
Crontab –e
0 0 * * * /sbin/reboot 应该写绝对路径
##########
#353、请写出5个常用的unix操作命令?
###
Ls cp touch mkdir rm cat kill ps
##########
#354、rm -rf * 是什么意思，其中 f 有什么作用?
###
–r表示递归（删除目录），f强制（可以不提示删除），* 通配符
删除当前目录下所有文件
##########
#355、Linux压缩文件和解压文件的命令?
###
Gzip  tar  bzip  zip
Gunzip  tar  bunzip  unzip
##########
#356、Linux的目录进行遍历，编写shell脚本?
###
Ls –R
Tree 以树状结构显示目录
##########
#357、apache默认使用进程管理还是线程管理？如何判断并设置最大连接数？
###
使用进程管理
startServers
maxClients 设置最大连接数
##########
#358、当前目录下有一个文件为 showme.sh , 如何修改文件，将其指定为使用 /bin/bash 运行，如何修改其权限为所有用户可读写，所有用户可执行?
###
指定用哪个shell来解析，在文件头加shell路径
#!/bin/bash
修改文件权限
Chmod 777 showme.sh
##########
#359、当前目录下有一个文件为 showme.sh,如何修改其所有人为root?
###
Chown root showme.sh
##########
#360、在linux 请写出一种自动定时备份某一个文件的方法和具体实施流程，要求每天凌晨3 点的时候备份一次。Undone
###
Crontab –e
0 3 * * * 
以某个命令为例
Cp –p
Tar
Scp

说明：每个命令要写绝对路径、错误日志输出 2>>、时间戳、完全备份和增量备份
##########
#361、crond后台常驻程序（daemon）用于：D
###
A．负责文件在网络中的共享
B．管理打印子系统Manages theprinting subsystem
C．跟踪管理系统信息和错误
D．管理系统日常任务的调度（scheduing）

##########
#362、怎么了解您在当前目录下还有多大空间？C  正确答案du –s .
###
A．Use df
B．Use du /
C．Use du.
D．Use df.
##########
#205、有一个备份程序mybackup,需要在周一至周五下午一点和晚上八点各运行次，下面哪一条crontab的项可以完成这项工作？B
###
A．0 13,20 * * 1,5 mybackup
B．0 13,20 * * 1,2,3,4,5, mybackup
C．*13,20 * *1,2,3,4,5, mybackup
D．0 13,20 1,5 * *mybackup
##########
#280、下面哪条命令可以把f1.txt复制为f2.txt？A
###
A．cp f1.txt|f2.txt
B．cat f1.txt|f2.txt
C．cat f1.txt|f2.txt
B．copy f1.txt|f2.txt
##########
#340、 使用命令可以查看Linux的启动信息？B
###
A．mesg –d
B．demesg
C．cat /etc/mesg
D．cat /var/mesg


Linux=L
Apache=A
Mysql=M
Php=P
HTML=H
Javascript =J

##########
#1、php之父是谁？P
###
Rasmus Lerdorf，拉斯姆斯?勒多夫
##########
#11、mysql数据表引擎有什么区别，哪个是默认的？
###
1）MyISAM，默认，这种存储引擎在硬盘上会存三个文件，文件名为表名，后缀名分别为.frm(存储表结构)、.myd(存储数据)、.myi（存储索引）。
2）InnoDB，支持事务安全的存储引擎，支持提交、回滚和恢复。
3）Merge，
4）Heap（MEMORY）,内存存储引擎
5）BDB（BerkeleyDB），同样支持提交和回滚
6）EXAMPLE,
7）FEDERATED，
8）ARCHIVE，
9）CSV，
10）BLACKHOLE，
##########
#14、如何配置zend框架，使其支持简写标记<??>?
###
修改php.ini文件，设置short_open_tag=on即可开启。
##########
#20、如何利用mysql加密和解密数据？
###
使用AES_ENCRYPT () 和 AES_DECRYPT ()。
##########
#21、如何用php加密用户名和密码?
###
Php中的加密和解密功能：
加密				解密
AES_ENCRYT()	 	AES_DECRYPT()
ENCODE() 			DECODE()
DES_ENCRYPT() 		DES_DECRYPT()
ENCRYPT() 			不可逆
MD5() 			不可逆
OLD_PASSWORD() 	不可逆
PASSWORD() 		不可逆
SHA() 和 SHA1()		不可逆
不可逆				UNCOMPRESSED_LENGTH()
##########
#25、public, private, protected,static, transient, final 和 volatile有什么区别？
###
Public：被声明为public的元素可以在任何地方访问。
Protected：被声明为protected的元素之能在父类或定义它的类中访问。
Private：被声明为私有private的元素只能在定义它的类中访问。
Static：声明属性或方法为静态，就可以不实例化而直接访问。静态属性不能通过一个类已实例化的对象来访问（但静态方法可以）。
Final：如果父类方法声明为final，则子类无法覆盖该方法，如果一个类被声明为final，则不能被继承。
Transient：临时变量（private）不能被序列化。
Volatile：多线程时使用，声明为volatile的变量将不会由编译器进行优化，因为它们的值可能随时改变。
##########
#28、php3、php4和php5有什么区别？undone
###
很多区别，列举一些：

##########
#33、urlencode和urldecode有什么作用？
###
编码和解码url字符串，编码时会将除了-_.之外的非字符数字字符都转换为百分号（%）后跟两位十六进制数的形式，空格则编码为加号（+）。
此编码与WWW表单POST数据的编码方式是一样的，同时与application/x-www-form-urlencoded 的媒体类型编码方式一样。
##########
#36、利用php图片函数如何获取图片的大小、类型、宽度和高度？
###
Exif_imagetype()，获取图片类型。
Getimagesize()，获取图片大小。
Imagesx()，获取图片宽度。
Imagesy()，获取图片高度。
##########
#38、php上传文件大小上限是多少，如何修改上限？
###
默认上限是2mb，可以修改php.ini调整，如下：
Upload_max_filesize = 2M
##########
#39、如何提高php脚本执行时间限制？
###
修改php.ini，如下：
Max_excution_time = 30
每个脚本执行时间，单位为秒。
##########
#40、如何备份mysql表，如何恢复？
###
备份：
BACKUP TABLE 

##########
#47、有哪些数组排序函数？
###
Sort()，arsort()
Assort(),ksort()
Natsort(),natcasesort()
Rsort(),usort()
Array_muletisort(),uksort()
##########
#51、有什么工具可以画mysql的E-R图？
###
Case studio
Smart Draw
##########
#52、php中如何从一个数据库查询数据，然后将数据存储到另一个数据库中？undone
###
mysqldump -u root top800 > sql_database_bk/top800_database_bk_2011-10-22.sql
mysql -u root -p'123456' top800 < top800_database_bk_2011-11-11.sql
##########
#58、存储过程、触发器、索引有什么好处？undone
###

##########
#65、mysql如何使用grant和revoke命令？undone
###

##########
#66、解释归一化的概念？undone
###
##########
#70、css有什么优缺点？undone
###
##########
#73、什么是垃圾回收？默认时间？刷新时间？undone
###
垃圾回收在php中是自动化的，
##########
#78、如何将文本数据导入数据库？undone
###
命令：LOAD DATA INFILE file_name;要保证文件中的数据结构正确。
##########
#79、mysql如何获取两个日期的时间差？
###
SELECT DATEDIFF(‘2013-01-20’, ‘2013-09-30’);
##########
#80、php如何获取两个日期的时间差？
###
$date1 = date(‘Y-m-d’);
$date2 = ‘2013-10-30’;
$days = (strtotime($date1) – strtotime($date2)) / (60*60*24);
##########
#81、php如何自动加载类？
###
使用spl_autoload_register($filename)函数，或实现__autoload方法。
##########
#83、php如何获知用户读取了邮件？undone
###
？？Disposition-Notification-To
##########
#84、session默认生存时间和路径？
###
Php中Session默认生存时间为1440秒或24分钟。
默认路径为/tmp
##########
#85、如何判断用户退出？何时空闲？
###
在加载页面时，通过检查session变量是否存在可以判断用户登录状态。默认情况下session在浏览器关闭时过期，可以在php.ini中修改过期时间，如要改成关闭浏览器后5分钟，则session.cookie_lifetime = 300，重启apache。

##########
#91、什么是魔术引号？
###
魔术引号（magic quote）是一个自动将php脚本的数据进行转义的过程。最好在编码时不要转义而在运行时根据需要而转义。5.4移除
##########
#92、什么是跨站脚本？SQL注入？
###
跨站脚本（XSS）是一种计算机安全漏洞，是代码注入的一种，通常出现在web应用程序上。它允许恶意用户将代码注入到网页上，其他用户观看网页时就会收到影响。这种攻击通常包含了html以及客户端脚本语言。
SQL注入是发生于应用程序数据库层的安全漏洞。是在输入的字符中注入SQL指令，在设计不良的程序中忽略了检查，那么这些注入的指令会被数据库误认为是正常的SQL指令而运行，因此遭到破坏。
##########
#94、php主要的安全漏洞是什么？如何预防？undone
###
漏洞：
1）命令注入(Command Injection)
2）eval注入(Eval Injection)
3）客户端脚本攻击(Script Insertion)
4）跨网站脚本攻击(Cross Site Scripting, XSS)
5）SQL注入攻击(SQL injection)
6）跨网站请求伪造攻击(Cross Site Request Forgeries, CSRF)
7）Session 会话劫持(Session Hijacking)
8）Session 固定攻击(Session Fixation)
9）HTTP响应拆分攻击(HTTP Response Splitting)
10）文件上传漏洞(File Upload Attack)
11）目录穿越漏洞(Directory Traversal)
12）远程文件包含攻击(Remote Inclusion)
13）动态函数注入攻击(Dynamic Variable Evaluation)
14）URL攻击(URL attack)
15）表单提交欺骗攻击(Spoofed Form Submissions)
16）HTTP请求欺骗攻击(Spoofed HTTP Requests)
预防：
1）在仔细检查用户输入前，不要include、require甚至打开一个用户输入的文件。
2）注意不要轻易在用户输入值上使用eval()函数，避免执行到危险命令。
3）不要轻易使用register_globals = ON，它的设计目的是使php更简单，但也会带来更多安全漏洞。
4）永远不要执行未转义的查询。
5）为保护区域，使用session或每次验证的登录
6）如果不想文件被看见，把文件加上.php后缀

##########
#97、什么是框架？工作原理？有什么优点？
###
框架有助于减轻网页开发时共通性活动的工作负荷，例如许多框架提供数据库访问接口、标准样板以及会话管理等，可提升代码的可再用性。


##########
#101、写出Zend框架的目录结构，简单说明目录作用？
###
|--application			应用目录
|--controllers		控制器目录
		|--models			模型目录
		|--views			视图目录
		|--config			配置文件目录
	|--library				通用类目录
		|--zend				zend类
		|--smarty			smarty模板引擎
	|--www					文档根目录
		|--images			图片目录
		|--css				样式表目录
		|--js				Javascript目录
	|--tmp					临时文件目录
##########
#110、写出下列代码的数据结果。 undone
###
$date='08/26/2003';
print ereg_replace(“([0-9]+)/([0-9]+)/([0-9]+)”,2/1/3,$date);
没有输出结果

##########
#112、解释左连接,右连接,内连接,全连接，索引
###
左连接：以左表为基础，显示左表中的所有列，不管是否与关联条件相匹配，而右表中的数据只显示与关联条件相匹配的列，不匹配的列以NULL字符填充。
右连接：以右表为基础，显示右表中的所有列，不管是否与关联条件相匹配，而左表中的数据只显示与关联条件相匹配的列，不匹配的列以NULL字符填充。
内连接：只显示多表之间与管理按条件相匹配的列
全连接：显示多个表中的所有列，不匹配关联条件的列以NULL字符填充，mysql本身不支持全连接，可以用左连接union右连接实现。
索引：是对数据库表中一列或多列的值进行排序的一种结构，使用索引可以快速访问数据库表中的特定信息。

##########
#114、写一个函数，尽可能高效的，从一个标准 url 里取出文件的扩展名
###
例如: http://www.test.com.cn/abc/de/fg.php?id=1需要取出php或.php
<?php
	Function getSuffix($url){
		$b=parse_url($url);
$reg=’/\.\w+/’;
		preg_match($reg,$b[‘path’],$arr);
		Return $arr[0];
}
Echo getSuffix($url);
?>
##########
#115、描述一下大流量高并发量网站的解决方案
###
1）确认服务器硬件是否足够支持当前的流量。
2）使用memcache缓存技术，将动态数据缓存到文件中，动态网页直接调用这些文件，而不必在访问数据库。
3）禁止外部的盗链。外部网站的图片或者文件盗链往往会带来大量的负载压力，因此应该严格限制外部对自身图片或者文件盗链，可以通过apache的URL重定向来防止盗链。
4）控制大文件的下载。大文件的下载会占用很大的流量，对于非SCSI硬盘来说会消耗，使得网站响应能力下降。
5）使用不同的主机分流主要流量。
6）使用流量统计软件。在网站上安装一个流量统计软件，可以即时知道哪些地方耗费了大量流量，哪些页面需要再进行优化。
##########
#116、如何设计或配置Mysql，才能达到高效使用的目的。
###
1）数据库设计方面，设计结构良好的数据库，允许部分数据冗余。
	选取最适用的字段属性，尽可能把字段设置为NOTNULL，这样在查询的时候，数据库不用去比较NULL值。
2）系统架构设计方面，表散列，把海量数据散列到几个不同的表里面，集群，数据库查询和写入分开。
	写高效sql语句，以提高效率。
	使用连接(join)来代替子查询
	使用联合(union)来代替手动创建的临时表
	所得皆必须，只从数据库取必须的数据。
	必要的时候用不同的存储引擎，比如Innodb可以减少死锁，HEAP可以提高一个数量级的查询速度。
	使用事务
	使用外键
	使用索引

##########
#117、如何进行防SQL注入？
###
1）过滤掉一些常见的数据库操作关键字：select,insert,update,delete,and,*等
或者通过系统函数：addslashes(需要被过滤的内容)来进行过滤。
2）在PHP配置文件中
Register_globals=off;设置为关闭状态 //作用将注册全局变量关闭。
比如：接收POST表单的值使用$_POST['user'],如果将register_globals=on;直接使用$user可以接收表单的值。
 3）SQL语句书写的时候尽量不要省略小引号(tab键上面那个)和单引号
 4）提高数据库命名技巧，对于一些重要的字段根据程序的特点命名，取不易被猜到的
 5）对于常用的方法加以封装，避免直接暴漏SQL语句
 6）开启PHP安全模式
Safe_mode=on;
 7）打开magic_quotes_gpc来防止SQL注入
Magic_quotes_gpc=off;默认是关闭的，它打开后将自动把用户提交的sql语句的查询进行转换，把'转为\'，这对防止sql注入有重大作用。
 8）控制错误信息
关闭错误提示信息，将错误信息写到系统日志。

##########
#118、用PHP写出一个安全的用户登录系统需要注意哪些方面？
###
1）密码要进行加密，如MD5()。
2）登录表单的名称不要跟数据库字段一样，以免暴露表字段。
3）用户表的表名、字段名、密码尽量用不容易被猜到的。
4）要使用验证码验证登陆，以防止暴力破解。
5）验证提交的数据是不是来自本网站。
6）登录后台处理代码数据库部分使用预处理，做好过滤，防止sql注入。

##########
#119、使用过哪些PHP框架？试描述其优劣点。
###
Thinkphp
优点：功能比较全面，配置相对比较简单，操作相对比较简单，有很多使用示例程序。
缺点：提供的操作方法太多，新手不知如何选择，文档不够全面。
Yii
	优点：功能强大、有代码自动生成功能
	缺点：中文资料欠缺，上手困难。
brophp
优点：轻量级学习型框架，配置简单，操作简单，容易上手，提供了比较全面的文档。
缺点：功能少

   
##########
#141、SESSION 与 COOKIE的区别是什么，请从协议，产生的原因与作用说明?
###
	HTTP是无状态协议，不能区分用户是从同一个网站上来的，同一个用户请求的不同页面不能看作是一同一个用户，为了解决这个问题，SESSION和COOKIE诞生了，他们都可以用来保存用户数据。
SESSION保存在服务器端，COOKIE保存在客户端。
1）cookie数据存放在客户的浏览器上，session数据放在服务器上。
2）cookie不是很安全，别人可以分析存放在本地的COOKIE并进行COOKIE欺骗
   考虑到安全应当使用session。
3）session会在一定时间内保存在服务器上。当访问增多，会比较占用你服务器的性能
   考虑到减轻服务器性能方面，应当使用COOKIE。
4）单个cookie保存的数据不能超过4K，很多浏览器都限制一个站点最多保存20个cookie。

##########
#143、Linux 下建立压缩包，解压缩包的命令。
###
	压缩：gzip、tar –cvfz、zip、bzip2
	解压：gunzip、tar –zxvf、unzip、bunzip2

##########
#153、请写出常见的排序算法(至少三种)，并用PHP实现冒泡排序，将数组$a = array()按照从小到大的方式进行排序。
###
冒泡排序法、快速排序法，插入排序法
function bubble_sort($a) {
    $len = count($a);
    if ($len <= 1) {
        return $a;
    }
    $temp = null;
    for ($i = 0; $i < $len; $i++) {
        for ($j = $len - 1; $j > $i; $j--) {
            if ($a[$j] < $a[$j - 1]) {
                $temp = $a[$j - 1];
                $a[$j - 1] = $a[$j];
                $a[$j] = $temp;
            }
        }
    }
    return $a;
}

function quick_sort($array) {
    if (count($array) <= 1) {
        return $array;
    }
    $key = $array[0];
    $left_arr = array();
    $right_arr = array();
    for ($i=1; $i<count($array); $i++) {
        if ($array[$i] <= $key) {
            $left_arr[] = $array[$i];
        } else {
            $right_arr[] = $array[$i];
        }
    }
    $left_arr = quick_sort($left_arr);
    $right_arr = quick_sort($right_arr);
    return array_merge($left_arr, array($key), $right_arr);
}

function insertion_sort($a) {
    for ($i = 1, $len = count($a); $i < $len; $i++) {
        $key = $a[$i]; 
        $j = $i - 1;
        while ($j > -1 && $a[$j] > $key) {
            $a[$j + 1] = $a[$j];
            $j--;
        }
        $a[$j + 1] = $key;
    }
    return $a;
}
##########
#154、在数据库test中的一个表student，字段是name，class，score。分别代表姓名、所在班级，分数。
###
   1) 查出每个班级中的学生，按照成绩降序排序;
   2) 查出每个班的及格人数和不及格人数，格式为：class、及格人数、不及格人数；
   3) 用PHP写入连接数据库("localhost","msuser","mspass")、执行以上SQL、显示结果、判断错误、关闭数据库的过程；

$mysqli=new mysqli(‘localhost’,’msuser’,’mspass’,’test’);
$sql1=’SELECT * FROM sdudent ORDER BY score DESC’;
$sql2= SELECT a.class 班级,a.num 及格人数,b.num 不及格人数 FROM (SELECT class,COUNT(id) AS num FROM stu WHERE score>=60 GROUP BY class) a,(SELECT class,COUNT(id) AS num FROM stu WHERE score<60 GROUP BY class) b WHERE a.class=b.class;

$result1=$mysqli->query($sql1);
If($result1){
	Print_r($result1);
}else{
	Echo ‘查询成绩失败！’;
}
$result2=$mysqli->query($sql2);
If($result2){
	While($row=$result2->fetch_assoc()){
			Echo $row[“class”].’班及格人数:’.$row[“及格人数”].’不及格人数’:$row[“不及格人数”];
}
}else{
	
}
$mysqli->close();


##########
#160、 请写出以下5个UNIX系统配置文件/服务的作用
###
/etc/passwd 用户信息文件
/etc/hosts 主机名设置文件
/etc/fstab 保存系统所有分区信息
Crontab 计划任务服务
sshd 远程连接服务

##########
#167、请列出3种PHP数组循环操作的语法，并注明每种循环的优缺点？undone
###
For、while、foreach
For循环适合遍历定长数组
While循环适合遍历不定长数组
Foreach适合遍历关联数组和索引数组


##########
#172、不断在文件hello.txt头部写入一行“Hello World”字符串，要求代码完整。Undone
###
$file=’hello.txt’;
$con=file_get_cotents($file);
While(1){
	File_put_contents($file,’Hello World\n’.$con)
}




##########
#177、通过PHP函数的方式对目录进行遍历，写出程序
###
function listDir($dir){
	if(is_dir($dir)){
		if ($dh = opendir($dir)){
			while(($file= readdir($dh)) !== false){
				if((is_dir($dir."/".$file)) && $file!="." && $file!=".."){
					echo "<b><font color='red'>文件夹：</font></b>",$file,"<br><hr>";
					listDir($dir."/".$file."/");
					echo '<hr>';
				}else{
					if($file!="." && $file!=".."){
						echo $file."<br>";
					}
				}
			}
			closedir($dh);
		}
	}
}

##########
#178、Linux的目录进行遍历，编写shell脚本?undone
###
#!/bin/sh  使用bash做为默认shell
 list_alldir(){
     for file in $1/*
     do
         if [ -d $file ]; then
             echo $file
             list_alldir $file    #在这里递归调用
         fi
     done
 }

 #下面是定义初始化路径
 if [ $# -gt 0 ]
 then
     list_alldir "$1"
 else
     list_alldir "."
 fi


##########
#180、数据库设计时，常遇到的性能瓶颈有哪些，常有的解决方案？
###
通常造成数据库瓶颈的原因是：
1）数据库系统本身性能不佳，例如你用桌面数据库Access 来做web应用的后台数据库 显然是不行的；
2）数据库结构设计不合理，导致不必要的、过多的数据库访问，这需要优化数据表结构设计，必要时引入Cache系统；
3）数据库连接池设置不当，为了提供数据库的服务能力，在有潜在并发访问数据库的情况下，我们会使用连接池技术，如果池的大小与实际需求不符，则会带来访问数据库时的排队等候。
4）程序实现适当，例如对 数据库连接长期占有，导致其它访问必须进行排队 

当然，即时没有以上的错误做法，当一个系统规模不断变大时，数据库系统也会成为瓶颈所在，但针对此业界有一些解决方法的，例如进行数据库水平/垂直分割、集群、缓存等等。


##########
#181、编写一个在线留言本，实现用户的在线留言功能，留言信息存储到数据库？undone
###
数据表字段：aid、author、title、content、posttime、edittime、ip
脚本：
index.php
留言列表、回复留言按钮、提交留言表单
action.php（业务处理脚本）
处理表单提交、增改留言数据表

##########
#182、通过JS创建一个当前窗口的子窗口，通过程序实现子窗口对父窗口的操作实例？
###
1）IE中使用方法：
父窗口调用子窗口：iframe_ID.iframe_document_object.object_attribute = attribute_value 
例子：onClick="iframe_text.myH1.innerText='http://www.pint.com';" 
子窗口调用父窗口：parent.parent_document_object.object_attribute = attribute_value 
例子：onclick="parent.myH1.innerText='http://www.pint.com';"
2）Firefox中使用方法：
上面在IE下没有问题，但在firefox下不正常。在firefox下，应该是如下调用方法：
父窗口调用子窗口：window.frames["iframe_ID"].document.getElementById("iframe_document_object"-).object_attribute = attribute_value 
例： window.frames["iframe_text"].document.getElementById("myH1").innerHTML= "http://hi.wonsoft.cn"; 
子窗口调用父窗口：parent.document.getElementById("parent_document_object").object_attribute = attribute_value 
例： parent.document.getElementById("myH1").innerHTML = "http://wonsoft.cn";

##########
#185、设定网站的用户数量在千万级，但是活跃用户的数量只有1%，如何通过优化数据库提高活跃用户的访问速度？
###
可以使用分表技术，将高活跃用户单独存到一个有同样字段但表名不同的表里，当用户登陆时首先查询这个表，如果不是高活跃用户再查询大表。

##########
#186、服务器在运行的过程中，随着用户访问数量的增长，如何通过优化，保证性能？如果数据库已经达到最优化，请设计出继续升级的解决方案？
###
1）确定当前的服务器的硬件设备能不能满足流量需求，如果满足不了就添加新的设备。
2）使用memcache缓存技术，将动态数据缓存到文件中，动态网页直接调用这些文件，而不必再访问数据库。
3）禁止外部盗链，图片、或文件盗链会给服务器带来大量的负载压力，因此可以通过refer来控制盗链，或者用apache来配置禁止盗链。
4）控制大文件的下载，大文件的下载对于非SCSI硬盘来说会占用大量资源，使得网站响应能力下降。
5）使用不同的主机分流主要流量，使得服务器均衡负载。
6）使用流量统计软件进行流量统计和分析，可以即时了解哪些地方耗费了大量的流量，哪些页面需要再进行优化。



##########
#195、对于大流量的网站,您采用什么样的方法来解决访问量问题?
###
确认服务器硬件是否足够支持当前的流量,数据库读写分离,优化数据表, 程序功能规则,禁止外部的盗链,控制大文件的下载,使用不同主机分流主要流量
##########
#197、优化MYSQL数据库的方法？
###
1）数据库设计方面,这是DBA和Architect的责任,设计结构良好的数据库,必要的时候,去正规化(英文是这个:denormalize,中文翻译成啥我不知道),允许部分数据冗余,避免JOIN操作,以提高查询效率 。
2）系统架构设计方面,表散列,把海量数据散列到几个不同的表里面。快慢表,快表只留最新数据,慢表是历史存档.集群,主服务器Read & write,从服务器read only,或者N台服务器,各机器互为Master 。
3）(1)和(2)超越PHP Programmer的要求了,会更好,不会没关系.检查有没有少加索引 
4）写高效的SQL语句,看看有没有写低效的SQL语句,比如生成笛卡尔积的全连接啊,大量的Group By和order by,没有limit等等.必要的时候,把数据库逻辑封装到DBMS端的存储过程里面，缓存查询结果,explain每一个sql语句 
5)所得皆必须,只从数据库取必需的数据,比如查询某篇文章的评论数,select count(*) ... where article_id = ? 就可以了,不要先select * ... where article_id = ?然后msql_num_rows. 
只传送必须的SQL语句,比如修改文章的时候,如果用户只修改了标题,那就update ... set title = ? where article_id = ?不要set content = ?(大文本) 
6）必要的时候用不同的存储引擎.比如InnoDB可以减少死锁.HEAP可以提高一个数量级的查询速度。
##########
#198、实现中文字串截取无乱码的方法？undone
###
function substr_for_utf8($sourcestr,$cutlength){
	$returnstr=”;
	$i=0;
	$n=0;
	$str_length=strlen($sourcestr);    //字符串的字节数
	while (($n<$cutlength) and ($i<=$str_length)){
		$temp_str=substr($sourcestr,$i,1);
		$ascnum=Ord($temp_str); //得到字符串中第$i位字符的ascii码
		if ($ascnum>=224) //如果ASCII位高与224，
		{
			$returnstr=$returnstr.substr($sourcestr,$i,3); //根据UTF-8编码规范，将3个连续的字符计为单个字符
			$i=$i+3; //实际Byte计为3
			$n++; //字串长度计1
		}
		elseif ($ascnum>=192)//如果ASCII位高与192，
		{
			$returnstr=$returnstr.substr($sourcestr,$i,2); //根据UTF-8编码规范，将2个连续的字符计为单个字符
			$i=$i+2; //实际Byte计为2
			$n++; //字串长度计1
		}
		elseif ($ascnum>=65 && $ascnum<=90) //如果是大写字母，
		{
			$returnstr=$returnstr.substr($sourcestr,$i,1);
			$i=$i+1; //实际的Byte数仍计1个
			$n++; //但考虑整体美观，大写字母计成一个高位字符
		}
		else //其他情况下，包括小写字母和半角标点符号，
		{
			$returnstr=$returnstr.substr($sourcestr,$i,1);
			$i=$i+1;    //实际的Byte数计1个
			$n=$n+0.5;    //小写字母和半角标点等与半个高位字符宽…
		}
	}

	if ($str_length>$cutlength){
		$returnstr = $returnstr . “…”;    //超过长度时在尾处加上省略号
	}

	return $returnstr;
}
##########
#202、简述如何得到当前执行脚本路径，包括所得到参数。
###
$_SERVER[“SCRIPT_NAME”]
__DIR__
basename(__file__);
##########
#204、写一个函数，算出两个文件的相对路径 　　
###
如 
$a = '/a/b/c/d/e.php'; 　　
$b = '/a/b/12/34/c.php'; 　　
计算出 $b 相对于 $a 的相对路径应该是 http://www.cnblogs.com/c/d将()添上
function getPath($a,$b){
	$m=strlen($a);
	for($i=1;$i<$m;$i++){
		$str=substr($a,0,-$i);
		$reg='/'.str_replace('/','\/',$str).'/';
		if(preg_match($reg,$b)){
			$not=str_replace($str,'',$a);
			$count=substr_count($not,'/');
			for($j=0;$j<$count;$j++){
				$path.='../';
			}
			$path.=str_replace($str,'',$b);
			return $path;	
		}	
	}
}
echo getPath($a,$b);
##########
#206、中文占用unicode码范围？
###
0080-07FF

##########
#216、对关系型数 据库而言，索引是相当重要的概念，请回答有关索引几个问题:
###
1）索引的目的是什么?
	建立索引的目的是加快对表中记录的查找或排序
2）索引对数据库系统的负面影响是什么?
一是增加了数据库的存储空间，二是在插入和修改时要花费较多的时间。
3）为数据表建立索引的原则有哪些?
表的主键、外键必须有索引；
数据量超过300 的表应该有索引；
经常与其他表进行连接的表，在连接字段上应该建立索引；
经常出现在where字句中的字段，特别是大表的字段，应该建立索引；
索引应该建立在选择性高的字段上；
频繁进行数据操作的表，不要建立太多索引；
删除无用的索引，避免对执行计划造成负面影响。

4）什么情况下不宜建立索引?
	数据表数据少和字段值重复太多,不适宜建立索引,不起到提速,反而会消耗大量内存。
##########
#223、了解XSS攻击吗? 如何防止 ?
###
XSS攻击：跨站脚本攻击，是一种经常出现在web应用的计算机安全漏洞，它允许web用户将代码植入到提供给其他用户使用的页面中。
XSS攻击的危害包括：盗取各类用户帐号，控制企业数据，盗窃企业重要资料，非法转账，强制发送电子邮件，网站挂马，控制受害者及其攻击其他网站。
##########
#225、一个字节占多少bit ? 一个IPv4地址占几个字节? 一个IPv6地址呢?undone
###
一个字节占8bit，一个IPV4占用30字节，一个IPV6占用46字节

##########
#230、 Warning: file_put_contents(): Permission denied in /website/index.php on line 4
###
对文件没有写权限，更改文件权限为777。
##########
#231、Warning: Cannot modify header information - headers already sent by (output started at /website/index.php:1) in /website/index.php  on line 3
###
setcookie、header、session函数前不能有输出。
##########
#232、 Warning:session_start(): open(/website/tmp/sess_47e067121facf033785f9a1cb16d243b,   O_RDWR) failed: No such file or directory (2) in /website/index.php on line  10 
###
没有找到文件或目录，检查文件是否存在
##########
#233、Parse error: syntax error, unexpected T_STRING in /website/index.php on line 18
###
	18行语法错误，检查语法
##########
#235、 windows平台, Apache Http Server启动失败, 排错思路是什么?
###
可能情况一：安装apache2的路径中不能含有中文，将中文都改成英文。
可能情况二：有其他服务占用80端口，修改端口。
可能情况三：配置文件修改错误，还原配置文件。
##########
#236、 你所知道的php数组相关的函数？
###
Array_rand、in_array、array_flip、array_values 、array_keys、sort、rsort、shuffle
Array_push、array_pop、array_shift、array_unshift、array_merge、range、array_pad
##########
#237、php读取文件内容的几种方法和函数？
###
Fread、file_get_contents、fgets、fgetc、file
##########
#238、以下程序，变量str什么值的情况下输入111? if( ! $str ) { echo 111; }
###
当$str为整数0、浮点型0.0、空字符串和字符串”0”、布尔值false、空数组、特殊类型NULL时
##########
#240、你所知道的设计模式有哪些？
###
单例、工厂、MVC、适配器、组合、观察者、命令、迭代器、代理、策略

##########
#241、说说你对SVN的了解？优缺点？ 
###
程序员开发的代码递交到版本服务器进行集中管理。
优点：代码进行集中管理，版本控制容易，操作比较简单，权限控制方便。
缺点：每个文件夹都带一个.svn的文件夹，不能随意修改服务器项目文件夹
##########
#243、PHP加速模式/扩展？ PHP调试模式/工具？
###
Zend Optimizer加速扩展
调试工具：xdebug
##########
#245、进入mysql管理命令行的命令？
###
Mysql –u root –ppass
Mysql –h localhost –u root –p123456
##########
#247、show create database mysql; 这个命令的作用？
###
查看mysql库建库语句
##########
#248、show create table user; 这个命令的作用？
###
查看user表的建表语句
##########
#251、show processlist; 这个命令的作用？
###
查看进程信息
##########
#252、 SHOW VARIABLES; 这个命令的作用？
###
查看系统变量
##########
#253、SHOW VARIABLES like '%conn%'; 这个命令的作用？
###
查看字段名含有conn的系统变量。
##########
#254、LEFT JOIN 写一个SQL语句？
###
SELECT a.username,p.content FROM user as a LEFT JOIN post as p ON a.id=p.uid WHERE a.id=3;
##########
#256、怎么找到数据库的配置文件路径？
###
my.conf/my.ini
##########
#257、简述Linux下安装PHP的过程？
###
安装软件之前先安装编译工具gcc、gcc-c++
拷贝源码包，解包解压缩
Cd /lamp/php进入php目录
./configure –prefix=/usr/local/php –with-config-file-path=/usr/local/php/etc指定安装目录和配置文件目录
Make 编译
Make install安装
##########
#258、简述Linux下安装Mysql的过程？
###
Groupadd mysql 添加一个用户组mysql
Useradd -g mysql mysql 添加一个mysql用户指定分组为mysql
Cd /lamp/mysql 进入mysql目录
./configure –prefix=/usr/local/mysql/ –with-extra-charsets=all
Make
Make all 
##########
#259、简述Linux下安装apache的过程？
###
Cd /lamp/httpd 进去apache软件目录
./configure –prefix=/usr/local/apache2/ –sysconfdir=/etc/httpd/ –with-included-apr
Make
Make all 
##########
#260、用javascript取得一个input的值？取得一个input的属性？
###
Document.getElementsByTagName(‘input’)[0];
Document.getElementsByTagName(‘input’)[0].type
##########
#262、 请您写一段ajax提交的js代码，或者写出ajax提交的过程逻辑。Undone
###
<script>
	Function sendAjax(){
		Var aj=’’;
		Try{
			Aj=new XMLHttpRequest();
}catch(e1){
	Try{
		Aj=new ActiveXObject(‘Msxml2.XMLHTTP’);
}catch(e2){
	Try{
		Aj=new ActiveXObject(‘Microsoft.XMLHTTP’);
}catch(e3){
	Aj=false;
}
}
}
Var str=’username=zhang&password=123’;
Var url=’http://localhost/ajax/re.php’;
Aj.open(‘post’,url);
Aj.onreadystatechange=function(){
	If(aj.readystate==4){
		If(aj.status==200){
			Callback(aj.response.text);
}
}
}
aj.setRequestHeader(‘Content-Type’,’application/x-www-forum-urlencoded’);
aj.send(str);
		function callback(data){
			alert(data);
}
}
</script>
过程逻辑；
1）创建ajax对象
2）打开服务器连接
3）判断请求状态
4）如果是post发送，需要设置请求头部信息
5）发送请求
6）处理响应
##########
#263、写出你认为语言中的高级函数
###
Imagecreate
Imagecolorallocate
Imagesetpixel
Imagettftext
Iconv
Mb_substr
Mysql_connect()
Mysql_select_db
Mysql_query
mysql_fetch_row
Mysql_close
##########
#264、简述Cookie的设置及获取过程。
###
只要用户的浏览器支持cookie功能，就可以使用php的setcookie函数来建立一个cookie。
Setcookie函数需要传三个必要参数,cookie识别名称、cookie值和cookie生存时间。还可以设置其他三个可选参数，分别是服务器端指定路径、所属服务器网址和是否通过 https连接。
使用$_COOKIE全局数组可以获取cookie信息。

##########
#265、写出Smarty模板引擎中你最常用的关键词
###
Assign
Display
Foreach
Section
Loop
Item
$smarty
Now
Const
get


##########
#266、如下user表结构
###
    
名称	类型	说明	备注
Uid	Int unsigned	主键	
Name	Varchar(20)		
Age	Tinyint unsigned		
需求：
1）增加一个字段性别sex，写出修改语句
Alter user ADD sex ENUM(‘1’,‘0’) NOT NULL DEFAULT ‘1’ AFTER  Age; 
2）查询出年龄介于20岁到30岁之间的用户
SELECT * FROM user WHERE age BETWEEN 20 AND 30;
3）如果是一个Web频繁访问的查询，上题的查询如何优化？
可以使用预处理，也可以将查询结果集缓存到memcache服务器。
##########
#267、$str[1]=’123456’;
###
$str[2]=’asassasasas’;
$str[1][2]=’abcdefgh’;
var_dump($str);
写出此程序运行结果
array(2) { [1]=> string(6) "12a456" [2]=> string(6) " asassasasas " }
##########
#268、memcache 是什么？使用过吗？， 有什么用? 请详细描述其操作过程。
###
memcache是一个高性能的分布式的内存对象缓存系统，通过在内存里维护一个统一的巨大的hash表，用来存储数据。
作用：它能够用来存储各种格式的数据，包括图像、视频、文件以及数据库检索的结果等。
操作过程：
Memcached.exe –d install
Memcache.exe –d start
telnet localhost(IP地址) 11211(端口号)
add one(名称) 1(标记) 300(有效时间) 10(字符串长度)
##########
#269、请写一个函数将1234567890转换成1,234,567,890 每3位用逗号隔开的形式。Undone
###
<?php      
$str1 = "1234567890";   
$new_str = preg_replace('/^(\d{1,3})((\d{3})+)$/','$1,$2',$str1);   
$new_str = preg_replace('/(?<=\d{3})(\d{3})/',',$1',$new_str);   
print $new_str."\n";   

第二种方法：echo number_format($str1);
?> 

##########
#272、找到当前目录下文件名含有lo.com.cn 中的php文件。
###
Find . –name *lo.com.cn*.php 
##########
#273、投票 vota实现
###
投票标题 varchar(255)
选项内容 varchar(255)
用户登录id vota_uid 
投票用户id vota_vid
投票时间 vota_time
投票总数 vota_total
1）创建数据库表结构 有没列举出的字段 自己补充，如vota_id（可以写出sql语句，也可以画图说明）
Create table vota(id int auto_increment primarykey,title varchar(255),content varchar(155));
2）有人刷恶意投票 请提供解决恶意刷票的方案 多种方案
用$_SERVER[‘REMOTE_ADDR’]判断，一个IP只能投票一次。
限制用户登录投票
验证码
3）现在有某几个热门的投票  服务器表示鸭梨很大 有什么给力的解决方案
采用读写分离

##########
#275、请说明如何优化mysql数据库
###
1）尽量使用缓存机制减少连接数据库的次数
2）通过sql语句的优化减少每次sql语句执行的时间
3）尽量精准的从数据库中获取内容，减少select * 。。。这样的语句

##########
#277、if($a==$b) print(“$a==$b”); else print(“$a!==$b”);写出输出的结果
###
答:运行的结果是 ==  因为$a 和$b没有值
##########
#278、define(“$myvalue”,10);
###
$myarray[10]=”dog”;
$myarray[]=”human”;
$myarray[“myvalue”]=”cat”;
$myarray[“dog”]=”cat”;
print ”The value is:”;
print $myarray[“myvalue”];
答:cat
##########
#279、怎样防止图片防盗连接?
###
1）可以把真实的图片做为背景图片，而使用一张透明图片匹配尺寸并覆盖到真实图片上面。
<div id="image1" style="background-image: url(originalImage.jpg);">
<img src="blank.gif" height="250px" width="300px">
</div>
这样，当别人使用右键查看或保存图片的时候，得到的是这张透明图片。
2）自动切片这是一个非常有效的图片防盗链方法.
它支持两种方案:
让用户下载到的是被裁切过的图片。 
让用户下载到的是打上水印的图片。 
当用户尝试下载图片的时候，它就会进行截切或添加水印操作，但是这个方法也有很大的劣势:
造成太多的服务器请求负荷，对网站整体性能影响不好 
你将拥有许多的图片文件
3）使用带水印的图片 (预先生成)
预先给图片添加水印也是个防止图片被盗的有效方法，就算别人要盗，至少也为你免费宣传了一下自己的网站。
但缺点也来了:
图片会看的不清楚或不美观了(这对于图片展示类的网站尤其重要，但又正是该类网站特尤其图片防盗) 
可以下载然后裁剪水印(当然，如果你是那种把水印放在图片中间或水印有图片这么1/3大的家伙，就不用担心这个问题了) 
要手动添加水印的话，可以使用photoshop，GIMP，轻松水印等软件。也可以选择下面的一些在线图片水印工具
4）使用水印 (服务器端生成)
使用服务器端自动为图片添加水印，是件省心的事情。只是需要一些脚本知识。
5）使用Flash来显示图片
6）基于浏览器的图片防盗
通过JavaScript来禁用点键菜单 是图片防盗的一个方法，但它仅仅是对于网络菜鸟来说，中等点的网民可以很轻松的查看到代码获取图片地址，再高等点的可以轻松破解，禁用你的禁用!
所以这并不是一个好方法，更重要的是它是极不利于用户浏览体验的。
这有一个折中的方法，你可以通过一个jQuery 插件 来实现仅仅禁用保存功能.
7）禁用IE6的图像工具条
在IE6下，当鼠标悬浮在一张图片上时，会出现工具条，上面有保存功能，你可以使用下面的代码禁用:
<meta http-equiv="imagetoolbar" content="no">
##########
#282、简述你使用的过JQuery插件的优缺点（说两个以上）。
###
autocomplete，tags-input、cookie
##########
#283、公司有800员工资料都存在employee表里写一个SQL语句统计出重名员工的人数？
###
select name, count(*) as num from stu group by name having count(name) > 1;

##########
#284、PHP URL重写（伪静态）  
###
1）让Apache支持mod_rewrite
打开Apache配置文件httpd.conf,找到如下：#LoadModule rewrite_module modules/mod_rewrite.so
开启rewrite，去点前面"#"
2）开始重载Allowoverride
查找apache配置文件找到如下
<Directory /> 
Options FollowSymLinks 
    AllowOverride None
</Directory>
将AllowOverride None改为 AllowOverride All
修改
#APMServ默认虚拟主机
NameVirtualHost *:803
<VirtualHost *:803>
 ServerName *
 DocumentRoot "D:/APMServ/APMServ5.2.0/www/htdocs"
</VirtualHost>
<Directory "D:/APMServ/APMServ5.2.0/www/htdocs"> 
 Options FollowSymLinks IncludesNOEXEC Indexes
 DirectoryIndex index.html index.htm default.htm index.php default.php index.cgi default.cgi index.pl default.pl index.shtml
 AllowOverride All
 Order Deny,Allow 
 Allow from all 
</Directory>
AllowOverride none 改为 All
3）写规则，匹配页面
apache配置文件
<ifmodule mod_rewrite.c> 
RewriteEngine On 
RewriteRule index\.html   index\.php 
RewriteRule (.*)\.html   $1\.php [L]   #匹配所有页面 
</ifmodule>
4）新建.htaccess
内容如下
RewriteEngine On 
RewriteRule index\.html   index\.php 
RewriteRule (.*)\.html   $1\.php [L]   #匹配所有页面
为了方便测试，我在htdocs目录下建立一个product.php的文件
<?php
       echo "You have selected product #". $_GET["id"];
?>
http://localhost:803/product.php?id=2;
Result：You have selected product #2;
###
如果我要实行这个效果：
http://localhost:803/product.html
RewriteEngine on 这个要打开啊。
RewriteRule ^product\.html$ product.php?id=123
Result: You have selected product #123
###
http://localhost:803/product/p123.html
RewriteRule ^product/p([0-9]*)\.html$ product.php?id=$1 [L]
Result: You have selected product #123
###
##########
#285、PHP伪静态如何实现?
###
PHP伪静态，主要是为了隐藏传递的参数名；于网上搜索后整理伪静态四法
<?php
//伪静态方法一

// localhost/php100/test.php?id|1@action|2
$Php2Html_FileUrl = $_SERVER["REQUEST_URI"];
echo $Php2Html_FileUrl."<br>";// /php100/test.php?id|1@action|2
$Php2Html_UrlString = str_replace("?","",str_replace("/", "", strrchr(strrchr($Php2Html_FileUrl, "/"),"?")));
echo $Php2Html_UrlString."<br>";// id|1@action|2
$Php2Html_UrlQueryStrList = explode("@", $Php2Html_UrlString);
print_r($Php2Html_UrlQueryStrList);// Array ( [0] => id|1 [1] => action|2 )
echo "<br>";
foreach($Php2Html_UrlQueryStrList as $Php2Html_UrlQueryStr)
{
$Php2Html_TmpArray = explode("|", $Php2Html_UrlQueryStr);
print_r($Php2Html_TmpArray);// Array ( [0] => id [1] => 1 ) ; Array ( [0] => action [1] => 2 )
echo "<br>";
$_GET[$Php2Html_TmpArray[0]] = $Php2Html_TmpArray[1];
}
//echo '假静态：$_GET变量<br />';
print_r($_GET); // Array ( [id|1@action|2] => [id] => 1 [action] => 2 )
echo "<br>";
echo "<hr>";
echo $_GET[id]."<br>";// 1
echo $_GET[action];// 2
?>

<?php
//伪静态方法二
// localhost/php100/test.php/1/2
$filename = basename($_SERVER['SCRIPT_NAME']);
echo $_SERVER['SCRIPT_NAME']."<br>";// /php100/test.php
echo $filename."<br>";// test.php

if(strtolower($filename)=='test.php'){
if(!empty($_GET[id])){
$id=intval($_GET[id]);
echo $id."<br>";
$action=intval($_GET[action]);
echo $action."<br>";
}else{
$nav=$_SERVER['REQUEST_URI'];
echo "1:".$nav."<br>";// /php100/test.php/1/2
$script=$_SERVER['SCRIPT_NAME'];
echo "2:".$script."<br>";// /php100/test.php
$nav=ereg_replace("^$script","",urldecode($nav));
echo $nav."<br>"; // /1/2
$vars=explode("/",$nav);
print_r($vars);// Array ( [0] => [1] => 1 [2] => 2 )
echo "<br>";
$id=intval($vars[1]);
$action=intval($vars[2]);
}
echo $id.'&'.$action;
}
?>

<?php
//伪静态方法三


function mod_rewrite(){
global $_GET;
$nav=$_SERVER["REQUEST_URI"];
echo $nav."<br>";
$script_name=$_SERVER["SCRIPT_NAME"];
echo $script_name."<br>";
$nav=substr(ereg_replace("^$script_name","",urldecode($nav)),1);
echo $nav."<br>";
$nav=preg_replace("/^.ht(m){1}(l){0,1}$/","",$nav);//这句是去掉尾部的.html或.htm
echo $nav."<br>";
$vars = explode("/",$nav);
print_r($vars);
echo "<br>";
for($i=0;$i<Count($vars);$i+=2){
$_GET["$vars[$i]"]=$vars[$i+1];
}
return $_GET;
}
mod_rewrite();
$year=$_GET["year"];//结果为'2006'
echo $year."<br>";
$action=$_GET["action"];//结果为'_add'
echo $action;
?>

<?php
//伪静态方法四

//利用server变量 取得PATH_INFO信息 该例中为 /1,100,8630.html 也就是执行脚本名后面的部分
if(@$path_info =$_SERVER["PATH_INFO"]){
//正则匹配一下参数if(preg_match("/\/(\d+),(\d+),(\d+)\.html/si",$path_info,$arr_path)){
$gid =intval($arr_path[1]); //取得值 1
$sid =intval($arr_path[2]); //取得值100
$softid =intval($arr_path[3]); //取得值8630
}else die("Path:Error!");
//相当于soft.php?gid=1&sid=100&softid=8630
}else die('Path:Nothing!');
?>

##########
#286、PHP防注入如何实现？
###
主要是为了防止恶意写入后台数据库
//防注入函数
function inject_check($sql_str){
$check=eregi('select|insert|update|delete|\'|\/\*|\*|\.\.\/|\.\/|union|into|load_file|outfile', $sql_str);
if($check){
echo "输入非法内容";
exit();
}else{
return $sql_str;
}
}
//接收传递参数后进行转换
$_GET[type]=inject_check($_GET[type]);
//之后再使用转换后的参数
##########
#287、URL重写是实现PHP伪静态
###
应该这样说才是,URL重写是实现PHP伪静态的方式之一,
具体如:
http://www.plframe.com/?x=1&y=2&z=3
换成
http://www.plframe.com/1-2-3.html
这种伪静态方式访问的话,其他最简单的方法是在网站根目录下面建一个.htaccess 文件，其内容如下:
<IfModule mod_rewrite.c>
RewriteEngine on
RewriteRule /([d]+)-([d]+)-([d]+).html /?x=$1&y=$2&z=$3 
</IfModule>

最后再APACHE的虚拟域名配置文件里面找到项目所用的域名设置项<VirtualHost></VirtualHost>，
在其中再找到<Directory></Directory>,将AllowOverride None 改成 AllowOverride All，
若没有<Directory></Directory>,则增加如下内容
<Directory 目录路径>
Options Indexes FollowSymLinks MultiViews
AllowOverride All
Order allow,deny
allow from all
DirectoryIndex index.php
</Directory> 在<VirtualHost></VirtualHost>中间重启APACHE即可.
你规则前面的 ^([0-9]*)-[a-zA-Z0-9&-+._'"]*/ 是正表达式，这里面用()括起来的东西，在后面依次使用$1、$2来引用，叫做匹配项。

在你的这个例子中，$1对于的就是([0-9]*)，就是前面的所有数字
RewriteRule ^id/([0-9]+)$ article.php?id=$1

前面的 你自己可以随便搞

下面是我站的 /还有提醒一下！＠linux 下的 规则有所不同

RewriteEngine On
RewriteBase /
RewriteRule ^type/(.*)/order/([0-9]+)$ index_c.php?type=$1&order=$2
RewriteRule ^type/(.*)/order/([0-9]+)/page/([0-9]+)$ index_c.php?type=$1&order=$2&page=$3

RewriteRule ^user/([0-9]+)$ index_c.php?uid=$1

RewriteRule ^user/([0-9]+)/type/(.*)/page/([0-9]+)$ index_c.php?uid=$1&type=$2&page=$3
RewriteRule ^user/([0-9]+)/type/(.*)$ index_c.php?uid=$1&type=$2

RewriteRule ^user/([0-9]+)/myclick/(.*)/page/([0-9]+)$ index_c.php?uid=$1&myclick=$2&page=$3
RewriteRule ^user/([0-9]+)/myclick/(.*)$ index_c.php?uid=$1&myclick=$2
RewriteRule ^user/([0-9]+)/page/([0-9]+)$ index_c.php?uid=$1&page=$2

RewriteRule ^re1d-([0-9]+)$ /top.php?itemid=$1
RewriteRule ^s=(.*)$ /search.php?s=$1

RewriteRule ^type/(.*)/page/([0-9]+)$ index_c.php?type=$1&page=$2
RewriteRule ^type/(.*)$ index_c.php?type=$1 [L]
现在的搜索引擎越来越对静态页面友好，以前不知道自己的服务器支不支持静态化，今天向空间商咨询后发现，其实自己的服务器是支持静态化的，于是在DZ论坛上下来个.htaccess文件修改了其中的一个代码，上传到我的linux服务器，到Discuz!论坛后台选择静态化选项，前台打开一看，呵呵 已经显示静态化了
下面是修改的.htaccess文件文件内容
# 将 RewriteEngine 模式打开
RewriteEngine On
# 修改以下语句中的 /discuz 为你的论坛目录地址，如果程序放在根目录中，请将 /discuz 修改为 /
RewriteBase /
# Rewrite 系统规则请勿修改
RewriteRule ^archiver/((fid|tid)-[w-]+.html)$ archiver/index.php?$1
RewriteRule ^forum-([0-9]+)-([0-9]+).html$ forumdisplay.php?fid=$1&page=$2
RewriteRule ^thread-([0-9]+)-([0-9]+)-([0-9]+).html$ viewthread.php?tid=$1&extra=page%3D$3&page=$2
RewriteRule ^space-(username|uid)-(.+).html$ space.php?$1=$2
RewriteRule ^tag-(.+).html$ tag.php?name=$1
如果你有需要将这段代码保存为.htaccess文件上传到空间即可，再到后台更改选择静态化就OK了.

##########
#288、HTTP协议中几个状态码的含义:503 500 401 403 404 200 301 302。。。
###
200 : 请求成功，请求的数据随之返回。
301 : 永久性重定向。
302 : 暂时行重定向。
401 : 当前请求需要用户验证。
403 : 服务器拒绝执行请求，即没有权限。
404 : 请求失败，请求的数据在服务器上未发现。
500 : 服务器错误。一般服务器端程序执行错误。
503 : 服务器临时维护或过载。这个状态时临时性的。
##########
#289、PHP/Mysql中几个版本的进化史，比如mysql4.0到4.1，PHP 4.x到5.1的重大改进等等。undone
###
##########
#291、一些编译php时的configure 参数
###
–prefix=/usr/local/php    php安装目录
–with-config-file-path=/usr/local/php/etc 指定php.ini位置
–with-mysql=/usr/local/mysql mysql安装目录，对mysql的支持
–with-mysqli=/usr/local/mysql/bin/mysql_config mysqli文件目录,优化支持
–enable-safe-mode 打开安全模式
–enable-ftp 打开ftp的支持
–enable-zip 打开对zip的支持
–with-bz2 打开对bz2文件的支持
–with-jpeg-dir 打开对jpeg图片的支持
–with-png-dir 打开对png图片的支持
–with-freetype-dir 打开对freetype字体库的支持
–without-iconv关闭iconv函数，种字符集间的转换
–with-libxml-dir 打开libxml2库的支持
–with-xmlrpc 打开xml-rpc的c语言
–with-zlib-dir 打开zlib库的支持
–with-gd 打开gd库的支持
更多可以使用 ./configure help 查看
 
##########
#292、 向php传入参数的三种方法。
###
/*
     * 方法一 使用$argc $argv
     *  在命令行下运行 /usr/local/php/bin/php ./getopt.php -f 123 -g 456
     */
//    if ($argc > 1){
//        print_r($argv);
//    }

    /**
     * 运行结果
     *
     sync@MySUSE11:~/web_app/channel3/interface> /usr/local/php/bin/php ./getopt.php -f 123 -g 456
        Array
        (
            [0] => ./getopt.php
            [1] => -f
            [2] => 123
            [3] => -g
            [4] => 456
        )
     */
 

     /*
     * 方法二 使用getopt函数（）
     *  在命令行下运行 /usr/local/php/bin/php ./getopt.php -f 123 -g 456
     */

//    $options = "f:g:";
//    $opts = getopt( $options );
//    print_r($opts);

    /**
     * 运行结果
     *
     sync@MySUSE11:~/web_app/channel3/interface> /usr/local/php/bin/php ./getopt.php -f 123 -g 456
        Array
        (
            [f] => 123
            [g] => 456
        )
     */

    /*
     * 方法三 提示用户输入，然后获取输入的参数。有点像C语言
     *  在命令行下运行 /usr/local/php/bin/php ./getopt.php
     */
    fwrite(STDOUT, "Enter your name: ");
    $name = trim(fgets(STDIN));
    fwrite(STDOUT, "Hello, $name!");
    /**
     * 运行结果
     *
     sync@MySUSE11:~/web_app/channel3/interface> /usr/local/php/bin/php ./getopt.php
     Enter your name: francis
     Hello, francis!
     */
 
##########
#293、 error_reporting 等调试函数使用
###
error_reporting() 函数能够在运行时设置php.ini中 error_reporting 指令。
所以可以再程序中随时调节显示的错误级别。
使用此函数时 display_errors必须是打开状态。
##########
#294、 posix和perl标准的正则表达式区别？
###
定界符，posix没有perl有（任意非数字、字母或反斜线”\”的字符）
修正符，posix没有perl有
[]之外不一致的元字符，”.”在posix中匹配除了换行外的字符，perl中匹配任意字符
[]之内不一致的元字符，”-”在posix中[a-c-e]会抛出错误，perl中[a-c-e]等价于[a-e]

##########
#295、Safe_mode 打开后哪些地方受限.
###
启动safe_mode，会对许多PHP函数进行限制，特别是和系统相关的文件打开、命令执行等函数.
所有操作文件的函数将只能操作与脚本UID相同的文件.

##########
#296、写代码来解决多进程/线程同时读写一个文件的问题。
###
PHP是不支持多线程的，可以使用php的flock加锁函数实现。
$fp = fopen("/tmp/lock.txt", "w+");
if (flock($fp, LOCK_EX)) { // 进行排它型锁定
fwrite($fp, "Write something here\n");
flock($fp, LOCK_UN); // 释放锁定
} else {
echo "Couldn't lock the file !";
}
fclose($fp);

##########
#297、写一段上传文件的代码。
###
upload.html
<form enctype="multipart/form-data" method="POST" action="upload.php">
Send this file: <input name="name" type="file" />
<input type="submit" value="Send File" />
</form>
upload.php
$uploads_dir = '/uploads';
foreach ($_FILES["error"] as $key => $error) {
if ($error == UPLOAD_ERR_OK) {
$tmp_name = $_FILES["tmp_name"][$key];
$name = $_FILES["name"][$key];
move_uploaded_file($tmp_name, "$uploads_dir/$name");
}
}
 

##########
#298、Mysql 的存储引擎,myisam和innodb的区别。
###
1） MyISAM类型不支持事务处理等高级处理，而InnoDB类型支持.
2）MyISAM类型的表强调的是性能，其执行速度比InnoDB类型更快.
3）InnoDB不支持FULLTEXT类型的索引.
4）InnoDB 中不保存表的具体行数，也就是说，
执行select count(*) from table时，InnoDB要扫描一遍整个表来计算有多少行，
但是MyISAM只要简单的读出保存好的行数即可.
5）对于AUTO_INCREMENT类型的字段，InnoDB中必须包含只有该字段的索引，但是在MyISAM表中，可以和其他字段一起建立联合索引。
6）DELETE FROM table时，InnoDB不会重新建立表，而是一行一行的删除。
7） LOAD TABLE FROM MASTER操作对InnoDB是不起作用的，解决方法是首先把InnoDB表改成MyISAM表，导入数据后再改成InnoDB表，
但是对于使用的额外的InnoDB特性(例如外键)的表不适用.
8）MyISAM支持表锁，InnoDB支持行锁。
##########
#299、介绍xdebug,apc,eAccelerator,Xcache,Zend opt的使用经验。undone
###
xdebug是php调试工具
apc是缓存工具
##########
#300、MySQL数据库作发布系统的存储，一天五万条以上的增量，预计运维三年,怎么优化？
###
1）设计良好的数据库结构，允许部分数据冗余，尽量避免join查询，提高效率。
2）选择合适的表字段数据类型和存储引擎，适当的添加索引。
3）mysql库主从读写分离。
4）找规律分表，减少单表中的数据量提高查询速度。
5）添加缓存机制，比如memcached，apc等。
6）不经常改动的页面，生成静态页面。
7）书写高效率的SQL。比如 SELECT * FROM TABEL 改为 SELECT field_1, field_2, field_3 FROM TABLE.

##########
#301、写出一种排序算法（原理），并说出优化它的方法。undone
###
快速排序，随机化
##########
#302、 请简单阐述您最得意的开发之作。undone
###

##########
#303、对于大流量的网站,您采用什么样的方法来解决各页面访问量统计问题？
###
统一布码监测
##########
#305、测试php性能和mysql数据库性能的工具,和找出瓶颈的方法？undone
###

##########
#306、 介绍一下常见的SSO(单点登陆)方案(比如dedecms整合discuz的passport)的原理。undone
###

##########
#307、您写过的PHP框架的特点，主要解决什么问题，与其他框架的不同点。undone
###

##########
#308、大型的论坛/新闻文章系统/SNS网站在性能优化上有什么区别?undone
###

##########
#309、相册类应用:要求在浏览器中能同时选中并上传多个文件，图片要求能剪裁，压缩包在服务器端解压。能上传单个达50M的文件。上传过程中有进度条显示。每个图片能生成四种大小缩略图，视频文件要转成flv供flash播放。叙述要涉及的各类开源软件和简单用途。？undone
###

##########
#310、一群猴子排成一圈，按1，2，…，n依次编号。然后从第1只开始数，数到第m只,把它踢出圈，从它后面再开始数，再数到第m只，在把它踢出去…，如此不停的进行下去，直到最后只剩下一只猴子为止，那只猴子就叫做大王。要求编程模拟此过程，输入m、n, 输出最后那个大王的编号。用程序模拟该过程。
###
/*
 * 约瑟夫环
 */
function josehpus1($n, $m) {
    $a = array();
    for ($i = 1; $i <= $n; $i++) {
        $a[] = $i;
    }
    $i = 1;
    while (count($a) > 1) {
        $x = array_shift($a);
        if ($i % $m != 0) {
            $a[] = $x;
        } else {
            echo '<br/>- ' . $x . ' = ';
            print_r($a);
        }
        $i++;
    }
    return $a[0];
}

function josehpus2($n, $m) {
    $s = 0;
    for ($i = 2; $i <= $n; $i ++) {
        $s = ($s + $m) % $i;
    }
    return $s + 1;
}

echo josehpus1(10, 7);
echo '<br/>';
echo josehpus2(10, 7);
##########
#311、linux下查看当前系统负载信息的一些方法。Undone
###
w，Uptime	查看系统运行时间、用户、负载
Vmstat	
Top	查看系统整体状态
##########
#313、 ssh 安全增强方法;密码方式和rsa key 方式的配置。undone
###

##########
#314、 rpm/apt/yum/ports 装包，查询，删除的基本命令。Undone
###
安装
rpm -ivh package.rpm
apt-get install package
yum install package
删除
rpm -e package
apt-get remove package
yum remove package
查询
rpm –q string
apt-cache search string
yum search string

##########
#315、Makefile的基本格式，gcc 编译，连接的命令,-O0 和-O3区别。undone
###

##########
#316、 gdb,strace,valgrind的基本使用.undone
###

##########
#318、javascript中的prototype。Undone
###
原型链，用于实现继承。
方法一：
var a = {
  x: 10,
  calculate: function (z) {
    return this.x + this.y + z
  }
};

var b = {
  y: 20,
  __proto__: a
};

var c = {
  y: 30,
  __proto__: a
};

// call the inherited method
b.calculate(30); // 60
c.calculate(40); // 80
方法二：
function a() {
    this.x = 1;
    a.prototype.add = function(){
        return this.x + 2; 
    }
}

var obj1 = new a();
var obj2 = new a();
##########
#319、javascript中this对象的作用域。
###
This是执行上下文环境的一个属性，而不是某个变量对象的属性。

##########
#320、IE和firefox事件冒泡的不同。undone
###
##########
#321、什么是怪异模式,标准模式，近标准模式。undone
###
##########
#322、DTD的定义？
###
文档类型定义
##########
#323、IE/firefox常用hack？
###

.content .test {
    width: 200px;
    height: 200px;
    background: #f60; /*all*/
    background: #06f9; /*IE*/
###
    *background: #666; /*IE6,7*/
###
    _background: #ccc; /*IE6*/
}
    
/* webkit and opera */
@media all and (min-width:0){
    .content .test {
        background: #0f0;
###
    }
}
    
/* webkit */
@media screen and (-webkit-min-device-pixel-ratio:0) {
    .content .test {
        background: #ff0;
    }
}
    
/*FireFox*/
@-moz-document url-prefix() {
    .content .test {
        background: #f0f;
    }
}
    
/*IE9+*/
@media all and (min-width:0) {
    .content .test{
        background: #f009;
        }
}
    
/*IE10+*/
@media screen and (-ms-high-contrast: active), (-ms-high-contrast: none) {
    .content .test {
        background: #0ff;
###
    }
}
##########
#324、firefox,IE下的前端js/css调试工具。undone
###
Console
##########
#325、面试官看过你的简历，会问一些你做的项目的用户量、pv、吞吐量、相关难点和解决方法等。undone
###
##########
#326、数据库设计经验,为什么进行分表? 分库? undone
###
   一般多少数据量开始分表? 分库? 分库分表的目的? 什么是数据库垂直拆分? 水平拆分? 分区等等？可以举例说明
##########
#327、web开发方面会遇到哪些缓存? 分别如何优化? undone
###
##########
#328、给你256M的内存,对10G的文件进行排序(文件每行1个数字),如何实现？   对10G的文件进行查找如何实现？ 统计10G文件每个关键字出现的次数如何实现？
###
undone
300万个字符串最多（假设没有重复，都是最大长度）占用内存3M*1K/4=0.75G。所以可以将所有字符串都存放在内存中进行处理。
　　可以使用key为字符串（事实上是字符串的hash值），值为字符串出现次数的hash来统计每个每个字符串出现的次数。并用一个长度为10的数组/链表来存储目前出现次数最多的10个字符串。
　　这样空间和时间的复杂度都是O(n)。
##########
#329、假如你现在是12306火车订票的设计师,你该如何设计满足全国人民订票? undone
###
##########
#330、假如有1亿用户的访问量,你的服务器架构是怎样的? 用户信息的存储方案如何设计? undone
###
##########
#331、如果你是技术组长,所带团队任务进度无法完成你该如何解决? undone
###
   如果在进度排满的前提下插入任务,你该如何保证总进度不延期? undone
   如果有的工程师今天预定任务没有完成,你该如何解决? undone
##########
#332、从你的经验方面谈一下如何构建高性能web站点? 需要哪些环节? 步骤? 每个步骤需要注意什么如何优化等? undone
###
##########
#333、 如何处理多服务器共享session? Undone
###
Mysql、memcache
##########
#334、 一个10G的表,你用php程序统计某个字段出现的次数,思路是? undone
###
##########
#335、会告诉你一个nginx日志例子,用你认为最佳的编程语言统计一下http响应时间超过1秒的前10个url? undone
###
##########
#336、给你一个mysql配置文件,用你认为最佳的编程语言解析该文件? undone
###
##########
#337、给你一个url,在nginx配置一下rewrite指定到某个具体路径? undone
###
##########
#338、一个php文件的解释过程是? 一般加速php有哪些?  提高php整体性能会用到哪些技术? undone
###
1）解析过程
解析命令行参数，初始化环境，编译执行PHP代码，zend引擎，清理环境并返回退出
2）加速
PHP加速软件是一种将PHP程式码编译之后所产生的bytecode暂存在共享内存内供重复使用，以提升执行效率的插件软件。
如：Zend Optimizer、APC、XCache
##########
#339、chrome号称为多线程的,所以多线程和多进程的区别为? undone
###
进程是资源分配的最小单位，线程是CPU调度的最小单位
线程和进程的区别在于,子进程和父进程有不同的代码和数据空间,而多个线程则共享数据空间,每个线程有自己的执行堆栈和程序计数器为其执行上下文.多线程主要是为了节约CPU时间,发挥利用,根据具体情况而定. 线程的运行中需要使用计算机的内存资源和CPU。340、 php在2011年底出现hash碰撞,hash碰撞原理为? 如何进行修复?
PHP是使用单链表存储碰撞的数据，因此实际上PHP哈希表的平均查找复杂度为O(L)，其中L为桶链表的平均长度；而最坏复杂度为O(N)，此时所有数据全部碰撞，哈希表退化成单链表。
哈希表碰撞攻击就是通过精心构造数据，使得所有数据全部碰撞，人为将哈希表变成一个退化的单链表，此时哈希表各种操作的时间均提升了一个数量级，因此会消耗大量CPU资源，导致系统无法快速响应请求，从而达到拒绝服务攻击（DoS）的目的。
攻击者只要构造一个含有大量碰撞key的post请求，就可以达到攻击的目的。具体做法不再演示。
在>=PHP5.3.9的版本中增加了一个配置项max_input_vars，用于标识一次http请求最大接收的参数个数，默认为1000。
理论上，只要PHP代码中某处构造Array的数据依赖于外部输入，则都可能造成这个问题，因此彻底的解决方案要从Zend底层HashTable的实现动手。一般来说有两种方式，一是限制每个桶链表的最长长度；二是使用其它数据结构如红黑树取代链表组织碰撞哈希（并不解决哈希碰撞，只是减轻攻击影响，将N个数据的操作时间从O(N^2)降至O(NlogN)，代价是普通情况下接近O(1)的操作均变为O(logN)）。
##########
#341、web不安全因素有哪些? 分别如何防范? undone
###
对于以往安全事故的分析表明，大多数安全问题都属于下面三种类型之一：
服务器向公众提供了不应该提供的服务。
服务器把本应私有的数据放到了可公开访问的区域。
服务器信赖了来自不可信赖数据源的数据。
##########
#342、假如两个单链表相交,写一个最优算法计算交点位置,说思路也可以? undone
###
##########
#343、nginx负载均衡有哪些? 如果其中一台服务器挂掉,报警机制如何实现? undone
###
##########
#344、不优化前提下,apache一般最大连接数为? nginx一般最大连接数为? mysql 每秒insert ? select ? update ? delete? undone
###
apache默认最大连接数256，nginx默认是1024
##########
#345、mysql 数据类型有哪些 ? 分别占用多少存储空间 ? undone
###
##########
#346、nginx设置缓存js、css、图片等信息,缓存的实现原理是? undone
###
##########
#347、如何提高缓存命中率? 如何对缓存进行颗粒化? undone
###
##########
#348、php的内存回收机制是? undone
###
在PHP中，没有任何变量指向这个对象时，这个对象就成为垃圾。PHP会将其在内存中销毁；这是PHP的GC垃圾处理机制，防止内存溢出。
当一个PHP线程结束时，当前占用的所有内存空间都会被销毁，当前程序中所有对象同时被销毁。GC进程一般都跟着每起一个SESSION而开始运行的.gc目的是为了在session文件过期以后自动销毁删除这些文件.
__destruct() 析构函数，是在垃圾对象被回收时执行。 
unset 销毁的是指向对象的变量，而不是这个对象。
<?php
gc_enable(); // Enable Garbage Collector
var_dump(gc_enabled()); // true
var_dump(gc_collect_cycles()); // # of elements cleaned up
gc_disable(); // Disable Garbage Collector
?>

##########
#349、linux监视一个日志文件a.log 的最新内容?
###
tail –f a.log查看文件最后10行，动态显示。
##########
#350、查看当前服务器的HTTP连接有哪些？
###
假设Apache Httpd
ps –le | grep httpd 说明。。
pgrep httpd
netstat –an | grep 80
##########
#351、说说Linux下的find命令和grep命令的区别？
###
Find查找文件或目录
Grep 在文件内容中/输出结果中查找字符串
##########
#352、如何实现每天0点钟重新启动服务器? 
###
Crontab命令格式：crontab –l/-i/-r/-e 脚本/命令
-l	显示用户crontab内容
-I	删除用户crontab文件前提示
-r	删除用户的crontab文件
-e	编辑用户的crontab文件
时间段含义：
依次是：分钟（0-59）	小时（0-23）	日期（1-31）	月份（1-12）	星期（0-6）
Crontab –e
0 0 * * * /sbin/reboot 应该写绝对路径
##########
#353、请写出5个常用的unix操作命令?
###
Ls cp touch mkdir rm cat kill ps
##########
#354、rm -rf * 是什么意思，其中 f 有什么作用?
###
–r表示递归（删除目录），f强制（可以不提示删除），* 通配符
删除当前目录下所有文件
##########
#355、Linux压缩文件和解压文件的命令?
###
Gzip  tar  bzip  zip
Gunzip  tar  bunzip  unzip
##########
#356、Linux的目录进行遍历，编写shell脚本?
###
Ls –R
Tree 以树状结构显示目录
##########
#357、apache默认使用进程管理还是线程管理？如何判断并设置最大连接数？
###
使用进程管理
startServers
maxClients 设置最大连接数
##########
#358、当前目录下有一个文件为 showme.sh , 如何修改文件，将其指定为使用 /bin/bash 运行，如何修改其权限为所有用户可读写，所有用户可执行?
###
指定用哪个shell来解析，在文件头加shell路径
#!/bin/bash
修改文件权限
Chmod 777 showme.sh
##########
#359、当前目录下有一个文件为 showme.sh,如何修改其所有人为root?
###
Chown root showme.sh
##########
#360、在linux 请写出一种自动定时备份某一个文件的方法和具体实施流程，要求每天凌晨3 点的时候备份一次。Undone
###
Crontab –e
0 3 * * * 
以某个命令为例
Cp –p
Tar
Scp

说明：每个命令要写绝对路径、错误日志输出 2>>、时间戳、完全备份和增量备份
##########
#361、crond后台常驻程序（daemon）用于：D
###
A．负责文件在网络中的共享
B．管理打印子系统Manages theprinting subsystem
C．跟踪管理系统信息和错误
D．管理系统日常任务的调度（scheduing）

##########
#362、怎么了解您在当前目录下还有多大空间？C  正确答案du –s .
###
A．Use df
B．Use du /
C．Use du.
D．Use df.
##########
#205、有一个备份程序mybackup,需要在周一至周五下午一点和晚上八点各运行次，下面哪一条crontab的项可以完成这项工作？B
###
A．0 13,20 * * 1,5 mybackup
B．0 13,20 * * 1,2,3,4,5, mybackup
C．*13,20 * *1,2,3,4,5, mybackup
D．0 13,20 1,5 * *mybackup
##########
#280、下面哪条命令可以把f1.txt复制为f2.txt？A
###
A．cp f1.txt|f2.txt
B．cat f1.txt|f2.txt
C．cat f1.txt|f2.txt
B．copy f1.txt|f2.txt
##########
#340、 使用命令可以查看Linux的启动信息？B
###
A．mesg –d
B．demesg
C．cat /etc/mesg
D．cat /var/mesg


Linux=L
Apache=A
Mysql=M
Php=P
HTML=H
Javascript =J
##########
#25、public, private, protected,static, transient, final 和 volatile有什么区别？
###
Transient：临时变量（private）不能被序列化。
Volatile：多线程时使用，声明为volatile的变量将不会由编译器进行优化，因为它们的值可能随时改变。

##########
#36、利用php图片函数如何获取图片的大小、类型、宽度和高度？
###
Exif_imagetype()，获取图片类型。
Getimagesize()，获取图片大小。
Imagesx()，获取图片宽度。
Imagesy()，获取图片高度。
##########
#40、如何备份mysql表，如何恢复？
###
1）mysqldump
备份：mysqldump 参数 dbname > dbname.sql
恢复：mysql dbname < dbname.sql 或 source dbname.sql
2）SQL语法
备份：BACKUP TABLE tbl_name TO ‘/tmp/db_name/’ 
或SELECT * INTO OUTFILE ‘/tmp/db_name/tbl_name.txt’ FROM tbl_name
恢复：RESTORE TABLE FROM ‘/tmp/db_name/’
或LOAD DATA INFILE ‘/tmp/db_name/tbl_name.txt’ INTO TABLE tbl_name
##########
#51、有什么工具可以画mysql的E-R图？
###
Case studio
Smart Draw
##########
#58、存储过程、触发器、索引有什么好处？
###
存储过程：可复用、提高性能，只在创造时进行编译，以后每次执行不用重新编译，而一般SQL都是每次执行重新编译。
触发器：是一种特殊的存储过程，是通过事件进行触发而执行的。
索引：查询速度快
##########
#65、mysql如何使用grant和revoke命令？
###
分配和回收权限。
语法：
grant 权限1,权限2,…权限n on 数据库名称.表名称 to 用户名@用户地址 identified by ‘连接口令’;
权限1,权限2,…权限n代表select,insert,update,delete,create,drop,index,alter,grant,references,reload,shutdown,process,file等14个权限。
REVOKE privileges ON 数据库名[.表名] FROM user_name 

例如：
grant select,insert,update,delete on test.user to mql@localhost identified by ‘123456′;
REVOKE all on books.* from Bob; 
##########
#66、解释归一化的概念？undone
###
##########
#70、css有什么优缺点？undone
###
##########
#73、什么是垃圾回收？默认时间？刷新时间？undone
###
垃圾回收在php中是自动化的。
##########
#83、php如何获知用户读取了邮件？
###
$email_header .= "Disposition-Notification-To: $from\r\n"; 
##########
#85、如何判断用户退出？何时空闲？
###
在加载页面时，通过检查session变量是否存在可以判断用户登录状态。默认情况下session在浏览器关闭时过期，可以在php.ini中修改过期时间，如要改成关闭浏览器后5分钟，则
session.cookie_lifetime = 300
session.gc_maxlifetime = 300
，重启apache。

##########
#94、php主要的安全漏洞是什么？如何预防？undone
###
漏洞：
1）命令注入(Command Injection)
2）eval注入(Eval Injection)
3）客户端脚本攻击(Script Insertion)
4）跨网站脚本攻击(Cross Site Scripting, XSS)
5）SQL注入攻击(SQL injection)
6）跨网站请求伪造攻击(Cross Site Request Forgeries, CSRF)
7）Session 会话劫持(Session Hijacking)
8）Session 固定攻击(Session Fixation)
9）HTTP响应拆分攻击(HTTP Response Splitting)
10）文件上传漏洞(File Upload Attack)
11）目录穿越漏洞(Directory Traversal)
12）远程文件包含攻击(Remote Inclusion)
13）动态函数注入攻击(Dynamic Variable Evaluation)
14）URL攻击(URL attack)
15）表单提交欺骗攻击(Spoofed Form Submissions)
16）HTTP请求欺骗攻击(Spoofed HTTP Requests)
预防：
1）在仔细检查用户输入前，不要include、require甚至打开一个用户输入的文件。
2）注意不要轻易在用户输入值上使用eval()函数，避免执行到危险命令。
3）不要轻易使用register_globals = ON，它的设计目的是使php更简单，但也会带来更多安全漏洞。
4）永远不要执行未转义的查询。
5）为保护区域，使用session或每次验证的登录
6）如果不想文件被看见，把文件加上.php后缀

##########
#97、什么是框架？工作原理？有什么优点？
###
框架有助于减轻网页开发时共通性活动的工作负荷，例如许多框架提供数据库访问接口、标准样板以及会话管理等，可提升代码的可再用性。

##########
#101、写出Zend框架的目录结构，简单说明目录作用？
###
|--application			应用目录
|--controllers		控制器目录
		|--models			模型目录
		|--views			视图目录
		|--config			配置文件目录
	|--library				通用类目录
		|--zend				zend类
		|--smarty			smarty模板引擎
	|--www					文档根目录
		|--images			图片目录
		|--css				样式表目录
		|--js				Javascript目录
	|--tmp					临时文件目录
##########
#110、写出下列代码的数据结果。 undone
###
$date='08/26/2003';
print ereg_replace(“([0-9]+)/([0-9]+)/([0-9]+)”,2/1/3,$date);
没有输出结果

##########
#116、如何设计或配置Mysql，才能达到高效使用的目的。
###
1）数据库设计方面，设计结构良好的数据库，允许部分数据冗余。
	选取最适用的字段属性，尽可能把字段设置为NOTNULL，这样在查询的时候，数据库不用去比较NULL值。
2）系统架构设计方面，表散列，把海量数据散列到几个不同的表里面，集群，数据库查询和写入分开。
	写高效sql语句，以提高效率。
	使用连接(join)来代替子查询
	使用联合(union)来代替手动创建的临时表
	所得皆必须，只从数据库取必须的数据。
	必要的时候用不同的存储引擎，比如Innodb可以减少死锁，HEAP可以提高一个数量级的查询速度。
	使用事务
	使用外键
	使用索引

##########
#117、如何进行防SQL注入？
###
1）过滤掉一些常见的数据库操作关键字：select,insert,update,delete,and,*等
或者通过系统函数：addslashes(需要被过滤的内容)来进行过滤。
2）在PHP配置文件中
Register_globals=off;设置为关闭状态 //作用将注册全局变量关闭。
比如：接收POST表单的值使用$_POST['user'],如果将register_globals=on;直接使用$user可以接收表单的值。
 3）SQL语句书写的时候尽量不要省略小引号(tab键上面那个)和单引号
 4）提高数据库命名技巧，对于一些重要的字段根据程序的特点命名，取不易被猜到的
 5）对于常用的方法加以封装，避免直接暴漏SQL语句
 6）开启PHP安全模式
Safe_mode=on;
 7）打开magic_quotes_gpc来防止SQL注入
Magic_quotes_gpc=off;默认是关闭的，它打开后将自动把用户提交的sql语句的查询进行转换，把'转为\'，这对防止sql注入有重大作用。
 8）控制错误信息
关闭错误提示信息，将错误信息写到系统日志。

##########
#118、用PHP写出一个安全的用户登录系统需要注意哪些方面？
###
1）密码要进行加密，如MD5()。
2）登录表单的名称不要跟数据库字段一样，以免暴露表字段。
3）用户表的表名、字段名、密码尽量用不容易被猜到的。
4）要使用验证码验证登陆，以防止暴力破解。
5）验证提交的数据是不是来自本网站。
6）登录后台处理代码数据库部分使用预处理，做好过滤，防止sql注入。

##########
#119、使用过哪些PHP框架？试描述其优劣点。
###
Thinkphp
优点：功能比较全面，配置相对比较简单，操作相对比较简单，有很多使用示例程序。
缺点：提供的操作方法太多，新手不知如何选择，文档不够全面。
Yii
	优点：功能强大、有代码自动生成功能
	缺点：中文资料欠缺，上手困难。
brophp
优点：轻量级学习型框架，配置简单，操作简单，容易上手，提供了比较全面的文档。
缺点：功能少

   
##########
#141、SESSION 与 COOKIE的区别是什么，请从协议，产生的原因与作用说明?
###
	HTTP是无状态协议，不能区分用户是从同一个网站上来的，同一个用户请求的不同页面不能看作是一同一个用户，为了解决这个问题，SESSION和COOKIE诞生了，他们都可以用来保存用户数据。
SESSION保存在服务器端，COOKIE保存在客户端。
1）cookie数据存放在客户的浏览器上，session数据放在服务器上。
2）cookie不是很安全，别人可以分析存放在本地的COOKIE并进行COOKIE欺骗
   考虑到安全应当使用session。
3）session会在一定时间内保存在服务器上。当访问增多，会比较占用你服务器的性能
   考虑到减轻服务器性能方面，应当使用COOKIE。
4）单个cookie保存的数据不能超过4K，很多浏览器都限制一个站点最多保存20个cookie。

##########
#143、Linux 下建立压缩包，解压缩包的命令。
###
	压缩：gzip、tar –cvfz、zip、bzip2
	解压：gunzip、tar –zxvf、unzip、bunzip2

##########
#154、在数据库test中的一个表student，字段是name，class，score。分别代表姓名、所在班级，分数。
###
   1) 查出每个班级中的学生，按照成绩降序排序;
   2) 查出每个班的及格人数和不及格人数，格式为：class、及格人数、不及格人数；
   3) 用PHP写入连接数据库("localhost","msuser","mspass")、执行以上SQL、显示结果、判断错误、关闭数据库的过程；

$mysqli=new mysqli(‘localhost’,’msuser’,’mspass’,’test’);
$sql1=’SELECT * FROM sdudent ORDER BY score DESC’;
$sql2= SELECT a.class 班级,a.num 及格人数,b.num 不及格人数 FROM (SELECT class,COUNT(id) AS num FROM stu WHERE score>=60 GROUP BY class) a,(SELECT class,COUNT(id) AS num FROM stu WHERE score<60 GROUP BY class) b WHERE a.class=b.class;

$result1=$mysqli->query($sql1);
If($result1){
	Print_r($result1);
}else{
	Echo ‘查询成绩失败！’;
}
$result2=$mysqli->query($sql2);
If($result2){
	While($row=$result2->fetch_assoc()){
			Echo $row[“class”].’班及格人数:’.$row[“及格人数”].’不及格人数’:$row[“不及格人数”];
}
}else{
	
}
$mysqli->close();


##########
#172、不断在文件hello.txt头部写入一行“Hello World”字符串，要求代码完整。Undone
###
$file=’hello.txt’;
$con=file_get_cotents($file);
While(1){
	File_put_contents($file,’Hello World\n’.$con)
}




##########
#177、通过PHP函数的方式对目录进行遍历，写出程序
###
function listDir($dir){
	if(is_dir($dir)){
		if ($dh = opendir($dir)){
			while(($file= readdir($dh)) !== false){
				if((is_dir($dir."/".$file)) && $file!="." && $file!=".."){
					echo "<b><font color='red'>文件夹：</font></b>",$file,"<br><hr>";
					listDir($dir."/".$file."/");
					echo '<hr>';
				}else{
					if($file!="." && $file!=".."){
						echo $file."<br>";
					}
				}
			}
			closedir($dh);
		}
	}
}

##########
#178、Linux的目录进行遍历，编写shell脚本?undone
###
#!/bin/sh  使用bash做为默认shell
 list_alldir(){
     for file in $1/*
     do
         if [ -d $file ]; then
             echo $file
             list_alldir $file    #在这里递归调用
         fi
     done
 }

 #下面是定义初始化路径
 if [ $# -gt 0 ]
 then
     list_alldir "$1"
 else
     list_alldir "."
 fi


##########
#180、数据库设计时，常遇到的性能瓶颈有哪些，常有的解决方案？
###
通常造成数据库瓶颈的原因是：
1）数据库系统本身性能不佳，例如你用桌面数据库Access 来做web应用的后台数据库 显然是不行的；
2）数据库结构设计不合理，导致不必要的、过多的数据库访问，这需要优化数据表结构设计，必要时引入Cache系统；
3）数据库连接池设置不当，为了提供数据库的服务能力，在有潜在并发访问数据库的情况下，我们会使用连接池技术，如果池的大小与实际需求不符，则会带来访问数据库时的排队等候。
4）程序实现适当，例如对 数据库连接长期占有，导致其它访问必须进行排队 

当然，即时没有以上的错误做法，当一个系统规模不断变大时，数据库系统也会成为瓶颈所在，但针对此业界有一些解决方法的，例如进行数据库水平/垂直分割、集群、缓存等等。


##########
#181、编写一个在线留言本，实现用户的在线留言功能，留言信息存储到数据库？undone
###
数据表字段：aid、author、title、content、posttime、edittime、ip
脚本：
index.php
留言列表、回复留言按钮、提交留言表单
action.php（业务处理脚本）
处理表单提交、增改留言数据表

##########
#182、通过JS创建一个当前窗口的子窗口，通过程序实现子窗口对父窗口的操作实例？
###
1）IE中使用方法：
父窗口调用子窗口：iframe_ID.iframe_document_object.object_attribute = attribute_value 
例子：onClick="iframe_text.myH1.innerText='http://www.pint.com';" 
子窗口调用父窗口：parent.parent_document_object.object_attribute = attribute_value 
例子：onclick="parent.myH1.innerText='http://www.pint.com';"
2）Firefox中使用方法：
上面在IE下没有问题，但在firefox下不正常。在firefox下，应该是如下调用方法：
父窗口调用子窗口：window.frames["iframe_ID"].document.getElementById("iframe_document_object"-).object_attribute = attribute_value 
例： window.frames["iframe_text"].document.getElementById("myH1").innerHTML= "http://hi.wonsoft.cn"; 
子窗口调用父窗口：parent.document.getElementById("parent_document_object").object_attribute = attribute_value 
例： parent.document.getElementById("myH1").innerHTML = "http://wonsoft.cn";

##########
#185、设定网站的用户数量在千万级，但是活跃用户的数量只有1%，如何通过优化数据库提高活跃用户的访问速度？
###
可以使用分表技术，将高活跃用户单独存到一个有同样字段但表名不同的表里，当用户登陆时首先查询这个表，如果不是高活跃用户再查询大表。

##########
#186、服务器在运行的过程中，随着用户访问数量的增长，如何通过优化，保证性能？如果数据库已经达到最优化，请设计出继续升级的解决方案？
###
1）确定当前的服务器的硬件设备能不能满足流量需求，如果满足不了就添加新的设备。
2）使用memcache缓存技术，将动态数据缓存到文件中，动态网页直接调用这些文件，而不必再访问数据库。
3）禁止外部盗链，图片、或文件盗链会给服务器带来大量的负载压力，因此可以通过refer来控制盗链，或者用apache来配置禁止盗链。
4）控制大文件的下载，大文件的下载对于非SCSI硬盘来说会占用大量资源，使得网站响应能力下降。
5）使用不同的主机分流主要流量，使得服务器均衡负载。
6）使用流量统计软件进行流量统计和分析，可以即时了解哪些地方耗费了大量的流量，哪些页面需要再进行优化。



##########
#195、对于大流量的网站,您采用什么样的方法来解决访问量问题?
###
确认服务器硬件是否足够支持当前的流量,数据库读写分离,优化数据表, 程序功能规则,禁止外部的盗链,控制大文件的下载,使用不同主机分流主要流量
##########
#197、优化MYSQL数据库的方法？
###
1）数据库设计方面,这是DBA和Architect的责任,设计结构良好的数据库,必要的时候,去正规化(英文是这个:denormalize,中文翻译成啥我不知道),允许部分数据冗余,避免JOIN操作,以提高查询效率 。
2）系统架构设计方面,表散列,把海量数据散列到几个不同的表里面。快慢表,快表只留最新数据,慢表是历史存档.集群,主服务器Read & write,从服务器read only,或者N台服务器,各机器互为Master 。
3）(1)和(2)超越PHP Programmer的要求了,会更好,不会没关系.检查有没有少加索引 
4）写高效的SQL语句,看看有没有写低效的SQL语句,比如生成笛卡尔积的全连接啊,大量的Group By和order by,没有limit等等.必要的时候,把数据库逻辑封装到DBMS端的存储过程里面，缓存查询结果,explain每一个sql语句 
5)所得皆必须,只从数据库取必需的数据,比如查询某篇文章的评论数,select count(*) ... where article_id = ? 就可以了,不要先select * ... where article_id = ?然后msql_num_rows. 
只传送必须的SQL语句,比如修改文章的时候,如果用户只修改了标题,那就update ... set title = ? where article_id = ?不要set content = ?(大文本) 
6）必要的时候用不同的存储引擎.比如InnoDB可以减少死锁.HEAP可以提高一个数量级的查询速度。
##########
#198、实现中文字串截取无乱码的方法？undone
###
function substr_for_utf8($sourcestr,$cutlength){
	$returnstr=”;
	$i=0;
	$n=0;
	$str_length=strlen($sourcestr);    //字符串的字节数
	while (($n<$cutlength) and ($i<=$str_length)){
		$temp_str=substr($sourcestr,$i,1);
		$ascnum=Ord($temp_str); //得到字符串中第$i位字符的ascii码
		if ($ascnum>=224) //如果ASCII位高与224，
		{
			$returnstr=$returnstr.substr($sourcestr,$i,3); //根据UTF-8编码规范，将3个连续的字符计为单个字符
			$i=$i+3; //实际Byte计为3
			$n++; //字串长度计1
		}
		elseif ($ascnum>=192)//如果ASCII位高与192，
		{
			$returnstr=$returnstr.substr($sourcestr,$i,2); //根据UTF-8编码规范，将2个连续的字符计为单个字符
			$i=$i+2; //实际Byte计为2
			$n++; //字串长度计1
		}
		elseif ($ascnum>=65 && $ascnum<=90) //如果是大写字母，
		{
			$returnstr=$returnstr.substr($sourcestr,$i,1);
			$i=$i+1; //实际的Byte数仍计1个
			$n++; //但考虑整体美观，大写字母计成一个高位字符
		}
		else //其他情况下，包括小写字母和半角标点符号，
		{
			$returnstr=$returnstr.substr($sourcestr,$i,1);
			$i=$i+1;    //实际的Byte数计1个
			$n=$n+0.5;    //小写字母和半角标点等与半个高位字符宽…
		}
	}

	if ($str_length>$cutlength){
		$returnstr = $returnstr . “…”;    //超过长度时在尾处加上省略号
	}

	return $returnstr;
}
##########
#202、简述如何得到当前执行脚本路径，包括所得到参数。
###
$_SERVER[“SCRIPT_NAME”]
__DIR__
basename(__file__);
##########
#204、写一个函数，算出两个文件的相对路径 　　
###
如 
$a = '/a/b/c/d/e.php'; 　　
$b = '/a/b/12/34/c.php'; 　　
计算出 $b 相对于 $a 的相对路径应该是 http://www.cnblogs.com/c/d将()添上
function getPath($a,$b){
	$m=strlen($a);
	for($i=1;$i<$m;$i++){
		$str=substr($a,0,-$i);
		$reg='/'.str_replace('/','\/',$str).'/';
		if(preg_match($reg,$b)){
			$not=str_replace($str,'',$a);
			$count=substr_count($not,'/');
			for($j=0;$j<$count;$j++){
				$path.='../';
			}
			$path.=str_replace($str,'',$b);
			return $path;	
		}	
	}
}
echo getPath($a,$b);
##########
#206、中文占用unicode码范围？
###
0080-07FF

##########
#216、对关系型数 据库而言，索引是相当重要的概念，请回答有关索引几个问题:
###
1）索引的目的是什么?
	建立索引的目的是加快对表中记录的查找或排序
2）索引对数据库系统的负面影响是什么?
一是增加了数据库的存储空间，二是在插入和修改时要花费较多的时间。
3）为数据表建立索引的原则有哪些?
表的主键、外键必须有索引；
数据量超过300 的表应该有索引；
经常与其他表进行连接的表，在连接字段上应该建立索引；
经常出现在where字句中的字段，特别是大表的字段，应该建立索引；
索引应该建立在选择性高的字段上；
频繁进行数据操作的表，不要建立太多索引；
删除无用的索引，避免对执行计划造成负面影响。

4）什么情况下不宜建立索引?
	数据表数据少和字段值重复太多,不适宜建立索引,不起到提速,反而会消耗大量内存。
##########
#223、了解XSS攻击吗? 如何防止 ?
###
XSS攻击：跨站脚本攻击，是一种经常出现在web应用的计算机安全漏洞，它允许web用户将代码植入到提供给其他用户使用的页面中。
XSS攻击的危害包括：盗取各类用户帐号，控制企业数据，盗窃企业重要资料，非法转账，强制发送电子邮件，网站挂马，控制受害者及其攻击其他网站。
##########
#225、一个字节占多少bit ? 一个IPv4地址占几个字节? 一个IPv6地址呢?undone
###
一个字节占8bit，一个IPV4占用30字节，一个IPV6占用46字节

##########
#230、 Warning: file_put_contents(): Permission denied in /website/index.php on line 4
###
对文件没有写权限，更改文件权限为777。
##########
#231、Warning: Cannot modify header information - headers already sent by (output started at /website/index.php:1) in /website/index.php  on line 3
###
setcookie、header、session函数前不能有输出。
##########
#232、 Warning:session_start(): open(/website/tmp/sess_47e067121facf033785f9a1cb16d243b,   O_RDWR) failed: No such file or directory (2) in /website/index.php on line  10 
###
没有找到文件或目录，检查文件是否存在
##########
#233、Parse error: syntax error, unexpected T_STRING in /website/index.php on line 18
###
	18行语法错误，检查语法
##########
#235、 windows平台, Apache Http Server启动失败, 排错思路是什么?
###
可能情况一：安装apache2的路径中不能含有中文，将中文都改成英文。
可能情况二：有其他服务占用80端口，修改端口。
可能情况三：配置文件修改错误，还原配置文件。
##########
#236、 你所知道的php数组相关的函数？
###
Array_rand、in_array、array_flip、array_values 、array_keys、sort、rsort、shuffle
Array_push、array_pop、array_shift、array_unshift、array_merge、range、array_pad
##########
#237、php读取文件内容的几种方法和函数？
###
Fread、file_get_contents、fgets、fgetc、file
##########
#238、以下程序，变量str什么值的情况下输入111? if( ! $str ) { echo 111; }
###
当$str为整数0、浮点型0.0、空字符串和字符串”0”、布尔值false、空数组、特殊类型NULL时
##########
#240、你所知道的设计模式有哪些？
###
单例、工厂、MVC、适配器、组合、观察者、命令、迭代器、代理、策略

##########
#241、说说你对SVN的了解？优缺点？ 
###
程序员开发的代码递交到版本服务器进行集中管理。
优点：代码进行集中管理，版本控制容易，操作比较简单，权限控制方便。
缺点：每个文件夹都带一个.svn的文件夹，不能随意修改服务器项目文件夹
##########
#243、PHP加速模式/扩展？ PHP调试模式/工具？
###
Zend Optimizer加速扩展
调试工具：xdebug
##########
#245、进入mysql管理命令行的命令？
###
Mysql –u root –ppass
Mysql –h localhost –u root –p123456
##########
#247、show create database mysql; 这个命令的作用？
###
查看mysql库建库语句
##########
#248、show create table user; 这个命令的作用？
###
查看user表的建表语句
##########
#251、show processlist; 这个命令的作用？
###
查看进程信息
##########
#252、 SHOW VARIABLES; 这个命令的作用？
###
查看系统变量
##########
#253、SHOW VARIABLES like '%conn%'; 这个命令的作用？
###
查看字段名含有conn的系统变量。
##########
#254、LEFT JOIN 写一个SQL语句？
###
SELECT a.username,p.content FROM user as a LEFT JOIN post as p ON a.id=p.uid WHERE a.id=3;
##########
#256、怎么找到数据库的配置文件路径？
###
my.conf/my.ini
##########
#257、简述Linux下安装PHP的过程？
###
安装软件之前先安装编译工具gcc、gcc-c++
拷贝源码包，解包解压缩
Cd /lamp/php进入php目录
./configure –prefix=/usr/local/php –with-config-file-path=/usr/local/php/etc指定安装目录和配置文件目录
Make 编译
Make install安装
##########
#258、简述Linux下安装Mysql的过程？
###
Groupadd mysql 添加一个用户组mysql
Useradd -g mysql mysql 添加一个mysql用户指定分组为mysql
Cd /lamp/mysql 进入mysql目录
./configure –prefix=/usr/local/mysql/ –with-extra-charsets=all
Make
Make all 
##########
#259、简述Linux下安装apache的过程？
###
Cd /lamp/httpd 进去apache软件目录
./configure –prefix=/usr/local/apache2/ –sysconfdir=/etc/httpd/ –with-included-apr
Make
Make all 
##########
#260、用javascript取得一个input的值？取得一个input的属性？
###
Document.getElementsByTagName(‘input’)[0];
Document.getElementsByTagName(‘input’)[0].type
##########
#262、 请您写一段ajax提交的js代码，或者写出ajax提交的过程逻辑。Undone
###
<script>
	Function sendAjax(){
		Var aj=’’;
		Try{
			Aj=new XMLHttpRequest();
}catch(e1){
	Try{
		Aj=new ActiveXObject(‘Msxml2.XMLHTTP’);
}catch(e2){
	Try{
		Aj=new ActiveXObject(‘Microsoft.XMLHTTP’);
}catch(e3){
	Aj=false;
}
}
}
Var str=’username=zhang&password=123’;
Var url=’http://localhost/ajax/re.php’;
Aj.open(‘post’,url);
Aj.onreadystatechange=function(){
	If(aj.readystate==4){
		If(aj.status==200){
			Callback(aj.response.text);
}
}
}
aj.setRequestHeader(‘Content-Type’,’application/x-www-forum-urlencoded’);
aj.send(str);
		function callback(data){
			alert(data);
}
}
</script>
过程逻辑；
1）创建ajax对象
2）打开服务器连接
3）判断请求状态
4）如果是post发送，需要设置请求头部信息
5）发送请求
6）处理响应
##########
#263、写出你认为语言中的高级函数
###
Imagecreate
Imagecolorallocate
Imagesetpixel
Imagettftext
Iconv
Mb_substr
Mysql_connect()
Mysql_select_db
Mysql_query
mysql_fetch_row
Mysql_close
##########
#264、简述Cookie的设置及获取过程。
###
只要用户的浏览器支持cookie功能，就可以使用php的setcookie函数来建立一个cookie。
Setcookie函数需要传三个必要参数,cookie识别名称、cookie值和cookie生存时间。还可以设置其他三个可选参数，分别是服务器端指定路径、所属服务器网址和是否通过 https连接。
使用$_COOKIE全局数组可以获取cookie信息。

##########
#265、写出Smarty模板引擎中你最常用的关键词
###
Assign
Display
Foreach
Section
Loop
Item
$smarty
Now
Const
get


##########
#266、如下user表结构
###
    
名称	类型	说明	备注
Uid	Int unsigned	主键	
Name	Varchar(20)		
Age	Tinyint unsigned		
需求：
1）增加一个字段性别sex，写出修改语句
Alter user ADD sex ENUM(‘1’,‘0’) NOT NULL DEFAULT ‘1’ AFTER  Age; 
2）查询出年龄介于20岁到30岁之间的用户
SELECT * FROM user WHERE age BETWEEN 20 AND 30;
3）如果是一个Web频繁访问的查询，上题的查询如何优化？
可以使用预处理，也可以将查询结果集缓存到memcache服务器。
##########
#267、$str[1]=’123456’;
###
$str[2]=’asassasasas’;
$str[1][2]=’abcdefgh’;
var_dump($str);
写出此程序运行结果
array(2) { [1]=> string(6) "12a456" [2]=> string(6) " asassasasas " }
##########
#268、memcache 是什么？使用过吗？， 有什么用? 请详细描述其操作过程。
###
memcache是一个高性能的分布式的内存对象缓存系统，通过在内存里维护一个统一的巨大的hash表，用来存储数据。
作用：它能够用来存储各种格式的数据，包括图像、视频、文件以及数据库检索的结果等。
操作过程：
Memcached.exe –d install
Memcache.exe –d start
telnet localhost(IP地址) 11211(端口号)
add one(名称) 1(标记) 300(有效时间) 10(字符串长度)
##########
#269、请写一个函数将1234567890转换成1,234,567,890 每3位用逗号隔开的形式。Undone
###
<?php      
$str1 = "1234567890";   
$new_str = preg_replace('/^(\d{1,3})((\d{3})+)$/','$1,$2',$str1);   
$new_str = preg_replace('/(?<=\d{3})(\d{3})/',',$1',$new_str);   
print $new_str."\n";   

第二种方法：echo number_format($str1);
?> 

##########
#272、找到当前目录下文件名含有lo.com.cn 中的php文件。
###
Find . –name *lo.com.cn*.php 
##########
#273、投票 vota实现
###
投票标题 varchar(255)
选项内容 varchar(255)
用户登录id vota_uid 
投票用户id vota_vid
投票时间 vota_time
投票总数 vota_total
1）创建数据库表结构 有没列举出的字段 自己补充，如vota_id（可以写出sql语句，也可以画图说明）
Create table vota(id int auto_increment primarykey,title varchar(255),content varchar(155));
2）有人刷恶意投票 请提供解决恶意刷票的方案 多种方案
用$_SERVER[‘REMOTE_ADDR’]判断，一个IP只能投票一次。
限制用户登录投票
验证码
3）现在有某几个热门的投票  服务器表示鸭梨很大 有什么给力的解决方案
采用读写分离

##########
#275、请说明如何优化mysql数据库
###
1）尽量使用缓存机制减少连接数据库的次数
2）通过sql语句的优化减少每次sql语句执行的时间
3）尽量精准的从数据库中获取内容，减少select * 。。。这样的语句

##########
#277、if($a==$b) print(“$a==$b”); else print(“$a!==$b”);写出输出的结果
###
答:运行的结果是 ==  因为$a 和$b没有值
##########
#278、define(“$myvalue”,10);
###
$myarray[10]=”dog”;
$myarray[]=”human”;
$myarray[“myvalue”]=”cat”;
$myarray[“dog”]=”cat”;
print ”The value is:”;
print $myarray[“myvalue”];
答:cat
##########
#279、怎样防止图片防盗连接?
###
1）可以把真实的图片做为背景图片，而使用一张透明图片匹配尺寸并覆盖到真实图片上面。
<div id="image1" style="background-image: url(originalImage.jpg);">
<img src="blank.gif" height="250px" width="300px">
</div>
这样，当别人使用右键查看或保存图片的时候，得到的是这张透明图片。
2）自动切片这是一个非常有效的图片防盗链方法.
它支持两种方案:
让用户下载到的是被裁切过的图片。 
让用户下载到的是打上水印的图片。 
当用户尝试下载图片的时候，它就会进行截切或添加水印操作，但是这个方法也有很大的劣势:
造成太多的服务器请求负荷，对网站整体性能影响不好 
你将拥有许多的图片文件
3）使用带水印的图片 (预先生成)
预先给图片添加水印也是个防止图片被盗的有效方法，就算别人要盗，至少也为你免费宣传了一下自己的网站。
但缺点也来了:
图片会看的不清楚或不美观了(这对于图片展示类的网站尤其重要，但又正是该类网站特尤其图片防盗) 
可以下载然后裁剪水印(当然，如果你是那种把水印放在图片中间或水印有图片这么1/3大的家伙，就不用担心这个问题了) 
要手动添加水印的话，可以使用photoshop，GIMP，轻松水印等软件。也可以选择下面的一些在线图片水印工具
4）使用水印 (服务器端生成)
使用服务器端自动为图片添加水印，是件省心的事情。只是需要一些脚本知识。
5）使用Flash来显示图片
6）基于浏览器的图片防盗
通过JavaScript来禁用点键菜单 是图片防盗的一个方法，但它仅仅是对于网络菜鸟来说，中等点的网民可以很轻松的查看到代码获取图片地址，再高等点的可以轻松破解，禁用你的禁用!
所以这并不是一个好方法，更重要的是它是极不利于用户浏览体验的。
这有一个折中的方法，你可以通过一个jQuery 插件 来实现仅仅禁用保存功能.
7）禁用IE6的图像工具条
在IE6下，当鼠标悬浮在一张图片上时，会出现工具条，上面有保存功能，你可以使用下面的代码禁用:
<meta http-equiv="imagetoolbar" content="no">
##########
#282、简述你使用的过JQuery插件的优缺点（说两个以上）。
###
autocomplete，tags-input、cookie
##########
#283、公司有800员工资料都存在employee表里写一个SQL语句统计出重名员工的人数？
###
select name, count(*) as num from stu group by name having count(name) > 1;

##########
#284、PHP URL重写（伪静态）  
###
1）让Apache支持mod_rewrite
打开Apache配置文件httpd.conf,找到如下：#LoadModule rewrite_module modules/mod_rewrite.so
开启rewrite，去点前面"#"
2）开始重载Allowoverride
查找apache配置文件找到如下
<Directory /> 
Options FollowSymLinks 
    AllowOverride None
</Directory>
将AllowOverride None改为 AllowOverride All
修改
#APMServ默认虚拟主机
NameVirtualHost *:803
<VirtualHost *:803>
 ServerName *
 DocumentRoot "D:/APMServ/APMServ5.2.0/www/htdocs"
</VirtualHost>
<Directory "D:/APMServ/APMServ5.2.0/www/htdocs"> 
 Options FollowSymLinks IncludesNOEXEC Indexes
 DirectoryIndex index.html index.htm default.htm index.php default.php index.cgi default.cgi index.pl default.pl index.shtml
 AllowOverride All
 Order Deny,Allow 
 Allow from all 
</Directory>
AllowOverride none 改为 All
3）写规则，匹配页面
apache配置文件
<ifmodule mod_rewrite.c> 
RewriteEngine On 
RewriteRule index\.html   index\.php 
RewriteRule (.*)\.html   $1\.php [L]   #匹配所有页面 
</ifmodule>
4）新建.htaccess
内容如下
RewriteEngine On 
RewriteRule index\.html   index\.php 
RewriteRule (.*)\.html   $1\.php [L]   #匹配所有页面
为了方便测试，我在htdocs目录下建立一个product.php的文件
<?php
       echo "You have selected product #". $_GET["id"];
?>
http://localhost:803/product.php?id=2;
Result：You have selected product #2;
###
如果我要实行这个效果：
http://localhost:803/product.html
RewriteEngine on 这个要打开啊。
RewriteRule ^product\.html$ product.php?id=123
Result: You have selected product #123
###
http://localhost:803/product/p123.html
RewriteRule ^product/p([0-9]*)\.html$ product.php?id=$1 [L]
Result: You have selected product #123
###
##########
#285、PHP伪静态如何实现?
###
PHP伪静态，主要是为了隐藏传递的参数名；于网上搜索后整理伪静态四法
<?php
//伪静态方法一

// localhost/php100/test.php?id|1@action|2
$Php2Html_FileUrl = $_SERVER["REQUEST_URI"];
echo $Php2Html_FileUrl."<br>";// /php100/test.php?id|1@action|2
$Php2Html_UrlString = str_replace("?","",str_replace("/", "", strrchr(strrchr($Php2Html_FileUrl, "/"),"?")));
echo $Php2Html_UrlString."<br>";// id|1@action|2
$Php2Html_UrlQueryStrList = explode("@", $Php2Html_UrlString);
print_r($Php2Html_UrlQueryStrList);// Array ( [0] => id|1 [1] => action|2 )
echo "<br>";
foreach($Php2Html_UrlQueryStrList as $Php2Html_UrlQueryStr)
{
$Php2Html_TmpArray = explode("|", $Php2Html_UrlQueryStr);
print_r($Php2Html_TmpArray);// Array ( [0] => id [1] => 1 ) ; Array ( [0] => action [1] => 2 )
echo "<br>";
$_GET[$Php2Html_TmpArray[0]] = $Php2Html_TmpArray[1];
}
//echo '假静态：$_GET变量<br />';
print_r($_GET); // Array ( [id|1@action|2] => [id] => 1 [action] => 2 )
echo "<br>";
echo "<hr>";
echo $_GET[id]."<br>";// 1
echo $_GET[action];// 2
?>

<?php
//伪静态方法二
// localhost/php100/test.php/1/2
$filename = basename($_SERVER['SCRIPT_NAME']);
echo $_SERVER['SCRIPT_NAME']."<br>";// /php100/test.php
echo $filename."<br>";// test.php

if(strtolower($filename)=='test.php'){
if(!empty($_GET[id])){
$id=intval($_GET[id]);
echo $id."<br>";
$action=intval($_GET[action]);
echo $action."<br>";
}else{
$nav=$_SERVER['REQUEST_URI'];
echo "1:".$nav."<br>";// /php100/test.php/1/2
$script=$_SERVER['SCRIPT_NAME'];
echo "2:".$script."<br>";// /php100/test.php
$nav=ereg_replace("^$script","",urldecode($nav));
echo $nav."<br>"; // /1/2
$vars=explode("/",$nav);
print_r($vars);// Array ( [0] => [1] => 1 [2] => 2 )
echo "<br>";
$id=intval($vars[1]);
$action=intval($vars[2]);
}
echo $id.'&'.$action;
}
?>

<?php
//伪静态方法三


function mod_rewrite(){
global $_GET;
$nav=$_SERVER["REQUEST_URI"];
echo $nav."<br>";
$script_name=$_SERVER["SCRIPT_NAME"];
echo $script_name."<br>";
$nav=substr(ereg_replace("^$script_name","",urldecode($nav)),1);
echo $nav."<br>";
$nav=preg_replace("/^.ht(m){1}(l){0,1}$/","",$nav);//这句是去掉尾部的.html或.htm
echo $nav."<br>";
$vars = explode("/",$nav);
print_r($vars);
echo "<br>";
for($i=0;$i<Count($vars);$i+=2){
$_GET["$vars[$i]"]=$vars[$i+1];
}
return $_GET;
}
mod_rewrite();
$year=$_GET["year"];//结果为'2006'
echo $year."<br>";
$action=$_GET["action"];//结果为'_add'
echo $action;
?>

<?php
//伪静态方法四

//利用server变量 取得PATH_INFO信息 该例中为 /1,100,8630.html 也就是执行脚本名后面的部分
if(@$path_info =$_SERVER["PATH_INFO"]){
//正则匹配一下参数if(preg_match("/\/(\d+),(\d+),(\d+)\.html/si",$path_info,$arr_path)){
$gid =intval($arr_path[1]); //取得值 1
$sid =intval($arr_path[2]); //取得值100
$softid =intval($arr_path[3]); //取得值8630
}else die("Path:Error!");
//相当于soft.php?gid=1&sid=100&softid=8630
}else die('Path:Nothing!');
?>

##########
#286、PHP防注入如何实现？
###
主要是为了防止恶意写入后台数据库
//防注入函数
function inject_check($sql_str){
$check=eregi('select|insert|update|delete|\'|\/\*|\*|\.\.\/|\.\/|union|into|load_file|outfile', $sql_str);
if($check){
echo "输入非法内容";
exit();
}else{
return $sql_str;
}
}
//接收传递参数后进行转换
$_GET[type]=inject_check($_GET[type]);
//之后再使用转换后的参数
##########
#287、URL重写是实现PHP伪静态
###
应该这样说才是,URL重写是实现PHP伪静态的方式之一,
具体如:
http://www.plframe.com/?x=1&y=2&z=3
换成
http://www.plframe.com/1-2-3.html
这种伪静态方式访问的话,其他最简单的方法是在网站根目录下面建一个.htaccess 文件，其内容如下:
<IfModule mod_rewrite.c>
RewriteEngine on
RewriteRule /([d]+)-([d]+)-([d]+).html /?x=$1&y=$2&z=$3 
</IfModule>

最后再APACHE的虚拟域名配置文件里面找到项目所用的域名设置项<VirtualHost></VirtualHost>，
在其中再找到<Directory></Directory>,将AllowOverride None 改成 AllowOverride All，
若没有<Directory></Directory>,则增加如下内容
<Directory 目录路径>
Options Indexes FollowSymLinks MultiViews
AllowOverride All
Order allow,deny
allow from all
DirectoryIndex index.php
</Directory> 在<VirtualHost></VirtualHost>中间重启APACHE即可.
你规则前面的 ^([0-9]*)-[a-zA-Z0-9&-+._'"]*/ 是正表达式，这里面用()括起来的东西，在后面依次使用$1、$2来引用，叫做匹配项。

在你的这个例子中，$1对于的就是([0-9]*)，就是前面的所有数字
RewriteRule ^id/([0-9]+)$ article.php?id=$1

前面的 你自己可以随便搞

下面是我站的 /还有提醒一下！＠linux 下的 规则有所不同

RewriteEngine On
RewriteBase /
RewriteRule ^type/(.*)/order/([0-9]+)$ index_c.php?type=$1&order=$2
RewriteRule ^type/(.*)/order/([0-9]+)/page/([0-9]+)$ index_c.php?type=$1&order=$2&page=$3

RewriteRule ^user/([0-9]+)$ index_c.php?uid=$1

RewriteRule ^user/([0-9]+)/type/(.*)/page/([0-9]+)$ index_c.php?uid=$1&type=$2&page=$3
RewriteRule ^user/([0-9]+)/type/(.*)$ index_c.php?uid=$1&type=$2

RewriteRule ^user/([0-9]+)/myclick/(.*)/page/([0-9]+)$ index_c.php?uid=$1&myclick=$2&page=$3
RewriteRule ^user/([0-9]+)/myclick/(.*)$ index_c.php?uid=$1&myclick=$2
RewriteRule ^user/([0-9]+)/page/([0-9]+)$ index_c.php?uid=$1&page=$2

RewriteRule ^re1d-([0-9]+)$ /top.php?itemid=$1
RewriteRule ^s=(.*)$ /search.php?s=$1

RewriteRule ^type/(.*)/page/([0-9]+)$ index_c.php?type=$1&page=$2
RewriteRule ^type/(.*)$ index_c.php?type=$1 [L]
现在的搜索引擎越来越对静态页面友好，以前不知道自己的服务器支不支持静态化，今天向空间商咨询后发现，其实自己的服务器是支持静态化的，于是在DZ论坛上下来个.htaccess文件修改了其中的一个代码，上传到我的linux服务器，到Discuz!论坛后台选择静态化选项，前台打开一看，呵呵 已经显示静态化了
下面是修改的.htaccess文件文件内容
# 将 RewriteEngine 模式打开
RewriteEngine On
# 修改以下语句中的 /discuz 为你的论坛目录地址，如果程序放在根目录中，请将 /discuz 修改为 /
RewriteBase /
# Rewrite 系统规则请勿修改
RewriteRule ^archiver/((fid|tid)-[w-]+.html)$ archiver/index.php?$1
RewriteRule ^forum-([0-9]+)-([0-9]+).html$ forumdisplay.php?fid=$1&page=$2
RewriteRule ^thread-([0-9]+)-([0-9]+)-([0-9]+).html$ viewthread.php?tid=$1&extra=page%3D$3&page=$2
RewriteRule ^space-(username|uid)-(.+).html$ space.php?$1=$2
RewriteRule ^tag-(.+).html$ tag.php?name=$1
如果你有需要将这段代码保存为.htaccess文件上传到空间即可，再到后台更改选择静态化就OK了.

##########
#288、HTTP协议中几个状态码的含义:503 500 401 403 404 200 301 302。。。
###
200 : 请求成功，请求的数据随之返回。
301 : 永久性重定向。
302 : 暂时行重定向。
401 : 当前请求需要用户验证。
403 : 服务器拒绝执行请求，即没有权限。
404 : 请求失败，请求的数据在服务器上未发现。
500 : 服务器错误。一般服务器端程序执行错误。
503 : 服务器临时维护或过载。这个状态时临时性的。
##########
#289、PHP/Mysql中几个版本的进化史，比如mysql4.0到4.1，PHP 4.x到5.1的重大改进等等。undone
###
##########
#291、一些编译php时的configure 参数
###
–prefix=/usr/local/php    php安装目录
–with-config-file-path=/usr/local/php/etc 指定php.ini位置
–with-mysql=/usr/local/mysql mysql安装目录，对mysql的支持
–with-mysqli=/usr/local/mysql/bin/mysql_config mysqli文件目录,优化支持
–enable-safe-mode 打开安全模式
–enable-ftp 打开ftp的支持
–enable-zip 打开对zip的支持
–with-bz2 打开对bz2文件的支持
–with-jpeg-dir 打开对jpeg图片的支持
–with-png-dir 打开对png图片的支持
–with-freetype-dir 打开对freetype字体库的支持
–without-iconv关闭iconv函数，种字符集间的转换
–with-libxml-dir 打开libxml2库的支持
–with-xmlrpc 打开xml-rpc的c语言
–with-zlib-dir 打开zlib库的支持
–with-gd 打开gd库的支持
更多可以使用 ./configure help 查看
 
##########
#292、 向php传入参数的三种方法。
###
/*
     * 方法一 使用$argc $argv
     *  在命令行下运行 /usr/local/php/bin/php ./getopt.php -f 123 -g 456
     */
//    if ($argc > 1){
//        print_r($argv);
//    }

    /**
     * 运行结果
     *
     sync@MySUSE11:~/web_app/channel3/interface> /usr/local/php/bin/php ./getopt.php -f 123 -g 456
        Array
        (
            [0] => ./getopt.php
            [1] => -f
            [2] => 123
            [3] => -g
            [4] => 456
        )
     */
 

     /*
     * 方法二 使用getopt函数（）
     *  在命令行下运行 /usr/local/php/bin/php ./getopt.php -f 123 -g 456
     */

//    $options = "f:g:";
//    $opts = getopt( $options );
//    print_r($opts);

    /**
     * 运行结果
     *
     sync@MySUSE11:~/web_app/channel3/interface> /usr/local/php/bin/php ./getopt.php -f 123 -g 456
        Array
        (
            [f] => 123
            [g] => 456
        )
     */

    /*
     * 方法三 提示用户输入，然后获取输入的参数。有点像C语言
     *  在命令行下运行 /usr/local/php/bin/php ./getopt.php
     */
    fwrite(STDOUT, "Enter your name: ");
    $name = trim(fgets(STDIN));
    fwrite(STDOUT, "Hello, $name!");
    /**
     * 运行结果
     *
     sync@MySUSE11:~/web_app/channel3/interface> /usr/local/php/bin/php ./getopt.php
     Enter your name: francis
     Hello, francis!
     */
 
##########
#293、 error_reporting 等调试函数使用
###
error_reporting() 函数能够在运行时设置php.ini中 error_reporting 指令。
所以可以再程序中随时调节显示的错误级别。
使用此函数时 display_errors必须是打开状态。
##########
#294、 posix和perl标准的正则表达式区别？
###
定界符，posix没有perl有（任意非数字、字母或反斜线”\”的字符）
修正符，posix没有perl有
[]之外不一致的元字符，”.”在posix中匹配除了换行外的字符，perl中匹配任意字符
[]之内不一致的元字符，”-”在posix中[a-c-e]会抛出错误，perl中[a-c-e]等价于[a-e]

##########
#295、Safe_mode 打开后哪些地方受限.
###
启动safe_mode，会对许多PHP函数进行限制，特别是和系统相关的文件打开、命令执行等函数.
所有操作文件的函数将只能操作与脚本UID相同的文件.

##########
#296、写代码来解决多进程/线程同时读写一个文件的问题。
###
PHP是不支持多线程的，可以使用php的flock加锁函数实现。
$fp = fopen("/tmp/lock.txt", "w+");
if (flock($fp, LOCK_EX)) { // 进行排它型锁定
fwrite($fp, "Write something here\n");
flock($fp, LOCK_UN); // 释放锁定
} else {
echo "Couldn't lock the file !";
}
fclose($fp);

##########
#297、写一段上传文件的代码。
###
upload.html
<form enctype="multipart/form-data" method="POST" action="upload.php">
Send this file: <input name="name" type="file" />
<input type="submit" value="Send File" />
</form>
upload.php
$uploads_dir = '/uploads';
foreach ($_FILES["error"] as $key => $error) {
if ($error == UPLOAD_ERR_OK) {
$tmp_name = $_FILES["tmp_name"][$key];
$name = $_FILES["name"][$key];
move_uploaded_file($tmp_name, "$uploads_dir/$name");
}
}
 

##########
#298、Mysql 的存储引擎,myisam和innodb的区别。
###
1） MyISAM类型不支持事务处理等高级处理，而InnoDB类型支持.
2）MyISAM类型的表强调的是性能，其执行速度比InnoDB类型更快.
3）InnoDB不支持FULLTEXT类型的索引.
4）InnoDB 中不保存表的具体行数，也就是说，
执行select count(*) from table时，InnoDB要扫描一遍整个表来计算有多少行，
但是MyISAM只要简单的读出保存好的行数即可.
5）对于AUTO_INCREMENT类型的字段，InnoDB中必须包含只有该字段的索引，但是在MyISAM表中，可以和其他字段一起建立联合索引。
6）DELETE FROM table时，InnoDB不会重新建立表，而是一行一行的删除。
7） LOAD TABLE FROM MASTER操作对InnoDB是不起作用的，解决方法是首先把InnoDB表改成MyISAM表，导入数据后再改成InnoDB表，
但是对于使用的额外的InnoDB特性(例如外键)的表不适用.
8）MyISAM支持表锁，InnoDB支持行锁。
##########
#299、介绍xdebug,apc,eAccelerator,Xcache,Zend opt的使用经验。undone
###
xdebug是php调试工具
apc是缓存工具
##########
#300、MySQL数据库作发布系统的存储，一天五万条以上的增量，预计运维三年,怎么优化？
###
1）设计良好的数据库结构，允许部分数据冗余，尽量避免join查询，提高效率。
2）选择合适的表字段数据类型和存储引擎，适当的添加索引。
3）mysql库主从读写分离。
4）找规律分表，减少单表中的数据量提高查询速度。
5）添加缓存机制，比如memcached，apc等。
6）不经常改动的页面，生成静态页面。
7）书写高效率的SQL。比如 SELECT * FROM TABEL 改为 SELECT field_1, field_2, field_3 FROM TABLE.

##########
#301、写出一种排序算法（原理），并说出优化它的方法。
###
快速排序，随机化
function swap(&$n, &$m) {
    $temp = $n;
    $n = $m;
    $m = $temp;
}

function partition(&$a, $p, $r) {
    $x = $a[$r];
    $i = $p - 1;
    for ($j = $p; $j < $r; $j++) {
        if ($a[$j] < $x) {
            $i++;
            swap($a[$i], $a[$j]);
        }
    }
    $i++;
    swap($a[$i], $a[$r]);
    //echo '<pre>'; var_dump($a); echo '</pre>';
    return $i;
}

function quick_sort(&$a, $p, $r) {
    if ($p < $r) {
        $q = partition($a, $p, $r);
        quick_sort($a, $p, $q - 1);
        quick_sort($a, $q + 1, $r);
    }
}

function randomized_partition(&$a, $p, $r) {
    $i = rand($p, $r);
    swap($a[$r], $a[$i]);
    return partition($a, $p, $r);
}

function randomized_quick_sort(&$a, $p, $r) {
    if ($p < $r) {
        $q = randomized_partition($a, $p, $r);
        //echo '<br/> q = ', $q;
        randomized_quick_sort($a, $p, $q - 1);
        randomized_quick_sort($a, $q + 1, $r);
    }
}
##########
#302、 请简单阐述您最得意的开发之作。undone
###

##########
#303、对于大流量的网站,您采用什么样的方法来解决各页面访问量统计问题？
###
统一布码监测
##########
#305、测试php性能和mysql数据库性能的工具,和找出瓶颈的方法？undone
###

##########
#306、 介绍一下常见的SSO(单点登陆)方案(比如dedecms整合discuz的passport)的原理。undone
###

##########
#307、您写过的PHP框架的特点，主要解决什么问题，与其他框架的不同点。undone
###

##########
#308、大型的论坛/新闻文章系统/SNS网站在性能优化上有什么区别?undone
###

##########
#309、相册类应用:要求在浏览器中能同时选中并上传多个文件，图片要求能剪裁，压缩包在服务器端解压。能上传单个达50M的文件。上传过程中有进度条显示。每个图片能生成四种大小缩略图，视频文件要转成flv供flash播放。叙述要涉及的各类开源软件和简单用途。？undone
###

##########
#310、一群猴子排成一圈，按1，2，…，n依次编号。然后从第1只开始数，数到第m只,把它踢出圈，从它后面再开始数，再数到第m只，在把它踢出去…，如此不停的进行下去，直到最后只剩下一只猴子为止，那只猴子就叫做大王。要求编程模拟此过程，输入m、n, 输出最后那个大王的编号。用程序模拟该过程。
###
/*
 * 约瑟夫环
 */
function josehpus1($n, $m) {
    $a = array();
    for ($i = 1; $i <= $n; $i++) {
        $a[] = $i;
    }
    $i = 1;
    while (count($a) > 1) {
        $x = array_shift($a);
        if ($i % $m != 0) {
            $a[] = $x;
        } else {
            echo '<br/>- ' . $x . ' = ';
            print_r($a);
        }
        $i++;
    }
    return $a[0];
}

function josehpus2($n, $m) {
    $s = 0;
    for ($i = 2; $i <= $n; $i ++) {
        $s = ($s + $m) % $i;
    }
    return $s + 1;
}

echo josehpus1(10, 7);
echo '<br/>';
echo josehpus2(10, 7);
##########
#311、linux下查看当前系统负载信息的一些方法。Undone
###
w，Uptime	查看系统运行时间、用户、负载
Vmstat	
Top	查看系统整体状态
##########
#313、 ssh 安全增强方法;密码方式和rsa key 方式的配置。undone
###

##########
#314、 rpm/apt/yum/ports 装包，查询，删除的基本命令。
###
安装
rpm -ivh package.rpm
apt-get install package
yum install package
删除
rpm -e package
apt-get remove package
yum remove package
查询
rpm –q string
apt-cache search string
yum search string

##########
#315、Makefile的基本格式，gcc 编译，连接的命令,-O0 和-O3区别。undone
###

##########
#316、 gdb,strace,valgrind的基本使用.undone
###

##########
#318、javascript中的prototype。
###
原型链，用于实现继承。
方法一：
var a = {
  x: 10,
  calculate: function (z) {
    return this.x + this.y + z
  }
};

var b = {
  y: 20,
  __proto__: a
};

var c = {
  y: 30,
  __proto__: a
};

// call the inherited method
b.calculate(30); // 60
c.calculate(40); // 80
方法二：
function a() {
    this.x = 1;
    a.prototype.add = function(){
        return this.x + 2; 
    }
}

var obj1 = new a();
var obj2 = new a();
##########
#319、javascript中this对象的作用域。
###
This是执行上下文环境的一个属性，而不是某个变量对象的属性。

##########
#320、IE和firefox事件冒泡的不同。undone
###
##########
#321、什么是怪异模式,标准模式，近标准模式。undone
###
##########
#322、DTD的定义？
###
文档类型定义
##########
#323、IE/firefox常用hack？
###

.content .test {
    width: 200px;
    height: 200px;
    background: #f60; /*all*/
    background: #06f9; /*IE*/
###
    *background: #666; /*IE6,7*/
###
    _background: #ccc; /*IE6*/
}
    
/* webkit and opera */
@media all and (min-width:0){
    .content .test {
        background: #0f0;
###
    }
}
    
/* webkit */
@media screen and (-webkit-min-device-pixel-ratio:0) {
    .content .test {
        background: #ff0;
    }
}
    
/*FireFox*/
@-moz-document url-prefix() {
    .content .test {
        background: #f0f;
    }
}
    
/*IE9+*/
@media all and (min-width:0) {
    .content .test{
        background: #f009;
        }
}
    
/*IE10+*/
@media screen and (-ms-high-contrast: active), (-ms-high-contrast: none) {
    .content .test {
        background: #0ff;
###
    }
}
##########
#324、firefox,IE下的前端js/css调试工具。
###
Console、WebDeveloper
##########
#325、面试官看过你的简历，会问一些你做的项目的用户量、pv、吞吐量、相关难点和解决方法等。undone
###
##########
#326、数据库设计经验,为什么进行分表? 分库? undone
###
   一般多少数据量开始分表? 分库? 分库分表的目的? 什么是数据库垂直拆分? 水平拆分? 分区等等？可以举例说明
##########
#327、web开发方面会遇到哪些缓存? 分别如何优化? undone
###
##########
#328、给你256M的内存,对10G的文件进行排序(文件每行1个数字),如何实现？   对10G的文件进行查找如何实现？ 统计10G文件每个关键字出现的次数如何实现？
###
undone
300万个字符串最多（假设没有重复，都是最大长度）占用内存3M*1K/4=0.75G。所以可以将所有字符串都存放在内存中进行处理。
　　可以使用key为字符串（事实上是字符串的hash值），值为字符串出现次数的hash来统计每个每个字符串出现的次数。并用一个长度为10的数组/链表来存储目前出现次数最多的10个字符串。
　　这样空间和时间的复杂度都是O(n)。
##########
#329、假如你现在是12306火车订票的设计师,你该如何设计满足全国人民订票? undone
###
##########
#330、假如有1亿用户的访问量,你的服务器架构是怎样的? 用户信息的存储方案如何设计? undone
###
##########
#331、如果你是技术组长,所带团队任务进度无法完成你该如何解决? undone
###
   如果在进度排满的前提下插入任务,你该如何保证总进度不延期? undone
   如果有的工程师今天预定任务没有完成,你该如何解决? undone
##########
#332、从你的经验方面谈一下如何构建高性能web站点? 需要哪些环节? 步骤? 每个步骤需要注意什么如何优化等? undone
###
##########
#333、 如何处理多服务器共享session? Undone
###
Mysql、memcache
##########
#334、 一个10G的表,你用php程序统计某个字段出现的次数,思路是? undone
###
##########
#335、会告诉你一个nginx日志例子,用你认为最佳的编程语言统计一下http响应时间超过1秒的前10个url? undone
###
##########
#336、给你一个mysql配置文件,用你认为最佳的编程语言解析该文件? undone
###
##########
#337、给你一个url,在nginx配置一下rewrite指定到某个具体路径? undone
###
##########
#338、一个php文件的解释过程是? 一般加速php有哪些?  提高php整体性能会用到哪些技术? undone
###
1）解析过程
解析命令行参数，初始化环境，编译执行PHP代码，zend引擎，清理环境并返回退出
2）加速
PHP加速软件是一种将PHP程式码编译之后所产生的bytecode暂存在共享内存内供重复使用，以提升执行效率的插件软件。
如：Zend Optimizer、APC、XCache
##########
#339、chrome号称为多线程的,所以多线程和多进程的区别为? undone
###
进程是资源分配的最小单位，线程是CPU调度的最小单位
线程和进程的区别在于,子进程和父进程有不同的代码和数据空间,而多个线程则共享数据空间,每个线程有自己的执行堆栈和程序计数器为其执行上下文.多线程主要是为了节约CPU时间,发挥利用,根据具体情况而定. 线程的运行中需要使用计算机的内存资源和CPU。340、 php在2011年底出现hash碰撞,hash碰撞原理为? 如何进行修复?
PHP是使用单链表存储碰撞的数据，因此实际上PHP哈希表的平均查找复杂度为O(L)，其中L为桶链表的平均长度；而最坏复杂度为O(N)，此时所有数据全部碰撞，哈希表退化成单链表。
哈希表碰撞攻击就是通过精心构造数据，使得所有数据全部碰撞，人为将哈希表变成一个退化的单链表，此时哈希表各种操作的时间均提升了一个数量级，因此会消耗大量CPU资源，导致系统无法快速响应请求，从而达到拒绝服务攻击（DoS）的目的。
攻击者只要构造一个含有大量碰撞key的post请求，就可以达到攻击的目的。具体做法不再演示。
在>=PHP5.3.9的版本中增加了一个配置项max_input_vars，用于标识一次http请求最大接收的参数个数，默认为1000。
理论上，只要PHP代码中某处构造Array的数据依赖于外部输入，则都可能造成这个问题，因此彻底的解决方案要从Zend底层HashTable的实现动手。一般来说有两种方式，一是限制每个桶链表的最长长度；二是使用其它数据结构如红黑树取代链表组织碰撞哈希（并不解决哈希碰撞，只是减轻攻击影响，将N个数据的操作时间从O(N^2)降至O(NlogN)，代价是普通情况下接近O(1)的操作均变为O(logN)）。
##########
#341、web不安全因素有哪些? 分别如何防范? undone
###
对于以往安全事故的分析表明，大多数安全问题都属于下面三种类型之一：
服务器向公众提供了不应该提供的服务。
服务器把本应私有的数据放到了可公开访问的区域。
服务器信赖了来自不可信赖数据源的数据。
##########
#342、假如两个单链表相交,写一个最优算法计算交点位置,说思路也可以? undone
###
##########
#343、nginx负载均衡有哪些? 如果其中一台服务器挂掉,报警机制如何实现? undone
###
##########
#344、不优化前提下,apache一般最大连接数为? nginx一般最大连接数为? mysql 每秒insert ? select ? update ? delete? undone
###
apache默认最大连接数256，nginx默认是1024
##########
#345、mysql 数据类型有哪些 ? 分别占用多少存储空间 ? undone
###
##########
#346、nginx设置缓存js、css、图片等信息,缓存的实现原理是? undone
###
##########
#347、如何提高缓存命中率? 如何对缓存进行颗粒化? undone
###
##########
#348、php的内存回收机制是? undone
###
在PHP中，没有任何变量指向这个对象时，这个对象就成为垃圾。PHP会将其在内存中销毁；这是PHP的GC垃圾处理机制，防止内存溢出。
当一个PHP线程结束时，当前占用的所有内存空间都会被销毁，当前程序中所有对象同时被销毁。GC进程一般都跟着每起一个SESSION而开始运行的.gc目的是为了在session文件过期以后自动销毁删除这些文件.
__destruct() 析构函数，是在垃圾对象被回收时执行。 
unset 销毁的是指向对象的变量，而不是这个对象。
<?php
gc_enable(); // Enable Garbage Collector
var_dump(gc_enabled()); // true
var_dump(gc_collect_cycles()); // # of elements cleaned up
gc_disable(); // Disable Garbage Collector
?>

##########
#349、linux监视一个日志文件a.log 的最新内容?
###
tail –f a.log查看文件最后10行，动态显示。
##########
#350、查看当前服务器的HTTP连接有哪些？
###
假设Apache Httpd
ps –le | grep httpd 说明。。
pgrep httpd
netstat –an | grep 80
##########
#351、说说Linux下的find命令和grep命令的区别？
###
Find查找文件或目录
Grep 在文件内容中/输出结果中查找字符串
##########
#352、如何实现每天0点钟重新启动服务器? 
###
Crontab命令格式：crontab –l/-i/-r/-e 脚本/命令
-l	显示用户crontab内容
-I	删除用户crontab文件前提示
-r	删除用户的crontab文件
-e	编辑用户的crontab文件
时间段含义：
依次是：分钟（0-59）	小时（0-23）	日期（1-31）	月份（1-12）	星期（0-6）
Crontab –e
0 0 * * * /sbin/reboot 应该写绝对路径
##########
#353、请写出5个常用的unix操作命令?
###
Ls cp touch mkdir rm cat kill ps
##########
#354、rm -rf * 是什么意思，其中 f 有什么作用?
###
–r表示递归（删除目录），f强制（可以不提示删除），* 通配符
删除当前目录下所有文件
##########
#355、Linux压缩文件和解压文件的命令?
###
Gzip  tar  bzip  zip
Gunzip  tar  bunzip  unzip
##########
#356、Linux的目录进行遍历，编写shell脚本?
###
Ls –R
Tree 以树状结构显示目录
##########
#357、apache默认使用进程管理还是线程管理？如何判断并设置最大连接数？
###
使用进程管理
startServers
maxClients 设置最大连接数
##########
#358、当前目录下有一个文件为 showme.sh , 如何修改文件，将其指定为使用 /bin/bash 运行，如何修改其权限为所有用户可读写，所有用户可执行?
###
指定用哪个shell来解析，在文件头加shell路径
#!/bin/bash
修改文件权限
Chmod 777 showme.sh
##########
#359、当前目录下有一个文件为 showme.sh,如何修改其所有人为root?
###
Chown root showme.sh
##########
#360、在linux 请写出一种自动定时备份某一个文件的方法和具体实施流程，要求每天凌晨3 点的时候备份一次。Undone
###
Crontab –e
0 3 * * * 
以某个命令为例
Cp –p
Tar
Scp

说明：每个命令要写绝对路径、错误日志输出 2>>、时间戳、完全备份和增量备份
##########
#361、crond后台常驻程序（daemon）用于：D
###
A．负责文件在网络中的共享
B．管理打印子系统Manages theprinting subsystem
C．跟踪管理系统信息和错误
D．管理系统日常任务的调度（scheduing）

##########
#362、怎么了解您在当前目录下还有多大空间？C  正确答案du –s .
###
A．Use df
B．Use du /
C．Use du.
D．Use df.
##########
#205、有一个备份程序mybackup,需要在周一至周五下午一点和晚上八点各运行次，下面哪一条crontab的项可以完成这项工作？B
###
A．0 13,20 * * 1,5 mybackup
B．0 13,20 * * 1,2,3,4,5, mybackup
C．*13,20 * *1,2,3,4,5, mybackup
D．0 13,20 1,5 * *mybackup
##########
#280、下面哪条命令可以把f1.txt复制为f2.txt？A
###
A．cp f1.txt|f2.txt
B．cat f1.txt|f2.txt
C．cat f1.txt|f2.txt
B．copy f1.txt|f2.txt
##########
#340、 使用命令可以查看Linux的启动信息？B
###
A．mesg –d
B．demesg
C．cat /etc/mesg
D．cat /var/mesg


Linux=L
Apache=A
Mysql=M
Php=P
HTML=H
Javascript =J

##########
#36、利用php图片函数如何获取图片的大小、类型、宽度和高度？
###
Exif_imagetype()，获取图片类型。
Getimagesize()，获取图片大小。
Imagesx()，获取图片宽度。
Imagesy()，获取图片高度。
##########
#40、如何备份mysql表，如何恢复？
###
1）mysqldump
备份：mysqldump 参数 dbname > dbname.sql
恢复：mysql dbname < dbname.sql 或 source dbname.sql
2）SQL语法
备份：BACKUP TABLE tbl_name TO ‘/tmp/db_name/’ 
或SELECT * INTO OUTFILE ‘/tmp/db_name/tbl_name.txt’ FROM tbl_name
恢复：RESTORE TABLE FROM ‘/tmp/db_name/’
或LOAD DATA INFILE ‘/tmp/db_name/tbl_name.txt’ INTO TABLE tbl_name
##########
#51、有什么工具可以画mysql的E-R图？
###
Case studio
Smart Draw
##########
#58、存储过程、触发器、索引有什么好处？
###
存储过程：可复用、提高性能，只在创造时进行编译，以后每次执行不用重新编译，而一般SQL都是每次执行重新编译。
触发器：是一种特殊的存储过程，是通过事件进行触发而执行的。
索引：查询速度快
##########
#65、mysql如何使用grant和revoke命令？
###
分配和回收权限。
语法：
grant 权限1,权限2,…权限n on 数据库名称.表名称 to 用户名@用户地址 identified by ‘连接口令’;
权限1,权限2,…权限n代表select,insert,update,delete,create,drop,index,alter,grant,references,reload,shutdown,process,file等14个权限。
REVOKE privileges ON 数据库名[.表名] FROM user_name 

例如：
grant select,insert,update,delete on test.user to mql@localhost identified by ‘123456′;
REVOKE all on books.* from Bob; 
##########
#73、什么是垃圾回收？默认时间？刷新时间？undone
###
垃圾回收在php中是自动化的。
##########
#83、php如何获知用户读取了邮件？
###
$email_header .= "Disposition-Notification-To: $from\r\n"; 
##########
#85、如何判断用户退出？何时空闲？
###
在加载页面时，通过检查session变量是否存在可以判断用户登录状态。默认情况下session在浏览器关闭时过期，可以在php.ini中修改过期时间，如要改成关闭浏览器后5分钟，则
session.cookie_lifetime = 300
session.gc_maxlifetime = 300
，重启apache。

##########
#94、php主要的安全漏洞是什么？如何预防？undone
###
漏洞：
1）命令注入(Command Injection)
2）eval注入(Eval Injection)
3）客户端脚本攻击(Script Insertion)
4）跨网站脚本攻击(Cross Site Scripting, XSS)
5）SQL注入攻击(SQL injection)
6）跨网站请求伪造攻击(Cross Site Request Forgeries, CSRF)
7）Session 会话劫持(Session Hijacking)
8）Session 固定攻击(Session Fixation)
9）HTTP响应拆分攻击(HTTP Response Splitting)
10）文件上传漏洞(File Upload Attack)
11）目录穿越漏洞(Directory Traversal)
12）远程文件包含攻击(Remote Inclusion)
13）动态函数注入攻击(Dynamic Variable Evaluation)
14）URL攻击(URL attack)
15）表单提交欺骗攻击(Spoofed Form Submissions)
16）HTTP请求欺骗攻击(Spoofed HTTP Requests)
预防：
1）在仔细检查用户输入前，不要include、require甚至打开一个用户输入的文件。
2）注意不要轻易在用户输入值上使用eval()函数，避免执行到危险命令。
3）不要轻易使用register_globals = ON，它的设计目的是使php更简单，但也会带来更多安全漏洞。
4）永远不要执行未转义的查询。
5）为保护区域，使用session或每次验证的登录
6）如果不想文件被看见，把文件加上.php后缀

##########
#97、什么是框架？工作原理？有什么优点？
###
框架有助于减轻网页开发时共通性活动的工作负荷，例如许多框架提供数据库访问接口、标准样板以及会话管理等，可提升代码的可再用性。

##########
#101、写出Zend框架的目录结构，简单说明目录作用？
###
|--application			应用目录
|--controllers		控制器目录
		|--models			模型目录
		|--views			视图目录
		|--config			配置文件目录
	|--library				通用类目录
		|--zend				zend类
		|--smarty			smarty模板引擎
	|--www					文档根目录
		|--images			图片目录
		|--css				样式表目录
		|--js				Javascript目录
	|--tmp					临时文件目录
##########
#110、写出下列代码的数据结果。 undone
###
$date='08/26/2003';
print ereg_replace(“([0-9]+)/([0-9]+)/([0-9]+)”,2/1/3,$date);
没有输出结果

##########
#116、如何设计或配置Mysql，才能达到高效使用的目的。
###
1）数据库设计方面，设计结构良好的数据库，允许部分数据冗余。
	选取最适用的字段属性，尽可能把字段设置为NOTNULL，这样在查询的时候，数据库不用去比较NULL值。
2）系统架构设计方面，表散列，把海量数据散列到几个不同的表里面，集群，数据库查询和写入分开。
	写高效sql语句，以提高效率。
	使用连接(join)来代替子查询
	使用联合(union)来代替手动创建的临时表
	所得皆必须，只从数据库取必须的数据。
	必要的时候用不同的存储引擎，比如Innodb可以减少死锁，HEAP可以提高一个数量级的查询速度。
	使用事务
	使用外键
	使用索引

##########
#117、如何进行防SQL注入？
###
1）过滤掉一些常见的数据库操作关键字：select,insert,update,delete,and,*等
或者通过系统函数：addslashes(需要被过滤的内容)来进行过滤。
2）在PHP配置文件中
Register_globals=off;设置为关闭状态 //作用将注册全局变量关闭。
比如：接收POST表单的值使用$_POST['user'],如果将register_globals=on;直接使用$user可以接收表单的值。
 3）SQL语句书写的时候尽量不要省略小引号(tab键上面那个)和单引号
 4）提高数据库命名技巧，对于一些重要的字段根据程序的特点命名，取不易被猜到的
 5）对于常用的方法加以封装，避免直接暴漏SQL语句
 6）开启PHP安全模式
Safe_mode=on;
 7）打开magic_quotes_gpc来防止SQL注入
Magic_quotes_gpc=off;默认是关闭的，它打开后将自动把用户提交的sql语句的查询进行转换，把'转为\'，这对防止sql注入有重大作用。
 8）控制错误信息
关闭错误提示信息，将错误信息写到系统日志。

##########
#118、用PHP写出一个安全的用户登录系统需要注意哪些方面？
###
1）密码要进行加密，如MD5()。
2）登录表单的名称不要跟数据库字段一样，以免暴露表字段。
3）用户表的表名、字段名、密码尽量用不容易被猜到的。
4）要使用验证码验证登陆，以防止暴力破解。
5）验证提交的数据是不是来自本网站。
6）登录后台处理代码数据库部分使用预处理，做好过滤，防止sql注入。

##########
#119、使用过哪些PHP框架？试描述其优劣点。
###
Thinkphp
优点：功能比较全面，配置相对比较简单，操作相对比较简单，有很多使用示例程序。
缺点：提供的操作方法太多，新手不知如何选择，文档不够全面。
Yii
	优点：功能强大、有代码自动生成功能
	缺点：中文资料欠缺，上手困难。
brophp
优点：轻量级学习型框架，配置简单，操作简单，容易上手，提供了比较全面的文档。
缺点：功能少

   
##########
#141、SESSION 与 COOKIE的区别是什么，请从协议，产生的原因与作用说明?
###
	HTTP是无状态协议，不能区分用户是从同一个网站上来的，同一个用户请求的不同页面不能看作是一同一个用户，为了解决这个问题，SESSION和COOKIE诞生了，他们都可以用来保存用户数据。
SESSION保存在服务器端，COOKIE保存在客户端。
1）cookie数据存放在客户的浏览器上，session数据放在服务器上。
2）cookie不是很安全，别人可以分析存放在本地的COOKIE并进行COOKIE欺骗
   考虑到安全应当使用session。
3）session会在一定时间内保存在服务器上。当访问增多，会比较占用你服务器的性能
   考虑到减轻服务器性能方面，应当使用COOKIE。
4）单个cookie保存的数据不能超过4K，很多浏览器都限制一个站点最多保存20个cookie。

##########
#143、Linux 下建立压缩包，解压缩包的命令。
###
	压缩：gzip、tar –cvfz、zip、bzip2
	解压：gunzip、tar –zxvf、unzip、bunzip2

##########
#154、在数据库test中的一个表student，字段是name，class，score。分别代表姓名、所在班级，分数。
###
   1) 查出每个班级中的学生，按照成绩降序排序;
   2) 查出每个班的及格人数和不及格人数，格式为：class、及格人数、不及格人数；
   3) 用PHP写入连接数据库("localhost","msuser","mspass")、执行以上SQL、显示结果、判断错误、关闭数据库的过程；

$mysqli=new mysqli(‘localhost’,’msuser’,’mspass’,’test’);
$sql1=’SELECT * FROM sdudent ORDER BY score DESC’;
$sql2= SELECT a.class 班级,a.num 及格人数,b.num 不及格人数 FROM (SELECT class,COUNT(id) AS num FROM stu WHERE score>=60 GROUP BY class) a,(SELECT class,COUNT(id) AS num FROM stu WHERE score<60 GROUP BY class) b WHERE a.class=b.class;

$result1=$mysqli->query($sql1);
If($result1){
	Print_r($result1);
}else{
	Echo ‘查询成绩失败！’;
}
$result2=$mysqli->query($sql2);
If($result2){
	While($row=$result2->fetch_assoc()){
			Echo $row[“class”].’班及格人数:’.$row[“及格人数”].’不及格人数’:$row[“不及格人数”];
}
}else{
	
}
$mysqli->close();


##########
#172、不断在文件hello.txt头部写入一行“Hello World”字符串，要求代码完整。Undone
###
$file=’hello.txt’;
$con=file_get_cotents($file);
While(1){
	File_put_contents($file,’Hello World\n’.$con)
}




##########
#177、通过PHP函数的方式对目录进行遍历，写出程序
###
function listDir($dir){
	if(is_dir($dir)){
		if ($dh = opendir($dir)){
			while(($file= readdir($dh)) !== false){
				if((is_dir($dir."/".$file)) && $file!="." && $file!=".."){
					echo "<b><font color='red'>文件夹：</font></b>",$file,"<br><hr>";
					listDir($dir."/".$file."/");
					echo '<hr>';
				}else{
					if($file!="." && $file!=".."){
						echo $file."<br>";
					}
				}
			}
			closedir($dh);
		}
	}
}

##########
#178、Linux的目录进行遍历，编写shell脚本?undone
###
#!/bin/sh  使用bash做为默认shell
 list_alldir(){
     for file in $1/*
     do
         if [ -d $file ]; then
             echo $file
             list_alldir $file    #在这里递归调用
         fi
     done
 }

 #下面是定义初始化路径
 if [ $# -gt 0 ]
 then
     list_alldir "$1"
 else
     list_alldir "."
 fi


##########
#180、数据库设计时，常遇到的性能瓶颈有哪些，常有的解决方案？
###
通常造成数据库瓶颈的原因是：
1）数据库系统本身性能不佳，例如你用桌面数据库Access 来做web应用的后台数据库 显然是不行的；
2）数据库结构设计不合理，导致不必要的、过多的数据库访问，这需要优化数据表结构设计，必要时引入Cache系统；
3）数据库连接池设置不当，为了提供数据库的服务能力，在有潜在并发访问数据库的情况下，我们会使用连接池技术，如果池的大小与实际需求不符，则会带来访问数据库时的排队等候。
4）程序实现适当，例如对 数据库连接长期占有，导致其它访问必须进行排队 

当然，即时没有以上的错误做法，当一个系统规模不断变大时，数据库系统也会成为瓶颈所在，但针对此业界有一些解决方法的，例如进行数据库水平/垂直分割、集群、缓存等等。


##########
#181、编写一个在线留言本，实现用户的在线留言功能，留言信息存储到数据库？undone
###
数据表字段：aid、author、title、content、posttime、edittime、ip
脚本：
index.php
留言列表、回复留言按钮、提交留言表单
action.php（业务处理脚本）
处理表单提交、增改留言数据表

##########
#182、通过JS创建一个当前窗口的子窗口，通过程序实现子窗口对父窗口的操作实例？
###
1）IE中使用方法：
父窗口调用子窗口：iframe_ID.iframe_document_object.object_attribute = attribute_value 
例子：onClick="iframe_text.myH1.innerText='http://www.pint.com';" 
子窗口调用父窗口：parent.parent_document_object.object_attribute = attribute_value 
例子：onclick="parent.myH1.innerText='http://www.pint.com';"
2）Firefox中使用方法：
上面在IE下没有问题，但在firefox下不正常。在firefox下，应该是如下调用方法：
父窗口调用子窗口：window.frames["iframe_ID"].document.getElementById("iframe_document_object"-).object_attribute = attribute_value 
例： window.frames["iframe_text"].document.getElementById("myH1").innerHTML= "http://hi.wonsoft.cn"; 
子窗口调用父窗口：parent.document.getElementById("parent_document_object").object_attribute = attribute_value 
例： parent.document.getElementById("myH1").innerHTML = "http://wonsoft.cn";

##########
#185、设定网站的用户数量在千万级，但是活跃用户的数量只有1%，如何通过优化数据库提高活跃用户的访问速度？
###
可以使用分表技术，将高活跃用户单独存到一个有同样字段但表名不同的表里，当用户登陆时首先查询这个表，如果不是高活跃用户再查询大表。

##########
#186、服务器在运行的过程中，随着用户访问数量的增长，如何通过优化，保证性能？如果数据库已经达到最优化，请设计出继续升级的解决方案？
###
1）确定当前的服务器的硬件设备能不能满足流量需求，如果满足不了就添加新的设备。
2）使用memcache缓存技术，将动态数据缓存到文件中，动态网页直接调用这些文件，而不必再访问数据库。
3）禁止外部盗链，图片、或文件盗链会给服务器带来大量的负载压力，因此可以通过refer来控制盗链，或者用apache来配置禁止盗链。
4）控制大文件的下载，大文件的下载对于非SCSI硬盘来说会占用大量资源，使得网站响应能力下降。
5）使用不同的主机分流主要流量，使得服务器均衡负载。
6）使用流量统计软件进行流量统计和分析，可以即时了解哪些地方耗费了大量的流量，哪些页面需要再进行优化。



##########
#195、对于大流量的网站,您采用什么样的方法来解决访问量问题?
###
确认服务器硬件是否足够支持当前的流量,数据库读写分离,优化数据表, 程序功能规则,禁止外部的盗链,控制大文件的下载,使用不同主机分流主要流量
##########
#197、优化MYSQL数据库的方法？
###
1）数据库设计方面,这是DBA和Architect的责任,设计结构良好的数据库,必要的时候,去正规化(英文是这个:denormalize,中文翻译成啥我不知道),允许部分数据冗余,避免JOIN操作,以提高查询效率 。
2）系统架构设计方面,表散列,把海量数据散列到几个不同的表里面。快慢表,快表只留最新数据,慢表是历史存档.集群,主服务器Read & write,从服务器read only,或者N台服务器,各机器互为Master 。
3）(1)和(2)超越PHP Programmer的要求了,会更好,不会没关系.检查有没有少加索引 
4）写高效的SQL语句,看看有没有写低效的SQL语句,比如生成笛卡尔积的全连接啊,大量的Group By和order by,没有limit等等.必要的时候,把数据库逻辑封装到DBMS端的存储过程里面，缓存查询结果,explain每一个sql语句 
5)所得皆必须,只从数据库取必需的数据,比如查询某篇文章的评论数,select count(*) ... where article_id = ? 就可以了,不要先select * ... where article_id = ?然后msql_num_rows. 
只传送必须的SQL语句,比如修改文章的时候,如果用户只修改了标题,那就update ... set title = ? where article_id = ?不要set content = ?(大文本) 
6）必要的时候用不同的存储引擎.比如InnoDB可以减少死锁.HEAP可以提高一个数量级的查询速度。
##########
#198、实现中文字串截取无乱码的方法？undone
###
function substr_for_utf8($sourcestr,$cutlength){
	$returnstr=”;
	$i=0;
	$n=0;
	$str_length=strlen($sourcestr);    //字符串的字节数
	while (($n<$cutlength) and ($i<=$str_length)){
		$temp_str=substr($sourcestr,$i,1);
		$ascnum=Ord($temp_str); //得到字符串中第$i位字符的ascii码
		if ($ascnum>=224) //如果ASCII位高与224，
		{
			$returnstr=$returnstr.substr($sourcestr,$i,3); //根据UTF-8编码规范，将3个连续的字符计为单个字符
			$i=$i+3; //实际Byte计为3
			$n++; //字串长度计1
		}
		elseif ($ascnum>=192)//如果ASCII位高与192，
		{
			$returnstr=$returnstr.substr($sourcestr,$i,2); //根据UTF-8编码规范，将2个连续的字符计为单个字符
			$i=$i+2; //实际Byte计为2
			$n++; //字串长度计1
		}
		elseif ($ascnum>=65 && $ascnum<=90) //如果是大写字母，
		{
			$returnstr=$returnstr.substr($sourcestr,$i,1);
			$i=$i+1; //实际的Byte数仍计1个
			$n++; //但考虑整体美观，大写字母计成一个高位字符
		}
		else //其他情况下，包括小写字母和半角标点符号，
		{
			$returnstr=$returnstr.substr($sourcestr,$i,1);
			$i=$i+1;    //实际的Byte数计1个
			$n=$n+0.5;    //小写字母和半角标点等与半个高位字符宽…
		}
	}

	if ($str_length>$cutlength){
		$returnstr = $returnstr . “…”;    //超过长度时在尾处加上省略号
	}

	return $returnstr;
}
##########
#202、简述如何得到当前执行脚本路径，包括所得到参数。
###
$_SERVER[“SCRIPT_NAME”]
__DIR__
basename(__file__);
##########
#204、写一个函数，算出两个文件的相对路径 　　
###
如 
$a = '/a/b/c/d/e.php'; 　　
$b = '/a/b/12/34/c.php'; 　　
计算出 $b 相对于 $a 的相对路径应该是 http://www.cnblogs.com/c/d将()添上
function getPath($a,$b){
	$m=strlen($a);
	for($i=1;$i<$m;$i++){
		$str=substr($a,0,-$i);
		$reg='/'.str_replace('/','\/',$str).'/';
		if(preg_match($reg,$b)){
			$not=str_replace($str,'',$a);
			$count=substr_count($not,'/');
			for($j=0;$j<$count;$j++){
				$path.='../';
			}
			$path.=str_replace($str,'',$b);
			return $path;	
		}	
	}
}
echo getPath($a,$b);
##########
#206、中文占用unicode码范围？
###
0080-07FF

##########
#216、对关系型数 据库而言，索引是相当重要的概念，请回答有关索引几个问题:
###
1）索引的目的是什么?
	建立索引的目的是加快对表中记录的查找或排序
2）索引对数据库系统的负面影响是什么?
一是增加了数据库的存储空间，二是在插入和修改时要花费较多的时间。
3）为数据表建立索引的原则有哪些?
表的主键、外键必须有索引；
数据量超过300 的表应该有索引；
经常与其他表进行连接的表，在连接字段上应该建立索引；
经常出现在where字句中的字段，特别是大表的字段，应该建立索引；
索引应该建立在选择性高的字段上；
频繁进行数据操作的表，不要建立太多索引；
删除无用的索引，避免对执行计划造成负面影响。

4）什么情况下不宜建立索引?
	数据表数据少和字段值重复太多,不适宜建立索引,不起到提速,反而会消耗大量内存。
##########
#223、了解XSS攻击吗? 如何防止 ?
###
XSS攻击：跨站脚本攻击，是一种经常出现在web应用的计算机安全漏洞，它允许web用户将代码植入到提供给其他用户使用的页面中。
XSS攻击的危害包括：盗取各类用户帐号，控制企业数据，盗窃企业重要资料，非法转账，强制发送电子邮件，网站挂马，控制受害者及其攻击其他网站。
##########
#225、一个字节占多少bit ? 一个IPv4地址占几个字节? 一个IPv6地址呢?undone
###
一个字节占8bit，一个IPV4占用30字节，一个IPV6占用46字节

##########
#230、 Warning: file_put_contents(): Permission denied in /website/index.php on line 4
###
对文件没有写权限，更改文件权限为777。
##########
#231、Warning: Cannot modify header information - headers already sent by (output started at /website/index.php:1) in /website/index.php  on line 3
###
setcookie、header、session函数前不能有输出。
##########
#232、 Warning:session_start(): open(/website/tmp/sess_47e067121facf033785f9a1cb16d243b,   O_RDWR) failed: No such file or directory (2) in /website/index.php on line  10 
###
没有找到文件或目录，检查文件是否存在
##########
#233、Parse error: syntax error, unexpected T_STRING in /website/index.php on line 18
###
	18行语法错误，检查语法
##########
#235、 windows平台, Apache Http Server启动失败, 排错思路是什么?
###
可能情况一：安装apache2的路径中不能含有中文，将中文都改成英文。
可能情况二：有其他服务占用80端口，修改端口。
可能情况三：配置文件修改错误，还原配置文件。
##########
#236、 你所知道的php数组相关的函数？
###
Array_rand、in_array、array_flip、array_values 、array_keys、sort、rsort、shuffle
Array_push、array_pop、array_shift、array_unshift、array_merge、range、array_pad
##########
#237、php读取文件内容的几种方法和函数？
###
Fread、file_get_contents、fgets、fgetc、file
##########
#238、以下程序，变量str什么值的情况下输入111? if( ! $str ) { echo 111; }
###
当$str为整数0、浮点型0.0、空字符串和字符串”0”、布尔值false、空数组、特殊类型NULL时
##########
#240、你所知道的设计模式有哪些？
###
单例、工厂、MVC、适配器、组合、观察者、命令、迭代器、代理、策略

##########
#241、说说你对SVN的了解？优缺点？ 
###
程序员开发的代码递交到版本服务器进行集中管理。
优点：代码进行集中管理，版本控制容易，操作比较简单，权限控制方便。
缺点：每个文件夹都带一个.svn的文件夹，不能随意修改服务器项目文件夹
##########
#243、PHP加速模式/扩展？ PHP调试模式/工具？
###
Zend Optimizer加速扩展
调试工具：xdebug
##########
#245、进入mysql管理命令行的命令？
###
Mysql –u root –ppass
Mysql –h localhost –u root –p123456
##########
#247、show create database mysql; 这个命令的作用？
###
查看mysql库建库语句
##########
#248、show create table user; 这个命令的作用？
###
查看user表的建表语句
##########
#251、show processlist; 这个命令的作用？
###
查看进程信息
##########
#252、 SHOW VARIABLES; 这个命令的作用？
###
查看系统变量
##########
#253、SHOW VARIABLES like '%conn%'; 这个命令的作用？
###
查看字段名含有conn的系统变量。
##########
#254、LEFT JOIN 写一个SQL语句？
###
SELECT a.username,p.content FROM user as a LEFT JOIN post as p ON a.id=p.uid WHERE a.id=3;
##########
#256、怎么找到数据库的配置文件路径？
###
my.conf/my.ini
##########
#257、简述Linux下安装PHP的过程？
###
安装软件之前先安装编译工具gcc、gcc-c++
拷贝源码包，解包解压缩
Cd /lamp/php进入php目录
./configure –prefix=/usr/local/php –with-config-file-path=/usr/local/php/etc指定安装目录和配置文件目录
Make 编译
Make install安装
##########
#258、简述Linux下安装Mysql的过程？
###
Groupadd mysql 添加一个用户组mysql
Useradd -g mysql mysql 添加一个mysql用户指定分组为mysql
Cd /lamp/mysql 进入mysql目录
./configure –prefix=/usr/local/mysql/ –with-extra-charsets=all
Make
Make all 
##########
#259、简述Linux下安装apache的过程？
###
Cd /lamp/httpd 进去apache软件目录
./configure –prefix=/usr/local/apache2/ –sysconfdir=/etc/httpd/ –with-included-apr
Make
Make all 
##########
#260、用javascript取得一个input的值？取得一个input的属性？
###
Document.getElementsByTagName(‘input’)[0];
Document.getElementsByTagName(‘input’)[0].type
##########
#262、 请您写一段ajax提交的js代码，或者写出ajax提交的过程逻辑。Undone
###
<script>
	Function sendAjax(){
		Var aj=’’;
		Try{
			Aj=new XMLHttpRequest();
}catch(e1){
	Try{
		Aj=new ActiveXObject(‘Msxml2.XMLHTTP’);
}catch(e2){
	Try{
		Aj=new ActiveXObject(‘Microsoft.XMLHTTP’);
}catch(e3){
	Aj=false;
}
}
}
Var str=’username=zhang&password=123’;
Var url=’http://localhost/ajax/re.php’;
Aj.open(‘post’,url);
Aj.onreadystatechange=function(){
	If(aj.readystate==4){
		If(aj.status==200){
			Callback(aj.response.text);
}
}
}
aj.setRequestHeader(‘Content-Type’,’application/x-www-forum-urlencoded’);
aj.send(str);
		function callback(data){
			alert(data);
}
}
</script>
过程逻辑；
1）创建ajax对象
2）打开服务器连接
3）判断请求状态
4）如果是post发送，需要设置请求头部信息
5）发送请求
6）处理响应
##########
#263、写出你认为语言中的高级函数
###
Imagecreate
Imagecolorallocate
Imagesetpixel
Imagettftext
Iconv
Mb_substr
Mysql_connect()
Mysql_select_db
Mysql_query
mysql_fetch_row
Mysql_close
##########
#264、简述Cookie的设置及获取过程。
###
只要用户的浏览器支持cookie功能，就可以使用php的setcookie函数来建立一个cookie。
Setcookie函数需要传三个必要参数,cookie识别名称、cookie值和cookie生存时间。还可以设置其他三个可选参数，分别是服务器端指定路径、所属服务器网址和是否通过 https连接。
使用$_COOKIE全局数组可以获取cookie信息。

##########
#265、写出Smarty模板引擎中你最常用的关键词
###
Assign
Display
Foreach
Section
Loop
Item
$smarty
Now
Const
get


##########
#266、如下user表结构
###
    
名称	类型	说明	备注
Uid	Int unsigned	主键	
Name	Varchar(20)		
Age	Tinyint unsigned		
需求：
1）增加一个字段性别sex，写出修改语句
Alter user ADD sex ENUM(‘1’,‘0’) NOT NULL DEFAULT ‘1’ AFTER  Age; 
2）查询出年龄介于20岁到30岁之间的用户
SELECT * FROM user WHERE age BETWEEN 20 AND 30;
3）如果是一个Web频繁访问的查询，上题的查询如何优化？
可以使用预处理，也可以将查询结果集缓存到memcache服务器。
##########
#267、$str[1]=’123456’;
###
$str[2]=’asassasasas’;
$str[1][2]=’abcdefgh’;
var_dump($str);
写出此程序运行结果
array(2) { [1]=> string(6) "12a456" [2]=> string(6) " asassasasas " }
##########
#268、memcache 是什么？使用过吗？， 有什么用? 请详细描述其操作过程。
###
memcache是一个高性能的分布式的内存对象缓存系统，通过在内存里维护一个统一的巨大的hash表，用来存储数据。
作用：它能够用来存储各种格式的数据，包括图像、视频、文件以及数据库检索的结果等。
操作过程：
Memcached.exe –d install
Memcache.exe –d start
telnet localhost(IP地址) 11211(端口号)
add one(名称) 1(标记) 300(有效时间) 10(字符串长度)
##########
#269、请写一个函数将1234567890转换成1,234,567,890 每3位用逗号隔开的形式。Undone
###
<?php      
$str1 = "1234567890";   
$new_str = preg_replace('/^(\d{1,3})((\d{3})+)$/','$1,$2',$str1);   
$new_str = preg_replace('/(?<=\d{3})(\d{3})/',',$1',$new_str);   
print $new_str."\n";   

第二种方法：echo number_format($str1);
?> 

##########
#272、找到当前目录下文件名含有lo.com.cn 中的php文件。
###
Find . –name *lo.com.cn*.php 
##########
#273、投票 vota实现
###
投票标题 varchar(255)
选项内容 varchar(255)
用户登录id vota_uid 
投票用户id vota_vid
投票时间 vota_time
投票总数 vota_total
1）创建数据库表结构 有没列举出的字段 自己补充，如vota_id（可以写出sql语句，也可以画图说明）
Create table vota(id int auto_increment primarykey,title varchar(255),content varchar(155));
2）有人刷恶意投票 请提供解决恶意刷票的方案 多种方案
用$_SERVER[‘REMOTE_ADDR’]判断，一个IP只能投票一次。
限制用户登录投票
验证码
3）现在有某几个热门的投票  服务器表示鸭梨很大 有什么给力的解决方案
采用读写分离

##########
#275、请说明如何优化mysql数据库
###
1）尽量使用缓存机制减少连接数据库的次数
2）通过sql语句的优化减少每次sql语句执行的时间
3）尽量精准的从数据库中获取内容，减少select * 。。。这样的语句

##########
#277、if($a==$b) print(“$a==$b”); else print(“$a!==$b”);写出输出的结果
###
答:运行的结果是 ==  因为$a 和$b没有值
##########
#278、define(“$myvalue”,10);
###
$myarray[10]=”dog”;
$myarray[]=”human”;
$myarray[“myvalue”]=”cat”;
$myarray[“dog”]=”cat”;
print ”The value is:”;
print $myarray[“myvalue”];
答:cat
##########
#279、怎样防止图片防盗连接?
###
1）可以把真实的图片做为背景图片，而使用一张透明图片匹配尺寸并覆盖到真实图片上面。
<div id="image1" style="background-image: url(originalImage.jpg);">
<img src="blank.gif" height="250px" width="300px">
</div>
这样，当别人使用右键查看或保存图片的时候，得到的是这张透明图片。
2）自动切片这是一个非常有效的图片防盗链方法.
它支持两种方案:
让用户下载到的是被裁切过的图片。 
让用户下载到的是打上水印的图片。 
当用户尝试下载图片的时候，它就会进行截切或添加水印操作，但是这个方法也有很大的劣势:
造成太多的服务器请求负荷，对网站整体性能影响不好 
你将拥有许多的图片文件
3）使用带水印的图片 (预先生成)
预先给图片添加水印也是个防止图片被盗的有效方法，就算别人要盗，至少也为你免费宣传了一下自己的网站。
但缺点也来了:
图片会看的不清楚或不美观了(这对于图片展示类的网站尤其重要，但又正是该类网站特尤其图片防盗) 
可以下载然后裁剪水印(当然，如果你是那种把水印放在图片中间或水印有图片这么1/3大的家伙，就不用担心这个问题了) 
要手动添加水印的话，可以使用photoshop，GIMP，轻松水印等软件。也可以选择下面的一些在线图片水印工具
4）使用水印 (服务器端生成)
使用服务器端自动为图片添加水印，是件省心的事情。只是需要一些脚本知识。
5）使用Flash来显示图片
6）基于浏览器的图片防盗
通过JavaScript来禁用点键菜单 是图片防盗的一个方法，但它仅仅是对于网络菜鸟来说，中等点的网民可以很轻松的查看到代码获取图片地址，再高等点的可以轻松破解，禁用你的禁用!
所以这并不是一个好方法，更重要的是它是极不利于用户浏览体验的。
这有一个折中的方法，你可以通过一个jQuery 插件 来实现仅仅禁用保存功能.
7）禁用IE6的图像工具条
在IE6下，当鼠标悬浮在一张图片上时，会出现工具条，上面有保存功能，你可以使用下面的代码禁用:
<meta http-equiv="imagetoolbar" content="no">
##########
#282、简述你使用的过JQuery插件的优缺点（说两个以上）。
###
autocomplete，tags-input、cookie
##########
#283、公司有800员工资料都存在employee表里写一个SQL语句统计出重名员工的人数？
###
select name, count(*) as num from stu group by name having count(name) > 1;

##########
#284、PHP URL重写（伪静态）  
###
1）让Apache支持mod_rewrite
打开Apache配置文件httpd.conf,找到如下：#LoadModule rewrite_module modules/mod_rewrite.so
开启rewrite，去点前面"#"
2）开始重载Allowoverride
查找apache配置文件找到如下
<Directory /> 
Options FollowSymLinks 
    AllowOverride None
</Directory>
将AllowOverride None改为 AllowOverride All
修改
#APMServ默认虚拟主机
NameVirtualHost *:803
<VirtualHost *:803>
 ServerName *
 DocumentRoot "D:/APMServ/APMServ5.2.0/www/htdocs"
</VirtualHost>
<Directory "D:/APMServ/APMServ5.2.0/www/htdocs"> 
 Options FollowSymLinks IncludesNOEXEC Indexes
 DirectoryIndex index.html index.htm default.htm index.php default.php index.cgi default.cgi index.pl default.pl index.shtml
 AllowOverride All
 Order Deny,Allow 
 Allow from all 
</Directory>
AllowOverride none 改为 All
3）写规则，匹配页面
apache配置文件
<ifmodule mod_rewrite.c> 
RewriteEngine On 
RewriteRule index\.html   index\.php 
RewriteRule (.*)\.html   $1\.php [L]   #匹配所有页面 
</ifmodule>
4）新建.htaccess
内容如下
RewriteEngine On 
RewriteRule index\.html   index\.php 
RewriteRule (.*)\.html   $1\.php [L]   #匹配所有页面
为了方便测试，我在htdocs目录下建立一个product.php的文件
<?php
       echo "You have selected product #". $_GET["id"];
?>
http://localhost:803/product.php?id=2;
Result：You have selected product #2;
###
如果我要实行这个效果：
http://localhost:803/product.html
RewriteEngine on 这个要打开啊。
RewriteRule ^product\.html$ product.php?id=123
Result: You have selected product #123
###
http://localhost:803/product/p123.html
RewriteRule ^product/p([0-9]*)\.html$ product.php?id=$1 [L]
Result: You have selected product #123
###
##########
#285、PHP伪静态如何实现?
###
PHP伪静态，主要是为了隐藏传递的参数名；于网上搜索后整理伪静态四法
<?php
//伪静态方法一

// localhost/php100/test.php?id|1@action|2
$Php2Html_FileUrl = $_SERVER["REQUEST_URI"];
echo $Php2Html_FileUrl."<br>";// /php100/test.php?id|1@action|2
$Php2Html_UrlString = str_replace("?","",str_replace("/", "", strrchr(strrchr($Php2Html_FileUrl, "/"),"?")));
echo $Php2Html_UrlString."<br>";// id|1@action|2
$Php2Html_UrlQueryStrList = explode("@", $Php2Html_UrlString);
print_r($Php2Html_UrlQueryStrList);// Array ( [0] => id|1 [1] => action|2 )
echo "<br>";
foreach($Php2Html_UrlQueryStrList as $Php2Html_UrlQueryStr)
{
$Php2Html_TmpArray = explode("|", $Php2Html_UrlQueryStr);
print_r($Php2Html_TmpArray);// Array ( [0] => id [1] => 1 ) ; Array ( [0] => action [1] => 2 )
echo "<br>";
$_GET[$Php2Html_TmpArray[0]] = $Php2Html_TmpArray[1];
}
//echo '假静态：$_GET变量<br />';
print_r($_GET); // Array ( [id|1@action|2] => [id] => 1 [action] => 2 )
echo "<br>";
echo "<hr>";
echo $_GET[id]."<br>";// 1
echo $_GET[action];// 2
?>

<?php
//伪静态方法二
// localhost/php100/test.php/1/2
$filename = basename($_SERVER['SCRIPT_NAME']);
echo $_SERVER['SCRIPT_NAME']."<br>";// /php100/test.php
echo $filename."<br>";// test.php

if(strtolower($filename)=='test.php'){
if(!empty($_GET[id])){
$id=intval($_GET[id]);
echo $id."<br>";
$action=intval($_GET[action]);
echo $action."<br>";
}else{
$nav=$_SERVER['REQUEST_URI'];
echo "1:".$nav."<br>";// /php100/test.php/1/2
$script=$_SERVER['SCRIPT_NAME'];
echo "2:".$script."<br>";// /php100/test.php
$nav=ereg_replace("^$script","",urldecode($nav));
echo $nav."<br>"; // /1/2
$vars=explode("/",$nav);
print_r($vars);// Array ( [0] => [1] => 1 [2] => 2 )
echo "<br>";
$id=intval($vars[1]);
$action=intval($vars[2]);
}
echo $id.'&'.$action;
}
?>

<?php
//伪静态方法三


function mod_rewrite(){
global $_GET;
$nav=$_SERVER["REQUEST_URI"];
echo $nav."<br>";
$script_name=$_SERVER["SCRIPT_NAME"];
echo $script_name."<br>";
$nav=substr(ereg_replace("^$script_name","",urldecode($nav)),1);
echo $nav."<br>";
$nav=preg_replace("/^.ht(m){1}(l){0,1}$/","",$nav);//这句是去掉尾部的.html或.htm
echo $nav."<br>";
$vars = explode("/",$nav);
print_r($vars);
echo "<br>";
for($i=0;$i<Count($vars);$i+=2){
$_GET["$vars[$i]"]=$vars[$i+1];
}
return $_GET;
}
mod_rewrite();
$year=$_GET["year"];//结果为'2006'
echo $year."<br>";
$action=$_GET["action"];//结果为'_add'
echo $action;
?>

<?php
//伪静态方法四

//利用server变量 取得PATH_INFO信息 该例中为 /1,100,8630.html 也就是执行脚本名后面的部分
if(@$path_info =$_SERVER["PATH_INFO"]){
//正则匹配一下参数if(preg_match("/\/(\d+),(\d+),(\d+)\.html/si",$path_info,$arr_path)){
$gid =intval($arr_path[1]); //取得值 1
$sid =intval($arr_path[2]); //取得值100
$softid =intval($arr_path[3]); //取得值8630
}else die("Path:Error!");
//相当于soft.php?gid=1&sid=100&softid=8630
}else die('Path:Nothing!');
?>

##########
#286、PHP防注入如何实现？
###
主要是为了防止恶意写入后台数据库
//防注入函数
function inject_check($sql_str){
$check=eregi('select|insert|update|delete|\'|\/\*|\*|\.\.\/|\.\/|union|into|load_file|outfile', $sql_str);
if($check){
echo "输入非法内容";
exit();
}else{
return $sql_str;
}
}
//接收传递参数后进行转换
$_GET[type]=inject_check($_GET[type]);
//之后再使用转换后的参数
##########
#287、URL重写是实现PHP伪静态
###
应该这样说才是,URL重写是实现PHP伪静态的方式之一,
具体如:
http://www.plframe.com/?x=1&y=2&z=3
换成
http://www.plframe.com/1-2-3.html
这种伪静态方式访问的话,其他最简单的方法是在网站根目录下面建一个.htaccess 文件，其内容如下:
<IfModule mod_rewrite.c>
RewriteEngine on
RewriteRule /([d]+)-([d]+)-([d]+).html /?x=$1&y=$2&z=$3 
</IfModule>

最后再APACHE的虚拟域名配置文件里面找到项目所用的域名设置项<VirtualHost></VirtualHost>，
在其中再找到<Directory></Directory>,将AllowOverride None 改成 AllowOverride All，
若没有<Directory></Directory>,则增加如下内容
<Directory 目录路径>
Options Indexes FollowSymLinks MultiViews
AllowOverride All
Order allow,deny
allow from all
DirectoryIndex index.php
</Directory> 在<VirtualHost></VirtualHost>中间重启APACHE即可.
你规则前面的 ^([0-9]*)-[a-zA-Z0-9&-+._'"]*/ 是正表达式，这里面用()括起来的东西，在后面依次使用$1、$2来引用，叫做匹配项。

在你的这个例子中，$1对于的就是([0-9]*)，就是前面的所有数字
RewriteRule ^id/([0-9]+)$ article.php?id=$1

前面的 你自己可以随便搞

下面是我站的 /还有提醒一下！＠linux 下的 规则有所不同

RewriteEngine On
RewriteBase /
RewriteRule ^type/(.*)/order/([0-9]+)$ index_c.php?type=$1&order=$2
RewriteRule ^type/(.*)/order/([0-9]+)/page/([0-9]+)$ index_c.php?type=$1&order=$2&page=$3

RewriteRule ^user/([0-9]+)$ index_c.php?uid=$1

RewriteRule ^user/([0-9]+)/type/(.*)/page/([0-9]+)$ index_c.php?uid=$1&type=$2&page=$3
RewriteRule ^user/([0-9]+)/type/(.*)$ index_c.php?uid=$1&type=$2

RewriteRule ^user/([0-9]+)/myclick/(.*)/page/([0-9]+)$ index_c.php?uid=$1&myclick=$2&page=$3
RewriteRule ^user/([0-9]+)/myclick/(.*)$ index_c.php?uid=$1&myclick=$2
RewriteRule ^user/([0-9]+)/page/([0-9]+)$ index_c.php?uid=$1&page=$2

RewriteRule ^re1d-([0-9]+)$ /top.php?itemid=$1
RewriteRule ^s=(.*)$ /search.php?s=$1

RewriteRule ^type/(.*)/page/([0-9]+)$ index_c.php?type=$1&page=$2
RewriteRule ^type/(.*)$ index_c.php?type=$1 [L]
现在的搜索引擎越来越对静态页面友好，以前不知道自己的服务器支不支持静态化，今天向空间商咨询后发现，其实自己的服务器是支持静态化的，于是在DZ论坛上下来个.htaccess文件修改了其中的一个代码，上传到我的linux服务器，到Discuz!论坛后台选择静态化选项，前台打开一看，呵呵 已经显示静态化了
下面是修改的.htaccess文件文件内容
# 将 RewriteEngine 模式打开
RewriteEngine On
# 修改以下语句中的 /discuz 为你的论坛目录地址，如果程序放在根目录中，请将 /discuz 修改为 /
RewriteBase /
# Rewrite 系统规则请勿修改
RewriteRule ^archiver/((fid|tid)-[w-]+.html)$ archiver/index.php?$1
RewriteRule ^forum-([0-9]+)-([0-9]+).html$ forumdisplay.php?fid=$1&page=$2
RewriteRule ^thread-([0-9]+)-([0-9]+)-([0-9]+).html$ viewthread.php?tid=$1&extra=page%3D$3&page=$2
RewriteRule ^space-(username|uid)-(.+).html$ space.php?$1=$2
RewriteRule ^tag-(.+).html$ tag.php?name=$1
如果你有需要将这段代码保存为.htaccess文件上传到空间即可，再到后台更改选择静态化就OK了.

##########
#288、HTTP协议中几个状态码的含义:503 500 401 403 404 200 301 302。。。
###
200 : 请求成功，请求的数据随之返回。
301 : 永久性重定向。
302 : 暂时行重定向。
401 : 当前请求需要用户验证。
403 : 服务器拒绝执行请求，即没有权限。
404 : 请求失败，请求的数据在服务器上未发现。
500 : 服务器错误。一般服务器端程序执行错误。
503 : 服务器临时维护或过载。这个状态时临时性的。
##########
#289、PHP/Mysql中几个版本的进化史，比如mysql4.0到4.1，PHP 4.x到5.1的重大改进等等。undone
###
##########
#291、一些编译php时的configure 参数
###
–prefix=/usr/local/php    php安装目录
–with-config-file-path=/usr/local/php/etc 指定php.ini位置
–with-mysql=/usr/local/mysql mysql安装目录，对mysql的支持
–with-mysqli=/usr/local/mysql/bin/mysql_config mysqli文件目录,优化支持
–enable-safe-mode 打开安全模式
–enable-ftp 打开ftp的支持
–enable-zip 打开对zip的支持
–with-bz2 打开对bz2文件的支持
–with-jpeg-dir 打开对jpeg图片的支持
–with-png-dir 打开对png图片的支持
–with-freetype-dir 打开对freetype字体库的支持
–without-iconv关闭iconv函数，种字符集间的转换
–with-libxml-dir 打开libxml2库的支持
–with-xmlrpc 打开xml-rpc的c语言
–with-zlib-dir 打开zlib库的支持
–with-gd 打开gd库的支持
更多可以使用 ./configure help 查看
 
##########
#292、 向php传入参数的三种方法。
###
/*
     * 方法一 使用$argc $argv
     *  在命令行下运行 /usr/local/php/bin/php ./getopt.php -f 123 -g 456
     */
//    if ($argc > 1){
//        print_r($argv);
//    }

    /**
     * 运行结果
     *
     sync@MySUSE11:~/web_app/channel3/interface> /usr/local/php/bin/php ./getopt.php -f 123 -g 456
        Array
        (
            [0] => ./getopt.php
            [1] => -f
            [2] => 123
            [3] => -g
            [4] => 456
        )
     */
 

     /*
     * 方法二 使用getopt函数（）
     *  在命令行下运行 /usr/local/php/bin/php ./getopt.php -f 123 -g 456
     */

//    $options = "f:g:";
//    $opts = getopt( $options );
//    print_r($opts);

    /**
     * 运行结果
     *
     sync@MySUSE11:~/web_app/channel3/interface> /usr/local/php/bin/php ./getopt.php -f 123 -g 456
        Array
        (
            [f] => 123
            [g] => 456
        )
     */

    /*
     * 方法三 提示用户输入，然后获取输入的参数。有点像C语言
     *  在命令行下运行 /usr/local/php/bin/php ./getopt.php
     */
    fwrite(STDOUT, "Enter your name: ");
    $name = trim(fgets(STDIN));
    fwrite(STDOUT, "Hello, $name!");
    /**
     * 运行结果
     *
     sync@MySUSE11:~/web_app/channel3/interface> /usr/local/php/bin/php ./getopt.php
     Enter your name: francis
     Hello, francis!
     */
 
##########
#293、 error_reporting 等调试函数使用
###
error_reporting() 函数能够在运行时设置php.ini中 error_reporting 指令。
所以可以再程序中随时调节显示的错误级别。
使用此函数时 display_errors必须是打开状态。
##########
#294、 posix和perl标准的正则表达式区别？
###
定界符，posix没有perl有（任意非数字、字母或反斜线”\”的字符）
修正符，posix没有perl有
[]之外不一致的元字符，”.”在posix中匹配除了换行外的字符，perl中匹配任意字符
[]之内不一致的元字符，”-”在posix中[a-c-e]会抛出错误，perl中[a-c-e]等价于[a-e]

##########
#295、Safe_mode 打开后哪些地方受限.
###
启动safe_mode，会对许多PHP函数进行限制，特别是和系统相关的文件打开、命令执行等函数.
所有操作文件的函数将只能操作与脚本UID相同的文件.

##########
#296、写代码来解决多进程/线程同时读写一个文件的问题。
###
PHP是不支持多线程的，可以使用php的flock加锁函数实现。
$fp = fopen("/tmp/lock.txt", "w+");
if (flock($fp, LOCK_EX)) { // 进行排它型锁定
fwrite($fp, "Write something here\n");
flock($fp, LOCK_UN); // 释放锁定
} else {
echo "Couldn't lock the file !";
}
fclose($fp);

##########
#297、写一段上传文件的代码。
###
upload.html
<form enctype="multipart/form-data" method="POST" action="upload.php">
Send this file: <input name="name" type="file" />
<input type="submit" value="Send File" />
</form>
upload.php
$uploads_dir = '/uploads';
foreach ($_FILES["error"] as $key => $error) {
if ($error == UPLOAD_ERR_OK) {
$tmp_name = $_FILES["tmp_name"][$key];
$name = $_FILES["name"][$key];
move_uploaded_file($tmp_name, "$uploads_dir/$name");
}
}
 

##########
#298、Mysql 的存储引擎,myisam和innodb的区别。
###
1） MyISAM类型不支持事务处理等高级处理，而InnoDB类型支持.
2）MyISAM类型的表强调的是性能，其执行速度比InnoDB类型更快.
3）InnoDB不支持FULLTEXT类型的索引.
4）InnoDB 中不保存表的具体行数，也就是说，
执行select count(*) from table时，InnoDB要扫描一遍整个表来计算有多少行，
但是MyISAM只要简单的读出保存好的行数即可.
5）对于AUTO_INCREMENT类型的字段，InnoDB中必须包含只有该字段的索引，但是在MyISAM表中，可以和其他字段一起建立联合索引。
6）DELETE FROM table时，InnoDB不会重新建立表，而是一行一行的删除。
7） LOAD TABLE FROM MASTER操作对InnoDB是不起作用的，解决方法是首先把InnoDB表改成MyISAM表，导入数据后再改成InnoDB表，
但是对于使用的额外的InnoDB特性(例如外键)的表不适用.
8）MyISAM支持表锁，InnoDB支持行锁。
##########
#299、介绍xdebug,apc,eAccelerator,Xcache,Zend opt的使用经验。undone
###
xdebug是php调试工具
apc是缓存工具
##########
#300、MySQL数据库作发布系统的存储，一天五万条以上的增量，预计运维三年,怎么优化？
###
1）设计良好的数据库结构，允许部分数据冗余，尽量避免join查询，提高效率。
2）选择合适的表字段数据类型和存储引擎，适当的添加索引。
3）mysql库主从读写分离。
4）找规律分表，减少单表中的数据量提高查询速度。
5）添加缓存机制，比如memcached，apc等。
6）不经常改动的页面，生成静态页面。
7）书写高效率的SQL。比如 SELECT * FROM TABEL 改为 SELECT field_1, field_2, field_3 FROM TABLE.

##########
#301、写出一种排序算法（原理），并说出优化它的方法。
###
快速排序，随机化
function swap(&$n, &$m) {
    $temp = $n;
    $n = $m;
    $m = $temp;
}

function partition(&$a, $p, $r) {
    $x = $a[$r];
    $i = $p - 1;
    for ($j = $p; $j < $r; $j++) {
        if ($a[$j] < $x) {
            $i++;
            swap($a[$i], $a[$j]);
        }
    }
    $i++;
    swap($a[$i], $a[$r]);
    //echo '<pre>'; var_dump($a); echo '</pre>';
    return $i;
}

function quick_sort(&$a, $p, $r) {
    if ($p < $r) {
        $q = partition($a, $p, $r);
        quick_sort($a, $p, $q - 1);
        quick_sort($a, $q + 1, $r);
    }
}

function randomized_partition(&$a, $p, $r) {
    $i = rand($p, $r);
    swap($a[$r], $a[$i]);
    return partition($a, $p, $r);
}

function randomized_quick_sort(&$a, $p, $r) {
    if ($p < $r) {
        $q = randomized_partition($a, $p, $r);
        //echo '<br/> q = ', $q;
        randomized_quick_sort($a, $p, $q - 1);
        randomized_quick_sort($a, $q + 1, $r);
    }
}
##########
#302、 请简单阐述您最得意的开发之作。undone
###

##########
#303、对于大流量的网站,您采用什么样的方法来解决各页面访问量统计问题？
###
统一布码监测
##########
#305、测试php性能和mysql数据库性能的工具,和找出瓶颈的方法？undone
###

##########
#306、 介绍一下常见的SSO(单点登陆)方案(比如dedecms整合discuz的passport)的原理。undone
###

##########
#307、您写过的PHP框架的特点，主要解决什么问题，与其他框架的不同点。undone
###

##########
#308、大型的论坛/新闻文章系统/SNS网站在性能优化上有什么区别?undone
###

##########
#309、相册类应用:要求在浏览器中能同时选中并上传多个文件，图片要求能剪裁，压缩包在服务器端解压。能上传单个达50M的文件。上传过程中有进度条显示。每个图片能生成四种大小缩略图，视频文件要转成flv供flash播放。叙述要涉及的各类开源软件和简单用途。？undone
###

##########
#310、一群猴子排成一圈，按1，2，…，n依次编号。然后从第1只开始数，数到第m只,把它踢出圈，从它后面再开始数，再数到第m只，在把它踢出去…，如此不停的进行下去，直到最后只剩下一只猴子为止，那只猴子就叫做大王。要求编程模拟此过程，输入m、n, 输出最后那个大王的编号。用程序模拟该过程。
###
/*
 * 约瑟夫环
 */
function josehpus1($n, $m) {
    $a = array();
    for ($i = 1; $i <= $n; $i++) {
        $a[] = $i;
    }
    $i = 1;
    while (count($a) > 1) {
        $x = array_shift($a);
        if ($i % $m != 0) {
            $a[] = $x;
        } else {
            echo '<br/>- ' . $x . ' = ';
            print_r($a);
        }
        $i++;
    }
    return $a[0];
}

function josehpus2($n, $m) {
    $s = 0;
    for ($i = 2; $i <= $n; $i ++) {
        $s = ($s + $m) % $i;
    }
    return $s + 1;
}

echo josehpus1(10, 7);
echo '<br/>';
echo josehpus2(10, 7);
##########
#311、linux下查看当前系统负载信息的一些方法。Undone
###
w，Uptime	查看系统运行时间、用户、负载
Vmstat	
Top	查看系统整体状态
##########
#313、 ssh 安全增强方法;密码方式和rsa key 方式的配置。undone
###

##########
#314、 rpm/apt/yum/ports 装包，查询，删除的基本命令。
###
安装
rpm -ivh package.rpm
apt-get install package
yum install package
删除
rpm -e package
apt-get remove package
yum remove package
查询
rpm –q string
apt-cache search string
yum search string

##########
#315、Makefile的基本格式，gcc 编译，连接的命令,-O0 和-O3区别。undone
###

##########
#316、 gdb,strace,valgrind的基本使用.undone
###

##########
#318、javascript中的prototype。
###
原型链，用于实现继承。
方法一：
var a = {
  x: 10,
  calculate: function (z) {
    return this.x + this.y + z
  }
};

var b = {
  y: 20,
  __proto__: a
};

var c = {
  y: 30,
  __proto__: a
};

// call the inherited method
b.calculate(30); // 60
c.calculate(40); // 80
方法二：
function a() {
    this.x = 1;
    a.prototype.add = function(){
        return this.x + 2; 
    }
}

var obj1 = new a();
var obj2 = new a();
##########
#319、javascript中this对象的作用域。
###
This是执行上下文环境的一个属性，而不是某个变量对象的属性。

##########
#320、IE和firefox事件冒泡的不同。undone
###
##########
#321、什么是怪异模式,标准模式，近标准模式。undone
###
##########
#322、DTD的定义？
###
文档类型定义
##########
#323、IE/firefox常用hack？
###

.content .test {
    width: 200px;
    height: 200px;
    background: #f60; /*all*/
    background: #06f9; /*IE*/
###
    *background: #666; /*IE6,7*/
###
    _background: #ccc; /*IE6*/
}
    
/* webkit and opera */
@media all and (min-width:0){
    .content .test {
        background: #0f0;
###
    }
}
    
/* webkit */
@media screen and (-webkit-min-device-pixel-ratio:0) {
    .content .test {
        background: #ff0;
    }
}
    
/*FireFox*/
@-moz-document url-prefix() {
    .content .test {
        background: #f0f;
    }
}
    
/*IE9+*/
@media all and (min-width:0) {
    .content .test{
        background: #f009;
        }
}
    
/*IE10+*/
@media screen and (-ms-high-contrast: active), (-ms-high-contrast: none) {
    .content .test {
        background: #0ff;
###
    }
}
##########
#324、firefox,IE下的前端js/css调试工具。
###
Console、WebDeveloper
##########
#325、面试官看过你的简历，会问一些你做的项目的用户量、pv、吞吐量、相关难点和解决方法等。undone
###
##########
#326、数据库设计经验,为什么进行分表? 分库? undone
###
   一般多少数据量开始分表? 分库? 分库分表的目的? 什么是数据库垂直拆分? 水平拆分? 分区等等？可以举例说明
##########
#327、web开发方面会遇到哪些缓存? 分别如何优化? undone
###
##########
#328、给你256M的内存,对10G的文件进行排序(文件每行1个数字),如何实现？   对10G的文件进行查找如何实现？ 统计10G文件每个关键字出现的次数如何实现？
###
undone
300万个字符串最多（假设没有重复，都是最大长度）占用内存3M*1K/4=0.75G。所以可以将所有字符串都存放在内存中进行处理。
　　可以使用key为字符串（事实上是字符串的hash值），值为字符串出现次数的hash来统计每个每个字符串出现的次数。并用一个长度为10的数组/链表来存储目前出现次数最多的10个字符串。
　　这样空间和时间的复杂度都是O(n)。
##########
#329、假如你现在是12306火车订票的设计师,你该如何设计满足全国人民订票? undone
###
##########
#330、假如有1亿用户的访问量,你的服务器架构是怎样的? 用户信息的存储方案如何设计? undone
###
##########
#331、如果你是技术组长,所带团队任务进度无法完成你该如何解决? undone
###
   如果在进度排满的前提下插入任务,你该如何保证总进度不延期? undone
   如果有的工程师今天预定任务没有完成,你该如何解决? undone
##########
#332、从你的经验方面谈一下如何构建高性能web站点? 需要哪些环节? 步骤? 每个步骤需要注意什么如何优化等? undone
###
##########
#333、 如何处理多服务器共享session? Undone
###
Mysql、memcache
##########
#334、 一个10G的表,你用php程序统计某个字段出现的次数,思路是? undone
###
##########
#335、会告诉你一个nginx日志例子,用你认为最佳的编程语言统计一下http响应时间超过1秒的前10个url? undone
###
##########
#336、给你一个mysql配置文件,用你认为最佳的编程语言解析该文件? undone
###
##########
#337、给你一个url,在nginx配置一下rewrite指定到某个具体路径? undone
###
##########
#338、一个php文件的解释过程是? 一般加速php有哪些?  提高php整体性能会用到哪些技术? undone
###
1）解析过程
解析命令行参数，初始化环境，编译执行PHP代码，zend引擎，清理环境并返回退出
2）加速
PHP加速软件是一种将PHP程式码编译之后所产生的bytecode暂存在共享内存内供重复使用，以提升执行效率的插件软件。
如：Zend Optimizer、APC、XCache
##########
#339、chrome号称为多线程的,所以多线程和多进程的区别为? undone
###
进程是资源分配的最小单位，线程是CPU调度的最小单位
线程和进程的区别在于,子进程和父进程有不同的代码和数据空间,而多个线程则共享数据空间,每个线程有自己的执行堆栈和程序计数器为其执行上下文.多线程主要是为了节约CPU时间,发挥利用,根据具体情况而定. 线程的运行中需要使用计算机的内存资源和CPU。340、 php在2011年底出现hash碰撞,hash碰撞原理为? 如何进行修复?
PHP是使用单链表存储碰撞的数据，因此实际上PHP哈希表的平均查找复杂度为O(L)，其中L为桶链表的平均长度；而最坏复杂度为O(N)，此时所有数据全部碰撞，哈希表退化成单链表。
哈希表碰撞攻击就是通过精心构造数据，使得所有数据全部碰撞，人为将哈希表变成一个退化的单链表，此时哈希表各种操作的时间均提升了一个数量级，因此会消耗大量CPU资源，导致系统无法快速响应请求，从而达到拒绝服务攻击（DoS）的目的。
攻击者只要构造一个含有大量碰撞key的post请求，就可以达到攻击的目的。具体做法不再演示。
在>=PHP5.3.9的版本中增加了一个配置项max_input_vars，用于标识一次http请求最大接收的参数个数，默认为1000。
理论上，只要PHP代码中某处构造Array的数据依赖于外部输入，则都可能造成这个问题，因此彻底的解决方案要从Zend底层HashTable的实现动手。一般来说有两种方式，一是限制每个桶链表的最长长度；二是使用其它数据结构如红黑树取代链表组织碰撞哈希（并不解决哈希碰撞，只是减轻攻击影响，将N个数据的操作时间从O(N^2)降至O(NlogN)，代价是普通情况下接近O(1)的操作均变为O(logN)）。
##########
#341、web不安全因素有哪些? 分别如何防范? undone
###
对于以往安全事故的分析表明，大多数安全问题都属于下面三种类型之一：
服务器向公众提供了不应该提供的服务。
服务器把本应私有的数据放到了可公开访问的区域。
服务器信赖了来自不可信赖数据源的数据。
##########
#342、假如两个单链表相交,写一个最优算法计算交点位置,说思路也可以? undone
###
##########
#343、nginx负载均衡有哪些? 如果其中一台服务器挂掉,报警机制如何实现? undone
###
##########
#344、不优化前提下,apache一般最大连接数为? nginx一般最大连接数为? mysql 每秒insert ? select ? update ? delete? undone
###
apache默认最大连接数256，nginx默认是1024
##########
#345、mysql 数据类型有哪些 ? 分别占用多少存储空间 ? undone
###
##########
#346、nginx设置缓存js、css、图片等信息,缓存的实现原理是? undone
###
##########
#347、如何提高缓存命中率? 如何对缓存进行颗粒化? undone
###
##########
#348、php的内存回收机制是? undone
###
在PHP中，没有任何变量指向这个对象时，这个对象就成为垃圾。PHP会将其在内存中销毁；这是PHP的GC垃圾处理机制，防止内存溢出。
当一个PHP线程结束时，当前占用的所有内存空间都会被销毁，当前程序中所有对象同时被销毁。GC进程一般都跟着每起一个SESSION而开始运行的.gc目的是为了在session文件过期以后自动销毁删除这些文件.
__destruct() 析构函数，是在垃圾对象被回收时执行。 
unset 销毁的是指向对象的变量，而不是这个对象。
<?php
gc_enable(); // Enable Garbage Collector
var_dump(gc_enabled()); // true
var_dump(gc_collect_cycles()); // # of elements cleaned up
gc_disable(); // Disable Garbage Collector
?>

##########
#349、linux监视一个日志文件a.log 的最新内容?
###
tail –f a.log查看文件最后10行，动态显示。
##########
#350、查看当前服务器的HTTP连接有哪些？
###
假设Apache Httpd
ps –le | grep httpd 说明。。
pgrep httpd
netstat –an | grep 80
##########
#351、说说Linux下的find命令和grep命令的区别？
###
Find查找文件或目录
Grep 在文件内容中/输出结果中查找字符串
##########
#352、如何实现每天0点钟重新启动服务器? 
###
Crontab命令格式：crontab –l/-i/-r/-e 脚本/命令
-l	显示用户crontab内容
-I	删除用户crontab文件前提示
-r	删除用户的crontab文件
-e	编辑用户的crontab文件
时间段含义：
依次是：分钟（0-59）	小时（0-23）	日期（1-31）	月份（1-12）	星期（0-6）
Crontab –e
0 0 * * * /sbin/reboot 应该写绝对路径
##########
#353、请写出5个常用的unix操作命令?
###
Ls cp touch mkdir rm cat kill ps
##########
#354、rm -rf * 是什么意思，其中 f 有什么作用?
###
–r表示递归（删除目录），f强制（可以不提示删除），* 通配符
删除当前目录下所有文件
##########
#355、Linux压缩文件和解压文件的命令?
###
Gzip  tar  bzip  zip
Gunzip  tar  bunzip  unzip
##########
#356、Linux的目录进行遍历，编写shell脚本?
###
Ls –R
Tree 以树状结构显示目录
##########
#357、apache默认使用进程管理还是线程管理？如何判断并设置最大连接数？
###
使用进程管理
startServers
maxClients 设置最大连接数
##########
#358、当前目录下有一个文件为 showme.sh , 如何修改文件，将其指定为使用 /bin/bash 运行，如何修改其权限为所有用户可读写，所有用户可执行?
###
指定用哪个shell来解析，在文件头加shell路径
#!/bin/bash
修改文件权限
Chmod 777 showme.sh
##########
#359、当前目录下有一个文件为 showme.sh,如何修改其所有人为root?
###
Chown root showme.sh
##########
#360、在linux 请写出一种自动定时备份某一个文件的方法和具体实施流程，要求每天凌晨3 点的时候备份一次。Undone
###
Crontab –e
0 3 * * * 
以某个命令为例
Cp –p
Tar
Scp

说明：每个命令要写绝对路径、错误日志输出 2>>、时间戳、完全备份和增量备份
##########
#361、crond后台常驻程序（daemon）用于：D
###
A．负责文件在网络中的共享
B．管理打印子系统Manages theprinting subsystem
C．跟踪管理系统信息和错误
D．管理系统日常任务的调度（scheduing）

##########
#362、怎么了解您在当前目录下还有多大空间？C  正确答案du –s .
###
A．Use df
B．Use du /
C．Use du.
D．Use df.
##########
#205、有一个备份程序mybackup,需要在周一至周五下午一点和晚上八点各运行次，下面哪一条crontab的项可以完成这项工作？B
###
A．0 13,20 * * 1,5 mybackup
B．0 13,20 * * 1,2,3,4,5, mybackup
C．*13,20 * *1,2,3,4,5, mybackup
D．0 13,20 1,5 * *mybackup
##########
#280、下面哪条命令可以把f1.txt复制为f2.txt？A
###
A．cp f1.txt|f2.txt
B．cat f1.txt|f2.txt
C．cat f1.txt|f2.txt
B．copy f1.txt|f2.txt
##########
#340、 使用命令可以查看Linux的启动信息？B
###
A．mesg –d
B．demesg
C．cat /etc/mesg
D．cat /var/mesg

