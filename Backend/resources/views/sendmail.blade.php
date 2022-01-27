<html>
<html lang="en">
<head>
    <title>Order Email</title>
    <style>
        table {
  border-collapse: collapse;
}
    </style>
</head>
<body>
    <table width="700px" bgcolor="#f5f2da">
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td><b>E-Shopper</b></td>
        </tr>
        <tr>
            <td>Thank you for shopping with us. Your order details are as given below:</td>
        </tr>
        </tr>
       
      
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <table width="95%" cellpadding="5" cellspacing="5" bgcolor="#f7f4f4" border-style: groove;>
                    <tr bgcolor="black" style="color:white;">
                    <th>Email</th>
                    <th>Product name</th>
                    <th>Product price</th>
                    <th>Quantity</th>
                    <th>Amount</th>
                    <th>TotalAmount</th>
                    </tr>
                    <tr>
                    <td>{{$email}}</td>
                    <td>{{$product_name}}</td>
                    <td>&#8377;{{$price}}</td>
                    <td>{{$quantity}}</td>
                    <td>&#8377;{{$amount}}</td>
                    <td>&#8377;{{$paidAmount}}</td>
                </tr>
                   
                   
                   
                </tbody>
        </table>
        
              <br> 
       
<table width=100%>
        
        <tr>
            <td>For any enquiries, you can contact us at <a href="#">
pm2792493@gmail.com</a></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td><strong>Thanks & Regards</strong><br>Team E-shopper <br>
                <img src="https://media.istockphoto.com/vectors/online-shopping-cart-add-items-ecommerce-website-or-mobile-app-icon-vector-id1221159137" width="80px" heigh="70px" >
            </td>
        </tr>
        
    </table>
    <p>Thankyou once again!</p>
    </div>
    @include('admin.includes.foot')

</body>
</html>
