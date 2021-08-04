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
<link type="text/css" rel="stylesheet" href="../css/layer.css">
<link type="text/css" rel="stylesheet" href="../css/layout.css">
<link type="text/css" rel="stylesheet" href="../css/list.css">
<link type="text/css" rel="stylesheet" href="../css/">
<link type="text/css" rel="stylesheet" href="../css/order.css" />
<link type="text/css" rel="stylesheet" href="../css//chosen.css" />
<link type="text/css" rel="stylesheet" href="../css/order.css" />
<link type="text/css" rel="stylesheet" href="../css/custom.css" />
<title>Insert title here</title>
</head>
<body>
<div class="content_box">
<form id="frmOrder" name="frmOrder" action="./order_ps.php" method="post" target="ifrmProcess">
<div class="order_wrap pay">
			<div class="order_tit">
				<h2>ORDER</h2>
			</div>
			<!-- //order_tit -->

			<div class="order_cont">
				<div class="order_view_info">
				</div>
				<div class="cart_cont_list">

					<div class="order_table_type">
						<!-- 장바구니 상품리스트 시작 -->
						<table class="goods">
							<colgroup>
								<col>					<!-- 상품명/옵션 -->
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

											<!-- //icon_pick_list -->

											<div class="pick_option_box">
											</div>

											<div class="pick_option_box">
											</div>
											<div class="order_goods_num">수량 :  <span class="fno">1</span></div>
										</div>
									</div>
									<!-- //pick_add_cont -->

									<!-- //pick_add_list -->

								</td>
								<td class="td_order_amount" style="display:none">
									<div class="order_goods_num">
										<strong>1개</strong>
									</div>
								</td>

								<td style="display:none">
									<strong class="order_sum_txt price">￦168,490</strong>
								</td>
								<td class="td_benefit" style="display:none">
									<ul class="benefit_list">
										<li class="benefit_mileage js_mileage">
											<em>적립</em>
											<span>회원 <strong>+5,054원</strong></span>
										</li>
									</ul>
								</td>
								<td>
									<strong class="order_sum_txt">
										<!-- ￦168,490 -->
										￦ 168,490
									</strong>
								</td>


								<td class="td_delivery" rowspan="1" style="display:none">
									기본 - 금액별배송비<br/>
									￦0

									<br />
									(택배)
								</td>
							</tr>


							</tbody>
						</table>
						<!-- 장바구니 상품리스트 끝 -->
					</div>

				</div>
				<!-- //cart_cont_list -->

				<div class="price_sum">
					<div class="price_sum_cont">
						<div class="price_sum_list">
							<dl>
								<dt>총 상품금액<!-- 총 <strong>1</strong> 개의 상품금액  --></dt>
								<dd><strong>168,490</strong></dd>
							</dl>
							<dl>
								<dt>배송비</dt>
								<dd><strong>0</strong></dd>
							</dl>
							<dl class="price_total">
								<dt>합계</dt>
								<dd>￦ <strong>168,490</strong>
								</dd>
							</dl>
						</div>
					</div>
					<!-- //price_sum_cont -->
				</div>
				<!-- //price_sum -->


				<div class="order_view_info">
					<!-- 비회원 동의 -->

					<!-- 비회원 동의 -->
					<!-- 01. 주문자 정보 -->
					<div class="order_info">
						<div class="order_zone_tit">
							<h4>주문자정보</h4>
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
									<td class="w100p"><input type="text" id="senderName" name="senderName" value="진주현" data-pattern="gdEngKor" maxlength="20"/></td>
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
					<!-- //order_info -->
					<!-- //01. 주문자 정보 -->
					<!-- 02. 배송정보 -->
					<div class="delivery_info">
						<div class="order_zone_tit">
							<h4>배송정보</h4>
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
												<input type="checkbox" id="reflectApplyMember" name="reflectApplyMember" value="y">
												<label for="reflectApplyMember" class="check_s" onclick="reflectNamePhone()">주문자 정보와 동일합니다. <span>(이름/휴대폰번호)</span></label>
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
											<input type="text" class="message" name="message"/>
										</div>
										<script>
                                            $('.order_select').change(function(){
                                                $('.message').attr('value',$(".order_select option:selected").val());
                                                if($(".order_select option:selected").index() == 3){
                                                    $('.message').val('').focus();
                                                } else {
                                                    $('.message').val($(".order_select option:selected").val());
                                                }
                                            });
										</script>
									</td>
								</tr>
								
								</tbody>
							</table>
						</div>
					</div>
					<!-- //delivery_info -->
					<!-- 02. 배송정보 -->

					<!-- 03. 추가정보 -->
					<!-- //addition_info -->
					<!-- 03. 추가정보 -->
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

					<!-- 04. 결제정보 -->

					<!-- 05. 결제 수단 선택 -->
					<div class="payment_progress">
						<div class="order_zone_tit">
							<h4>결제수단 선택 / 결제</h4>
							<p class="js_pay_content" style="display:none">※ 고객님은 안전거래를 위해 현금으로 결제시 저희 쇼핑몰에서 가입한 구매안전서비스인 KG 이니시스의 구매안전(에스크로)서비스를 이용하실 수 있습니다.</p>
						</div>

						<!-- 05-1 ordPayDiv -->
						<div id="ordPayDiv" class="Main01">
							<ul>
								<li id="settlekindType_pc" onClick="changeclass('Main01')" class="set01">
									<input type="radio" id="settleKind_pc" name="settleKind" value="pc" checked />
									<label for="settleKind_pc" class="choice_s">신용카드</label>
								</li>
								<!-- 영구 숨김 처리 -->
