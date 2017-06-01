<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
		   <meta charset="UTF-8">
    <!-- <title>全国城市三级联动</title> -->
    <script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
<!--     <style>
        *{
            margin:0;
            padding:0;
        }
        body{
            background-color:#eee;
            font-family:"Microsoft YaHei";
        }
        .container{
            margin-top:100px;
        }
        .title{
            text-align:center;
            color:#990000;
        }
        .info{
            text-align:center;
            margin-top:20px;
        }
        select{
            border:1px solid #993300;
        }
        #province,#city{
            margin-right:10px;
        }
    </style> -->
    
</head>
<body>
 
	 <div class="container">
        <h1 class="title">全国城市三级联动</h1>
        <div class="info">
            <select name="province" id="province">
                <option value="">省份</option>
            </select>
            <select name="city" id="city">
                <option value="">地级市</option>
            </select>
            <select name="district" id="district">
                <option value="">市、县级市</option>
            </select>
        </div>
    </div>
    <script type="text/javascript">
   var province=[
                 {
                     name:"北京市",
                     city:[
                         {
                             name:"北京市",
                             district:["东城区","西城区","崇文区","宣武区","朝阳区","丰台区","石景山区","海淀区","门头沟区","房山区","通州区","顺义区","昌平区","大兴区","怀柔区","平谷区","密云县","延庆县","延庆镇"]
                         }
                     ]
                 },  
                 {
                     name:"上海市",
                     city:[
                         {
                             name:"上海市",
                             district:["黄浦区","卢湾区","徐汇区","长宁区","静安区","普陀区","闸北区","虹口区","杨浦区","闵行区","宝山区?","嘉定区","浦东新区","金山区","松江区","青浦区","南汇区","奉贤区","崇明县","城桥镇"]
                         }
                     ]
                 },
                 {
                     name:"河北省",
                     city:[
                         {
                             name:"石家庄市",
                             district:["长安区","桥东区","桥西区","新华区","裕华区","井陉矿区","辛集市","藁城市","晋州市","新乐市","鹿泉市","井陉县","微水镇","正定县","正定镇","栾城县","栾城镇","行唐县","龙州镇","灵寿县","灵寿镇","高邑县","高邑镇","深泽县","深泽镇","赞皇县","赞皇镇","无极县","无极镇","平山县","平山镇","元氏县","槐阳镇","赵县","赵州镇"]
                         }
                 	]
                 }
                 ]
   $(function(){
       var pro=$("#province");
       var city=$("#city");
       var dAC=$("#district");
       var num1=null;
       var num2=null;
       init();
       pro.change(function(){
           num1=pro.prop("selectedIndex");
           city.find("option").eq(0).siblings().remove();
           dAC.find("option").eq(0).siblings().remove();
           if(num1!==0){
               for(var i=0;i<province[num1-1].city.length;i++){
                   var $temp=$("<option value=\"\">"+province[num1-1].city[i].name+"</option>");
                   city.append($temp);
               }
           }
       });
       city.change(function(){
           num2=city.prop("selectedIndex");
           dAC.find("option").eq(0).siblings().remove();
           if(num2!==0){
               for(var i=0;i<province[num1-1].city[num2-1].district.length;i++){
                   var $temp=$("<option value=\"\">"+province[num1-1].city[num2-1].district[i]+"</option>");
                   dAC.append($temp);
               }
           }
       })
   });

   function init(){
       var pro=$("#province");
       for(var i=0;i<province.length;i++){
           var $temp=$("<option value=\"\">"+province[i].name+"</option>");
           pro.append($temp);
       }
   }
    </script> 
</body>
</html>