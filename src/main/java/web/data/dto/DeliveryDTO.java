package web.data.dto;
/*
�̸�              ��?       ����            
--------------- -------- ------------- 
ORDER_NO                 NUMBER(4)      - �ֹ���ȣ(FK)
SENDER_NAME     NOT NULL VARCHAR2(20)   - �����»�� �̸�
SENDER_PHONE    NOT NULL VARCHAR2(50)   - �����»�� �޴�����ȣ
RECIPIENT_NAME  NOT NULL VARCHAR2(20)   - �޴»�� �̸�
RECIPIENT_PHONE NOT NULL VARCHAR2(50)   - �޴»�� �޴�����ȣ
ZIPCODE         NOT NULL VARCHAR2(10)   - �����ȣ
ADDRESS1        NOT NULL VARCHAR2(200)  - �ּ�
ADDRESS2        NOT NULL VARCHAR2(50)   - ���ּ�
ORDER_MESSAGE            VARCHAR2(200)  - ��� �޼���
*/
public class DeliveryDTO {
	private int orderNo;
	private String senderName;
	private String senderPhone;
	private String recipientName;
	private String recipientPhone;
	private String zipcode;
	private String address1;
	private String address2;
	private String orderMessage;
	
	public DeliveryDTO() {
		// TODO Auto-generated constructor stub
	}

	public int getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}

	public String getSenderName() {
		return senderName;
	}

	public void setSenderName(String senderName) {
		this.senderName = senderName;
	}

	public String getSenderPhone() {
		return senderPhone;
	}

	public void setSenderPhone(String senderPhone) {
		this.senderPhone = senderPhone;
	}

	public String getRecipientName() {
		return recipientName;
	}

	public void setRecipientName(String recipientName) {
		this.recipientName = recipientName;
	}

	public String getRecipientPhone() {
		return recipientPhone;
	}

	public void setRecipientPhone(String recipientPhone) {
		this.recipientPhone = recipientPhone;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public String getAddress1() {
		return address1;
	}

	public void setAddress1(String address1) {
		this.address1 = address1;
	}

	public String getAddress2() {
		return address2;
	}

	public void setAddress2(String address2) {
		this.address2 = address2;
	}

	public String getOrderMessage() {
		return orderMessage;
	}

	public void setOrderMessage(String orderMessage) {
		this.orderMessage = orderMessage;
	}
	
}
