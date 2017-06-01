<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	            //JS 代码
/*
 PID就是他的父ID  省的PID都是1，所以给后台传的的时候直接是1；返回一个JSON；大家都懂！
 这个得到了第一级的
*/
    $(function() {

        $.post("${pageContext.request.contextPath }/regionAction_findAll.action", {
            pid : 1
        }, function(data) {
            for ( var i in data) {
                var op = $("<option value='"+data[i].id+"'>" + data[i].cityname
                        + "</option>");
                $("#province").append(op);
            }
        }, "json"

        )
    })
/*在下面我会解释为什么有 city  和  district (For：回显)
而且大家可以看到我在追加完之后有个判断;
那个是修改回显的时候用到的;单纯的出现是三级联动是用不到的
f2()同理
    通过第一级得到第二级
    $("#province").val()是第一级的ID；注意不是PID!!!
*/
    function f1(city,district) {
        $.post("${pageContext.request.contextPath }/regionAction_findAll.action", {
            pid : $("#province").val()
        }, function(data) {
            $("#city").empty();
            for ( var i in data) {
                var op = $("<option id='city"+data[i].id+"' value='"+data[i].id+"'>" + data[i].cityname
                        + "</option>");
                $("#city").append(op);
                        if(city!=null){
                            $("#city option").each(function(){
                                if($(this).text()==city){
                                    $(this).attr("selected",true)
                                }
                                f2(district)                 
                            })
                        }
            }
        }, "json")
    }

//通过第二级获取到第三级

    function f2(district) {
        $.post("${pageContext.request.contextPath }/regionAction_findAll.action", {
            pid : $("#city").val()
        }, function(data) {
            $("#district").empty();
            for ( var i in data) {
                var op = $("<option>" + data[i].cityname + "</option>");
                $("#district").append(op);
                if(district!=null){
                            $("#district option").each(function(){
                                if($(this).text()==district){
                                    $(this).attr("selected",true)
                                }

                            })
                        }
            }
        }, "json")
    }
    </script>
</head>
<body>
			<tr>
                <td>地址:</td>
                <!--第一级:省 -->
                <td><select id="province" name="province" onchange="f1()">
                        <option>---请选择---</option>
                        <!--第二级:市 -->
                </select> <select id="city" name="city" onclick="f2()">
                        <option>---请选择---</option>
                  <!--第三级:区 -->
                </select> <select name="district" id="district">
                        <option>---请选择---</option>
                </select></td>
            </tr>
            
            

</body>
</html>