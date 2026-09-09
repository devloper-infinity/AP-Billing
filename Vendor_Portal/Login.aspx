<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Vendor_Portal.Login" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <title>Infinity IPS Vendor Portal</title>

    <meta charset="utf-8" />

    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <meta http-equiv="X-UA-Compatible" content="IE=edge" />

    <!-- Google Font -->

    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet"/>

    <!-- Font Awesome -->

    <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css"/>

    <!-- Bootstrap -->

    <link rel="stylesheet" href="plugins/icheck-bootstrap/icheck-bootstrap.min.css"/>

    <!-- AdminLTE -->

    <link rel="stylesheet" href="dist/css/adminlte.min.css"/>

    <style>

        *{
            margin:0;
            padding:0;
            box-sizing:border-box;
            font-family:'Poppins',sans-serif;
        }

        body{

            min-height:100vh;

            overflow:hidden;

            background:linear-gradient(135deg,#0b4f8a,#0066cc,#00bcd4);

            background-size:300% 300%;

            animation:bgMove 15s ease infinite;

        }

        @keyframes bgMove{

            0%{background-position:0% 50%;}

            50%{background-position:100% 50%;}

            100%{background-position:0% 50%;}

        }

        .login-wrapper{

            width:100%;

            height:100vh;

            display:flex;

            justify-content:center;

            align-items:center;

            padding:30px;

            position:relative;

        }

        /* Floating bubbles */

        .circle{

            position:absolute;

            border-radius:50%;

            background:rgba(255,255,255,.08);

            animation:float 18s linear infinite;

        }

        .circle:nth-child(1){

            width:180px;

            height:180px;

            left:8%;

            top:12%;

        }

        .circle:nth-child(2){

            width:260px;

            height:260px;

            right:6%;

            bottom:5%;

            animation-duration:24s;

        }

        .circle:nth-child(3){

            width:90px;

            height:90px;

            left:45%;

            bottom:15%;

            animation-duration:12s;

        }

        @keyframes float{

            from{

                transform:translateY(0px) rotate(0deg);

            }

            to{

                transform:translateY(-1000px) rotate(360deg);

            }

        }

        /* Main Container */

        .login-container{

            width:1180px;

            max-width:100%;

            background:#fff;

            border-radius:25px;

            overflow:hidden;

            display:flex;

            box-shadow:0 30px 60px rgba(0,0,0,.30);

            position:relative;

            z-index:99;

        }

        /* LEFT PANEL */

        .left-panel{

            width:55%;

            padding:70px;

            color:#fff;

            background:linear-gradient(135deg,#0b4f8a,#0077d9,#00b5d8);

            position:relative;

        }

        .left-panel:before{

            content:'';

            position:absolute;

            width:550px;

            height:550px;

            background:rgba(255,255,255,.08);

            border-radius:50%;

            top:-180px;

            right:-180px;

        }

        .left-panel:after{

            content:'';

            position:absolute;

            width:350px;

            height:350px;

            background:rgba(255,255,255,.05);

            border-radius:50%;

            bottom:-120px;

            left:-120px;

        }

        .logo-box{

            width:85px;

            height:85px;

            border-radius:18px;

            background:#fff;

            display:flex;

            justify-content:center;

            align-items:center;

            color:#0b4f8a;

            font-size:36px;

            margin-bottom:40px;

        }

        .logo-box i{

            font-size:40px;

        }

        .brand-title{

            font-size:42px;

            font-weight:700;

            margin-bottom:10px;

        }

        .brand-sub{

            font-size:20px;

            opacity:.9;

            margin-bottom:50px;

        }

        .feature{

            display:flex;

            align-items:center;

            margin-bottom:25px;

        }

        .feature i{

            width:55px;

            height:55px;

            border-radius:50%;

            background:rgba(255,255,255,.18);

            text-align:center;

            line-height:55px;

            margin-right:20px;

            font-size:22px;

        }

        .feature h5{

            margin:0;

            font-size:18px;

            font-weight:600;

        }

        .feature p{

            margin:2px 0 0;

            font-size:14px;

            opacity:.85;

        }

        /* RIGHT PANEL */

        .right-panel{

            width:45%;

            padding:60px;

            background:#fff;

        }

        @media(max-width:992px){

            .left-panel{

                display:none;

            }

            .right-panel{

                width:100%;

                padding:40px;

            }

        }

    </style>

    <script>

        function login_submit() {

            var login_username = document.getElementById("login_username").value;

            var login_password = document.getElementById("login_password").value;

            if (login_username == "") {

                alert("Please enter Username");

                return false;

            }

            if (login_password == "") {

                alert("Please enter Password");

                return false;

            }

            __doPostBack("<%= btnLogin.UniqueID %>", "");

            return false;

        }

    </script>

</head>

<body>

<div class="login-wrapper">

    <!-- Background Animation -->

    <div class="circle"></div>

    <div class="circle"></div>

    <div class="circle"></div>

    <div class="login-container">

        <!-- LEFT SIDE -->

        <div class="left-panel">

         <%--   <div class="logo-box">

                <i class="fas fa-layer-group"></i>

            </div>--%>

            <h1 class="brand-title">

                Infinity IPS

            </h1>

            <div class="brand-sub">

                AP Billing Portal

            </div>

            <div class="feature">

                <i class="fas fa-file-invoice-dollar"></i>

                <div>

                    <h5>Invoice Billing</h5>

                    <p>Create and manage  Vendor  invoices securely.</p>

                </div>

            </div>

            <div class="feature">

                <i class="fas fa-chart-line"></i>

                <div>

                    <h5>Reports & Analytics</h5>

                    <p>Powerful dashboard with billing analytics.</p>

                </div>

            </div>

        <%--    <div class="feature">

                <i class="fas fa-shield-alt"></i>

                <div>

                    <h5>MFA Protected</h5>

                    <p>Google Authenticator secured login.</p>

                </div>

            </div>

            <div class="feature">

                <i class="fas fa-cloud"></i>

                <div>

                    <h5>Cloud Ready</h5>

                    <p>Access your portal anywhere securely.</p>

                </div>

            </div>--%>

        </div>

        <!-- RIGHT SIDE -->

        <div class="right-panel">

            <div style="text-align:center;margin-bottom:35px;">

                <img src="images/logo.png"

                     style="height:75px;" />

                <h2 style="margin-top:20px;font-weight:700;color:#1d3557;">

                    Welcome Back

                </h2>

                <p style="color:#777;">

                    Sign in to continue to AP Billing

                </p>

            </div>

            <div id="dvError" runat="server" role="alert"></div>

            <form id="form1" runat="server">

                <asp:ToolkitScriptManager

                    ID="ToolkitScriptManager1"

                    runat="server"

                    EnablePageMethods="true">

                    <Scripts>

                        <asp:ScriptReference

                            Path="~/Scripts/Functions/Login.js"/>

                    </Scripts>

                </asp:ToolkitScriptManager>

                <asp:Button

                    ID="btnLogin"

                    runat="server"

                    Style="display:none;"

                    OnClick="btnLogin_Click"/>

                <!-- Username -->

                <div class="form-group">

                    <label>

                        Username

                    </label>

                    <div class="input-group">

                        <div class="input-group-prepend">

                            <span class="input-group-text">

                                <i class="fas fa-user"></i>

                            </span>

                        </div>

                        <input

                            id="login_username"

                            name="login_username"

                            class="form-control"

                            placeholder="Enter Username"

                            autocomplete="username"

                            style="text-transform:uppercase;"

                            required />

                    </div>

                </div>

                <!-- Password -->

                <div class="form-group mt-3">

                    <label>

                        Password

                    </label>

                    <div class="input-group">

                        <div class="input-group-prepend">

                            <span class="input-group-text">

                                <i class="fas fa-lock"></i>

                            </span>

                        </div>

                        <input

                            id="login_password"

                            name="login_password"

                            type="password"

                            class="form-control"

                            placeholder="Enter Password"

                            autocomplete="current-password"

                            required />

                        <div class="input-group-append">

                            <span

                                class="input-group-text"

                                onclick="togglePassword();"

                                style="cursor:pointer;">

                                <i

                                    class="fas fa-eye"

                                    id="toggleIcon">

                                </i>

                            </span>

                        </div>

                    </div>

                </div>

                <div class="d-flex justify-content-between align-items-center mt-4">

                    <div>

                        <input

                            id="chkRemember"

                            runat="server"

                            type="checkbox"/>

                        Remember Me

                    </div>

                    <a href="#"

                       style="font-size:13px;">

                        Forgot Password?

                    </a>

                </div>

                <button

                    id="login_btnsubmit"

                    class="btn btn-primary btn-block mt-4"

                    style="height:48px;

                           border-radius:12px;
                           
                           background: linear-gradient(135deg, #0b4f8a, #0066cc, #00bcd4);

                           font-size:16px;

                           font-weight:600;"

                    onclick="return login_submit();">

                    <i class="fas fa-sign-in-alt mr-2"></i>

                    Sign In

                </button>

                <div style="text-align:center;margin-top:25px;color:#999;font-size:13px;">

                    © 2026 Infinity IPS
                </div>

            </form>

        </div>

    </div>

</div>  

</html>

