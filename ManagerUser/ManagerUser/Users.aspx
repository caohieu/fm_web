﻿<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="ManagerUser.Users" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid" style="margin-top: 15px;">
        <!-- Modal -->
        <div class="modal fade" tabindex="-1" id="myModal" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Modal title</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <p>Modal body text goes here.</p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary">Save changes</button>
                    </div>
                </div>
            </div>
        </div>
        <h2>Danh sách người dùng</h2>
        <a href="javascript:;" class="btn btn-primary text-right btn-add">Thêm</a>
        <table id="example" class="display" width="100%"></table>
    </div>
    <script type="text/javascript">
        $(document).ready(function () {
            $(document).ready(function () {
                $('#example').DataTable({
                    data: <%=obj%>,
                    columns: [
                        {
                            "width": "20%",
                            "name": "Decade",
                            "sTitle": "Decade",
                            "mData": function (o) {
                                return '<a href="javascript:;" onclick="View()" data-id="' + o._id.$oid + '">' + o.Decade + '</a>';
                            }
                        },
                        {
                            "width": "20%",
                            "name": "Artist",
                            "sTitle": "Artist",
                            "mData": function (o) {
                                return o.Artist;
                            }
                        },
                        {
                            "width": "20%",
                            "name": "Title",
                            "sTitle": "Tiêu đề",
                            "mData": function (o) {
                                return o.Title;
                            }
                        },
                        {
                            "width": "20%",
                            "name": "WeeksAtOne",
                            "sTitle": "Tiêu đề",
                            "mData": function (o) {
                                return o.WeeksAtOne;
                            }
                        }
                    ]
                });
            });
        });
        function View() {
            $("#myModal").modal();
        }
    </script>
</asp:Content>
