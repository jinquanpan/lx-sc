var sc = {
    gethead: function head() {
        var header = document.getElementById("header")
        console.log(header)

        window.onscroll = function () {
            var scrollTop = document.body.scrollTop || document.documentElement.scrollTop;
            if (scrollTop > header.offsetHeight) {
                header.className = "fixed my_header_h w-100"
            } else {
                header.className = ""
            }
        }
    },
    headFoot:function agr(){
        $(function(){
            $.ajax({
                url:"./pro_head.html",
                type:"get",
                success: function(result) {
                    //console.log(result)
                    $(result).replaceAll("header")
                }
            })
        });
        $(function(){
            $.ajax({
                url:"./pro_foot.html",
                type:"get",
                success: function(result) {
                    //console.log(result)
                    $(result).replaceAll("footer")
                }
            })
        })
    },
    zc:function regver(){
        var isNaN=true;

        //dom4步
        //1.查找要触发的元素
        var arg = document.getElementsByName("rad")[0];
        var a = document.getElementsByClassName("xc_a")[0];
        //2.绑定事件
        a.addEventListener("click", function (e) {
            var tar = e.target;
            //3.查找要修改的元素
            //4.修改元素
            if(arg.checked == true)
            {isNaN=true}
            else if(arg.checked == false){alert("请勾选同意下方的协议才可继续"),isNaN=false}
            //console.log(isNaN)
        })



        var form = document.getElementsByClassName("body_xc")[0];
        var txtName = document.querySelectorAll(".body_xc>.input")[0]
        var txtUpw = document.querySelectorAll(".body_xc>.input")[1]
        var txtpho = document.querySelectorAll(".body_xc>.input")[2]
        var txtemi = document.querySelectorAll(".body_xc>.input")[3]
        
        txtName.onfocus = function () {
            var div = this.parentNode.nextElementSibling.firstElementChild.firstElementChild;
            //console.log(div)
            div.className = "";
        }
        txtUpw.onfocus = function () {
            var div = this.parentNode.nextElementSibling.children[1].firstElementChild;
            //console.log(div);
            div.className = "";
            //console.log(div)
        }
        txtpho.onfocus = function () {
            var div = this.parentNode.nextElementSibling.children[2].firstElementChild;
            //console.log(div);
            div.className = "";
            //console.log(div)
        }
        txtemi.onfocus = function () {
            var div = this.parentNode.nextElementSibling.children[3].firstElementChild;
            //console.log(div);
            div.className = "";
            //console.log(div)
        }
        txtName.onblur = function () {
            var reg = /\w{1,10}$/;
            var i = this.parentNode.nextElementSibling.children[0].firstElementChild;
            var txt = this;
            vali(i, reg, txt)
            //console.log(i)
        }
        txtpho.onblur = function () {
            var reg = /^1[3456789]\d{9}$/
            var i = this.parentNode.nextElementSibling.children[2].firstElementChild;
            var txt = this;
            vali(i, reg, txt)
        }
        txtemi.onblur = function () {
            var reg = /^[A-Za-z0-9\u4e00-\u9fa5]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/;
            var i = this.parentNode.nextElementSibling.children[3].firstElementChild;
            var txt = this;
            vali(i, reg, txt)
        }
        txtUpw.onblur = function () {
            var reg = /\w{6,9}$/;
            var i = this.parentNode.nextElementSibling.children[1].firstElementChild;
            var txt = this;
            vali(i, reg, txt)
        }

        function vali(i, reg, txt) {
            //console.log(i);
            if (reg.test(txt.value)) {
                (i.className = "vali_success")
            } else {
                (i.className = "vali_fail")
            }
            //console.log(txt.className)
           
        }
       
            
       
        //console.log(spans)
      



        var show=document.querySelectorAll(".xc_a")[0]
           //console.log(show);
        show.addEventListener("click",function(){
            var xhr=new XMLHttpRequest();
            xhr.onreadystatechange=function(){
                if(xhr.readyState==4&&xhr.status==200){
                    var result=xhr.responseText;
                    console.log(result)
                    var code=JSON.parse(result)
                    console.log(code.msg)
                    if(code.msg==3){
                        alert('已有此用户')
                    }else if(code.msg==1){
                        alert("注册成功")
                    }else if(code.msg==2){
                        alert("注册失败")
                    }
                }
            }
            var $inputs=document.querySelectorAll(".body_xc>.input");
            var $gender=document.querySelectorAll(".margin>input");
            var man=$gender[0];
            var woman=$gender[1];
            var  $uname=$inputs[2].value;
            var  $upw=$inputs[3].value;
            var  $upho=$inputs[4].value;
            var  $ueml=$inputs[5].value;
            if(man.checked){
                $gender="1"
            }else if(woman.checked){
                $gender="0"
            }

            var spans=document.querySelectorAll(".p>.div>span")
            if(spans[0].className=="vali_fail"||""){isNaN=false;return isNaN}
           
            if(spans[1].className=="vali_fail"||""){isNaN=false;return isNaN}
          
            if(spans[2].className=="vali_fail"||""){isNaN=false;return isNaN}
          
            if(spans[3].className=="vali_fail"||""){isNaN=false;return isNaN}
          
            console.log(isNaN)
            console.log($uname,$upw,$upw,$ueml,$gender)
            xhr.open("get",`userlogin?uname=${$uname}&upwd=${$upw}&phone=${$upho}&email=${$ueml}&gender=${$gender}`,true);
                if(isNaN==true){
                    xhr.send()
                }else if(isNaN==false){}
        })
    }
    
    

}