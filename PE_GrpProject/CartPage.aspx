<%@ Page Title="" Language="C#" MasterPageFile="~/MasterSite.Master" AutoEventWireup="true" CodeBehind="CartPage.aspx.cs" Inherits="PE_GrpProject.CartPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="CartPageStyle.css" rel="stylesheet" />
    <div class="cart">
         <div class="cart-page">
       <div class="cart-items">
           <h1>Shopping Cart</h1>
           <div class="cart-item">
               <img src="Images/Star%20Fruit.jpg"  alt="Basic Tee Sienna" />
               <div class="item-details">
                   <span>Basic Tee</span>
                   <span>Sienna | Large</span>
                   <span>$32.00</span>
                   <span>In stock</span>
               </div>
               <div class="item-quantity">
                   <asp:DropDownList ID="Quantity1" runat="server">
                       <asp:ListItem Text="1" Value="1"></asp:ListItem>
                       <asp:ListItem Text="2" Value="2"></asp:ListItem>
                       <asp:ListItem Text="3" Value="3"></asp:ListItem>
                   </asp:DropDownList>
               </div>
               <button type="button" class="remove-button">X</button>
           </div>

                   <div class="cart-item">
           <img src="Images/Star%20Fruit.jpg"  alt="Basic Tee Sienna" />
           <div class="item-details">
               <span>Basic Tee</span>
               <span>Sienna | Large</span>
               <span>$32.00</span>
               <span>In stock</span>
           </div>
           <div class="item-quantity">
               <asp:DropDownList ID="DropDownList1" runat="server">
                   <asp:ListItem Text="1" Value="1"></asp:ListItem>
                   <asp:ListItem Text="2" Value="2"></asp:ListItem>
                   <asp:ListItem Text="3" Value="3"></asp:ListItem>
               </asp:DropDownList>
           </div>
           <button type="button" class="remove-button">X</button>
       </div>

                   <div class="cart-item">
           <img src="Images/Star%20Fruit.jpg"  alt="Basic Tee Sienna" />
           <div class="item-details">
               <span>Basic Tee</span>
               <span>Sienna | Large</span>
               <span>$32.00</span>
               <span>In stock</span>
           </div>
           <div class="item-quantity">
               <asp:DropDownList ID="DropDownList2" runat="server">
                   <asp:ListItem Text="1" Value="1"></asp:ListItem>
                   <asp:ListItem Text="2" Value="2"></asp:ListItem>
                   <asp:ListItem Text="3" Value="3"></asp:ListItem>
               </asp:DropDownList>
           </div>
           <button type="button" class="remove-button">X</button>
       </div>
       </div>

       <div class="order-summary">
           <h2>Order summary</h2>
           <div class="summary-item"><span>Subtotal</span><span>$99.00</span></div>
           <div class="summary-item"><span>Shipping estimate</span><span>$5.00</span></div>
           <div class="summary-item"><span>Tax estimate</span><span>$8.32</span></div>
           <div class="summary-item total"><span>Order total</span><span>$112.32</span></div>
           <button type="button" class="checkout-button">Checkout</button>
       </div>
   </div>
    </div>
</asp:Content>
