<%@ Page Title="" Language="C#" MasterPageFile="~/MasterSite.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="PE_GrpProject.Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="bg-white pt-16">
        <div class="px-4 py-16 mx-auto max-w-2xl sm:px-6 sm:py-24 lg:max-w-7xl lg:px-8">
            <div class="mt-6 gap-x-6 gap-y-10 grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 xl:gap-x-8">
                <asp:Repeater ID="rptFruits" runat="server">
                    <ItemTemplate>
                        <div class="group relative">
                            <div class="aspect-h-1 aspect-w-1 bg-gray-200 w-full overflow-hidden rounded-md lg:aspect-none group-hover:opacity-75 lg:h-80">
                                <img src='<%# Eval("Image") %>' alt="Fruit Image" class="h-full w-full object-cover object-center lg:h-full lg:w-full">
                            </div>
                            <div class="mt-4 flex justify-between">
                                <div>
                                    <h3 class="text-gray-700 text-sm font-bold">
                                        <a href="#">
                                            <span aria-hidden="true" class="inset-0 absolute"></span>
                                            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                                            <%# Eval("Name") %>
                                        </a>
                                    </h3>
                                    <p class="mt-1 text-gray-500 text-sm">RM <%# Eval("Price") %></p>
                                </div>
                            </div>
                        </div>
                        <div class="mt-4 flex items-center justify-center">
                            <asp:Button ID="btnAddToCart" runat="server" Text="Add to Cart" CssClass="bg-indigo-600 px-1.5 py-2 text-white rounded-md text-sm font-semibold shadow-sm hover:bg-indigo-500 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-600" CommandName="AddToCart" CommandArgument='<%# Eval("Id") %>' OnClick="AddToCart"/>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </div>
</asp:Content>
