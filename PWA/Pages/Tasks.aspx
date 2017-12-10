<%@ Page Title="" Language="C#" MasterPageFile="~/Briefing.Master" AutoEventWireup="true" CodeBehind="Tasks.aspx.cs" Inherits="PWA.Pages.Tasks" %>
<%@ Register Assembly="ZedGraph.Web" Namespace="ZedGraph.Web" TagPrefix="cc1" %> 

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

	<script>
    $(document).ready(function () {
		$(this).prop('contenteditable', false);
        $(this).find('input').prop('disabled', true)
        $(this).find('select').prop('disabled', true)
                $('.editbtn').click(function () {
                    var currentTD = $(this).parents('tr').find('td');
                    if ($(this).html() == 'Edit') {
                        $('button').prop('disabled',true);
                        $.each(currentTD, function () {
                            $(this).prop('contenteditable', true);
		                    $(this).find('input').prop('disabled', false)
		                    $(this).find('select').prop('disabled', false)
                        });
                    } else {
                        $('button').prop('disabled',false);
                        $.each(currentTD, function () {
                            $(this).prop('contenteditable', false);
		                    $(this).find('input').prop('disabled', true)
		                    $(this).find('select').prop('disabled', true)
                        });
                    }
                    
                    $('.editbtn').prop('disabled',false);

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
                    $.ajax({
                        url: '../helpers/updateBand.php',
                        type: 'post',
                        data: {
                            data: $edit
                        },
                        datatype: 'html',
                        success: function (rsp) {
                            alert(rsp);
                        }
                    });
                });
    });
</script>
	<div id = "todos">
            <table class="table table-striped table-bordered table-hover">
                <h3  class="text-center">Todos</h3>
                <tbody>
                    <tr>
                        <th>Date</th>
                        <th>Todo</th>
                        <th>Content</th>
					    <th>Category</th>
                        <th>Complete</th>
                        <th>Actions</th>
                    </tr>
                   
                        <tr>
                            <td class="edit notEditable">
                                <p>12/25/17
                                </p>
                            </td>
					        <td class="edit notEditable" >
                                <select>
                                    <option value="personal">Personal</option>
							        <option value="homework">Homework</option>
							        <option value="work">Work</option>
							        <option value="other">Other</option>
							   
						        </select>
                            </td>
                            <td class="edit">
                                <p>Get Milk
                                </p>
                            </td>
                            <td class="edit">
                                <p>Make sure it is 2%
                                </p>
                            </td>
                            <td class="edit notEditable">
                                <input id="checkBox" type="checkbox">
                            </td>
                            <td class="actions">
                                <button type="submit" class="btn btn-outline-success savebtn">Save</button>
						        <button class="btn btn-outline-info editbtn" onclick="return false;" >Edit</button>
                                <a class="btn btn-outline-danger" href="" onclick="return confirm('Are you sure?');">Delete</a>
                            </td>
                        </tr>
				
                </tbody>
            </table>
         </div>


	
	<p class="text-center">Task Stats</p>
	<div class="row justify-content-center">
            <cc1:ZedGraphWeb ID="ZedGraphWeb1" runat="server" OnRenderGraph="ZedGraphWeb1_RenderGraph"></cc1:ZedGraphWeb>
            <cc1:ZedGraphWeb ID="ZedGraphWeb2" runat="server" OnRenderGraph="ZedGraphWeb1_RenderGraph2"></cc1:ZedGraphWeb>
    </div>
	<div class="row justify-content-center">
        <cc1:ZedGraphWeb ID="ZedGraphWeb3" runat="server" OnRenderGraph="ZedGraphWeb1_RenderGraph3"></cc1:ZedGraphWeb>
    </div>

	

	
</asp:Content>

