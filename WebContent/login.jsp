<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
<title>登录</title>

<link href="css/loginandred.css" media="screen, projection" rel="stylesheet" type="text/css">
<script src="js/jquery-1.2.6.min.js" type=text/javascript></script>
<script src="js/formValidator_min.js" type="text/javascript" charset="UTF-8"></script>
<script src="js/formValidatorRegex.js" type="text/javascript" charset="UTF-8"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $.formValidator.initConfig({ formid: "form1", debug: false, submitonce: true,
            onerror: function (msg, obj, errorlist) {
                //$.map(errorlist,function(msg1){alert(msg1)});
                alert(msg);
            }
        });
        $("#t_UserName").formValidator({ onshow: "5-10个字符", onfocus: "5-10个字符", oncorrect: "该用户名可以注册" }).inputValidator({ min: 5, max: 10, onerror: "输入有误" }).regexValidator({ regexp: "username", datatype: "enum", onerror: "格式有误" });
        $("#iptNickName").formValidator({ onshow: "至少4个字符", onfocus: "至少4个字符", oncorrect: "通过" }).inputValidator({ min: 4, empty: { leftempty: false, rightempty: false, emptyerror: "输入有误" }, onerror: "输入有误" });
        $("#t_UserPass").formValidator({ onshow: "至少6个字符", onfocus: "至少6个字符", oncorrect: "密码合法" }).inputValidator({ min: 6, empty: { leftempty: false, rightempty: false, emptyerror: "输入有误" }, onerror: "输入有误" });
        $("#t_RePass").formValidator({ onshow: "请再次输入密码", onfocus: "请再次输入密码", oncorrect: "密码一致" }).inputValidator({ min: 6, empty: { leftempty: false, rightempty: false, emptyerror: "输入有误" }, onerror: "输入有误" }).compareValidator({ desid: "t_UserPass", operateor: "=", onerror: "密码不一致" });
        $("#iptName").formValidator({ onshow: "至少4个字符", onfocus: "至少4个字符", oncorrect: "通过" }).inputValidator({ min: 4, empty: { leftempty: false, rightempty: false, emptyerror: "输入有误" }, onerror: "输入有误" });
        $("#iptCard").formValidator({ onshow: "15或18位的身份证", onfocus: "15或18位的身份证", oncorrect: "输入正确" }).functionValidator({ fun: isCardID });
        $("#t_Email").formValidator({ onshow: "6-100个字符", onfocus: "6-100个字符", oncorrect: "恭喜你,你输对了", defaultvalue: "@" }).inputValidator({ min: 6, max: 100, onerror: "长度非法" }).regexValidator({ regexp: "^([\\w-.]+)@(([[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}.)|(([\\w-]+.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(]?)$", onerror: "格式不正确" });
    });
    function test1(obj) {
        if (obj.value == "全角字符当做1个长度") {
            $.formValidator.getInitConfig("1").wideword = false;
            obj.value = "全角字符当做2个长度";
        }
        else {
            $.formValidator.getInitConfig("1").wideword = true;
            obj.value = "全角字符当做1个长度";
        }

    }

</script>
</head>

<body>
<!--登录开始-->
    <div class="reg login">
    
        <form action="logincheck.jsp" method="post" name="form1" id="form1">
            <dl>
                <div style="height:17px; overflow:hidden"></div>
                <dd><span class="title">登录账号：</span><input class="reg_input" name="t_UserName" id="t_UserName" onblur="checkusername(this.value);" type="text" /><span id="t_UserNameTip" class="onshow"></span></dd>
                <dd><span class="title">登录密码：</span><input class="reg_input" onblur="return checkpasswd(this);" id="t_UserPass" name="t_UserPass" type="password"/><span id="t_UserPassTip" class="onshow"></span></dd>
            </dl>
            <div class="f_reg_but"><input id="button" name="button" type="submit" value="登录" class="l_button"/><span class="clew_txt">还没账号？<a href="reg.jsp">立即注册</a></span></div>
        </form>                      
    </div>
<!--登录结束-->   
</body>
</html>
