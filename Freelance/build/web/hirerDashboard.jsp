<%@page import="sample.hirer.HirerDTO"%>
<%@page import="java.time.LocalTime"%>
<%@page import="java.time.LocalDate"%>
<%@page import="sample.project.ProjectDTO"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html data-wf-domain="proposal-detail.webflow.io" data-wf-page="62a1d80e6e382c41dc25d126"
    data-wf-site="629c424355a84f5cdfb5f94b">

<head>
    <meta charset="utf-8" />
    <title>Hirer DashBoard</title>
    <meta content="Not Found" property="og:title" />
    <meta content="Not Found" property="twitter:title" />
    <meta content="width=device-width, initial-scale=1" name="viewport" />
    <meta content="Webflow" name="generator" />
    <link href="https://uploads-ssl.webflow.com/629c424355a84f5cdfb5f94b/css/proposal-detail.webflow.82aea2c34.css"
        rel="stylesheet" type="text/css" />
    <script src="https://ajax.googleapis.com/ajax/libs/webfont/1.6.26/webfont.js" type="text/javascript"></script>
    <script
        type="text/javascript">WebFont.load({ google: { families: ["Montserrat:100,100italic,200,200italic,300,300italic,400,400italic,500,500italic,600,600italic,700,700italic,800,800italic,900,900italic"] } });</script>
    <!--[if lt IE 9]><script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.min.js" type="text/javascript"></script><![endif]-->
    <script
        type="text/javascript">!function (o, c) { var n = c.documentElement, t = " w-mod-"; n.className += t + "js", ("ontouchstart" in o || o.DocumentTouch && c instanceof DocumentTouch) && (n.className += t + "touch") }(window, document);</script>
    <link href="https://uploads-ssl.webflow.com/img/favicon.ico" rel="shortcut icon" type="image/x-icon" />
    <link href="https://uploads-ssl.webflow.com/img/webclip.png" rel="apple-touch-icon" />
    <style>
            .w-webflow-badge {
                display: none !important;
            }
        </style>
</head>

