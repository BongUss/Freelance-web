<%@page import="sample.hirer.HirerDTO"%>
<%@page import="sample.seeker.SeekerDTO"%>
<%@page import="sample.skill.SkillDTO"%>
<%@page import="sample.project.ProjectDTO"%>
<%@page import="java.util.List"%>
<%@page import="java.time.LocalTime"%>
<%@page import="java.time.LocalDate"%>
<!DOCTYPE html>
<html data-wf-domain="upwork-7e964a.webflow.io" data-wf-page="6296b682f8b462fb53aec689"
      data-wf-site="628aea177e2bdc5cebb3b655" data-wf-status="1">

    <head>
        <meta charset="utf-8" />
        <title>Proposal</title>
        <meta content="Proposal" property="og:title" />
        <meta content="Proposal" property="twitter:title" />
        <meta content="width=device-width, initial-scale=1" name="viewport" />
        <meta content="Webflow" name="generator" />
        <link href="https://uploads-ssl.webflow.com/628aea177e2bdc5cebb3b655/css/upwork-7e964a.webflow.85df159f6.css"
              rel="stylesheet" type="text/css" />
        <script src="https://ajax.googleapis.com/ajax/libs/webfont/1.6.26/webfont.js" type="text/javascript"></script>
        <script
        type="text/javascript">WebFont.load({google: {families: ["Montserrat:100,100italic,200,200italic,300,300italic,400,400italic,500,500italic,600,600italic,700,700italic,800,800italic,900,900italic"]}});</script>
        <script
            type="text/javascript">!function (o, c) {
                    var n = c.documentElement, t = " w-mod-";
                    n.className += t + "js", ("ontouchstart" in o || o.DocumentTouch && c instanceof DocumentTouch) && (n.className += t + "touch")
                }(window, document);</script>
        <link href="https://uploads-ssl.webflow.com/img/favicon.ico" rel="shortcut icon" type="image/x-icon" />
        <link href="https://uploads-ssl.webflow.com/img/webclip.png" rel="apple-touch-icon" />
        <style>
            .w-webflow-badge {
                display: none !important;
            }
        </style>
    </head>

    <body class="user-body">
        <%
        SeekerDTO loginUser = (SeekerDTO) session.getAttribute("USER_LOGIN");
        %>
        <div data-collapse="medium" data-animation="default" data-duration="400" data-easing="ease" data-easing2="ease"
             role="banner" class="navigation seeker w-nav">
            <div class="navigation-container">
                <div class="navigation-menu"><a href="MainController?action=ViewSeekerDashboard" class="brand w-nav-brand"><img
                            src="https://uploads-ssl.webflow.com/628aea177e2bdc5cebb3b655/628aeb849e24d09f04fa55e0_logo.png"
                            loading="lazy" alt="" class="logo-image biglogo" /></a>
                    <div class="nav-search-wrapper">
                        <div class="nav-icon-search"><img
                                src="https://uploads-ssl.webflow.com/628aea177e2bdc5cebb3b655/6296b474e000b451cf79e812_search-white.svg"
                                loading="lazy" alt="" /></div>
                        <div class="nav-search-input">
                            <div class="w-form">
                                <% String search = (String) request.getAttribute("search");
                                    if (search == null) {
                                        search = "Find job here";
                                    }
                                %>
                                <form action="MainController" id="email-form-2" name="email-form-2" data-name="Email Form 2" method="get"><input
                                        type="text" class="search-input w-input" maxlength="256" name="search"
                                        data-name="Name" placeholder="<%= search%>" id="name" /><input type="submit" name="action" value="Search Job By Name"
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
                        <div data-hover="true" data-delay="0" class="link nav-link w-dropdown">
                            <div class="dropdown-toggle-2 w-dropdown-toggle">
                                <div class="text-block-22">Find Work</div>
                            </div>
                            <nav class="dropdown-list-2 w-dropdown-list"><a href="MainController?action=Search Job By Name&search="
                                                                            class="dropdown-link-nav w-dropdown-link">Find Work</a>
                                                                            <a href="MainController?action=ViewProposal"
                                                                            class="dropdown-link-nav w-dropdown-link">Proposals</a></nav>
                        </div>
                        <div data-hover="true" data-delay="0" class="link nav-link w-dropdown">
                            <div class="dropdown-toggle-3 w-dropdown-toggle">
                                <div class="text-block-22">My Job</div>
                            </div>
                            <nav class="dropdown-list-2 w-dropdown-list"><a href="MainController?action=ViewMyJob"
                                                                            class="dropdown-link-nav w-dropdown-link">My Job</a><a href="MainController?action=ViewContract"
                                                                            class="dropdown-link-nav w-dropdown-link">All Contracts</a></nav>
                        </div>
                    </div><a href="#" class="w-inline-block"><img
                            src="https://uploads-ssl.webflow.com/628aea177e2bdc5cebb3b655/628d693684f77e4900d5de82_send.png"
                            loading="lazy" alt="" class="image-3" /></a><a href="#" class="w-inline-block"><img
                            src="https://uploads-ssl.webflow.com/628aea177e2bdc5cebb3b655/628d69352ef8ea1801f37308_bell.png"
                            loading="lazy" alt="" /></a>
                    <div class="navigation-button-wrapper">
                        <div data-hover="false" data-delay="0" class="w-dropdown">
                            <div class="dropdown-toggle w-dropdown-toggle"><img
                                    src="https://uploads-ssl.webflow.com/628aea177e2bdc5cebb3b655/628d85e7b6d2c143c7d9d3cd_240528174_4134217460021195_5113676912781388161_n.jpeg"
                                    loading="lazy" width="90"
                                    sizes="(max-width: 479px) 100vw, (max-width: 767px) 43.134765625px, 6vw"
                                    srcset="uploads/<%= loginUser.getAvatar() %>"
                                    alt="" class="avatar-img-nav" /></div>
                            <nav class="dropdown-list w-dropdown-list"><a href="MainController?action=ViewSeekerProfile" class="dropdown-link w-dropdown-link">My
                                    Profile</a><a href="MainController?action=ViewBalanceHirerSeeker&role=seeker" class="dropdown-link w-dropdown-link">My Balance</a><a href="MainController?action=Logout" class="dropdown-link w-dropdown-link">Log out</a></nav>
                        </div>
                    </div>
                </div>
                <div class="menu-button w-nav-button">
                    <div class="w-icon-nav-menu"></div>
                </div>
            </div>
        </div>

        <div class="section-4 wf-section">
            <div class="container-1200 w-container">
                <div class="div-block-34">
                    <div class="filter-left">
                        <div class="w-form">

                            <div>
                                <div class="filter-accordion-wrapper">
                                    <form action="MainController"><div class="filter-accordion-heading">
                                            <div class="text-block-5-copy"><strong>Job Tittle</strong></div><img
                                                src="https://uploads-ssl.webflow.com/628aea177e2bdc5cebb3b655/62943201437de47785dfbc00_chevron-left.png"
                                                loading="lazy" alt="" class="image-18" />
                                        </div>
                                        <div class="filter-accordion-content"><input type="text" class="w-input"
                                                                                     maxlength="256" name="search" data-name="Name"
                                                                                     placeholder="<%=search%>" id="name" />
                                            <input  type="submit" name="action" value="Search Job By Name" 
                                                    data-wait="Please wait..." class="submit-button-2 w-button" />
                                        </div>
                                    </form>
                                </div>
                                <!--                                <div class="filter-accordion-wrapper">
                                                                    <form action="MainController"><div class="filter-accordion-heading">
                                                                            <div class="text-block-5-copy"><strong>Company</strong></div><img
                                                                                src="https://uploads-ssl.webflow.com/628aea177e2bdc5cebb3b655/62943201437de47785dfbc00_chevron-left.png"
                                                                                loading="lazy" alt="" class="image-18" />
                                                                        </div>
                                                                        <div class="filter-accordion-content"><input type="text" class="w-input"
                                                                                                                     maxlength="256" name="company" data-name="company"
                                                                                                                     placeholder="FPT Software" id="company-3" />
                                                                            <input  type="submit" name="action" value="Search Job By Company" 
                                                                                    data-wait="Please wait..." class="submit-button-2 w-button" />
                                                                        </div>
                                                                    </form>
                                                                </div>-->
                                <div class="filter-accordion-wrapper">
                                    <div class="filter-accordion-heading">
                                        <div class="text-block-5-copy"><strong>Experience Level</strong></div><img
                                            src="https://uploads-ssl.webflow.com/628aea177e2bdc5cebb3b655/62943201437de47785dfbc00_chevron-left.png"
                                            loading="lazy" alt="" class="image-18" />
                                    </div>
                                    <div class="filter-accordion-content"><label class="w-checkbox text-block-5">
                                            <div class="w-checkbox-input w-checkbox-input--inputType-custom checkbox-2">
                                            </div><a href="MainController?action=FilterLevel&level=Entry"><input type="checkbox" name="entryLevel" id="entryLevel"
                                                                                                                 data-name="entryLevel"
                                                                                                                 style="opacity:0;position:absolute;z-index:-1" /><span
                                                                                                                 class="checkbox-label-2 w-form-label" for="entryLevel">Entry Level </span></a>
                                        </label>

                                        <label class="w-checkbox text-block-5">
                                            <div class="w-checkbox-input w-checkbox-input--inputType-custom checkbox-2">
                                            </div><a href="MainController?action=FilterLevel&level=Intermediate"><input type="checkbox" name="intermediate" id="intermediate"
                                                                                                                        data-name="intermediate"
                                                                                                                        style="opacity:0;position:absolute;z-index:-1" /><span
                                                                                                                        class="checkbox-label-2 w-form-label" for="intermediate">Intermediate -
                                                    $$ </span></a>
                                        </label>

                                        <label class="w-checkbox text-block-5">
                                            <div class="w-checkbox-input w-checkbox-input--inputType-custom checkbox-2">
                                            </div><a href="MainController?action=FilterLevel&level=Expert"><input type="checkbox" name="expert" id="expert" data-name="expert"
                                                                                                                  style="opacity:0;position:absolute;z-index:-1" /><span
                                                                                                                  class="checkbox-label-2 w-form-label" for="expert">Expert - $$$ </span></a>
                                        </label></div>
                                </div>
                                <div class="filter-accordion-wrapper">
                                    <div class="filter-accordion-heading">
                                        <div class="text-block-5-copy"><strong>Price</strong></div><img
                                            src="https://uploads-ssl.webflow.com/628aea177e2bdc5cebb3b655/62943201437de47785dfbc00_chevron-left.png"
                                            loading="lazy" alt="" class="image-18" />
                                    </div>
                                    <div class="filter-accordion-content"><label class="w-checkbox text-block-5">
                                            <div class="w-checkbox-input w-checkbox-input--inputType-custom checkbox-2">
                                            </div><a href="MainController?action=FilterPrice&price=lessThan100"><input type="checkbox" name="lessThan100" id="lessThan100"
                                                                                                                       data-name="lessThan100"
                                                                                                                       style="opacity:0;position:absolute;z-index:-1" /><span
                                                                                                                       class="checkbox-label-2 w-form-label" for="lessThan100">Less than $100
                                                    </span></a>
                                        </label><label class="w-checkbox text-block-5">
                                            <div class="w-checkbox-input w-checkbox-input--inputType-custom checkbox-2">
                                            </div><a href="MainController?action=FilterPrice&price=100To500"><input type="checkbox" name="100To500" id="100To500"
                                                                                                                    data-name="100To500"
                                                                                                                    style="opacity:0;position:absolute;z-index:-1" /><span
                                                                                                                    class="checkbox-label-2 w-form-label" for="100To500">$100 - $500 </span></a>
                                        </label><label class="w-checkbox text-block-5">
                                            <div class="w-checkbox-input w-checkbox-input--inputType-custom checkbox-2">
                                            </div><a href="MainController?action=FilterPrice&price=500To1k"><input type="checkbox" name="500To1k" id="500To1k" data-name="500To1k"
                                                                                                                   style="opacity:0;position:absolute;z-index:-1" /><span
                                                                                                                   class="checkbox-label-2 w-form-label" for="500To1k">$500 - $1k </span></a>
                                        </label><label class="w-checkbox text-block-5">
                                            <div class="w-checkbox-input w-checkbox-input--inputType-custom checkbox-2">
                                            </div><a href="MainController?action=FilterPrice&price=1kTo5k"><input type="checkbox" name="1kTo5k" id="1kTo5k" data-name="1kTo5k"
                                                                                                                  style="opacity:0;position:absolute;z-index:-1" /><span
                                                                                                                  class="checkbox-label-2 w-form-label" for="1kTo5k">$1k - $5k </span></a>
                                        </label><label class="w-checkbox text-block-5">
                                            <div class="w-checkbox-input w-checkbox-input--inputType-custom checkbox-2">
                                            </div><a href="MainController?action=FilterPrice&price=largerThan5k"><input type="checkbox" name="largerThan5k" id="5k" data-name="5k"
                                                                                                                        style="opacity:0;position:absolute;z-index:-1" /><span
                                                                                                                        class="checkbox-label-2 w-form-label" for="5k">$5k+ </span></a>
                                        </label></div>
                                </div>
                                <div class="filter-accordion-wrapper">
                                    <div class="filter-accordion-heading">
                                        <div class="text-block-5-copy"><strong>Project Length</strong></div><img
                                            src="https://uploads-ssl.webflow.com/628aea177e2bdc5cebb3b655/62943201437de47785dfbc00_chevron-left.png"
                                            loading="lazy" alt="" class="image-18" />
                                    </div>
                                    <div class="filter-accordion-content"><label class="w-checkbox text-block-5">
                                            <div class="w-checkbox-input w-checkbox-input--inputType-custom checkbox-2">
                                            </div><a href="MainController?action=FilterDuration&duration=less than 1 month"><input type="checkbox" name="lessThan1Month" id="lessThan1Month"
                                                                                                                                   data-name="lessThan1Month"
                                                                                                                                   style="opacity:0;position:absolute;z-index:-1" /><span
                                                                                                                                   class="checkbox-label-2 w-form-label" for="lessThan1Month">Less than 1
                                                    month </span></a>
                                        </label><label class="w-checkbox text-block-5">
                                            <div class="w-checkbox-input w-checkbox-input--inputType-custom checkbox-2">
                                            </div><a href="MainController?action=FilterDuration&duration=1-3 months"><input type="checkbox" name="1To3Months" id="1To3Months"
                                                                                                                            data-name="1To3Months"
                                                                                                                            style="opacity:0;position:absolute;z-index:-1" /><span
                                                                                                                            class="checkbox-label-2 w-form-label" for="1To3Months">1 to 3 months
                                                    </span></a>
                                        </label><label class="w-checkbox text-block-5">
                                            <div class="w-checkbox-input w-checkbox-input--inputType-custom checkbox-2">
                                            </div><a href="MainController?action=FilterDuration&duration=3-6 months"><input type="checkbox" name="3To6Months" id="3To6Months"
                                                                                                                            data-name="3To6Months"
                                                                                                                            style="opacity:0;position:absolute;z-index:-1" /><span
                                                                                                                            class="checkbox-label-2 w-form-label" for="3To6Months">3 to 6 months
                                                    </span></a>
                                        </label><label class="w-checkbox text-block-5">
                                            <div class="w-checkbox-input w-checkbox-input--inputType-custom checkbox-2">
                                            </div><a href="MainController?action=FilterDuration&duration=6 or more months"><input type="checkbox" name="MoreThan6Months" id="MoreThan6Months"
                                                                                                                                  data-name="MoreThan6Months"
                                                                                                                                  style="opacity:0;position:absolute;z-index:-1" /><span
                                                                                                                                  class="checkbox-label-2 w-form-label" for="MoreThan6Months">More than 6
                                                    months </span></a>
                                        </label></div>
                                </div>
                                <div class="filter-accordion-wrapper">
                                    <div class="filter-accordion-heading">
                                        <div class="text-block-5-copy"><strong>Skill</strong></div><img
                                            src="https://uploads-ssl.webflow.com/628aea177e2bdc5cebb3b655/62943201437de47785dfbc00_chevron-left.png"
                                            loading="lazy" alt="" class="image-18" />
                                    </div>
                                    <%
                                        List<SkillDTO> listSkillAll = (List<SkillDTO>) session.getAttribute("LIST_SKILL_ALL");
                                        for (SkillDTO elem : listSkillAll) {

                                    %>
                                    <div class="filter-accordion-content"><label class="w-checkbox text-block-5">
                                            <div class="w-checkbox-input w-checkbox-input--inputType-custom checkbox-2">
                                            </div><a href="MainController?action=FilterSkill&skill=<%= elem.getSkillName()%>"><input type="checkbox" name="skillName" id="skillName"
                                                                                                                                     data-name="skillName"
                                                                                                                                     style="opacity:0;position:absolute;z-index:-1" /><span
                                                                                                                                     class="checkbox-label-2 w-form-label" for="skillName"><%=elem.getSkillName()%></span></a>
                                        </label></div>
                                        <%                                        }

                                        %>


                                </div>
                            </div>

                            <div class="w-form-done">
                                <div>Thank you! Your submission has been received!</div>
                            </div>
                            <div class="w-form-fail">
                                <div>Oops! Something went wrong while submitting the form.</div>
                            </div>
                        </div>
                    </div>
                    <div class="fiter-right">
                        <div class="seeker-main no-pdtop">
                            <div data-current="Tab 1" data-easing="ease" data-duration-in="300" data-duration-out="100"
                                 class="tabs w-tabs">
                                <div class="tabs-menu w-tab-menu"><a data-w-tab="Tab 1"
                                                                     class="tab-link-tab-1 w-inline-block w-tab-link w--current">
                                        <div class="tab-text">Best match</div>
                                    </a></div>
                                <div class="w-tab-content">
                                    <div data-w-tab="Tab 1" class="w-tab-pane w--tab-active">
                                        <div class="text-block-5">Browse jobs that match your experience to a client&#x27;s
                                            hiring preferences.<br />Ordered by most relevant.</div>
                                        <div class="seeker-dividen"></div>
                                        <%                                            LocalTime localTime = LocalTime.now();
                                            LocalDate localDate = LocalDate.now();
                                            List<ProjectDTO> listProject = (List<ProjectDTO>) session.getAttribute("LIST_PROJECT");
                                            if (listProject != null) {
                                                if (listProject.size() > 0) {
                                                    for (ProjectDTO project : listProject) {

                                        %>
                                        
                                         <%
                                                                    List<HirerDTO> listHirer = (List<HirerDTO>) session.getAttribute("LIST_HIRER");
                                                                    HirerDTO hirer = null;
                                                                    for (HirerDTO elem : listHirer) {
                                                                        if (elem.getHirerID() == project.getHirerID()) {
                                                                            hirer = elem;
                                                                        }
                                                                    }
                                                        %>  
                                        <div class="joblist-wrapper"><a href="#" class="click-link w-inline-block">
                                                <h3 class="heading-13"><%= project.getProjectName()%></h3>
                                            </a>
                                            <div class="heart-wrapper"><img data-w-id="011c4548-0ebf-31d0-aab3-7b0951569f2b"
                                                                            loading="lazy"
                                                                            src="https://uploads-ssl.webflow.com/628aea177e2bdc5cebb3b655/62962a3a870f5430ff35871f_heart.svg"
                                                                            alt="" class="icon-heart" /><img style="display:none"
                                                                            data-w-id="011c4548-0ebf-31d0-aab3-7b0951569f2c"
                                                                            src="https://uploads-ssl.webflow.com/628aea177e2bdc5cebb3b655/62962a3896c88f623a54351f_heart-fill.svg"
                                                                            loading="lazy" alt="" class="icon-heart-fill" /></div>
                                            <div>Price: <%= project.getPaymentAmount()%>  - <%= project.getComplexity()%> - Post <%= localDate.getDayOfYear() - project.getCreatedDate().getDayOfYear()%> Days Ago</div>
                                            <p class="paragraph"><%= project.getDescription()%></p>
                                            <div class="review-stars-wrapper"><img loading="lazy"
                                                                                   src="https://uploads-ssl.webflow.com/628aea177e2bdc5cebb3b655/628d915178de70c73cbd8e23_star.png"
                                                                                   alt="" />
                                                <div> 5/5 points</div>
                                            </div>
                                            
                                        <div class="seeker-skill-wrapper">
                                                <%
                                                    for (String skill : project.getSkillneed()) {
                                                %>
                                                <div class="seeker-skill"><%= skill %></div>
                                                <%
                                                    }
                                                %>
                                           
                                        </div>
                                            
                                            <div class="seeker-dividen"></div>
                                            <div class="lightbox-project-detail">
                                                <div data-w-id="011c4548-0ebf-31d0-aab3-7b0951569f3e" class="close-div">
                                                </div>
                                                <div class="light-box-job-content">
                                                    <div class="div-block-16"><img width="46" loading="lazy"
                                                                                   src="https://uploads-ssl.webflow.com/628aea177e2bdc5cebb3b655/6294321c437de4e9e1dfbcef_chevron-left.svg"
                                                                                   alt="" class="image-11" /></div>
                                                    <div class="lb-jobdetail-wrapper">
                                                        <div class="lb-jobdetail-left">
                                                            <div class="lb-jobdetail-div">
                                                                <h1 class="heading-10"><%= project.getProjectName()%></h1>
                                                            </div>
                                                            <div class="lb-jobdetail-div">
                                                                <div class="lb-heading-text"><%= project.getMajor()%></div>
                                                                <div class="lb-text head">Post <%= localDate.getDayOfYear() - project.getCreatedDate().getDayOfYear() %> Days Ago</div>
                                                                <div class="lb-location-wrapper"><img loading="lazy"
                                                                                                      src="https://uploads-ssl.webflow.com/628aea177e2bdc5cebb3b655/629436cf2d0c464f33b2ff23_map-pin.svg"
                                                                                                      alt="" class="image-7" />
                                                                    <div> <%= project.getLocation() %></div>
                                                                </div>
                                                            </div>
                                                            <div class="lb-jobdetail-div">
                                                                <div class="lb-text"><%= project.getDescription() %><br /></div>
                                                            </div>
                                                            <div class="lb-jobdetail-div horizontal">
                                                                <div class="specific-wrapper"><img loading="lazy"
                                                                                                   src="https://uploads-ssl.webflow.com/628aea177e2bdc5cebb3b655/6294856546d2658dc08ad6f0_clock.png"
                                                                                                   alt="" class="image-8" />
                                                                    <div>
                                                                        <div class="text-block-16"><strong
                                                                                class="lb-condition-bold-text"><%= project.getHoursPerWeek()%> Hours</strong></div>
                                                                        <div class="lb-small-text">Hourly</div>
                                                                    </div>
                                                                </div>
                                                                <div class="specific-wrapper"><img loading="lazy"
                                                                                                   src="https://uploads-ssl.webflow.com/628aea177e2bdc5cebb3b655/62948564b5cf0e21235cdf86_calendar.png"
                                                                                                   alt="" class="image-8" />
                                                                    <div>
                                                                        <div><strong class="lb-condition-bold-text"><%= project.getExpectedDurationID()%></strong></div>
                                                                        <div class="text-block-14">Project Length</div>
                                                                    </div>
                                                                </div>
                                                                <div class="specific-wrapper"><img loading="lazy"
                                                                                                   src="https://uploads-ssl.webflow.com/628aea177e2bdc5cebb3b655/629485637925c58b3f06f159_mdi_head-cog.svg"
                                                                                                   alt="" class="image-8" />
                                                                    <div>
                                                                        <div class="lb-condition-bold-text"><strong
                                                                                class="bold-text"><%= project.getComplexity()%></strong>
                                                                        </div>
                                                                        <div class="text-block-12">I am looking for a mix of
                                                                            experience and value</div>
                                                                    </div>
                                                                </div>
                                                                <div class="specific-wrapper"><img loading="lazy"
                                                                                                   src="https://uploads-ssl.webflow.com/628aea177e2bdc5cebb3b655/629423f2cd8d721f22e4bafb_moeny.png"
                                                                                                   alt="" class="image-8" />
                                                                    <div>
                                                                        <div class="lb-condition-bold-text">
                                                                            <strong><%= project.getPaymentAmount()%>$</strong></div>
                                                                        <div class="text-block-12">Budget</div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="lb-jobdetail-div">
                                                                <div class="lb-heading-text">Skill and Expertise</div>
                                                                <%
                                                                    for (String skill : project.getSkillneed()) {
                                                                %>
                                                                <div class="expected-skill"><%= skill%></div>
                                                                <%
                                                                    }
                                                                %>
                                                                
                                                                
                                                            </div>
                                                        </div>
                                                        <div class="lb-jobdetail-right">
                                                            <div class="lb-joblist-button-wrapper"><a href="MainController?action=FormSentProposal&projectID=<%= project.getProjectID()%>"
                                                                                                      class="primary-button w-button">Submit a proposal</a><a
                                                                                                      href="#" class="primary-button sub w-button"> ? Save
                                                                    job</a><a href="#"
                                                                          class="lb-flag-wrapper w-inline-block"><img
                                                                        loading="lazy"
                                                                        src="https://uploads-ssl.webflow.com/628aea177e2bdc5cebb3b655/62948a9d2d0c46f777b5b766_flag.svg"
                                                                        alt="" class="image-9" />
                                                                    <div class="text-block-17">Flag as inappropriate</div>
                                                                </a>
                                                                <div class="lb-text">Feel free to approach</div>
                                                            </div>
                                                            <div class="dividen"></div>
                                                            <div class="lb-about-client-wrapper">
                                                                <h3 class="heading-11">About client</h3>
                                                                <div class="lb-review-wrapper">
<!--                                                                    <img loading="lazy"
                                                                                                    src="https://uploads-ssl.webflow.com/628aea177e2bdc5cebb3b655/628d915178de70c73cbd8e23_star.png"
                                                                                                    alt="" class="image-10" />-->
<!--                                                                    <div class="lb-review-text"><%= hirer.getReviewGrade() %> Stars<br />of 999
                                                                        reviews</div>-->
                                                                </div>
                                                                <div class="lb-left-element-wrapper">
                                                                    <h4 class="heading-12">Company: <%= hirer.getCompanyName() %></h4>
                                                                    <div><%= hirer.getLocation() %></div>
                                                                </div>
                                                                <div class="lb-left-element-wrapper">
                                                                    <h4 class="heading-12"><%= hirer.getJobPosted() %> Job Posted</h4>
                                                                    <div>The total number of posted job</div>
                                                                </div>
                                                                <div class="lb-left-element-wrapper">
                                                                    <h4 class="heading-12">$100k+ total spent</h4>
                                                                    <div>90 hires, 12 active </div>
                                                                </div>
                                                                <div>Member since <%= hirer.getRegistrationDate() %></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <%
                                            }
                                        } else {
                                        %>
                                        <div class="text-block-5">No Job Matching!
                                            <br />Search again</div>
                                            <%}
                                            } else {
                                            %>
                                        <div class="text-block-5">No Job Matching!
                                            <br />Search again</div>
                                            <%
                                                }
                                               
                                            %>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="https://d3e54v103j8qbb.cloudfront.net/js/jquery-3.5.1.min.dc5e7f18c8.js?site=628aea177e2bdc5cebb3b655"
                type="text/javascript" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
        crossorigin="anonymous"></script>
        <script src="https://uploads-ssl.webflow.com/628aea177e2bdc5cebb3b655/js/webflow.cd14981ca.js"
        type="text/javascript"></script>
        <!--[if lte IE 9]><script src="//cdnjs.cloudflare.com/ajax/libs/placeholders/3.0.2/placeholders.min.js"></script><![endif]-->
    </body>

</html>