<#include "/front/utils/layout.ftl"/>
<#assign topId = 1 />

<@layout>

    <div id="app">
        <p>{{ message }}</p>

        <br>

        `<template >
            <div>
                <div style="display:inline-flex;margin-top: 10px;">
                    <div>
                        <div class="block2">
                            <div style="display: inline-flex;margin-left: 180px">
                                <el-input style="width: 900px;height:1px;margin-left: -170px; border-color:red;outline:none;cursor:pointer" ></el-input>
                                <el-button  style="margin-left: 20px;width:100px;background: red;color: #FFFFFF">搜索</el-button>
                            </div>
                            <div style="font-size: 12px;margin-top: 20px;">
                                全部结果&nbsp;>&nbsp;
                                <el-tag style="margin-left: 20px"
                                        v-for="tag in tags"
                                        :key="tag.name"
                                        :closable="true"
                                        :type="tag.type"
                                        @close="handleClose(tag)">
                                    {{tag.name}}
                                </el-tag>
                            </div>


                            <div style="margin-top: 10px;"><hr></div>

                            <div style="display: inline-flex;"><p style="font-size: 13px;margin-top: 7px"> 工作地点:</p> &nbsp;&nbsp;&nbsp;<el-button type="text" @click="add(2)" style="color: red">北京</el-button>
                                <el-button type="text" @click="add(1)" style="color: red;margin-left: 40px">上海</el-button>
                                <el-button type="text" @click="add(3)" style="margin-left: 40px">杭州</el-button>
                                <el-button type="text"  @click="add(4)" style="margin-left: 40px">深圳</el-button>
                                <el-button type="text"  @click="add(5)" style="margin-left: 40px">广东</el-button>
                                <el-button type="text"  @click="add(6)" style="margin-left: 40px">成都</el-button>
                                <el-button type="text"  @click="add(7)" style="margin-left: 40px">西安</el-button>
                                <el-button type="text"  @click="add(8)" style="margin-left: 40px">郑州</el-button>
                                <el-button type="text"  @click="add(9)" style="margin-left: 40px">大连</el-button>
                                <el-button type="text"  @click="add(10)" style="margin-left: 40px">重庆</el-button>
                                <el-button type="text"  @click="add(11)" style="margin-left: 40px">福州</el-button>
                                <el-button type="text"  @click="add(12)" style="margin-left: 40px">南昌</el-button>
                                <el-button type="text"  @click="add(13)" style="margin-left: 40px">哈尔滨</el-button>

                            </div>

                            <div style="display: inline-flex"><p style="font-size: 13px;margin-top: 7px"> 期待职位:</p> &nbsp;&nbsp;&nbsp;
                                <el-button type="text" @click="add(17)" >综合</el-button>
                                <el-button type="text" @click="add(18)" style="margin-left: 40px">技术</el-button>
                                <el-button type="text" @click="add(19)" style="margin-left: 40px;color: red">产品</el-button>
                                <el-button type="text" @click="add(20)" style="margin-left: 40px">运营</el-button>
                                <el-button type="text" @click="add(21)" style="margin-left: 40px;color: red">设计</el-button>
                                <el-button type="text" @click="add(22)" style="margin-left: 40px">客服</el-button>
                                <el-button type="text" @click="add(23)" style="margin-left: 40px">市场拓展</el-button>
                                <el-button type="text" @click="add(24)" style="margin-left: 40px">数据</el-button>
                                <el-button type="text" @click="add(25)" style="margin-left: 40px">金融</el-button>
                                <el-button type="text" @click="add(26)" style="margin-left: 40px">销售</el-button>
                                <el-button type="text" @click="add(27)" style="margin-left: 40px">外贸</el-button>

                            </div>
                        </div>
                    </div>
                </div>

                <!--            工作经历-->
                <div style="margin-top: 20px;" id="2">
                    <div class="block3">
                        <div style="display: inline-flex;    font-size: 22px;">高级体验设计师
                            <img src="" style="width: 40px;height: 40px;margin-left: 10px"></img>
                        </div>
                        <div style="display: inline-flex">
                            <div style="font-size: 13px;margin-top: 10px">北京 &nbsp;-&nbsp;设计&nbsp;-&nbsp;信息技术组&nbsp;-&nbsp;2020年05月16日</div>
                            <img src="dist/images/share-icon.png" style="width: 40px;height: 40px;margin-left: 800px"></img>
                            <img src="dist/images/rectangle.png" style="height: 40px;margin-left: 50px"></img>
                        </div>
                        <div style="font-size: 13px;margin-top: 10px">
                            负责海外直播平台的视觉和品牌设计，帮助团队成员了解海外用户的设计趋势<br>
                            高效输出沟通你的设计方案以获得团队的认可，并推动落地执行保证设计的高度还原....
                        </div>
                        <div style="margin-top: 20px;">  <hr/></div>
                        <div style="margin-top: 20px; font-size: 22px;display:  inline-flex">体验体验设计师
                            <img src="" style="width: 40px;height: 40px;margin-left: 10px"></img>
                        </div>
                        <div style="display: inline-flex">
                            <div style="font-size: 13px;margin-top: 10px">北京 &nbsp;-&nbsp;设计&nbsp;-&nbsp;信息技术组&nbsp;-&nbsp;2020年05月16日</div>
                            <img src="dist/images/share-icon.png" style="width: 40px;height: 40px;margin-left: 800px"></img>
                            <img src="dist/images/rectangle.png" style="height: 40px;margin-left: 50px"></img>
                        </div>
                        <div style="font-size: 13px;margin-top: 10px">
                            负责海外直播平台的视觉和品牌设计，帮助团队成员了解海外用户的设计趋势<br>
                            高效输出沟通你的设计方案以获得团队的认可，并推动落地执行保证设计的高度还原....
                        </div>

                        <div style="margin-top: 20px;">  <hr/></div>
                        <div style="margin-top: 20px; font-size: 22px;">相机产品视觉设计师</div>
                        <div style="display: inline-flex">
                            <div style="font-size: 13px;margin-top: 10px">北京 &nbsp;-&nbsp;设计&nbsp;-&nbsp;信息技术组&nbsp;-&nbsp;2020年05月16日</div>
                            <img src="dist/images/share-icon.png" style="width: 40px;height: 40px;margin-left: 800px"></img>
                            <img src="dist/images/rectangle.png" style="height: 40px;margin-left: 50px"></img>
                        </div>
                        <div style="font-size: 13px;margin-top: 10px">
                            负责海外直播平台的视觉和品牌设计，帮助团队成员了解海外用户的设计趋势<br>
                            高效输出沟通你的设计方案以获得团队的认可，并推动落地执行保证设计的高度还原....
                        </div>
                        <div style="margin-top: 20px;">  <hr/></div>


                    </div>
                </div>
                <center>
                    <p style="font-size: 12px;margin-top: 15px">当前显示1-10,共1288个岗位</p>
                </center>
                <div class="pagination">
                    <el-pagination
                            background
                            layout="total, prev, pager, next"
                            :current-page="query.pageNum"
                            :page-size="query.pageSize"
                            :total="pageTotal"
                            @current-change="handlePageChange"
                    ></el-pagination>
                </div>
            </div>
        </template>`


    </div>

    <script>



        new Vue({
            el: '#app',
            methods: {

                handlePageChange(val){
                    this.$set(this.shop,'pageNum',val);
                    this.getData();
                },
                handleClose(tag) {
                    this.tags.splice(this.tags.indexOf(tag), 1);
                },
                add(x){
                    if (x === 1){
                        this.tags.push({name:'上海',type:'success'})
                    }
                    if (x === 2){
                        this.tags.push({name:'北京',type:'success'})
                    }
                    if (x === 3){
                        this.tags.push({name:'杭州',type:'success'})
                    }
                    if (x === 4){
                        this.tags.push({name:'深圳',type:'success'})
                    }
                    if (x === 5){
                        this.tags.push({name:'广东',type:'success'})
                    }
                    if (x === 6){
                        this.tags.push({name:'成都',type:'success'})
                    }
                    if (x === 7){
                        this.tags.push({name:'西安',type:'success'})
                    }
                    if (x === 8){
                        this.tags.push({name:'郑州',type:'success'})
                    }
                    if (x === 9){
                        this.tags.push({name:'大连',type:'success'})
                    }if (x === 10){
                        this.tags.push({name:'重庆',type:'success'})
                    }if (x === 11){
                        this.tags.push({name:'福州',type:'success'})
                    }
                    if (x === 12){
                        this.tags.push({name:'南昌',type:'success'})
                    }
                    if (x === 13){
                        this.tags.push({name:'哈尔滨',type:'success'})
                    }
                    if (x === 14){
                        this.tags.push({name:'兰州',type:'success'})
                    }
                    if (x === 15){
                        this.tags.push({name:'贵阳',type:'success'})
                    }
                    if (x === 17){
                        this.tags.push({name:'综合',type:'success'})
                    }

                    if (x === 18){
                        this.tags.push({name:'技术',type:'success'})
                    }
                    if (x === 19){
                        this.tags.push({name:'产品',type:'success'})
                    }
                    if (x === 20){
                        this.tags.push({name:'运营',type:'success'})
                    }
                    if (x === 21){
                        this.tags.push({name:'设计',type:'success'})
                    }
                    if (x === 22){
                        this.tags.push({name:'客服',type:'success'})
                    }
                    if (x === 23){
                        this.tags.push({name:'市场拓展',type:'success'})
                    }
                    if (x === 24){
                        this.tags.push({name:'数据',type:'success'})
                    }
                    if (x === 25){
                        this.tags.push({name:'金融',type:'success'})
                    }if (x === 26){
                        this.tags.push({name:'销售',type:'success'})
                    }
                    if (x === 27){
                        this.tags.push({name:'外贸',type:'success'})
                    }
                }

            },
            data: {
                message: 'Hello Vue.js!',
                tab:'none',
                tags: [
                    { name: '北京', type: '' },
                    { name: '上海', type: 'success' },
                    { name: '产品', type: 'info' },
                    { name: '设计', type: 'warning' },
                ],

                query:{
                    pageNum: 1,
                    pageSize: 10,
                },
                pageTotal:50,
                user: {
                    pageNum: 1,
                    pageSize: 10,
                },
            }
        })

    </script>

<!-- top -->
<style>


    .block2 {
        padding: 30px;
        background: #fff;
        border: 1px solid #ddd;
        border-radius: 5px;
        width:100%;
        margin-top: -20px;
        height: 100%;
        word-break: break-all
    }
    .block3 {
        padding: 30px;
        background: #fff;
        border: 1px solid #ddd;
        border-radius: 5px;
        width:100%;
        height: 100%;
        margin-top: 20px;
        margin: 6px 0px 22px;
        line-height: 22px;
    }

    .pagination {

        margin-left: 750px;
        margin-top: -10px;
        text-align: center;
    }

    /deep/ .el-upload--text{
        width: 98px !important;
        height: 34px !important;
        display: inline-grid;
        float: left;
        margin-right: 10px;
        border: 1px solid #DCDFE6;
        border-radius: 3px;
    }
    .el-upload--text .inline-block {
        display: inline-block;
        border: 0px dashed #d9d9d9
    }

</style>

</@layout>