#!/usr/bin/env bash
#加载csv文件数据到hive表，需要传入两个参数，第一个参数是文件的完整路径，第二个参数是hive表名
function loadDataToHive() {
  echo "准备加载数据$1到$2里"
  load data local inpath $1 into table $2
  echo "加载完毕！"
}
loadDataToHive $1 $2
