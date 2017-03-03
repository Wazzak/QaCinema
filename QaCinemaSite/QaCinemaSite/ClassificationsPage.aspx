<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="ClassificationsPage.aspx.cs" Inherits="QaCinemaSite.ClassificationsPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="pageContent" runat="server">
   
    <span class="pageHeader">
        The film classification system
    </span>
    <span class="imageItem" id="classImage1">
        <img src="assets/UClass.png" />
    </span>
    <span class="bodyText" id="classText1">
        All ages admitted. There is almost nothing unsuitable for children aged 4 years and over.
    </span>
    <span class="imageItem" id="classImage2">
        <img src="assets/PGClass.png" />
    </span>
    <span class="bodyText" id="classText2">        
         All ages admitted, but some certain scenes can be unsuitable for young children. They should not disturb children aged 8 or older. 
         May contain mild language (frequent/aggressive use may result in the work being passed at a higher category) or sex/drug references. 
         May contain moderate violence if justified by context (e.g. fantasy). A parent may wish to check the content before they let their children watch or play it.   
    </span>
    <span class="imageItem" id="classImage3">
        <img src="assets/12AClass.png" />
    </span>
    <span class="bodyText" id="classText3">
        This category applies to cinema only releases since 2002. Films under this category are considered to be unsuitable for young children.
        Cinemas in the United Kingdom are only permitted to supply tickets to see a 12A film to children under the age of 12 if they are accompanied by an adult aged 18 or over. 
        However, it is unlikely to be suitable for children under the age of 12.
        Films under this category can contain mature themes, discrimination, soft drugs, moderate language, moderate violence, sex references and nudity. 
        Sexual activity may be briefly and discreetly portrayed. Use of strong language may be permitted based on frequency and how they are used, as well as contextual justification. Sexual violence may be implied or briefly indicated.
    </span>
    <span class="imageItem" id="classImage4">
        <img src="assets/15Class.png" />
    </span>
    <span class="bodyText" id="classText4">
        Suitable only for people aged 15 and older. No one younger than 15 may see a 15 film in a cinema. It is illegal to supply a video work with a 15 certificate to anyone under that age.
        Films under this category can contain adult themes, hard drugs, (frequent) strong language, strong violence and strong sex references, and nudity without graphic detail. 
        Sexual activity may be portrayed but without any strong detail. Sexual violence may be shown if discreet and justified by context. 
        Use of very strong language may be permitted based on frequency and how they are used, as well as contextual justification.
    </span>
    <span class="imageItem" id="classImage5">
        <img src="assets/18Class.png" />
    </span>
    <span class="bodyText" id="classText5">
        Suitable only for people aged 18 or older, which means adults only. No one younger than 18 may see an 18 film in a cinema. It is illegal to supply a video work with an 18 certificate to anyone under that age.
        Films under this category do not have limitation on the foul language that is used. Hard drugs are generally allowed, and explicit sex references along with detailed sexual activity are also allowed. 
        Scenes of strong real sex may be permitted if justified by the context (Sex works cannot be placed at "18"). Very strong, gory, and/or sadistic violence is usually permitted. 
        Strong sexual violence is permitted unless it is eroticized or excessively graphic, in which a work will require compulsory cuts where possible.
    </span>

</asp:Content>
