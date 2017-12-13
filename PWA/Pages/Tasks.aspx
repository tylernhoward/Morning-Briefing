<%@ Page Title="" Language="C#" MasterPageFile="~/Briefing.Master" AutoEventWireup="true" CodeBehind="Tasks.aspx.cs" Inherits="PWA.Pages.Tasks" %>
<%@ Register Assembly="ZedGraph.Web" Namespace="ZedGraph.Web" TagPrefix="cc1" %> 

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .checkComplete input{
            width:30px;
            height:30px;
        }
    </style>

	<div id = "todos">
        <h3 class="text-center">Todos</h3>
        <table class="table table-striped table-bordered table-hover">
                
                <tbody>
                    <tr>
                        <th>Complete</th>
                        <th>Date</th>
                        <th>Category</th>
                        <th>Todo</th>
                        <th>Content</th>
                        <th>Actions</th>
                    </tr>
        <asp:ListView ID="TaskGrid" runat="server">
            <ItemTemplate>
                        <tr>
                            <td class="edit notEditable">
                                <asp:CheckBox CssClass="checkComplete" type="checkbox" checked='<%#Eval("Complete").ToString() =="1"%>' runat="server"/>
                            </td>
                            <td class="edit notEditable">
                                <p><%#Eval("DateSet")%>
                                </p>
                            </td>
					        <td class="edit notEditable" >
                                <p><%#Eval("Category")%></p>
                            </td>
                            <td class="edit">
                                <p><%#Eval("Title")%>
                                </p>
                            </td>
                            <td class="edit">
                                <p><%#Eval("Content")%>
                                </p>
                            </td>
                            
                            <td class="actions">
                                <button type="submit" class="btn btn-outline-success savebtn">Save</button>
						        <button class="btn btn-outline-info editbtn" onclick="return false;" >Edit</button>
                                <asp:LinkButton Text ="Delete" CssClass ="btn btn-outline-danger deletebtn" OnClick="Delete_Todo" CommandArgument='<%#Eval("Id")%>' runat="server" />
                            </td>
                        </tr>
				
                
            </ItemTemplate>
            <EmptyDataTemplate>
                <p>Nothing here yet, Add a Todo below!</p>
            </EmptyDataTemplate>
        </asp:ListView>
                    </tbody>
            </table>
             <button class="btn btn-success" data-toggle="modal" data-target="#todoModal" onclick="return false;">New</button>

                <!-- Modal -->
                <div class="modal fade" id="todoModal" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="smodalLabel">Add new Todo</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close" onclick="return false;">
                            <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                            <div class="modal-body">
                                <div class="form-group">
                                    <label for="todocategory">Category</label><br />
                                    <asp:DropDownList ID="todocategory" runat="server">
                                        <asp:ListItem Enabled="true" Text="Select Category" Value="-1"></asp:ListItem>
                                        <asp:ListItem Text="Homework" Value="Homework"></asp:ListItem>
                                        <asp:ListItem Text="Personal" Value="Personal"></asp:ListItem>
                                        <asp:ListItem Text="Work" Value="Work"></asp:ListItem>
                                        <asp:ListItem Text="Other" Value="Other"></asp:ListItem>
                                    </asp:DropDownList>
                                   
                                </div>
                                <div class="form-group">
                                    <label for= "todotitle">Title</label><br />
                                    <asp:TextBox ID="todotitle" runat="server" />
                                    
                                </div>
                                <div class="form-group">
                                    <label for= "todocontent">Content (More info)</label><br />
                                    <asp:TextBox ID="todocontent" runat="server" />
                                    
                                </div>
                            </div>
                            <div class="modal-footer">
                                 <asp:Button id ="btnAdd" CssClass="btn btn-success" OnClick="Add_Todo" runat="server" Text ="Add Todo"/>
                            </div>
                        </div>
                    </div>
                </div>
        </div>
    <br />
    <hr />
    <input id="seeStats" class ="btn btn-info" type="button" value="See Stats" onclick="return false;"/>
	
    <div id="stats">
        <p class="text-center">Task Stats</p>
	    <div class="row justify-content-center">
                <cc1:ZedGraphWeb ID="ZedGraphWeb1" runat="server" OnRenderGraph="ZedGraphWeb1_RenderGraph"></cc1:ZedGraphWeb>
                <cc1:ZedGraphWeb ID="ZedGraphWeb2" runat="server" OnRenderGraph="ZedGraphWeb1_RenderGraph2"></cc1:ZedGraphWeb>
        </div>
	    <div class="row justify-content-center">
            <cc1:ZedGraphWeb ID="ZedGraphWeb3" runat="server" OnRenderGraph="ZedGraphWeb1_RenderGraph3"></cc1:ZedGraphWeb>
        </div>
    </div>
        	<script>
                $(document).ready(function () {
                    $("#stats").hide();

                    $("#seeStats").click(function () {
                        $("#stats").toggle();
                    });

                    $(this).prop('contenteditable', false);
                    $('.editbtn').click(function () {
                        var currentTD = $(this).parents('tr').find('td');
                        if ($(this).html() == 'Edit') {
                            $.each(currentTD, function () {
                                $('.savebtn').prop('disabled', true);
                                $(this).prop('contenteditable', true);
                            });
                        } else {
                            $.each(currentTD, function () {
                                $('.savebtn').prop('disabled', false);
                                $(this).prop('contenteditable', false);
                            });
                        }

                        $('.editbtn').prop('disabled', false);

                        $('.notEditable').prop('contenteditable', false);
                        $('.actions').prop('contenteditable', false);
                        $(this).html($(this).html() == 'Edit' ? 'Done' : 'Edit')
                    });

                    $('.savebtn').click(function () {
                        var pos = $(this).parents('tr').find('.edit').find('p');
                        i = 0;
                        $edit = [];
                        $.each(pos, function () {
                            $edit[i] = $(this).html().trim();
                            i = i + 1;
                        });

                    });
                });
</script>
</asp:Content>

