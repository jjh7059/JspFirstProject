<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<link type="text/css" rel="stylesheet" href="../css/reset_test.css">
<link type="text/css" rel="stylesheet" href="../css/common.css">
<link type="text/css" rel="stylesheet" href="../css/order.css" />
<link type="text/css" rel="stylesheet" href="../css/button.css" />
<title>Insert title here</title>
<style type="text/css">
.error {
	color: tomato;
	display: none;
}
</style>
</head>
<body>
<div class="content_box">
<form id="orderForm" name="orderForm" action="order_action.jsp" method="post">
<div class="order_wrap pay">
	<div class="order_tit">
		<h2>ORDER</h2>
	</div>
	<!-- //order_tit -->
	<div class="order_cont">
		<div class="cart_cont_list">
			<div class="order_table_type">
				<!-- 장바구니 상품리스트 시작 -->
				<table class="goods">
					<colgroup>
						<col><!-- 상품명/옵션 -->
						<!--<col style="width:5%">  수량 -->
						<!--<col style="width:10%">  상품금액 -->
						<!--<col style="width:13%"> 할인/적립 -->
						<col style="width:20%"> <!-- 합계금액 -->
						<!--<col style="width:10%">  배송비 -->
					</colgroup>
					<tbody>
					<tr>
						<td class="td_left">
							<div class="pick_add_cont">
								<span class="pick_add_img">
									<a href="#"><img src="#" width="40" alt="토탈솔루션 시그니처 풀 세트" title="토탈솔루션 시그니처 풀 세트" class="middle" class="imgsize-s" /></a>
								</span>
								<div class="pick_add_info">
									<em><a href="#">토탈솔루션 시그니처 풀 세트</a></em>
									<div class="pick_option_box">
									</div>
									<div class="pick_option_box">
									</div>
									<div class="order_goods_num">수량 :  <span class="fno">1</span></div>
								</div>
							</div>
						</td>
						<td>
							<strong class="order_sum_txt">
								<!-- ￦168,490 -->
								￦ 168,490
							</strong>
						</td>
					</tr>
					</tbody>
				</table>
				<!-- 장바구니 상품리스트 끝 -->
			</div>

		</div>
		<!-- cart_cont_list -->
		<div class="price_sum">
			<div class="price_sum_cont">
				<div class="price_sum_list">
					<dl>
						<dt>총 상품금액<!-- 총 <strong>1</strong> 개의 상품금액  --></dt>
						<dd><strong>168,490</strong></dd>
					</dl>
					<dl>
						<dt>배송비</dt>
						<dd><strong>3,000</strong></dd>
					</dl>
					<dl class="price_total">
						<dt>합계</dt>
						<dd>￦ <strong>168,490</strong>
						</dd>
					</dl>
				</div>
			</div>
		</div>

		<div class="order_view_info">
			<!-- 01. 주문자 정보 -->
			<div class="order_info">
				<div class="order_zone_tit">
					<h4>주문자정보</h4>
					<div id="senderMsg" class="error">주문자 정보를 입력해 주세요.</div>
				</div>
				<div class="order_table_type">
					<table class="table_left">
						<colgroup>
							<col style="width:20%;">
							<col style="width:80%;">
						</colgroup>
						<tbody>
						<tr>
							<th scope="row"><span class="important">주문하시는분</span></th>
							<td class="w100p"><input type="text" id="senderName" name="senderName" value="진주현" maxlength="20"/></td>
						</tr>
						<tr>
							<th scope="row"><span class="important">휴대폰번호</span></th>
							<td class="w100p">
								<input type="text" id="senderPhone" name="senderPhone" value="010-9308-7059" maxlength="20" />
							</td>
						</tr>
						</tbody>
					</table>
				</div>
			</div>
			
			<!-- 02. 배송정보 -->
			<div class="delivery_info">
				<div class="order_zone_tit">
					<h4>배송정보</h4>
					<div id="recipientMsg" class="error">배송 정보를 입력해 주세요.</div>
				</div>

				<div class="order_table_type shipping_info">
					<table class="table_left shipping_info_table">
						<colgroup>
							<col style="width:20%;">
							<col style="width:80%;">
						</colgroup>
						<tbody>
						<tr id="memberinfoApplyTr">
							<th scope="row">회원정보반영</th>
							<td>
								<div class="form_element">
									<div id="memberinfoApplyTr2" class="member_info_apply">
										<input type="checkbox" id="reflectApplyMember" name="reflectApplyMember">
										<label for="reflectApplyMember" class="check_s" onclick="reflectNamePhone()">회원 정보와 동일합니다. <span>(이름/휴대폰번호)</span></label>
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<th scope="row"><span class="important">받으실분</span></th>
							<td class="w100p"><input type="text" id="recipientName" name="recipientName" data-pattern="gdEngKor" maxlength="20"/></td>
						</tr>
						<tr>
							<th scope="row"><span class="important">받으실곳</span></th>
							<td class="member_address">
								<div class="address_postcode">
									<input type="text" id="sample6_postcode" name="zipcode" readonly="readonly" />
									<button type="button" class="btn_post_search" onclick="sample6_execDaumPostcode()">우편번호검색</button>
								</div>
								<div class="address_input">
									<input type="text" id="sample6_address" name="address1" readonly="readonly" />
									<input type="text" id="sample6_detailAddress" name="address2" />
									<input type="hidden" id="sample6_extraAddress" />
								</div>
							</td>
						</tr>
						<tr>
							<th scope="row"><span class="important">휴대폰번호</span></th>
							<td class="w100p">
								<input type="text" id="recipientPhone" name="recipientPhone"/>
							</td>
						</tr>
						<tr>
							<th scope="row">배송 메세지(선택)</th>
							<td class="td_last_say">
								<div class="input_box">
									<select class="order_select">
										<option>부재시 문 앞에 놓아주세요</option>
										<option>경비실에 맡겨주세요</option>
										<option>배송 전 연락 부탁드립니다</option>
										<option>직접 입력</option>
									</select>
									<input type="text" class="orderMessage" name="orderMessage"/>
								</div>
								<script>
                                          $('.order_select').change(function(){
                                              $('.orderMessage').attr('value',$(".order_select option:selected").val());
                                              if($(".order_select option:selected").index() == 3){
                                                  $('.orderMessage').val('').focus();
                                              } else {
                                                  $('.orderMessage').val($(".order_select option:selected").val());
                                              }
                                          });
								</script>
							</td>
						</tr>
						</tbody>
					</table>
				</div>
			</div>
			
			<!-- 04. 결제정보 -->
			<div class="payment_info">
				<div class="order_zone_tit">
					<h4>결제정보</h4>
				</div>

				<div class="order_table_type">
					<table class="table_left">
						<colgroup>
							<col style="width:20%;">
							<col style="width:80%;">
						</colgroup>
						<tbody>
						<tr>
							<th scope="row">상품합계금액</th>
							<td>
								<strong class="fno" id="totalGoodsPrice">168,490</strong>
							</td>
						</tr>
						<tr>
							<th scope="row">배송비</th>
							<td>
								<strong class="fno" id="totalDeliveryChargeView">0</strong>
								<strong class="fno dn" id="totalDeliveryCharge">0</strong>
								<strong class="fno" id="totalDeliveryChargekk" style='font-size:0;'>0</strong>
								<span class="multi_shipping_text"></span>
							</td>
						</tr>
						<tr>
							<th scope="row">최종결제금액</th>
							<td class="fno">
								<input type="hidden" name="settlePrice" value="168490">
								<input type="hidden" name="overseasSettlePrice" value="0" />
								<input type="hidden" name="overseasSettleCurrency" value="KRW" />
								<span class="fno s16">￦</span> <strong id="totalSettlePrice" class="order_payment_sum fno">168,490</strong>
							</td>
						</tr>
						</tbody>
					</table>
				</div>
			</div>
			
			<!-- //payment_info -->
			<!-- 05. 결제 수단 선택 -->
			<div class="payment_progress">
				<div class="order_zone_tit">
					<h4>결제수단 선택 / 결제</h4>
				</div>
				<!-- 05-1 ordPayDiv -->
				<div id="ordPayDiv" class="Main01">
					<ul>
						<li id="settlekindType_pc" onClick="changeclass('Main01')" class="set01">
							<input type="radio" id="settleKind_pc" name="payMethod" value="신용카드" checked />
							<label for="settleKind_pc" class="choice_s">신용카드</label>
						</li>
						<li id="settlekindType_pv" onClick="changeclass('Main03')" class="set03">
							<input type="radio" id="settleKind_pv_input" name="payMethod" value="가상계좌"/>
							<label for="settleKind_pv_input" class="choice_s">가상계좌</label>
						</li>
						<li id="settlekindType_gb" onClick="changeclass('Main04')" class="set04">
							<input type="radio" id="settleKind_gb" name="payMethod" value="무통장입금"/>
							<label for="settleKind_gb" class="choice_s">무통장 입금</label>
						</li>
						<li id="settlekindType_ph" onClick="changeclass('Main05')" class="set05">
							<input type="radio" id="settleKind_ph" name="payMethod" value="휴대폰결제"/>
							<label for="settleKind_ph" class="choice_s">휴대폰결제</label>
						</li>
						<li onClick="changeclass('Main06')" class="set06">
							<input type="radio" id="settleKind_payco_fc_input" name="payMethod" value="페이코"/>
							<label for="settleKind_payco_fc_input" class="choice_payco">PAYCO</label>
						</li>
						<!-- 추가 1026 -->
						<li id="settlekindType_pk" onClick="changeclass('Main07')" class="set07">
							<input type="radio" id="settleKind_pk" name="payMethod" value="카카오페이">
							<label for="settleKind_pk" class="choice_s">카카오페이</label>
						</li>
						<!-- // 추가 1026 -->
					</ul>
					
					<!-- 05-3 payment_final -->
					<div class="payment_final">
						<div class="payment_final_check form_element">
							<input type="checkbox" id="termAgree_orderCheck" class="require" checked="checked">
							<label for="termAgree_orderCheck" class="check_s">(필수) 구매하실 상품의 결제정보를 확인하였으며, 구매진행에 동의합니다.</label>
						</div>
						<div class="btn_center_box">
							<button type="submit" class="btn_order_buy order-buy"><em>결제하기</em></button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</form>
