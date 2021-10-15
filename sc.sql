set names utf8;
drop database if exists ;
create database sc charset=utf8;
use sc;
create table sc_index_nav(
    nid int primary key auto_increment,
    pic varchar(256),
    title varchar(32),
    sybtitle varchar(32),
    datails varchar(256),
    anlpic varchar(256)
);
INSERT INTO sc_index_nav VALUES
(NULL,'img/page1_icon1_e5acbec.png','神策分析','Sensors Analytics','针对企业级客户的自助式用户行为分析平台。实时数据采集、建模、分析，驱动市场营销、产品优化、用户运营、管理监控','img/page1_right1_7a5706a.png'),
(NULL,'img/page1_icon5_f7421e7.png','神策用户画像','Sensors Personas','全端采集用户行为数据，整合业务数据等多种数据源，帮助企业构建体系化用户标签图书馆，输出用户画像，赋能业务实现用户精细化运营和精准营销。','img/page1_right5_62b8ccb.png'),
(NULL,'img/page1_icon2_f146276.png','神策智能运营','Sensors Focus','集活动创建、执行、管理、反馈、迭代为一体的自动化平台，能够通过用户行为、属性、标签等数据筛选受众，实现目标人群的精准触达，提升关键指标和运营效率。','img/page1_right2_927562e.png'),
(NULL,'img/page1_icon3_df23e71.png ','神策智能推荐','Sensors Recommender','基于用户行为分析的全流程智能推荐系统。实现对用户“千人千面”的个性化内容推荐，改善用户体验，持续提升核心业务指标。','img/page1_right3_4b6a53d.png'),
(NULL,'img/page1_icon4_62118e4.png','神策客景','Sensors Journey','基于行为数据的客户全生命周期分析系统。客户分级洞悉客群健康状态，预知高净值客户流失风险，挖掘客户生命周期价值。','img/page1_right4_0e19757.png');

create table sc_index_introduce(
    iid int primary key auto_increment,
    title varchar(32),
    datails varchar(256),
    pic varchar(256)
);
INSERT INTO sc_index_introduce VALUES
(NULL,'基础数据采集与建模','全面采集前端、后端和历史产生的所有数据，支持多种埋点方式，为企业建立完整数据仓库，深度挖掘数据价值。','img/page2_1_4aa43ef.png'),
(NULL,'PaaS平台扩展','灵活扩展分析能力，开放平台接口，实时访问数据，无缝对接三方系统，实现企业端到端的深度分析需求。','img/page2_2_5caf803.png'),
(NULL,'私有化部署','拥有大数据行业丰富的部署经验，支撑 500 家企业稳定、高效的系统运行，为你数据业务的长期发展保驾护航。神策分析同时支持 SaaS 部署模式。','img/page2_3_1969c67.png');