<!--								<li id="settlekindType_pb" onClick="changeclass('Main02')" class="set02">-->
<!--									<input type="radio" id="settleKind_pb_input" name="settleKind" value="gb"/>-->
<!--									<label for="settleKind_pb_input" class="choice_s">계좌이체</label>-->
<!--								</li>-->
								<li id="settlekindType_pv" onClick="changeclass('Main03')" class="set03">
									<input type="radio" id="settleKind_pv_input" name="settleKind" value="gb"/>
									<label for="settleKind_pv_input" class="choice_s">가상계좌</label>
								</li>
								<li id="settlekindType_gb" onClick="changeclass('Main04')" class="set04">
									<input type="radio" id="settleKind_gb" name="settleKind" value="gb"/>
									<label for="settleKind_gb" class="choice_s">무통장 입금</label>
								</li>
								<li id="settlekindType_ph" onClick="changeclass('Main05')" class="set05">
									<input type="radio" id="settleKind_ph" name="settleKind" value="ph"/>
									<label for="settleKind_ph" class="choice_s">휴대폰결제</label>
								</li>
								<li onClick="changeclass('Main06')" class="set06">
									<input type="radio" id="settleKind_payco_fc_input" name="settleKind" value="gb"/>
									<label for="settleKind_payco_fc_input" class="choice_payco">PAYCO</label>
								</li>
								<!-- 추가 1026 -->
								<li id="settlekindType_pk" onClick="changeclass('Main07')" class="set07">
									<input type="radio" id="settleKind_pk" name="settleKind" value="pk">
									<label for="settleKind_pk" class="choice_s">카카오페이</label>
								</li>
								<!-- // 추가 1026 -->
							</ul>
							<!-- 신용카드 -->
							<div class="paySub form_element" id="pcDiv">
								<ol>
									<li>안심클릭 및 인터넷안전결제(IPS)서비스로 128bit SSL로 암호화된 결제 창이 새로 뜹니다.</li>
									<li>결제후, 카드명세서에 [이니시스(INICIS)]로 표시되며, 카드 정보는 상점에 남지 않습니다.</li>
								</ol>
							</div>
							<!-- 계좌이체 -->
							<div class="paySub form_element" id="pbDiv">
								<div class="inline">
									<input type="radio" id="settleKind_pb" name="settleKind" value="pb">
									<label for="settleKind_pb" class="choice_s">일반 계좌이체</label>

									<input type="radio" name="settleKind" id="settleKind_eb" value="eb">
									<label for="settleKind_eb" class="choice_s">에스크로 계좌이체</label>
								</div>
								<ol>
									<li>본인 계좌 정보입력으로 결제금액이 이체되는 서비스입니다.</li>
									<li>인터넷뱅킹과 동일한 보안방식을 적용하므로 안전하며, 상점에 정보가 남지 않습니다.</li>
								</ol>
							</div>
							<!-- 가상계좌 -->
							<div class="paySub form_element" id="pvDiv">
								<div class="inline">
									<input type="radio" id="settleKind_pv" name="settleKind" value="pv">
									<label for="settleKind_pv" class="choice_s">일반 가상계좌</label>

									<input type="radio" name="settleKind" id="settleKind_ev" value="ev">
									<label for="settleKind_ev" class="choice_s">에스크로 가상계좌</label>
								</div>
								<ol>
									<li>1회용 계좌가 생성되며 생성된 계자로 [7일이내] 입금완료 시 입금확인이처리됩니다.</li>
									<li class="point">주의! 가상계좌 입금시, 반드시 은행 / 이름 / 금액이 꼭 일치해야 합니다.</li>
								</ol>
							</div>
							<!-- 무통장 -->
							<div class="paySub form_element" id="gbDiv">
								<ol>
									<li class="point">무통장입금의 경우 입금확인 후부터 배송단계가 진행됩니다.</li>
									<li>반드시 입금 기한 내에 정확한 결제금액을 입금해 주세요.</li>
									<li>입금 기한(주문후 7일)이 지나면 주문은 자동취소 됩니다.</li>
								</ol>
							</div>
							<!-- 휴대폰결제 -->
							<div class="paySub form_element" id="phDiv">
								<ol>
									<li>결제정보가 상점에 남지 않으며, 보안 적용된 결제창이 새로 뜹니다.</li>
									<li>결제후, 핸드폰 요금청구서에 ‘소액결제’로 표시됩니다.</li>
									<li>결제후, 결제건의 취소는 해당 달에만 가능합니다.</li>
								</ol>
							</div>
							<!-- PAYCO -->
							<div class="paySub form_element" id="fcDiv">
								<div class="inline">
									<input type="radio" id="settleKind_payco_fc" name="settleKind" value="fc" onclick="gd_payco_toggle('fc');">
									<label for="settleKind_payco_fc" class="choice_s">PAYCO 신용카드</label>

									<input type="radio" id="settleKind_payco_fp" name="settleKind" value="fp" onclick="gd_payco_toggle('fp');">
									<label for="settleKind_payco_fp" class="choice_s">PAYCO 포인트</label>
								</div>
								<ol>
									<li>PAYCO는 NHN엔터테인먼트의 간편결제 서비스입니다.</li>
									<li>휴대폰과 카드명의자가 동일해야 결제 가능합니다.</li>
									<li>무이자할부는 PAYCO 기준을 따라 적용됩니다.</li>
									<li>PAYCO 주문은 결제변경/취/반품시 전체취소 재결제만 가능합니다. (상담원처리 불가, 쿠폰보유/적용가능한 경우만 해당)</li>
									<li>PAYCO 고객센터 : 1544-6891</li>
								</ol>
							</div>
						</div>
						<!-- 05-1 ordPayDiv -->
						<!-- 05-2 payment_progress_list -->
						<div class="payment_progress_list">
							<div class="js_pay_content">
								<!-- N : 일반결제 시작 -->
								<div id="settlekind_general" class="general_payment">
									<!-- N : 무통장입금 -->
									<div id="settlekind_general_gb" class="pay_bankbook_box">
										<h6>입금자 정보</h6>
										<ul class="pay_bank01">
											<li>
												<strong>입금자명</strong>
												<input type="text" name="bankSender">
											</li>
											<li>
												<strong>입금은행</strong>
												<select name="bankAccount" class="chosen-select" style="width:240px;">
													<option value="">선택하세요</option>
													<option value="1">기업은행 083-086141-04-034 (주)자연물질연구소</option>
												</select>
											</li>
										</ul>
									</div>
									<!-- //pay_bankbook_box -->
									<div style="display:none">
										<div class="card" id="settlekind_general_pc">신용카드 컨텐츠</div>
										<div class="account-bank" id="settlekind_general_pb">계좌이체 컨텐츠</div>
										<div class="virtual-bank" id="settlekind_general_pv">가상계좌 컨텐츠 </div>
										<div class="cellphone" id="settlekind_general_ph">휴대폰 컨텐츠</div>
									</div>
								</div>
								<!-- //general_payment -->
								<!-- N : 일반결제 끝 -->
							</div>

							<!-- N : 현금영수증/계산서 발행 시작 -->
							<div id="receiptSelect" class="cash_tax_get form_element">
								<div id="settlekind_general_gb" class="pay_bankbook_box">
									<h6>현금영수증</h6>
									<ul class="pay_bank01">
										<li id="nonReceiptView">
											<strong>발급여부</strong>
											<input type="radio" id="receiptNon" name="receiptFl" value="n" onclick="gd_receipt_display();" />
											<label for="receiptNon" class="choice_s on">
												<em class="cash_receipt_non">신청안함</em>
												<em class="cash_receipt_pg">현금영수증 (※ 결제창에서 신청)</em>
											</label>
											<span id="cashReceiptView">
											<input type="radio" id="receiptCash" name="receiptFl" value="r" onclick="gd_receipt_display();" />
											<label for="receiptCash" class="choice_s">현금영수증</label>
										</span>
										</li>
									</ul>
								</div>

								<div id="cash_receipt_info" class="cash_receipt_box js_receipt dn">
									<div class="">
										<input type="hidden" name="cashCertFl" value="c" />
										<ul class="pay_bank01 ">
											<li>
												<strong>발급용도</strong>
												<input type="radio" id="cashCert_d" name="cashUseFl" value="d" onclick="gd_cash_receipt_toggle();" checked="checked" />
												<label class="choice_s" for="cashCert_d">소득공제용</label>

												<input type="radio" id="cashCert_e" name="cashUseFl" value="e" onclick="gd_cash_receipt_toggle();" />
												<label class="choice_s" for="cashCert_e">지출증빙용</label>
											</li>
										</ul>
									</div>
									<div class="cash_receipt_list">
										<div id="certNoHp">
											<strong>휴대폰번호</strong> <input type="text" name="cashCertNo[c]" class="number_only" value="01093087059" maxlength="11" />
										</div>
										<div id="certNoBno">
											<strong>사업자번호</strong> <input type="text" name="cashCertNo[b]" class="number_only" value="" maxlength="10" />
										</div>
									</div>
								</div>
								<!-- //cash_receipt_box -->
							</div>
							<!-- //cash_tax_get -->
							<!-- N : 현금영수증/계산서 발행 끝-->

						</div>
						<!-- //payment_progress_list -->
						<!-- 05-2 payment_progress_list -->
						<!-- 05-3 payment_final -->
						<div class="payment_final">
							<div class="payment_final_total" style="display:none">
								<dl>
									<dt>최종 결제 금액</dt>
									<dd><span>￦<strong id="totalSettlePriceView">168,490</strong></span></dd>
								</dl>
							</div>
							<div class="payment_final_check form_element">
								<input type="checkbox" id="termAgree_orderCheck" class="require">
								<label for="termAgree_orderCheck" class="check_s">(필수) 구매하실 상품의 결제정보를 확인하였으며, 구매진행에 동의합니다.</label>
							</div>
							<div class="btn_center_box">
								<button class="btn_order_buy order-buy"><em>결제하기</em></button>
							</div>
						</div>
						<!-- //payment_final -->
						<!-- 05-3 payment_final -->
					</div>
					<!-- //payment_progress -->
					<!-- 05. 결제 수단 선택 -->
				</div>
				<!-- //order_view_info -->
			</div>
			<!-- //order_cont -->
		</div>
		<!-- //order_wrap -->
	</form>
</div>
</body>


<script>
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

//주문자 정보(이름, 휴대전화)를 수령인 정보에 반영하는 버튼 클릭이벤트
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
</script>
</html>