</div>
</body>

<script type="text/javascript">
function sample6_execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var addr = ''; // 주소 변수
            var extraAddr = ''; // 참고항목 변수

            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
            if(data.userSelectedType === 'R'){
                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraAddr !== ''){
                    extraAddr = ' (' + extraAddr + ')';
                }
                // 조합된 참고항목을 해당 필드에 넣는다.
                document.getElementById("sample6_extraAddress").value = extraAddr;
            
            } else {
                document.getElementById("sample6_extraAddress").value = '';
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('sample6_postcode').value = data.zonecode;
            document.getElementById("sample6_address").value = addr;
            // 커서를 상세주소 필드로 이동한다.
            document.getElementById("sample6_detailAddress").focus();
        }
    }).open();
}

//주문자 정보(이름, 휴대전화)를 수령인 정보에 반영하는 이벤트
function reflectNamePhone() {
	if(document.getElementById("recipientName").value != "") {
		document.getElementById("recipientName").value = "";
		document.getElementById("recipientPhone").value = "";
	} else {
		document.getElementById("recipientName").value = document.getElementById("senderName").value;
		document.getElementById("recipientPhone").value = document.getElementById("senderPhone").value;	
	}
}

//결제수단 선택
function changeclass(obj) {
    var NAME = document.getElementById("ordPayDiv");
    NAME.className=obj;
}

//orderForm 입력값 검증
// => 주문정보와 배송정보로 구분하여 하나라도 빈칸이 있으면 해당 정보에 메시지 출력, submit 취소 후 이동
$("#orderForm").submit(function() {
	var submitResult = true;
	$(".error").css("display", "none");
	
	if($("#senderName").val() == "" || $("#senderPhone").val() == "") {
		$("#senderName").focus();
	}
	
	if($("#recipientName").val() == "" || $("#recipientPhone").val() == ""
		|| $("#sample6_postcode").val() == "" || $("#sample6_address").val() == "" 
		|| $("#sample6_detailAddress").val() == "") {
		$("#recipientName").focus();
	}

	if($("#senderName").val() == "" || $("#senderPhone").val() == "") {
		$("#senderMsg").css("display", "block");
		submitResult = false;
	}
	
	if($("#recipientName").val() == "" || $("#recipientPhone").val() == ""
			|| $("#sample6_postcode").val() == "" || $("#sample6_address").val() == "" 
			|| $("#sample6_detailAddress").val() == "") {
		$("#recipientMsg").css("display", "block");
		submitResult = false;
	}
	
	return submitResult;
});

</script>
</html>