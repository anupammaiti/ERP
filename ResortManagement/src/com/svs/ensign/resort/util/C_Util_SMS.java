package com.svs.ensign.resort.util;

import java.io.IOException;
import java.util.Date;

public class C_Util_SMS {

   // private TimeFormatter tF = new AbsoluteTimeFormatter();
	
	/**
	 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR AND CONTRIBUTORS ``AS IS''
	 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED
	 * TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
	 * PURPOSE IS DISCLAIMED.  IN NO EVENT SHALL THE AUTHOR OR CONTRIBUTORS
	 * BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
	 * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
	 * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
	 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
	 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
	 * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
	 * POSSIBILITY OF SUCH DAMAGE.
	 */




	

	


	



	    /*
	     * This method is used to send SMS to for the given MSISDN
	     */
	  /*  public void sendTextMessage(String MSISDN)
	    {

	        // bind param instance is created with parameters for binding with SMSC
	        BindParameter bP = new BindParameter(
	                BindType.BIND_TX,
	                "<user_name>",
	                "<pass_word>",
	                "<SYSTEM_TYPE>",
	                TypeOfNumber.UNKNOWN,
	                NumberingPlanIndicator.UNKNOWN,
	                null);

	        SMPPSession smppSession = null;

	        try
	        {
	            // smpp session is created using the bindparam and the smsc ip address/port
	            smppSession = new SMPPSession("<SMSC_IP_ADDRESS>", 7777, bP);
	        }
	        catch (IOException e1)
	        {
	            e1.printStackTrace();
	        }
	       
	        // Sample TextMessage
	        String message = "This is a Test Message";

	        GeneralDataCoding dataCoding = new GeneralDataCoding(false, true,
	                MessageClass.CLASS1, Alphabet.ALPHA_DEFAULT);

	        ESMClass esmClass = new ESMClass();

	        try
	        {
	            // submitShortMessage(..) method is parametrized with necessary
	            // elements of SMPP submit_sm PDU to send a short message
	            // the message length for short message is 140
	            smppSession.submitShortMessage(
	                    "CMT",
	                    TypeOfNumber.NATIONAL,
	                    NumberingPlanIndicator.ISDN,
	                    "<MSISDN>",
	                    TypeOfNumber.NATIONAL,
	                    NumberingPlanIndicator.ISDN,
	                    MSISDN,
	                    esmClass,
	                    (byte) 0,
	                    (byte) 0,
	                    tF.format(new Date()),
	                    null,
	                    new RegisteredDelivery(SMSCDeliveryReceipt.DEFAULT),
	                    (byte) 0,
	                    dataCoding,
	                    (byte) 0,
	                    message.getBytes());
	        }
	        catch (Exception e)
	        {
	            e.printStackTrace();
	        }
	    }*/
	}


