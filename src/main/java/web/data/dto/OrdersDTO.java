package web.data.dto;
/*
�̸�         ��?       ����           
---------- -------- ------------ 
ORDER_NO   NOT NULL NUMBER(4)     - �ֹ���ȣ(PK)
MEMBER_ID  NOT NULL VARCHAR2(20)  - ȸ�����̵�(FK : �������̺� - MEMBER)
ORDER_DATE NOT NULL DATE          - �ֹ�����
PAY_METHOD NOT NULL VARCHAR2(20)  - ��������
ORDER_STATUS NOT NULL NUMBER  - �ֹ�����(�Ա���:0, ����غ�:1, �����:2, ��ۿϷ�:3)
ORDER_BOARD_STATUS NOT NULL NUMBER  - ���������� �ֹ����� ����(�⺻: 1, ����:0)     
*/


public class OrdersDTO {
	private int orderNo;
	private String memberId;
	private String orderDate;
	private String payMethod;
	private int orderStatus;
	private int orderBoardStatus;
	
	public OrdersDTO() {
		// TODO Auto-generated constructor stub
	}

	public int getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}

	public String getPayMethod() {
		return payMethod;
	}

	public void setPayMethod(String payMethod) {
		this.payMethod = payMethod;
	}

	public int getOrderStatus() {
		return orderStatus;
	}

	public void setOrderStatus(int orderStatus) {
		this.orderStatus = orderStatus;
	}

	public int getOrderBoardStatus() {
		return orderBoardStatus;
	}

	public void setOrderBoardStatus(int orderBoardStatus) {
		this.orderBoardStatus = orderBoardStatus;
	}
	
}
