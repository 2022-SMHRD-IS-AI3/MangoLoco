<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script type="text/javascript"
	src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>

</head>
<body>
<%
	String mList = request.getParameter("tList");
	String pList = request.getParameter("pList");
	String val = request.getParameter("val");

	String[] modelList = mList.split(",");
	String[] price = pList.split(",");
	String[] vall = val.split(",");

	int[] priceList = new int[modelList.length];
	int[] valList = new int[modelList.length];

	for(int i=0; i<modelList.length; i++) {
		priceList[i] = Integer.parseInt(price[i]);
		valList[i] = Integer.parseInt(vall[i]);
	}

	String id = (String)session.getAttribute("id");
	String nick = (String)session.getAttribute("nick");
	int result =0;
	for(int i=0; i<modelList.length; i++){
		
		modelList[i] = modelList[i] + " " + valList[i]+"개";
	}
	for(int i=0; i<priceList.length; i++){
		result += priceList[i] * valList[i];
	}
	String name = Arrays.toString(modelList);
%>
	<script>
		$(function() {
			var IMP = window.IMP; // 생략가능
			IMP.init('imp74313774');
			// TC0ONETIME
			// 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
			// i'mport 관리자 페이지 -> 내정보 -> 가맹점식별코드
			IMP.request_pay({
				pg : "kakaopay", // version 1.1.0부터 지원.
				pay_method : 'card',
				merchant_uid : 'merchant_' + new Date().getTime(),
				/* 
				    merchant_uid에 경우 
				    https://docs.iamport.kr/implementation/payment
				    위에 url에 따라가시면 넣을 수 있는 방법이 있습니다.
				    참고하세요. 
				    나중에 포스팅 해볼게요.
				 */
				name : '주문명:<%=name%>',
				//결제창에서 보여질 이름
				amount : <%=result%>,
				//가격 
				buyer_email : '<%=id%>',
				buyer_name : '<%=nick%>',
				buyer_tel : '010-1234-5678',
				buyer_addr : '서울특별시 강남구 삼성동',
				buyer_postcode : '123-456',
				m_redirect_url : 'https://www.yourdomain.com/payments/complete'
			/*  
			    모바일 결제시,
			    결제가 끝나고 랜딩되는 URL을 지정 
			    (카카오페이, 페이코, 다날의 경우는 필요없음. PC와 마찬가지로 callback함수로 결과가 떨어짐) 
			 */
			}, function(rsp) {
				console.log(rsp);
				if (rsp.success) {
					var msg = '결제가 완료되었습니다.';
					msg += '고유ID : ' + rsp.imp_uid;
					msg += '상점 거래ID : ' + rsp.merchant_uid;
					msg += '결제 금액 : ' + rsp.paid_amount;
					msg += '카드 승인번호 : ' + rsp.apply_num;
				} else {
					var msg = '결제에 실패하였습니다.';
					msg += '에러내용 : ' + rsp.error_msg;
				}
				alert(msg);
			});
		});
	</script>
</body>
</html>