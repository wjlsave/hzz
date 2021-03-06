<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/10/18
  Time: 14:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/context/mytags.jsp" %>
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>一张图信息窗口</title>
    <link rel="stylesheet"
          href="/static/plug-in/bootstrap-4.3.1-dist/css/bootstrap.css">
    <style type="text/css">
        html {
            height: 100%
        }

        body {
            height: 100%;
            margin: 0px;
            padding: 0px
        }

        #container {
            height: 100%
        }

        .btn {
            font-size: 13px;
            margin-right: 8px;
            margin-top: 8px;
            border: 2px solid #2393f6;
            padding: 2px 10px 2px;
        }

        .box {
            margin: 5px 0px;
            padding: 5px;
            border: 1px solid #D9D9D9;
            border-radius: 10px;
        }

        .box li {
            float: left;
            list-style-type: none;
            margin-left: 15px;
        }
    </style>
</head>

<body>
<div id="infoWindows" class="container"
     style="width:450px;height:650px;border: 1px solid #E0E0E0; box-shadow: #F2F2F2; border-radius: 0px 0px 6px 6px;">
    <div id="title_div" class="row" style="background-color: #2393F6;">
        <div class="col-md-4"><span style="padding-left:10px;">总体概况</span></div>
        <div class="col-md-4 col-md-offset-4"><span style="font-size:18px;">左干渠</span><span style="font-size:14px;">
                    县级</span>
        </div>
    </div>
    <div id="main_div">
        <div class="box">
            <div class="row">
                <div class="col-md-6">
                    <img src="/images/onmap/6.png">
                    <span>水库基本信息</span>
                </div>
                <div class="col-md-6">
                    <span id="archives" class="fa fa-inbox btn" datasrc="${riverInfoVo.riverLake.archivesDoc}" onclick="goArchives()">一河一档</span>
                    <span id="policy" class="fa fa-inbox btn" datasrc="${riverInfoVo.riverLake.policyDoc}" onclick="goPolicy()">一河一策</span>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <span>水库名称：</span>
                    ${riverInfoVo.riverLake.name}
                </div>
                <div class="col-md-6">
                    <span>河长姓名：</span>
                    ${riverInfoVo.hzName}
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <span>防洪高水位：</span>
                    ${riverInfoVo.riverLake.highFloodLevel}m
                </div>
                <div class="col-md-6">
                    <span>正常蓄水位：</span>
                    ${riverInfoVo.riverLake.normalWaterLevel}m
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <span>主汛期防洪限制水位：</span>
                    ${riverInfoVo.riverLake.floodPeriodLevel}m
                </div>
                <div class="col-md-6">
                    <span>总库容：</span>
                    ${riverInfoVo.riverLake.totalCapacity}m³
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <span>调洪库容：</span>
                    ${riverInfoVo.riverLake.floodCapacity}m³
                </div>
                <div class="col-md-6">
                    <span>防洪库容：</span>
                    ${riverInfoVo.riverLake.floodStorage}m³
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <span>水库等级：</span>
                    ${riverInfoVo.riverLake.TSLDivision.divisionLevelName}
                </div>
                <div class="col-md-6">
                    <span>行政区划：</span>
                    ${riverInfoVo.riverLake.TSLDivision.name}
                </div>
            </div>
        </div>
        <div class="box" style="display: none;">
            <div class="row">
                <div class="col-md-12">
                    <img src="/images/onmap/water.png">
                    <span>断面水质情况</span>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">

                </div>
                <div class="col-md-6">
                    <div>待办事项</div>
                    <div>112</div>
                </div>
            </div>
        </div>
        <div class="box" style="display: none;">
            <div class="row">
                <div class="col-md-12">
                    <img src="/images/onmap/7.png">
                    <span>xx级巡河完成情况</span>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">

                </div>
                <div class="col-md-6">
                    <li class="text-center">
                        <p>应巡总数</p>
                        <span>0</span>
                    </li>
                    <li class="text-center">
                        <p>已巡总数</p>
                        <span>0</span>
                    </li>
                    <li class="text-center">
                        <p>达标率</p>
                        <span>0</span>
                    </li>
                </div>
            </div>
        </div>
        <div class="box" style="display: none;">
            <div class="row">
                <div class="col-md-12">
                    <img src="/images/onmap/5.png">
                    <span>年度完成情况</span>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">

                </div>
                <div class="col-md-6">

                </div>
            </div>
        </div>
        <div class="box" style="display: none;">
            <div class="row">
                <div class="col-md-12">
                    <img src="/images/onmap/4.png">
                    <span>问题处理情况</span>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">

                </div>
                <div class="col-md-6">
                    <li class="text-center">
                        <p>问题总数</p>
                        <span>0</span>
                    </li>
                    <li class="text-center">
                        <p>已处理数</p>
                        <span>0</span>
                    </li>
                    <li class="text-center">
                        <p>达标率</p>
                        <span>0</span>
                    </li>
                </div>
            </div>
        </div>
    </div>
</div>
</body>

</html>
