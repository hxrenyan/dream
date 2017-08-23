CREATE TABLE `order_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `type` varchar(3) DEFAULT NULL COMMENT '操作类型：0:待定 1:实名开户 2:充值 3:提现 4:用户授权 5:绑定银行卡 6:解绑银行卡 7:设置交易密码 8:修改交易密码 9：修改银行预留手机号 10:查询银行列表 11:验证交易密码',
  `typeName` varchar(50) NOT NULL COMMENT '操作类型名称',
  `nid` varchar(50) DEFAULT NULL COMMENT '交易流水号',
  `orderNo` varchar(50) DEFAULT NULL COMMENT '订单号',
  `request` text COMMENT '请求信息',
  `response` text COMMENT '返回信息',
  `rabbitMq` text COMMENT 'MQ消息异步通知',
  `exception` text COMMENT '异常信息',
  `status` varchar(1) NOT NULL DEFAULT '0' COMMENT '状态 1处理中 2成功 3失败',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `index_nid` (`nid`) USING BTREE,
  KEY `index_user_id` (`user_id`) USING BTREE,
  KEY `index_orderNo` (`orderNo`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='请求及返回信息表';

-- 员工表
CREATE TABLE `tbl_emp` (
  `empId` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `empName` varchar(50) NOT NULL COMMENT '员工姓名',
  `gender` varchar(6) DEFAULT NULL COMMENT '性别 0-女 1-男',
  `email` varchar(100) DEFAULT NULL COMMENT '电子邮箱',
  `deptId` int(11) NOT NULL COMMENT '用户id',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`empId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='员工信息表';


-- 部门表
CREATE TABLE `tbl_dept` (
  `deptId` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `deptName` varchar(50) NOT NULL COMMENT '部门名称',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`deptId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='部门信息表';
-- 初始化
insert into tbl_dept(deptName)values('技术部'),('财务部'),('行政部'),('产品部')



















