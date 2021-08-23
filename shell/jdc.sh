#!/usr/bin/env bash

##判断 JDC类型
if [ $JDC = cdle ]; then
    echo "下载最新 XDD 主程序/n"
    curl -o /ql/sample/cdle/XDD-new https://github.com/vay1314/qinglong-v/raw/master/sample/cdle/XDD
    echo "停止正在运行的 XDD /n"
    pm2 stop JDC
    echo "替换 XDD /n"
    cp -rf /ql/sample/cdle/XDD-new /ql/JDC/JDC
    chmod 777 /ql/JDC/JDC
    rm -rf /ql/sample/cdle/XDD-new
    echo "重新启动 XDD /n"
    pm2 restart JDC
fi

if [ $JDC = huayu ]; then
    echo "下载最新 JDC 主程序/n"
    curl -o /ql/sample/huayu/JDC-new https://github.com/vay1314/qinglong-v/raw/master/sample/huayu/JDC
    echo "停止正在运行的 JDC /n"
    pm2 stop JDC
    echo "替换 JDC /n"
    cp -rf /ql/sample/huayu/JDC-new /ql/JDC/JDC
    chmod 777 /ql/JDC/JDC
    rm -rf /ql/sample/huayu/JDC-new
    echo "重新启动 JDC /n"
    pm2 restart JDC
fi

exit 0
