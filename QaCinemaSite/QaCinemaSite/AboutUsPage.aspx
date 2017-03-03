<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="AboutUsPage.aspx.cs" Inherits="QaCinemaSite.AboutUsPage" %>


<asp:Content ID="Content1" ContentPlaceHolderID="pageContent" runat="server">
    <span class="aboutPageHeader">
        About Us
    </span>
    <span class="contentBox" id="aboutContent1">
    <span class="subHeader" id="aboutSubHeader1">
        Meet the Team
    </span>
    <span class="bodyText" id="aboutText1">
        Name: Mak
        Role: Product Owner
        Role Description: As the product owner, I was responsible for… my main contribution to the website was…
        <br />
        Name: Daniella
        Role: Scrum Master:
        Role Description: As the scrum master, my main responsibilities were to facilitate scrum meetings with regards to time keeping and suitability of working environment. 
        I also contributed as part of the development team in discussions about webpage and database requirements…etc. My biggest contribution to the website was…
        <br />
        Name: Sean
        Role: Developer
        Role Description: As part of the development team, my primary role was to implement features of the website into designated pages. 
        I was present in all of the scrum meetings, contributed ideas during the design phase and participated in a number of tasks during development to help the team produce this QA Cinemas website. 
        My biggest contribution during the entire project was...
        <br />
        Name: Wade
        Role: Developer
        Role Description: During the project, one of my roles was to teach other team members on topic areas they would need to know to complete the project. I was also responsible for managing the version control system using GitHub. 
        On this project it was also my duty to create a solid baseline for the other members to work off, so that code could be consistent and unified throughout the website.
        <br />
        Name: Joseph
        Role: Development Team/Developer
        Role Description:
        <br />
        Name: Nathan
        Role: Development Team/Developer
        Role Description: My main role during development was to implement and maintain the database into the website. 
        I also contributed and helped out during the group design tasks for the website, and have also created [Insert website pages here] as part of the website. 
    </span>
    </span>

    <span class="contentBox" id="aboutContent2">
        <span class="subHeader" id="aboutSubHeader2">
            SCRUM
        </span>
        <span class="bodyText">
            Agile software development framework, in which a product is developed in increments. Scrum enables flexibility in setting and meeting project goals, and requirements are presented as a product backlog.
            <br />
            Scrum organises a team by through distinct roles and responsibilities given to team members.
            The Development Team consists of like-minded and equally qualified members, and amongst them are the Product Owner and the Scrum Master.
            <br />
            The working period is divided into time increments called sprints, each lasting from 1 week to 1 month. Workload is self-contained, and each sprint is meticulously planned, carried out and then evaluated.
            <br />
            Features of a sprint:
            Sprint Planning
            Sprint Undertaking
            Sprint Review
            Sprint Retrospective.          
            <br />
            A product owner creates a product backlog about the main features of the proposed product. 
            During sprint planning, the team selects chunks from the product backlog, and adds it to the sprint backlog and decide how to implement those user stories. 
            The team usually have 2-4 weeks to work on a task and this is called a sprint. 
            The Scrum Master holds the daily scrum meeting and mediates and ensures that the discussions are working towards the goal. 
            The sprint ends with a sprint review and retrospective. 
            When the next sprint begins, the team chooses what user stories weren't competed and choose additional user stories from the product backlog to add to the sprint backlog to work off and then begin working off the sprint backlog again.
        </span>
        <span class="imageItem" id="aboutImage1">
            <img src="assets/ScrumDiagram.png" />
        </span>
    </span>
    <span class="contentBox" id="aboutContent3">
        <a class="linkItem" href="ContactUsPage.aspx">Contact Us</a>
    </span>
</asp:Content>
