<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
<!--
	Miniport by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>

<head>
<title>Miniport by HTML5 UP</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="../MangoLoco/src/main/webapp/assets/css/main.css"/>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />

<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script src="https://kit.fontawesome.com/527ad8f39b.js"
	crossorigin="anonymous"></script>
<style>
.filterCate {
	margin: auto;
}
</style>
</head>

<body class="is-preload">
	<%
	String id = (String) session.getAttribute("id");
	String nick = (String) session.getAttribute("nick");
	%>

	<!-- Nav -->
	<nav id="nav">
		<ul class="container">
			<li><a href="#top" style="display: flex; align-items: center;"><i
					class="fa-solid fa-filter"></i>&nbsp; ����</a></li>
			<li><a href="#work" style="display: flex; align-items: center;"><i
					class="fa-solid fa-laptop"></i>&nbsp; ��ǰ</a></li>
			<li><a href="" id="board"
				style="display: flex; align-items: center;"><i
					class="fa-solid fa-clipboard-list"></i>&nbsp; �Խ���</a></li>
			<%
			if (id != null) {
			%>
			<li><span
				style="text-align: right; position: absolute; top: 1px; right: 95px; color: #fff;"><%=nick%>��
					�������</span></li>
			<li style="position: absolute; top: 10px; right: 0px;"><a
				href="LogoutCon" class="logTap" id="logout">�α׾ƿ�</a></li>
			<%
			} else {
			%>
			<li style="position: absolute; top: 10px; right: 0px;"><a
				href="Login.jsp" class="logTap">�α���</a></li>
			<%
			}
			%>

		</ul>
	</nav>
	<div id="cartMain" class="reduction">
		<div id="cartTap">
			��ٱ���
			<ion-icon name="chevron-forward-outline" style="font-size: 25px;"></ion-icon>
		</div>
		<div
			style="position: absolute; width: 80%; height: 50px; left: 10px; top: 20px; font-size: 45px;">
			&nbsp;&nbsp;&nbsp;��ٱ���</div>
		<div id="cartList">
			<!-- ������� ��Ʈ�� ��ǰ�� ���� -->
		</div>
		<div
			style="position: absolute; width: 80%; height: 50px; left: 50%; bottom: 190px; transform: translateX(-50%); font-size: 45px;">
			�� �ݾ�</div>
		<div
			style="position: absolute; width: 80%; height: 50px; background: none; left: 50%; bottom: 140px; transform: translateX(-50%); text-align: right;">
			<span id="result" style="font-size: 32px;">000000000��</span>
		</div>
		<a href="" id="payment"
			style="border-radius: 10px; text-decoration: none; position: absolute; height: 70px; width: 200px; background: #fff; bottom: 30px; right: 10%; transform: translateY(-50%); display: flex; align-items: center; justify-content: center; color: black; font-size: 23px;">
			�����ϱ� </a>
	</div>
	<!-- Home -->
	<article id="top" class="wrapper style1">

		<div
			style="position: relative; left: 24%; top: 13%; width: 170px; height: 130px; background-color: #2f3542; margin-bottom: 50px;">
			<img src="images/mango.png" alt=""
				style="width: 37%; margin-left: 10px; margin-top: 5px;">
			<h1 style="font-size: 2rem; color: #ffffff;">���� �ΰ�</h1>
		</div>
		<div class="search"
			style="position: absolute; left: 50%; top: 24%; transform: translate(-50%, -50%);">
			<input class="inputSearch" type="text" placeholder="�˻��� �Է�">
			<button class="searchBtn">�˻�</button>
		</div>
		<div class="container"
			style="background-color: yellow; height: 500px; width: 1600px; position: relative;">
			<div
				style="background: #2f3542; width: 97%; position: absolute; height: 100%; transform: translate(-50%, -50%); top: 73%; left: 50%;">
			</div>
			<div class="filterCate" style="background: bisque;">������ �׷���</div>
			<div class="filterList"
				style="position: absolute; transform: translate(1%, -5%); background: aqua; border: 10px solid transparent; width: 15%">
				<div class="filter">
					<a data-value="Photoshop"><img class="programs"
						src="images/rg/PhotoShop.png" alt="���伥"
						style="border-radius: 20%;" />
						<div style="text-align: center; margin-top: -5px;">���伥</div> </a> <a
						data-value="Affinity Photo"><img class="programs"
						src="images/rg/affinity photo.png" style="border-radius: 24%;"
						alt="���Ǵ�Ƽ ����" />
						<div style="text-align: center; margin-top: -5px;">���Ǵ�Ƽ ����</div> </a>
					<a data-value="Painter"><img class="programs"
						src="images/rg/painter.png" alt="������" />
						<div style="text-align: center; margin-top: -5px;">������</div> </a> <a
						data-value="Fresco"><img class="programs"
						src="images/rg/adobefresco.png" style="border-radius: 20%;"
						alt="���ν���" />
						<div style="text-align: center; margin-top: -5px;">���ν���</div> </a> <a
						data-value="Procreate"><img class="programs"
						src="images/rg/procreate.png" style="border-radius: 20%;"
						alt="����ũ������Ʈ" />
						<div style="text-align: center; margin-top: -5px;">����ũ������Ʈ</div> </a>
					<a data-value="Paintshop"><img class="programs"
						src="images/rg/paintshop.png" alt="����Ʈ��" />
						<div style="text-align: center; margin-top: -5px;">����Ʈ��</div> </a> <a
						data-value="Artweaver"><img class="programs"
						src="images/rg/artweaver.png" alt="��Ʈ����" />
						<div style="text-align: center; margin-top: -5px;">��Ʈ����</div> </a> <a
						data-value="Clip Studio Paint"><img class="programs"
						src="images/rg/clip studio paint.png" alt="Ŭ����Ʃ���" />
						<div style="text-align: center; margin-top: -5px;">Ŭ����Ʃ���</div> </a> <a
						data-value="PhotoScape"><img class="programs"
						src="images/rg/photoscape.png" alt="���佺������" />
						<div style="text-align: center; margin-top: -5px;">���佺������</div> </a> <a
						data-value="PixelMator"><img class="programs"
						src="images/rg/pixelmator.png" alt="�ȼ�������" />
						<div style="text-align: center; margin-top: -5px;">�ȼ�������</div> </a>
				</div>
			</div>
			<div class="line" style="visibility: hidden"></div>
			<div class="filterCate" style="left: 20.2%;">���� �׷���</div>
			<div class="filterList" style="left: 20%;">
				<div class="filter">
					<a data-value="Illustrator"><img class="programs"
						src="images/vg/Illustrator.png" alt="�Ϸ���Ʈ������" />
						<div style="text-align: center; margin-top: -5px;">�Ϸ���Ʈ������</div> </a>
					<a data-value="Vectornator"><img class="programs"
						src="images/vg/vectornator.png" alt="���ͳ�����" />
						<div style="text-align: center; margin-top: -5px;">���ͳ�����</div> </a> <a
						data-value="Affinity Designer"><img class="programs"
						src="images/vg/affinitydesigner.png" alt="���Ǵ�Ƽ �����̳�" />
						<div style="text-align: center; margin-top: -5px;">���Ǵ�Ƽ �����̳�</div>
					</a> <a data-value="Gravit"><img class="programs"
						src="images/vg/Gravit.png" alt="�׷���" />
						<div style="text-align: center; margin-top: -5px;">�׷���</div> </a> <a
						data-value="Figma"><img class="programs"
						src="images/vg/figma.png" alt="�Ǳ׸�" />
						<div style="text-align: center; margin-top: -5px;">�Ǳ׸�</div> </a> <a
						data-value="Sketch"><img class="programs"
						src="images/vg/sketch.png" alt="����ġ" />
						<div style="text-align: center; margin-top: -5px;">����ġ</div> </a> <a
						data-value="InkScape"><img class="programs"
						src="images/vg/inkcape.png" alt="��ũ��������" />
						<div style="text-align: center; margin-top: -5px;">��ũ��������</div> </a> <a
						data-value="Animate"><img class="programs"
						src="images/vg/adobeanimate.png" alt="�ִϸ���Ʈ" />
						<div style="text-align: center; margin-top: -5px;">�ִϸ���Ʈ</div> </a> <a
						data-value="Corel DRAW"><img class="programs"
						src="images/vg/corel drow.png" alt="�ڷ����" />
						<div style="text-align: center; margin-top: -5px;">�ڷ����</div> </a> <a
						data-value="PaintShop"><img class="programs"
						src="images/vg/paintshop.png" alt="����Ʈ��" />
						<div style="text-align: center; margin-top: -5px;">����Ʈ��</div> </a>
				</div>
			</div>
			<div class="line" style="left: 37.9%; visibility: hidden"></div>
			<div class="filterCate" style="left: 40.2%;">����ũž �ۺ���</div>
			<div class="filterList" style="left: 40%;">
				<div class="filter">
					<a data-value="InDesign"><img class="programs"
						src="images/dp/Adobe InDesign.png" alt="�ε�����" />
						<div>�ε�����</div> </a> <a data-value="Canva"><img class="programs"
						src="images/dp/Canva.png" alt="ĵ��" />
						<div>ĵ��</div> </a> <a data-value="Snappa"><img class="programs"
						src="images/dp/Snappa.png" alt="Snappa" />
						<div>Snappa</div> </a> <a data-value="Lucidpress"><img
						class="programs" src="images/dp/Lucidpress.png" alt="Lucidpress" />
						<div>Lucidpress</div> </a> <a data-value="Venngage"><img
						class="programs" src="images/dp/Venngage.png" alt="Venngage" />
						<div>Venngage</div> </a> <a data-value="Visme"><img
						class="programs" src="images/dp/Visme.png" alt="Visme" />
						<div>Visme</div> </a> <a data-value="Affinity Publisher"><img
						class="programs" src="images/dp/Affinity Publisher.png"
						alt="���Ǵ�Ƽ �ۺ���" />
						<div>���Ǵ�Ƽ �ۺ���</div> </a> <a data-value="Lightroom"><img
						class="programs" src="images/dp/Adobe Lightroom.png" alt="����Ʈ��" />
						<div>����Ʈ��</div> </a> <a data-value="Snapseed"><img
						class="programs" src="images/dp/Snapseed.png" alt="�����õ�" />
						<div>�����õ�</div> </a>
				</div>
			</div>
			<div class="line" style="left: 57.9%; visibility: hidden"></div>
			<div class="filterCate" style="left: 60.2%;">��� �׷���</div>

			<div class="filterList" style="left: 60%;">
				<div class="filter">
					<a data-value="Movavi"><img class="programs" src="images/mg/Movavi.png" alt="��ٺ�" />
						<div>��ٺ�</div>
					</a>
					<a data-value="ActivePresenter"><img class="programs" src="images/mg/ActivePresenter.png"
							alt="��Ƽ����������" />
						<div>��Ƽ����������</div>
					</a>
					<a data-value="Shotcut"><img class="programs" src="images/mg/Shotcut.png" alt="����" />
						<div>����</div>
					</a>
					<a data-value="OpenShot"><img class="programs" src="images/mg/OpenShot.png" alt="���¼�" />
						<div>���¼�</div>
					</a>
					<a data-value="DaVinci Resolve"><img class="programs" src="images/mg/DaVinci Resolve.jfif"
							alt="�ٺ�ġ ������" />
						<div>�ٺ�ġ ������</div>
					</a>
					<a data-value="Video Grabber"><img class="programs" src="images/mg/Video Grabber.jfif"
							alt="Video Grabber" />
						<div>Video Grabber</div>
					</a>
					<a data-value="iMovie"><img class="programs" src="images/mg/iMovie.png" alt="���̹���" />
						<div>���̹���</div>
					</a>
					<a data-value="VideoProc"><img class="programs" src="images/mg/VideoProc.jfif" alt="���� ����" />
						<div>���� ����</div>
					</a>
					<a data-value="Icecream Video Editor"><img class="programs"
							src="images/mg/Icecream Video Editor.png" alt="Icecream Video Editor" />
						<div>Icecream Video Editor</div>
					</a>
					<a data-value="Lightworks"><img class="programs" src="images/mg/Lightworks.png" alt="����Ʈ����" />
						<div>����Ʈ����</div>
					</a>
					<a data-value="VideoPad Video Editor"><img class="programs"
							src="images/mg/VideoPad Video Editor.jfif" alt="�����е�" />
						<div>�����е�</div>
					</a>
					<a data-value="HitFilm Express"><img class="programs" src="images/mg/HitFilm Express.png"
							alt="��Ʈ�ʸ�" />
						<div>��Ʈ�ʸ�</div>
					</a>
					<a data-value="Premiere Pro"><img class="programs" src="images/mg/Adobe Premiere Pro.png"
							alt="�����̾�����" />
						<div>�����̾�����</div>
					</a>
					<a data-value="Microsoft Photos"><img class="programs" src="images/mg/Microsoft Photos.png"
							alt="Microsoft Photos" />
						<div>Microsoft Photos</div>
					</a>
					<a data-value="VSDC Video Editor"><img class="programs" src="images/mg/VSDC Video Editor.jfif"
							alt="VSDC ���� ������" />
						<div>VSDC ���� ������</div>
					</a>
					<a data-value="Final Cut"><img class="programs" src="images/mg/Final Cut.png" alt="���̳���" />
						<div>���̳���</div>
					</a>
					<a data-value="Avid Media Composer"><img class="programs" src="images/mg/Avid Media Composer.png"
							alt="�̵�� ������" />
						<div>�̵�� ������</div>
					</a>
					<a data-value="EDIUS"><img class="programs" src="images/mg/EDIUS X.png" alt="����콺" />
						<div>����콺</div>
					</a>
					<a data-value="After Effects"><img class="programs" src="images/mg/Adobe After Effects.png"
							alt="������ ����Ʈ" />
						<div>������ ����Ʈ</div>
					</a>
					<a data-value="Mocha Pro"><img class="programs" src="images/mg/Mocha Pro.png" alt="Mocha Pro" />
						<div>Mocha Pro</div>
					</a>
					<a data-value="Eagle"><img class="programs" src="images/mg/Eagle.png" alt="Eagle" />
						<div>Eagle</div>
					</a>
					<a data-value="Nuke"><img class="programs" src="images/mg/Nuke.png" alt="��ũ" />
						<div>��ũ</div>
					</a>
				</div>
			</div>
			<div class="line" style="left: 77.8%; visibility: hidden"></div>
			<div class="filterCate" style="left: 80.2%;">3D �׷���</div>
			<div class="filterList" style="left: 80%;">
				<div class="filter">
					<a data-value="Autodesk"><img class="programs"
						src="images/rander/Autodesk.jpg" alt="���䵥��ũ" />
						<div>���䵥��ũ</div> </a> <a data-value="ZBrush"><img class="programs"
						src="images/rander/ZBrush.png" alt="Z�귯��" />
						<div>Z�귯��</div> </a> <a data-value="Artec"><img class="programs"
						src="images/rander/Artec.png" alt="����" />
						<div>����</div> </a> <a data-value="3DCoat"><img class="programs"
						src="images/rander/3DCoat.jpg" alt="3DCoat" />
						<div>3DCoat</div> </a> <a data-value="Geomagic Freeform"><img
						class="programs" src="images/rander/Geomagic Freeform.jfif"
						alt="�������� ������" />
						<div>�������� ������</div> </a> <a data-value="Blender"><img
						class="programs" src="images/rander/Blender.png" alt="����" />
						<div>����</div> </a> <a data-value="Wings 3D"><img class="programs"
						src="images/rander/Wings 3D.png" alt="���� 3D" />
						<div>���� 3D</div> </a> <a data-value="Houdini"><img
						class="programs" src="images/rander/Houdini.png" alt="�ĵ��" />
						<div>�ĵ��</div> </a> <a data-value="MotionBuilder"><img
						class="programs" src="images/rander/MotionBuilder.jpg" alt="��Ǻ���" />
						<div>��Ǻ���</div> </a> <a data-value="Cinema 4D"><img
						class="programs" src="images/rander/Cinema 4D.jfif" alt="�ó׸� 4D" />
						<div>�ó׸� 4D</div> </a>
				</div>
			</div>
			<!-- <div class="container">
					<div class="row">
						<div class="col-4 col-5-large col-12-medium">
							<span class="image fit"><img src="images/pic00.jpg" alt="" /></span>
						</div>
						<div class="col-8 col-7-large col-12-medium">
							<header>
								<h1>Hi. I'm <strong>Jane Doe</strong>.</h1>
							</header>
							<p>And this is <strong>Miniport</strong>, a free, fully responsive HTML5 site template designed by <a href="http://twitter.com/ajlkn">AJ</a> for <a href="http://html5up.net">HTML5 UP</a> &amp; released under the <a href="http://html5up.net/license">CCA license</a>.</p>
							<a href="#work" class="button large scrolly">Learn about what I do</a>
						</div>
					</div>
				</div> -->
		</div>
		<br> <br> <br>
		<div class="container" id="filterResult"></div>
		<footer>
			<a href="#work" id="filterBtn" class="button scrolly"
				style="left: 50%; transform: translate(-50%, 0%); display: flex; align-items: center; justify-content: center; width: 170px;"><ion-icon
					name="filter-outline" style="font-size: 20px; "></ion-icon>&nbsp
				���͸�</a>
		</footer>
	</article>

	<!-- Work -->
	<article id="work" class="wrapper style2">
		<div class="container">
			<div class="row aln-center"></div>
			<footer>
				<!-- <p>Lorem ipsum dolor sit sapien vestibulum ipsum primis?</p>
				<a href="#portfolio" class="button large scrolly">������</a> -->
			</footer>
		</div>
	</article>
	<footer>
		<ul id="copyright">
			<li>&copy; Untitled. All rights reserved.</li>
			<li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
		</ul>
	</footer>
	</div>
	</article>

	<!-- Scripts -->

	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>
	<script type="module"
		src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
	<script nomodule
		src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
	<script>
	let id= '<%=id%>';
	let nick = '<%=nick%>';
	let count = 0; //���� ��µ� ����� ����
	const limit = 6; // �� ���� �ε��ؼ� ����Ұ���
	// ��ũ�� �̺�Ʈ �߻� ��
	$(window).scroll(function() { 
	    if($(window).scrollTop() + $(window).height() == $(document).height()) { // ��ũ���� ������ ������
	        count += limit;
	        // AJAX ��û ������
	        $.ajax({
	            url: 'ReadProductCon',
	            type: 'post',
	            data: "count="+count+"&limit="+limit,
	            dataType:'json',
	            success: function(data) {
	                // �޾ƿ� �����͸� �̿��Ͽ� ȭ�鿡 ������
	                for(let i = 0; i < data.productDTO.length; i++) {
	                    const product = `
	                    <div class="col-4 col-6-medium col-12-small">
	                    <article class="box style2">
	                    <a class="image featured">
	                    <img src="img/${data.productDTO[i].model}.jpg" alt="">
	                    <i class="fa-solid fa-heart small dislike"></i>
	                    </a>
	                    <h3><a href="">${data.productDTO[i].model}</a></h3>
	                    <p>${data.productDTO[i].price}</p>
	                    </article>
	                    </div>`;
	                    $('.row.aln-center').append(product);
	                }
	            }
	        });
	    }
	});
	if(id != null){ // �α����� id�� ��ٱ��� ��� �ҷ��ͼ� ���
		$.ajax({
			url:'CartReadCon',
			type:'post',
			data:"id="+'<%=id%>',
			dataType:'json',
			success:function(data){
				for(let i = 0; i < data.mybasket.length; i++) {
					const basket = `<div class="cartItem">
					<div class="productImgDiv">
					<img class="productImg" src="img/${data.mybasket[i].model}.jpg" alt="">
					<i class="fa-solid fa-circle-xmark"></i>
					</div>
					<div class="titleText">
					<h4 class="title">${data.mybasket[i].model}</h4>
					<h4 class="price">${data.mybasket[i].price}</h4>
					</div>
					<div class="cartCntDiv">
					<a class="downBtn but btnPush">
					<i class="fa-solid fa-caret-down"></i>
					</a>
					<input type="text" class="cartCnt" value="1">
					<a class="upBtn but btnPush">
					<i class="fa-solid fa-caret-up"></i>
					</a>
					</div>
					</div>`;
					$('#cartList').append(basket);
					priceResult();
				}
			}
		})
	}
	$('.filterCate').on({ // ī�װ� hover ���
		'mouseover': function () { // ���콺�� �÷��� ��
			$('.filterList').on({
				'mouseover':function(){
					$(this).css({
					'display': 'block'
					})
				}
			})
			$(this).next('.filterList').css({
				'display': 'block'
			})
		},
		'mouseout': function () { // ���콺�� ���� ��
			$('.filterList').on({
				'mouseout':function(){
					$(this).css({
					'display': 'none'
					})
				}
			})
			$(this).next('.filterList').css({
				'display': 'none'
			})
		}
	})
	var softwareList = [] // ���͸��� ����Ʈ���� ������ ����
	$('.filter a').on({
		'click': function () { // ���� üũ ���
			let thisAttr = $(this).attr('data-value')
			if ($(this).hasClass('checked')) { // üũ �Ǿ������� ����
				$(this).addClass('animate__bounceIn')
				$(this).removeClass('checked animate__bounceIn');
				$(this).children('.fa-check').remove();
				for (let i = 0; i < softwareList.length; i++) {
					if (softwareList[i] == $(this).attr('data-value')) {
						softwareList.splice(i, 1);
						i--;
					}
				}
				(async () => {
					$(`#filterResult a[data-value="${$(this).attr('data-value')}"]`).addClass('animate__bounceOut');
					await sleep(0.7);
					$('#filterResult a').each(function (index, item) { // ���� ��Ͽ��� ����
						if ($(item).attr('data-value') === thisAttr) {
							$(item).remove()
						}
					})
				})();
			} else { // üũ ����, ���� ��� ����
				$(this).addClass('checked animate__bounceIn');
				softwareList.push($(this).attr('data-value'));
				$(this).clone().css({
					'filter': 'brightness(100%)',
					'width': '80px'
				}).appendTo('#filterResult');
				$(`#filterResult a[data-value="${$(this).attr('data-value')}"`).append('<i class="fa-solid fa-circle-xmark"></i>');
				$('#filterResult i').css({
					'color': 'red',
					'right': '0px',
					'top': '-15px',
					'position': 'absolute',
					'font-size': '20px'
				})
				$(this).append('<i class="fa-solid fa-check"></i>');
			}
		}
	})

	$('#filterBtn').on({ // ���͸� ��ư Ŭ��
		'click': function () {
			console.log(softwareList) // ���ʿ� üũ�� ��� ������ ����
			count = 0; 
			count += limit;
	        // AJAX ��û ������
		    $.ajax({ // ���͸��� ��ǰ ��� 6���� ���(�̿ϼ�)
	            url: 'ReadProductCon',
	            type: 'post',
	            data: "count="+count+"&limit="+limit+"&soft="+softwareList,
	            dataType:'json',
	            success: function(data) {
	        // �޾ƿ� �����͸� �̿��Ͽ� ȭ�鿡 ������
		            for(let i = 0; i < data.productDTO.length; i++) {
		            	const product = `
				                       <div class="col-4 col-6-medium col-12-small">
				                       <article class="box style2">
				                       <a class="image featured">
				                       <img src="img/${data.productDTO[i].model}.jpg" alt="">
				                       <i class="fa-solid fa-heart small dislike"></i>
				                       </a>
				                       <h3><a href="">${data.productDTO[i].model}</a></h3>
				                       <p>${data.productDTO[i].price}</p>
				                       </article>
				                       </div>`;
				       	$('.row.aln-center').append(product);
					}
				}
			});
			$('.checked').each(function (index, item) { // üũ�� ��� ����
				$(this).removeClass('checked animate__bounceIn')
				$(this).children('.fa-check').remove();
				$('#filterResult').empty()
				/* softwareList = [] */
			})
		}
	})
	function sleep(sec) { // �ð� ���� �Լ�
		return new Promise(resolve => setTimeout(resolve, sec * 1000));
	}
	$(document).on('click', '#filterResult a', function () { // ���� üũ �����ϸ� ���� �͵� ���� ����
		$(`.filter a[data-value="${$(this).attr('data-value')}"]`).removeClass('checked animate__bounceIn');
		$(`.filter a[data-value="${$(this).attr('data-value')}"]`).children('.fa-check').remove();
		(async () => {
			for (let i = 0; i < softwareList.length; i++) { // ����Ʈ���� ����Ʈ�� �Ҵ�� �ش� ������ ����
				if (softwareList[i] == $(this).attr('data-value')) {
					softwareList.splice(i, 1);
					i--;
				}
			}
			$(this).addClass('animate__bounceOut');
			await sleep(0.7);
			$(this).remove();
		})();
	})

	$('#cartTap').on({ // ��ٱ��� Ŭ���ϸ� ���ȴ� ������
		'click': function () {
			if ($(this).hasClass('extend')) {
				$(this).removeClass('extend');
				$(this).parent().addClass('reduction');
			} else {
				$(this).addClass('extend');
				$(this).parent().removeClass('reduction');
			}
		}
	})
	$('.image.featured').on({
		'mousedown': function () {
			$(this).clone().addClass('fadeIn');
		}
	})
	$(document).ready(function () {
		priceResult();
		$(document).on('click', '.upBtn', function () { // ��ٱ��� ���� ��ǰ�� up ��ư Ŭ�� ��
			let upCnt = $(this).prev().val();
			$(this).prev().val(++upCnt);
			priceResult();
		})
		$(document).on('click', '.downBtn', function () { // ��ٱ��� ���� ��ǰ�� down ��ư Ŭ�� ��
			let downCnt = $(this).next('.cartCnt').val();
			if ($(this).next('.cartCnt').val() > 1) {
				$(this).next('.cartCnt').val(--downCnt);
			}
			priceResult();
		})
		$(document).on('keyup', '.cartCnt', function () { priceResult(); }) // input�� �� ���� �Է� ��
	})
	let result = 0;
	function priceResult() { // ��ٱ��� �� �ݾ� ��� �Լ�
		$('.titleText').each(function (index, item) {
			let price = $(item).children('.price').text().slice(0, -1);
			
			let val = parseInt($(item).next().children('.cartCnt').val())
			result += parseInt(price.replace(/,/g, "")) * val;
			})
		$('#result').text(result.toLocaleString() + '��');
		result = 0;
	}
	$(document).on('click','#payment',function(){
		$('')
		window.location.href = "MovePaymentPageCon?"
	})
		
	var imgSrc = "";
	var titleVal = "";
	var priceVal = 0;
	$(document).on('dragend','.image.featured',function(e){ // �巡�� ��
		$(this).css({
			'cursor': 'pointer'
		})
		$(this).removeClass('animate__bounceIn');
	})
	$(document).on('dragstart','.image.featured',function(e){ // �巡�� ����
		$(this).css({
			'cursor': 'grab'
		})
		$(this).addClass('animate__bounceIn');
		imgSrc = $(this).children('img').attr('src');
		titleVal = $(this).next().children('a').text();
		priceVal = $(this).nextAll('p').text();
	})
	$('#cartList').on({ 
		'dragover': function (e) {
			e.preventDefault();
		}
	})
		
	$(document).on('drop','#cartList', function (e) { // ��ǰ�� ��ٱ��Ͽ� �־��� ��
		e.preventDefault();
		var str = "";
		str +=
				`<div class="cartItem">
				<div class="productImgDiv">
				<img class="productImg" src="${imgSrc}" alt="">
				<i class="fa-solid fa-circle-xmark"></i>
				</div>
				<div class="titleText">
				<h4 class="title">${titleVal}</h4>
				<h4 class="price">${priceVal}��</h4>
				</div>
				<div class="cartCntDiv">
				<a class="downBtn but btnPush">
				<i class="fa-solid fa-caret-down"></i>
				</a>
				<input type="text" class="cartCnt" value="1">
				<a class="upBtn but btnPush">
				<i class="fa-solid fa-caret-up"></i>
				</a>
				</div>
				</div>`;		
		$.ajax({ // ��ٱ��Ͽ� ������ �����ͺ��̽��� ����
			url:'CartInCon',
			type:'post',
			data : "id="+"<%=id%>"+"&title="+titleVal,
			datatype : 'json',
			success:function(){
			}
		})
		let b = true;
		$('.titleText .title').each(function (index, item) { // ���� ��ǰ�̸� input�� ����
			if ($(item).text() == titleVal) {
				let a = $(item).parent().next().children('.cartCnt').val();
				$(item).parent().next().children('.cartCnt').val(++a);
				b = false;
				return b;
			} else {
				b = true;
			}
		})
		if (b) {
			$(this).append(str);
		}
		priceResult();
	})
	$(document).on('mouseover', '.productImgDiv', function () { 
			$(this).children('i').css('display', 'block');
		})
		$(document).on('mouseleave', '.productImgDiv', function () {
			$(this).children('i').css('display', 'none');
		})
		$(document).on('click', '.productImgDiv i', function () { // ��ٱ��Ͽ��� ���� ���
			$(this).closest('.cartItem').remove('');
			let rmtitle = $(this).parent().next().children('.title').text();
			$.ajax({
				url:'CartOutCon',
				data: {
					id: id,
					title: rmtitle
				},
				success:function(){
				}
			})
			priceResult();
		})

		$(document).on('dblclick', '.image.featured', function () { //����Ŭ�� ���ƿ� ���(�̱���)
			if ($(this).children('.small').hasClass('dislike')) {
				$(this).children('.small').removeClass('dislike');
				$(this).children('.small').addClass('animate__bounce');
				 $(this).children('.middle').css({
					'visibility': 'visible'
				 });
				$(this).children('.middle').addClass('animate__fadeOutDown');
			} else {
				$(this).children('.small').addClass('dislike');
			 	$(this).children('.middle').css({
					'visibility': 'hidden'
			 });
			}
		})
		
		$('#board').on('click',function(e){ // �Խ��� �̵� ���
			e.preventDefault();
			window.location.href = "BoardMain.jsp";
		})
	</script>
</body>

</html>