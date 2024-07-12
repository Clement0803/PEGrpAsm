<%@ Page Title="" Language="C#" MasterPageFile="~/MasterSite.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="PE_GrpProject.Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="bg-white pt-16">
  <div class="mx-auto max-w-2xl px-4 py-16 sm:px-6 sm:py-24 lg:max-w-7xl lg:px-8">
    <div class="mt-6 grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-x-6 gap-y-10 xl:gap-x-8">
      <div class="group relative">
        <div class="aspect-h-1 aspect-w-1 w-full overflow-hidden rounded-md bg-gray-200 lg:aspect-none group-hover:opacity-75 lg:h-80">
          <img src="/Images/Strawberry.jpg" alt="Strawberry" class="h-full w-full object-cover object-center lg:h-full lg:w-full">
        </div>
        <div class="mt-4 flex justify-between">
          <div>
            <h3 class="text-sm text-gray-700 font-bold">
              <a href="#">
                <span aria-hidden="true" class="absolute inset-0"></span>
                Strawberry
              </a>
            </h3>
            <p class="mt-1 text-sm text-gray-500">RM 10</p>
          </div>
          <div class="mt-10 flex items-center justify-center gap-x-6">
            <asp:Button ID="Button1" runat="server" Text="Add to Cart" CssClass="rounded-md bg-indigo-600 px-1.5 py-2 text-sm font-semibold text-white shadow-sm hover:bg-indigo-500 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-600"  CommandArgument="Strawberry" />
          </div>
        </div>
      </div>
      
      <div class="group relative">
          <div class="aspect-h-1 aspect-w-1 w-full overflow-hidden rounded-md bg-gray-200 lg:aspect-none group-hover:opacity-75 lg:h-80">
            <img src="/Images/Mandarins.jpg" alt="Mandarins" class="h-full w-full object-cover object-center lg:h-full lg:w-full">
          </div>
          <div class="mt-4 flex justify-between">
            <div>
              <h3 class="text-sm text-gray-700 font-bold">
                <a href="#">
                  <span aria-hidden="true" class="absolute inset-0"></span>
                  Mandarins
                </a>
              </h3>
              <p class="mt-1 text-sm text-gray-500">Rm 10</p>
            </div>
            <div class="mt-10 flex items-center justify-center gap-x-6">
              <asp:Button ID="Button2" runat="server" Text="Add to Cart" CssClass="rounded-md bg-indigo-600 px-1.5 py-2 text-sm font-semibold text-white shadow-sm hover:bg-indigo-500 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-600"  CommandArgument="Strawberry" />
            </div>          

          </div>
      </div>

      <div class="group relative">
        <div class="aspect-h-1 aspect-w-1 w-full overflow-hidden rounded-md bg-gray-200 lg:aspect-none group-hover:opacity-75 lg:h-80">
          <img src="/Images/Rambutan1.jpg" alt="Rambutan" class="h-full w-full object-cover object-center lg:h-full lg:w-full">
        </div>
        <div class="mt-4 flex justify-between">
          <div>
            <h3 class="text-sm text-gray-700 font-bold">
              <a href="#">
                <span aria-hidden="true" class="absolute inset-0"></span>
                Rambutan
              </a>
            </h3>
            <p class="mt-1 text-sm text-gray-500">RM 10</p>
          </div>
          <div class="mt-10 flex items-center justify-center gap-x-6">
             <asp:Button ID="Button3" runat="server" Text="Add to Cart" CssClass="rounded-md bg-indigo-600 px-1.5 py-2 text-sm font-semibold text-white shadow-sm hover:bg-indigo-500 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-600"  CommandArgument="Strawberry" />
          </div>
        </div>
      </div>

    <div class="group relative">
        <div class="aspect-h-1 aspect-w-1 w-full overflow-hidden rounded-md bg-gray-200 lg:aspect-none group-hover:opacity-75 lg:h-80">
          <img src="/Images/Jambu.jpg" alt="Jambu" class="h-full w-full object-cover object-center lg:h-full lg:w-full">
        </div>
        <div class="mt-4 flex justify-between">
          <div>
            <h3 class="text-sm text-gray-700 font-bold">
              <a href="#">
                <span aria-hidden="true" class="absolute inset-0"></span>
                Jambu
              </a>
            </h3>
            <p class="mt-1 text-sm text-gray-500">RM 10</p>
          </div>
          <div class="mt-10 flex items-center justify-center gap-x-6">
             <asp:Button ID="Button4" runat="server" Text="Add to Cart" CssClass="rounded-md bg-indigo-600 px-1.5 py-2 text-sm font-semibold text-white shadow-sm hover:bg-indigo-500 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-600"  CommandArgument="Strawberry" />
          </div>
        </div>
    </div>

    <div class="group relative">
        <div class="aspect-h-1 aspect-w-1 w-full overflow-hidden rounded-md bg-gray-200 lg:aspect-none group-hover:opacity-75 lg:h-80">
          <img src="/Images/starfruit.jpg" alt="Starfruit" class="h-full w-full object-cover object-center lg:h-full lg:w-full">
        </div>
        <div class="mt-4 flex justify-between">
          <div>
            <h3 class="text-sm text-gray-700 font-bold">
              <a href="#">
                <span aria-hidden="true" class="absolute inset-0"></span>
                Starfruit
              </a>
            </h3>
            <p class="mt-1 text-sm text-gray-500">RM 10</p>
          </div>
          <div class="mt-10 flex items-center justify-center gap-x-6">
             <asp:Button ID="Button5" runat="server" Text="Add to Cart" CssClass="rounded-md bg-indigo-600 px-1.5 py-2 text-sm font-semibold text-white shadow-sm hover:bg-indigo-500 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-600"  CommandArgument="Strawberry" />
          </div>
        </div>
    </div>

    <div class="group relative">
    <div class="aspect-h-1 aspect-w-1 w-full overflow-hidden rounded-md bg-gray-200 lg:aspect-none group-hover:opacity-75 lg:h-80">
      <img src="/Images/Apple.jpg" alt="Apple" class="h-full w-full object-cover object-center lg:h-full lg:w-full">
    </div>
    <div class="mt-4 flex justify-between">
      <div>
        <h3 class="text-sm text-gray-700 font-bold">
          <a href="#">
            <span aria-hidden="true" class="absolute inset-0"></span>
            Apple
          </a>
        </h3>
        <p class="mt-1 text-sm text-gray-500">RM 10</p>
      </div>
      <div class="mt-10 flex items-center justify-center gap-x-6">
        <asp:Button ID="Button6" runat="server" Text="Add to Cart" CssClass="rounded-md bg-indigo-600 px-1.5 py-2 text-sm font-semibold text-white shadow-sm hover:bg-indigo-500 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-600"  CommandArgument="Strawberry" />
      </div>
    </div>
