<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddStrategy.aspx.cs" Inherits="Ljc.Com.WebDataCollection.Web.AddStrategy" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>添加策略</title>
    <style>
        .floatleft{
            float:left;
            width:49%;
            height:755px;
            line-height:25px;
            display:inline-block;
        }

        #TBCode{
            font-size:15px;
            color:blue;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Panel ID="Panel1" CssClass="floatleft" GroupingText="指标" runat="server">
            <asp:Panel ID="Panel3" GroupingText="财务指标"  runat="server">
                基本每股收益:<asp:TextBox ID="TBPBMin" ClientIDMode="Static" runat="server"></asp:TextBox>~<asp:TextBox ID="TBPBMax" ClientIDMode="Static" runat="server"></asp:TextBox><br/>
                市盈率:<asp:TextBox ID="TBPEMin" ClientIDMode="Static" runat="server"></asp:TextBox>~<asp:TextBox ID="TBPEMax" ClientIDMode="Static" runat="server"></asp:TextBox><br/>
            </asp:Panel> 
            <asp:Button ID="Btn" runat="server" OnClientClick="" Text="执行" OnClick="Btn_Click" />
            <p />
            <asp:Literal ID="LitResult" runat="server"></asp:Literal>
        </asp:Panel>
        <asp:Panel ID="Panel2" CssClass="floatleft" height="755px"  GroupingText="代码" runat="server">
            <asp:HiddenField ID="HeadCode" ClientIDMode="Static" runat="server" />
            <asp:TextBox ID="TBCode" ClientIDMode="Static" TextMode="MultiLine" Width="98%" Height="750px" runat="server"></asp:TextBox>
        </asp:Panel>
    </div>
    </form>

    <script type="text/javascript">
        var oldcode = document.getElementById("HeadCode").value+"\r\n\r\n";

        function isnum(str)
        {
            try {
               var num=parseFloat(str)
                return !isNaN(num)
            }catch(e){
                return false;
            }
        }

        function getspace(num) {
            var str = '';
            for (var i = 0; i < num; i++) {
                str += ' ';
            }
            return str;
        }

        function newline() {
            return '\r\n';
        }

        function createcode()
        {
            var code = undefined;
            var orderby = undefined;
            var pbmin = document.getElementById("TBPBMin").value;
            var pbmax = document.getElementById("TBPBMax").value;
            var pemin = document.getElementById("TBPEMin").value;
            var pemax = document.getElementById("TBPEMax").value;

            if (isnum(pbmin) || isnum(pbmax)) {
                code = "query(financeindicator.pb_rate,";
                orderby = ".orderby([financeindicator.pb_rate,";
            }

            if (isnum(pemin) || isnum(pemax)) {
                code = (code || "query(") + "financeindicator.pe_rate,";
                orderby =(orderby|| ".orderby([")+"financeindicator.pe_rate,";
            }

            if (code != undefined) {
                code += ")";
                orderby += "],orderDirection.asc)";
                var isfirstfilter = true;
                if (isnum(pbmin)) {
                    code += ".filter(" + newline() + getspace(8) + "financeindicator.pb_rate>=" + pbmin + newline() +getspace(4)+ ")";
                    isfirstfilter =  false;
                }
                if (isnum(pbmax)) {
                    code += ".filter(" + newline() + getspace(8) + "financeindicator.pb_rate<=" + pbmax + newline() +getspace(4)+ ")";
                    isfirstfilter =  false;
                }
                if (isnum(pemin)) {
                    code += ".filter(" + newline() + getspace(8) + "financeindicator.pe_rate>=" + pemin + newline() + getspace(4)+")";
                    isfirstfilter =  false;
                }
                if (isnum(pemax)) {
                    code += ".filter(" + newline() + getspace(8) + "financeindicator.pe_rate<=" + pemax + newline() + getspace(4)+")";
                    isfirstfilter =  false;
                }
                
                document.getElementById("TBCode").value = oldcode + "print_result(get_fundamentals(" + code + orderby + ".limit(100)" + newline() + "))";
            }
        }

        document.getElementById("TBPBMin").onchange = function () {
            if (!isnum(this.value)) {
                return;
            }
            createcode();
        };
        document.getElementById("TBPBMax").onchange = function () {
            if (!isnum(this.value)) {
                return;
            }
            createcode();
        };
        document.getElementById("TBPEMin").onchange = function () {
            if (!isnum(this.value)) {
                return;
            }
            createcode();
        };
        document.getElementById("TBPEMax").onchange = function () {
            if (!isnum(this.value)) {
                return;
            }
            createcode();
        };
    </script>
</body>
</html>
