
package cal_java;

import java.sql.*;

public class PaymentGate {
         int id;
	int memberId;
	String cardId;
	float amount;
	Timestamp time;
	String paymentMode;

	public void setId(int id)
	{
		this.id = id;
	}
	public int getId()
	{
		return id;
	}

	public void setMemberId(int memberId)
	{
		this.memberId = memberId;
	}
	public int getMemberId()
	{
		return memberId;
	}
	
	public void setCardId(String cardId)
	{
		this.cardId = cardId;
	}
	public String getCardId()
	{
		return cardId;
	}

	public void setAmount(float amount)
	{
		this.amount = amount;
	}
	public float getAmount()
	{
		return amount;
	}

	public void setTime(Timestamp time)
	{
		this.time = time;
	}
	public Timestamp getTime()
	{
		return time;
	}

	public void setPaymentMode(String paymentMode)
	{
		this.paymentMode = paymentMode;
	}
	public String getPaymentMode()
	{
		return paymentMode;
	}
}