</div>

    <div class="group relative">
        <div class="aspect-h-1 aspect-w-1 w-full overflow-hidden rounded-md bg-gray-200 lg:aspect-none group-hover:opacity-75 lg:h-80">
          <img src="/Images/Banana.jpg" alt="Banana" class="h-full w-full object-cover object-center lg:h-full lg:w-full">
        </div>
        <div class="mt-4 flex justify-between">
          <div>
            <h3 class="text-sm text-gray-700 font-bold">
              <a href="#">
                <span aria-hidden="true" class="absolute inset-0"></span>
                Banana
              </a>
            </h3>
            <p class="mt-1 text-sm text-gray-500">RM 10</p>
          </div>
          <div class="mt-10 flex items-center justify-center gap-x-6">
            <asp:Button ID="Button7" runat="server" Text="Add to Cart" CssClass="rounded-md bg-indigo-600 px-1.5 py-2 text-sm font-semibold text-white shadow-sm hover:bg-indigo-500 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-600"  CommandArgument="Strawberry" />
          </div>
        </div>
    </div>

    <div class="group relative">
        <div class="aspect-h-1 aspect-w-1 w-full overflow-hidden rounded-md bg-gray-200 lg:aspect-none group-hover:opacity-75 lg:h-80">
          <img src="/Images/Grape.jpg" alt="Grape" class="h-full w-full object-cover object-center lg:h-full lg:w-full">
        </div>
        <div class="mt-4 flex justify-between">
          <div>
            <h3 class="text-sm text-gray-700 font-bold">
              <a href="#">
                <span aria-hidden="true" class="absolute inset-0"></span>
                Grape
              </a>
            </h3>
            <p class="mt-1 text-sm text-gray-500">RM 10</p>
          </div>
          <div class="mt-10 flex items-center justify-center gap-x-6">
            <asp:Button ID="Button8" runat="server" Text="Add to Cart" CssClass="rounded-md bg-indigo-600 px-1.5 py-2 text-sm font-semibold text-white shadow-sm hover:bg-indigo-500 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-600"  CommandArgument="Strawberry" />
          </div>
        </div>
    </div>

    </div>
  </div>
</div>

</asp:Content>
