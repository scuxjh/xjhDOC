/*==============================================================*/
create table xjh.NEWS
(
   ID                   bigint not null,
   VERSION              int,
   NEWS_TITLE           varchar(128) comment '新闻标题',
   START_TIME           timestamp default CURRENT_TIMESTAMP comment '新闻发布时间',
   END_TIME             timestamp comment '结束时间',
   CONTENT              varchar(2048) comment '新闻内容',
   COUNT_NUM            int comment '编号',
   POSITION             int comment '新闻发布到具体位置',
   PAGE_VIEW            int comment '新闻查阅人数',
   CATEGORY_ID          bigint comment '新闻所属类别',
   DISPLAY              int comment '前台是否显示',
   ADMIN_ID             bigint comment '新闻发布人员',
   primary key (ID)
);
alter table xjh.NEWS comment '新闻表';

select * from xjh.news;

INSERT INTO xjh.`news`(version,news_title,start_time,end_time,content,count_num,position,page_view,category_id,display,admin_id) VALUES (0,'习近平在首尔大学演讲：中国始终维护和平', '2014-06-16 11:30:18', '2014-06-24 11:30:23', '<div style=\"margin-top: 0pt; margin-bottom: 0pt; text-indent: 30pt; line-height: 30pt\"><span style=\"color: #ffffff\"><span style=\"font-size: large\">此次检查的重点是维护流动人口合法权益、做好在建工地各项安全防范工作。安全办、流管办工作人员对辖区诺亚方舟酒店管理有限公司的在建工地及流动人口居住区进行了安全隐患排查。针对发现的居住区部分灭火器缺失、室内电线乱拉现象等问题，责令酒店方立即整改。</span></span></div>', null, null, null, 1, 1, null);
INSERT INTO `news` VALUES ('2', '江西宜春夺刀少年称澳门大学并非最终选择', '2014-06-02 17:12:19', '2014-07-25 17:12:30', '【“夺刀少年”：澳门大学并非最终选择】4日，江西宜春“夺刀少年”柳艳兵和易政勇向新华社记者证实，他们确实收到澳门大学的录取通知书，但澳门大学只是他们的一个选项，并非最终选择。澳门大学方面表示，录取通知书相当于澳门大学发出邀请，“我们尊重学生的选择，最后的决定权在学生本人”。', null, null, null, '2', '1', null);
INSERT INTO `news` VALUES ('3', '德国赢法国的十个理由:遇神奇轮回 里贝里躺枪了', '2014-06-04 17:13:47', '2014-07-24 17:13:52', '新浪体育讯　明天，德国队将在巴西世界杯四分之一决赛中迎来法国队的挑战，在过去三届世界杯上德国队均成功进入了最终的四强。日前，《图片报》撰文列举出了十个帮助德国取胜法国的理由。[1/4决赛重磅登场！购买世界杯足彩] [怕赔钱？彩票白送给你]\r\n\r\n　　1)在这场比赛中，德国队主教练勒夫的妻子也将出现在看台上，和德国队员家属一起为球队加油鼓劲。\r\n\r\n　　2)上场比赛中因伤病缺阵的胡梅尔斯和波多尔斯基现在都伤愈复出，德国队除了退出世界杯的穆斯塔法之外，没有任何伤病问题。', null, null, null, '5', '1', null);
INSERT INTO `news` VALUES ('4', '河南漯河74人获高考体育加分追踪:三大蹊跷难解', '2014-06-03 17:15:33', '2014-07-25 17:15:40', '新华社郑州7月4日新媒体专电(记者李亚楠) 近日，漯河高级中学今年74人获10分的国家二级运动员高考体育加分，占河南全省此项加分总人数的1／10，引发了公众质疑。记者2日赴漯河市采访，当事学校、漯河市体育局和招生办三方均称加分符合程序，无违规作假之处。不过，“合规”的回应背后，仍存在诸多令人生疑的蹊跷之处。\r\n\r\n　　蹊跷一：一个学校的国家二级运动员数量竟抵上几个地市？\r\n\r\n　　根据河南省招办公示信息，漯河高级中学今年享受国家二级运动员(含)以上高考加分为74人，整个漯河市为92人，全省为738人。\r\n\r\n　　据记者查询，漯河市高级中学一个学校的体育加分人数竟超过了河南省绝大多数地市的加分人数。河南18个地市中，比漯河市高级中学加分人数多的仅有3个，分别为郑州市147人、新乡市101人和焦作市150人。河南人口大市南阳、信阳、驻马店的加分人数分别仅为10人、3人和2人。\r\n\r\n　　漯河高级中学办公室主任张旭说，学校二级运动员数量多，可能是由于考生基数大，今年他们学校参加高考考生有2000多人。', null, null, null, '1', '1', null);

