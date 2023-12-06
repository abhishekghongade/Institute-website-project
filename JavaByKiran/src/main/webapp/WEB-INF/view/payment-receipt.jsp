<%@page import="com.jbk.entity.BuyerDetails"%>
<%@page import="java.util.List"%>
<html>

<style>
@import url(https://fonts.googleapis.com/css?family=Roboto:100,300,400,900,700,500,300,100);
*{
  margin: 0;
  box-sizing: border-box;

}
body{
  background: #E0E0E0;
  font-family: 'Roboto', sans-serif;
  background-image: url('');
  background-repeat: repeat-y;
  background-size: 100%;
}
::selection {background: #f31544; color: #FFF;}
::moz-selection {background: #f31544; color: #FFF;}
h1{
  font-size: 1.5em;
  color: #222;
}
h2{font-size: .9em;}
h3{
  font-size: 1.2em;
  font-weight: 300;
  line-height: 2em;
}
p{
  font-size: .7em;
  color: #666;
  line-height: 1.2em;
}

#invoiceholder{
  width:100%;
  hieght: 100%;
  padding-top: 20px;
}
#headerimage{
  z-index:-1;
  position:relative;
  
  overflow:hidden;
  background-attachment: fixed;
  background-size: 1920px 80%;
  background-position: 50% -90%;
}
#invoice{
  position: relative;
  top: 20px;
  margin: 0 auto;
  width: 700px;
  background: #FFF;
}

[id*='invoice-']{ /* Targets all id with 'col-' */
  border-bottom: 1px solid #EEE;
  padding: 30px;
}

#invoice-top{min-height: 120px;}
#invoice-mid{min-height: 120px;}
#invoice-bot{ min-height: 250px;}

.logo{
  float: left;
	height: 60px;
	width: 60px;
	background: url(http://michaeltruong.ca/images/logo1.png) no-repeat;
	background-size: 60px 60px;
}
.clientlogo{
  float: left;
	height: 60px;
	width: 60px;
	background: url(http://michaeltruong.ca/images/client.jpg) no-repeat;
	background-size: 60px 60px;
  border-radius: 50px;
}
.info{
  display: block;
  float:left;
  margin-left: 20px;
}
.title{
  float: right;
}
.title p{text-align: right;}
#project{margin-left: 52%;}
table{
  width: 100%;
  border-collapse: collapse;
}
td{
  padding: 5px 0 5px 15px;
  border: 1px solid #EEE
}
.tabletitle{
  padding: 5px;
  background: #EEE;
}
.service{border: 1px solid #EEE;}
.item{width: 50%;}
.itemtext{font-size: .9em;}

#legalcopy{
  margin-top: 30px;
}
form{
  float:right;
  margin-top: 30px;
  text-align: right;
}


.effect2
{
  position: relative;
}
.effect2:before, .effect2:after
{
  z-index: -1;
  position: absolute;
  content: "";
  bottom: 15px;
  left: 10px;
  width: 50%;
  top: 80%;
  max-width:300px;
  background: #777;
  -webkit-box-shadow: 0 15px 10px #777;
  -moz-box-shadow: 0 15px 10px #777;
  box-shadow: 0 15px 10px #777;
  -webkit-transform: rotate(-3deg);
  -moz-transform: rotate(-3deg);
  -o-transform: rotate(-3deg);
  -ms-transform: rotate(-3deg);
  transform: rotate(-3deg);
}
.effect2:after
{
  -webkit-transform: rotate(3deg);
  -moz-transform: rotate(3deg);
  -o-transform: rotate(3deg);
  -ms-transform: rotate(3deg);
  transform: rotate(3deg);
  right: 10px;
  left: auto;
}



.legal{
  width:70%;
}
</style>

<body>
    <%
        List<BuyerDetails> list = (List<BuyerDetails>) request.getAttribute("buyerde");

        // Check if the list is not empty and retrieve the first element
        if (list != null && !list.isEmpty()) {
            BuyerDetails bd = list.get(0);
    %>
    <div id="invoiceholder">

        <div id="headerimage"></div>
        <div id="invoice" class="effect2">

            <div id="invoice-top">
                <div class="info">
                    <img src="images/tka-logo1.png" alt="">
                </div><!-- End Info -->
                <div class="title">
                    <h1>Invoice</h1>
                    
                </div><!-- End Title -->
            </div><!-- End InvoiceTop -->

            <div id="invoice-mid">
                <div class="info">
                    <h2><%= bd.getBuyerName() %></h2>
                    <p><%= bd.getBuyerEmail() %><br>
                        <%= bd.getBuyerPhone() %></p>
                </div>

                <div id="project">
                    <h2><%= bd.getCourseName() %></h2>
                </div>
            </div><!-- End Invoice Mid -->

            <div id="invoice-bot">
                <div id="table">
                    <table>
                        <tr class="tabletitle">
                            <td class="item"><h2>Course Name</h2></td>
                            <td class="subtotal"><h2>Price</h2></td>
                        </tr>

                        <tr class="service">
                            <td class="tableitem"><p class="itemtext"><%= bd.getCourseName() %></p></td>
                            <td class="tableitem"><p class="itemtext"><%= bd.getCoursePrice() %></p></td>
                        </tr>

                        <tr class="tabletitle">
                           
                            <td class="Rate"><h2>Total</h2></td>
                            <td class="payment"><h2>Rs. <%= bd.getCoursePrice() %></h2></td>
                        </tr>
                    </table>
                </div><!-- End Table -->
                <form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
                    <input type="hidden" name="cmd" value="_s-xclick">
                    <input type="hidden" name="hosted_button_id" value="QRZ7QTM9XRPJ6">
                    <input type="image" src="http://michaeltruong.ca/images/paypal.png" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!">
                </form>

                <div id="legalcopy">
                    <p class="legal"><strong>Thank you for your business!</strong> Payment is expected within 31 days; please process this invoice within that time.
                    </p>
                </div>
            </div><!-- End InvoiceBot -->
        </div><!-- End Invoice -->
    </div><!-- End Invoice Holder -->
    <%
        }
    %>
</body>

</html>