CREATE TABLE sc_index_killint(
    kid INT PRIMARY KEY AUTO_INCREMENT,
    pic VARCHAR(256),
    title VARCHAR(64),
    datails VARCHAR(256)
);
INSERT INTO sc_index_killint VALUES
(NULL,'img/l4_fa27281.png','赵军科 百联 全渠道大数据平台总监','对百联这样的大型集团企业，数据安全尤为重要，神策提供成熟的私有化部署方案，完全满足百联全渠道对数据安全的要求；同时百联全渠道已经有自己的大数据平台，在选型的时候，考虑新引进的数据工具能和已有的数据平台整合，而神策数据提供的PaaS 服务支持与现有大数据平台对接。以上两点让百联全渠道决定选择神策。'),
(NULL,'img/l1_90f0c74.png','廖书锋 绿城服务 高级数据工程师','从初识神策数据到正式建立合作过程中的每一个环节，接触到的售前、销售顾问、客户成功、分析师等神策的每一个员工都具备极其专业的素养。此外，提交的方案，更是体现神策数据行业专业性。且神策数据的产品性能、功能、售后流程、服务皆有圈内同行背书，颇受好评，交给这样的服务商比较放心。'),
(NULL,'img/l2_4f53c25.png','付仁杰 驴妈妈集团 智能数据部高级总监','神策的本地私有化部署方案，满足了我们对数据安全的管控要求，在本地私有化部署的前提下，可以满足后续我们交易行为集成分析需要。这使得业务运营团队可以更便捷地进行行为+交易的运营过程性分析。对于大数据团队来说，也可以减轻一部分繁杂的行为数据ETL常规开发工作，让团队更专注于内部更加核心的数据及其深度分析挖掘，从而提升总体企业价值。'),
(NULL,'img/l3_12dca92.png','刘幸 货拉拉大数据总监','神策数据的引入，是遴选了市面主流数据分析产品，有感于神策产品在技术上的钻研与创新，同时神策数据的服务也极具专业性，随时随地都能得到有效响应，事实上，企业实现全面的数据驱动，也有很长的路要走，可以分五步：一是建立数据体系，二是数据化运营，三是数据驱动业务发展，四是打造智慧型企业，五是驱动产业链升级。其中，每个阶段不是割裂存在的，都需要不断打磨至极致，因此，我对双方的长期合作有很高的期待，希望未来能为更多人提供更高质量的服务体验，通过不断创新实践，为驱动产业链升级出一份力'),
(NULL,'img/l5_1814b47.png','中国银河证券某负责人','神策分析是我们寻觅已久的一款理想的支持用户行为分析的大数据工具的现实原型。多维指标的灵活交叉分析和数据展现，结合多场景的深度数据分析模型，既能满足管理者随时从整体上把握产品运营概况的需求，又能满足运营人员精准定位、深入分析用户偏好的需要，有效打通了从发现问题到解决问题整条链条上的各个关键节点，借助于神策数据的私有化部署方案，在保证合法合规和数据安全的前提下，我们在移动 App 端尝试并开启了数据采集、分析、发现问题、提出优化、做出更新、再反馈、再迭代的完整运营闭环。');

CREATE TABLE sc_index_custlogo(
    cid INT PRIMARY KEY AUTO_INCREMENT,
    pic VARCHAR(256)
);
INSERT INTO sc_index_custlogo VALUES
(NULL,'img/l1_90f0c74.png'),
(NULL,'img/l2_4f53c25.png'),
(NULL,'img/l3_12dca92.png'),
(NULL,'img/l4_fa27281.png'),
(NULL,'img/l5_1814b47.png');

CREATE TABLE sc_index_business(
    bid INT PRIMARY KEY AUTO_INCREMENT,
    pic VARCHAR(256),
    title VARCHAR(64)
);
INSERT INTO sc_index_business VALUES
(NULL,'img/pc_1_aa6e103.png',"互联网金融"),
(NULL,'img/pc_2_a05a5ca.png',"电子商务"),
(NULL,'img/pc_3_ee0c220.png',"新零售行业"),
(NULL,'img/pc_4_76662bb.png',"证券");