<body class="body-2">
    <%
                HirerDTO loginUser = (HirerDTO) session.getAttribute("USER_LOGIN");

    %>
    <div data-collapse="medium" data-animation="default" data-duration="400" data-easing="ease" data-easing2="ease"
        role="banner" class="navigation-2 seeker w-nav">
        <div class="navigation-container-2">
            <div class="navigation-menu-2"><a href="MainController?action=ViewHirerDashboard" class="brand-2 w-nav-brand"><img
                        src="https://uploads-ssl.webflow.com/628aea177e2bdc5cebb3b655/628aeb849e24d09f04fa55e0_logo.png"
                        loading="lazy" alt="" class="logo-image biglogo" /></a>
                <div class="nav-search-wrapper-2">
                    <div class="nav-icon-search-2"><img
                            src="https://uploads-ssl.webflow.com/628aea177e2bdc5cebb3b655/6296b474e000b451cf79e812_search-white.svg"
                            loading="lazy" alt="" /></div>
                    <div class="nav-search-input-2">
                        <div class="w-form">
                            <form action="MainController" id="email-form-2" name="email-form-2" data-name="Email Form 2" method="get"><input
                                    type="text" class="search-input-2 w-input" maxlength="256" name="Name"
                                    data-name="Name 2" placeholder="" id="name-2" /><input type="submit" name="action" value="Search Talent By Name"
                                    data-wait="Please wait..." class="submit-button-2 w-button" /></form>
                            <div class="w-form-done">
                                <div>Thank you! Your submission has been received!</div>
                            </div>
                            <div class="w-form-fail">
                                <div>Oops! Something went wrong while submitting the form.</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="icon-wrapper">
                <div>
                    <div data-hover="true" data-delay="0" class="link-4 nav-link w-dropdown">
                        <div class="dropdown-toggle-2 w-dropdown-toggle">
                            <div class="text-block-22">My Job</div>
                        </div>
                        <nav class="dropdown-list-2 w-dropdown-list">
                            <a href="postAJob.jsp"
                                class="dropdown-link-nav w-dropdown-link">Post a Job</a>
                                
                            <a href="MainController?action=ViewContractOfHirer"
                                class="dropdown-link-nav w-dropdown-link">All contract</a>
                                
                        </nav>
                    </div>
                    <div data-hover="true" data-delay="0" class="link-4 nav-link w-dropdown">
                        <div class="dropdown-toggle-3 w-dropdown-toggle">
                            <div class="text-block-22">Find Talent</div>
                        </div>
                        <nav class="dropdown-list-2 w-dropdown-list">
                            <a href="GetAllSeeker"
                                class="dropdown-link-nav w-dropdown-link">Find Talent</a>
                        </nav>
                    </div>
                </div><a href="#" class="link-block w-inline-block"><img
                        src="https://uploads-ssl.webflow.com/628aea177e2bdc5cebb3b655/628d693684f77e4900d5de82_send.png"
                        loading="lazy" alt="" class="image-15" /></a><a href="#" class="w-inline-block"><img
                        src="https://uploads-ssl.webflow.com/628aea177e2bdc5cebb3b655/628d69352ef8ea1801f37308_bell.png"
                        loading="lazy" alt="" /></a>
                <div class="navigation-button-wrapper">
                    <div data-hover="false" data-delay="0" class="w-dropdown">
                        <div class="dropdown-toggle w-dropdown-toggle"><img
                                src="uploads/<%= loginUser.getAvatar() %>"
                                loading="lazy" width="90" alt="" class="avatar-img-nav" />
                        </div>
                        <nav class="dropdown-list-2 w-dropdown-list">
                            <a href="MainController?action=ViewHirerProfile"
                                class="dropdown-link w-dropdown-link">My Profile</a>
                            <a href="MainController?action=ViewBalanceHirerSeeker"
                                class="dropdown-link w-dropdown-link">Balance</a>
                            <a href="MainController?action=Logout"
                                class="dropdown-link w-dropdown-link">Log out</a>
                        </nav>
                    </div>
                </div>
            </div>
            <div class="menu-button w-nav-button">
                <div class="w-icon-nav-menu"></div>
            </div>
        </div>
    </div>
    <div class="your-dashboard-container w-container">
        <div class="your-dashboard">
            <%
        LocalDate localDate = LocalDate.now();
        String weekday = localDate.getDayOfWeek().name().substring(0, 1) + localDate.getDayOfWeek().name().substring(1).toLowerCase();
        String month = localDate.getMonth().name().substring(0, 1) + localDate.getMonth().name().substring(1).toLowerCase();
        LocalTime localTime = LocalTime.now();
        String hello;
        if (localTime.getHour() >= 6 && localTime.getHour() < 12) {
            hello = "Good Morning";
        } else if (localTime.getHour() >= 12 && localTime.getHour() < 18) {
            hello = "Good Afternoon";
        } else {
            hello = "Good Evening";
        };


    %>
            <div class="your-dashboard-wrapper">
                <div class="text-block-3"><%= weekday%>, <%= month%> <%= localDate.getDayOfMonth()%></div>
                            <h1 class="heading-2"><%= hello%><br /> <%= loginUser.getFullName()%></h1>
                <%--<div>
                    <div class="text-block-38">Your Dashboard</div>
                </div>
                <div>
                    <div class="text-block-39">Thien Pham</div>
                </div>--%> 
            </div>
            <div class="div-block-20"><a href="postAJob.jsp" class="post-a-job-but w-button">Post a Job</a></div>
        </div>
    </div>
    <div class="container-2 w-container">
        <div class="wrapper">
            <div class="your-posting-wrapper">
                
                <div class="your-posting">
                    <div>
                        <div class="div-block-38">
                            <span style="color: red; padding-left: 2%;">${NOT_ENOUGH_MONEY_TO_CASH}</span>
                            <div class="div-block-37"><a href="#" class="link-8">Your Posting</a></div>
                        </div>
                        
                    </div>
                </div>
                
                <%

                        List<ProjectDTO> list = (List<ProjectDTO>) request.getAttribute("LIST_PROJECT");
                        if (list != null) {
                            if (list.size() > 0) {
                                for (ProjectDTO project : list) {
                                    if(localDate.toString().compareTo(project.getDeadlineDate())<=0){
                                        
                                    

                    %>
                    
                <div class="posting-details-wrapper">
                    <div class="full-stack">
                        <div>
                            <div class="text-block-44"><a href="MainController?action=PostedProjectDetail&projectID=<%= project.getProjectID() %>" class="full-stack-development"><%= project.getProjectName()%></a></div>
                        </div>
                        <div>
                            <div class="text-block-45">Post <%= localDate.getDayOfYear() - project.getCreatedDate().getDayOfYear() %> Days Ago by You</div>
                        </div>
                    </div>
                        <div class="div-block-28"><a href="MainController?action=EditJobPost&projectID=<%= project.getProjectID() %>" class="edit-button w-button">Edit</a><a href="MainController?action=RemoveProject&projectID=<%= project.getProjectID() %>"
                            class="remove-button w-button">Remove</a></div>
                </div>
                    <%
                        }
                        }
                    } else {
                    %>
                    <div class="div-block-39">
                            <div class="text-block-54">0 posting yet</div>
                            <div class="div-block-40"></div>
                            <div><a href="postAJob.jsp" class="post-a-job-button w-button">Post a job</a></div>
                        </div>
                    
                    <%
                            }
                        }
                    %>
            </div>
            <div class="div-block-32"><a href="#" class="button-8 w-button">Post a Job</a></div>
            <div class="div-block-33">
                <div class="talent-wrapper">
                    <div>
                        <div class="text-block-48">How to work with talent</div>
                    </div>
                    <div>
                        <div class="text-block-49">Connect with a talent community that numbers in the millions, fast
                            and at no cost.</div>
                    </div>
                </div>
                <div class="div-block-34">
                    <div><img
                            src="https://uploads-ssl.webflow.com/629c424355a84f5cdfb5f94b/62a1f11d692c485e98667bbf_Screenshot%202022-06-09%20200925.png"
                            loading="lazy" alt="" class="image-21" /></div>
                    <div class="div-block-35">
                        <div class="text-block-50">1. Post a job to the marketplace</div>
                        <div class="text-block-51">Provide enough detail for great talent to figure out if the work is
                            right for them.(You can always edit your post, or send an invite to reach out to people
                            directly.)</div>
                    </div>
                </div>
                <div class="div-block-34">
                    <div><img
                            src="https://uploads-ssl.webflow.com/629c424355a84f5cdfb5f94b/62a1f11d692c485e98667bbf_Screenshot%202022-06-09%20200925.png"
                            loading="lazy" alt="" class="image-21" /></div>
                    <div class="div-block-35">
                        <div class="text-block-50">2. Get proposals from talent</div>
                        <div class="text-block-51">A strong working relationship starts with open communication.
                            Here&#x27;s your chance to ask about experience, set expectations for what you need, and
                            discuss terms of the work.</div>
                    </div>
                </div>
                <div class="div-block-34">
                    <div><img
                            src="https://uploads-ssl.webflow.com/629c424355a84f5cdfb5f94b/62a1f11d692c485e98667bbf_Screenshot%202022-06-09%20200925.png"
                            loading="lazy" alt="" class="image-21" /></div>
                    <div class="div-block-35">
                        <div class="text-block-50">3. Start working together</div>
                        <div class="text-block-51">Once you both agree on terms, collaborate with simple and secure
                            tools like chat, file sharing, and time tracking.</div>
                    </div>
                </div>
                <div class="div-block-34">
                    <div><img
                            src="https://uploads-ssl.webflow.com/629c424355a84f5cdfb5f94b/62a1f11d692c485e98667bbf_Screenshot%202022-06-09%20200925.png"
                            loading="lazy" alt="" class="image-21" /></div>
                    <div class="div-block-35">
                        <div class="text-block-50">4. Pay for work you approve</div>
                        <div class="text-block-51">Reports are useful for keeping track of payments and reviewing work.
                            As you complete jobs, you can build trusting relationships with talent in a way that helps
                            you both grow.</div>
                    </div>
                </div>
            </div>
        </div>
        <div class="getting-started-wrapper">
            <div>
                <div class="text-block-40">Getting Started</div>
            </div>
            <div class="div-block-23"><a href="GetAllSeeker" class="button-10 w-button">Invite Talent to apply</a><a href="postAJob.jsp"
                    class="button-10 w-button">Post Job Now</a><a href="ViewHirerProfileController" class="button-10 w-button">Edit Your Profile</a></div>
        </div>
    </div>
   
    <script src="https://d3e54v103j8qbb.cloudfront.net/js/jquery-3.5.1.min.dc5e7f18c8.js?site=629c424355a84f5cdfb5f94b"
        type="text/javascript" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
        crossorigin="anonymous"></script>
    <script src="https://uploads-ssl.webflow.com/629c424355a84f5cdfb5f94b/js/webflow.846169434.js"
        type="text/javascript"></script>
    <!--[if lte IE 9]><script src="//cdnjs.cloudflare.com/ajax/libs/placeholders/3.0.2/placeholders.min.js"></script><![endif]-->
</body>

</html>