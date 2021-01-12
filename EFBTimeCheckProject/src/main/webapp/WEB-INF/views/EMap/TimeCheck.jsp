<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<style type="text/css">
	#mapDiv{
		display: inline-block;
		width: 1380px;
		position: relative;
	}
	#bossList{
		display: inline-flex;
		position: absolute;
		height: 500px;
		width: 510px;
		background: #808080a3;
		top: 10px;
		right: 10px;
		flex-direction: column;
		vertical-align: bottom;
		overflow: auto;
	}
	#listBtn{
		margin-top: 20px;
		display: inline-block;
		position: absolute;
		height: 200px;
		width: 510px;
		top: 510px;
		right: 10px;
		flex-direction: column;
		vertical-align: bottom;
		overflow: auto;
		text-align: center;
	}
	.lBtn{
		outline: 0;
		border: 0;
		background: black;
		color: white;
		width: 180px;
		height: 20px;
	}
	.lBtn:hover{
		cursor: pointer;
	}
	.eq{
		position: absolute;
		bottom: 300px;
    	left: 50px;
	}
	.dl{
		position: absolute;
		left: 230px;
		top: 40px;
	}
	.ck{
		position: absolute;
		left: 210px;
		top: 380px;
	}
	.ft{
		position: absolute;
		left: 350px;
		top: 480px;
	}
	.fg{
		position: absolute;
		left: 350px;
		top: 690px;
	}
	.cr{
		position: absolute;
		left: 520px;
		top: 240px;
	}
	.rt{
		position: absolute;
		left: 660px;
		top: 180px;
	}
	.uk{
		position: absolute;
		left: 590px;
		top: 470px;
	}
	.zr{
		position: absolute;
		left: 480px;
		top: 670px;
	}
	.dr{
		position: absolute;
		left: 620px;
		top: 660px;
	}
	.kr{
		position: absolute;
		left: 860px;
		top: 90px;
	}
	.th{
		position: absolute;
		left: 1000px;
		top: 210px;
	}
	.AllBtn{
		border: 0;
		outline: 0;
		background: black;
		color: white;
	}
	.AllBtn:hover{
		cursor: pointer;
	}
</style>
</head>
<body>
	<div id="mapDiv">
		<img alt="resources/img/EMap.PNG" src="resources/img/EMap.PNG">
		<button class="eq AllBtn" id="eq1">1채널 에쿠진</button>
		<button class="eq AllBtn" id="eq2" style="bottom:270px;">2채널 에쿠진</button>
		<button class="dl AllBtn" id="dl1">1채널 델린져</button>
		<button class="dl AllBtn" id="dl2" style="top:70px;">2채널 델린져</button>
		<button class="ck AllBtn" id="ck1">1채널 크카툼</button>
		<button class="ck AllBtn" id="ck2" style="top:410px;">2채널 크카툼</button>
		<button class="ft AllBtn" id="ft1">1채널 플란타리온</button>
		<button class="ft AllBtn" id="ft2" style="top:510px;">2채널 플란타리온</button>
		<button class="fg AllBtn" id="fg1">1채널 프리기몬</button>
		<button class="fg AllBtn" id="fg2" style="top:720px;">2채널 프리기몬</button>
		<button class="cr AllBtn" id="cr1">1채널 코르니겐</button>
		<button class="cr AllBtn" id="cr2" style="top:270px;">2채널 코르니겐</button>
		<button class="rt AllBtn" id="rt1">1채널 리케르타</button>
		<button class="rt AllBtn" id="rt2" style="top:210px;">2채널 리케르타</button>
		<button class="uk AllBtn" id="uk1">1채널 움 카르둔</button>
		<button class="uk AllBtn" id="uk2" style="top:500px;">2채널 움 카르둔</button>
		<button class="zr AllBtn" id="zr1">1채널 제피로스</button>
		<button class="zr AllBtn" id="zr2" style="top:700px;">2채널 제피로스</button>
		<button class="dr AllBtn" id="dr1">1채널 드메이론</button>
		<button class="dr AllBtn" id="dr2" style="top:690px;">2채널 드메이론</button>
		<button class="kr AllBtn" id="kr1">1채널 카르바로크</button>
		<button class="kr AllBtn" id="kr2" style="top:120px;">2채널 카르바로크</button>
		<button class="th AllBtn" id="th1">1채널 테레호그</button>
		<button class="th AllBtn" id="th2" style="top:240px;">2채널 테레호그</button>
	</div>
	<div id="bossList">
		
	</div>
	<div id="listBtn">
		<button class = "lBtn" id = "tCheck">지난 시간 삭제</button>
		<button class = "lBtn" id = "clear">초기화</button>
	</div>
	
	<script>
		$('.AllBtn').click(function(){
			var ate = new Date(Date.now() + 1800000);
			var time = ate.getHours() + "시 " + ate.getMinutes() + "분 " + ate.getSeconds() +"초";
			var bossName = $(this).text();
			
			var $input = $('<input type="hidden" value="'+ Date.now() + 1800000 +'">');
			var $div = $('<div>'+ bossName + " " + time +'</div>').css('color','white').css('display','inline-block');
			$('#bossList').append($div);
			$('#bossList').append($input);
		});
		
		$('#tCheck').click(function(){
			$("#bossList input").each(function(){
				var cDate = Date.now() + '0000000';
				var iDate = $(this).val();
				
				if(Number(iDate) > Number(cDate)){
					$(this).prev().remove();
				};
				
			});
		});
		
		$('#clear').click(function(){
			$("#bossList").empty();
		});
	</script>
</body>
</html>