CREATE TABLE sc_analysis_Formation(
    fid INT PRIMARY KEY AUTO_INCREMENT,
    pic VARCHAR(256),
    title VARCHAR(64)
);
INSERT INTO sc_analysis_Formation VALUES
(NULL,'page1_icon2_5377b79.png',"神策分析
(多行业)"),
(NULL,'page1_icon3_1a31f78.png',"神策用户画像"),
(NULL,'page1_icon4_b167591.png',"神策智能运营"),
(NULL,'page1_icon5_203d69b.png',"神策智能推荐"),
(NULL,'page1_icon5_203d69b.png',"神策客景");

CREATE TABLE sc_analysis_Course(
    fid INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(64)
);
INSERT INTO sc_analysis_Course VALUES
(NULL,"文档统一入口"),
(NULL,"正式保用流程"),
(NULL,"关于数据导入"),
(NULL,"关于数据模型"),
(NULL,"关于视频介绍");

CREATE TABLE sc_analysis_business(
    abid INT PRIMARY KEY AUTO_INCREMENT,
    pic VARCHAR(256),
    title VARCHAR(64),
    sybtitle varchar(256)
);
INSERT INTO sc_analysis_business VALUES
(NULL,'10.png',"电商 Demo","从百家电商案例中提炼，涵盖渠道追踪，新客转化，加购促单等场景。"),
(NULL,'1.png',"互联网金融 Demo","对用户行为轨迹全程追踪，从渠道获客、活跃和留存，到购买的多维度分析。"),
(NULL,'2.png',"企业服务 Demo","帮助企业实现潜客获取和管理、客户服务等流程，保障客户续约和提升NPS。"),
(NULL,'3.png',"零售 Demo","给出精准推送、户运营、订单归因、活动评估、优惠运营方面的解决方案。"),
(NULL,'4.png',"文娱 Demo","及时发现内容爆点，从内容查看、互动传播，优化用户体验，提高用户粘性。"),
(NULL,'5.png',"在线教育 Demo","包含核心业务流程，浏览-选课-付费-预约-上课，实时关注关键节点转化率。"),
(NULL,'6.png',"手游 Demo","模拟企业服务典型应用场景，帮助处于不同发展阶段的企业实现潜客。"),
(NULL,'7.png',"证券 Demo","涵盖核心业务开户流程、股票交易、理财产品交易，了解关键节点转化率。"),
(NULL,'8.png',"银行 Demo","分析电子银行平台上的用户行为特征，构建用户分层和用户画像。"),
(NULL,'10.png',"IPTV Demo","优化用户观影体验和改善用户留存，不断提升用户付费和充值转化。");


create table sc_finance_busichal(
    fbid int primary key auto_increment,
    title varchar(32),
    sybtitle varchar(256),
    pic varchar(256)
);

INSERT INTO sc_finance_busichal VALUES
(NULL,'获客成本太高','获客成本高是金融行业亘古不变的难题。大量羊毛党的存在更是让从业者“深恶痛绝”。今天，如何数据分析，甄别优质渠道，改变盲投的现状，是降低获客成本的关键。','d1_6ca83fd.png'),
(NULL,'风控','金融的本质是风险管理。典型的金融借贷业务如抵押贷款、消费贷款、P2P、等都需要“数据风控”识别欺诈用户及评估用户信用等级。','d2_4874117.png'),
(NULL,'复投率','用户高复投率是金融产品可持续发展的必要条件。唯有通过优质的产品体验，精细化运营策略来增加用户粘性，增加留存率与复购率，从而提升用户忠诚度，实现平台持续性收益增长','d3_ed21855.png');

create table sc_finance_Solution(
    fsid int primary key auto_increment,
    title varchar(32),
    puretextone varchar(256),
    sybtitle varchar(256),
    puretexttwo varchar(256),
    pic varchar(256),
    sybpic varchar(256)
);

INSERT INTO sc_finance_Solution VALUES
(NULL,'优化渠道推广',"利用事件分析模型，不仅分析 PV、UV 等基础评估数据，同时定期追踪新用户的投资转化率，不是简单的曝光衡量，而是端到端分析推广效果，让企业依据数据优化渠道推广策略。",
'识别“薅羊毛”渠道','拒绝羊毛党，要从渠道源头抓起。通过新手项目到期之后的留存分析，及时发现次日留存超低的渠道，重点研究，一旦确定，及时调整。',
's1_d4bab34.png','f1_5d9be82.png'),
(NULL,'风控用户画像',"风控模型会使用的客户的基本资料和征信资料。神策分析帮助企业对客户的行为偏好采集和分析，补充了用户画像所需的行为指标，更全面的反映客户的还款能力和还款意愿，增强识别欺诈客户的能力。",
NULL,NULL,'hujin2_2e9b295.jpg','f2_0292aa3.png'),
(NULL,'提升复投率',"追踪用户路径，分析复投转化情况。

用户分群，定向推送促投消息，精细化营销，唤醒沉睡用户。

调整站内推广策略，基于数据分析优化操作体验，提升核心投资产品的关注度。。",
NULL,NULL,'hujin3_ea64a6f.jpg','f3_ed3dfd7.png');

create table sc_user(
    uid int primary key auto_increment,
    uname varchar(32),
    upwd varchar(32),
    email varchar(64),
    phone varchar(11),
    user_name varchar(32),
    gender int
);
INSERT INTO sc_user VALUES
(NULL,'a','123','123@qq.com','131111111111','老潘',1);

create table sc_pic(
    pid int primary key auto_increment,
    pic_route varchar(128),
    uid int,
    foreign key(uid) references sc_user(uid)
);

create table sc_type(
    tid int primary key auto_increment,
    tname varchar(32),
    pid  int,
    foreign key(pid) references sc_pic(pid)
);

create table sc_index(
    xid int primary key auto_increment,
    dow varchar(188),
    newimg varchar(188),
    newimgHead varchar(64),
    newimgMid varchar(64),
    newimgfoot varchar(256)
);
create table sc_state(
    sid int primary key auto_increment,
    uid  int,
    frequency int
);