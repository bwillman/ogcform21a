var addChildEntityEvents = function () {
    //Service Branch add/remove events
    $("#addServiceBranch").on("click", ["serviceBranch"], addChildEntity);
    $(".removeServiceBranch").on("click", removeChildEntity);
    //Employer add/remove events
    $("#addEmployer").on("click", ["employer"], addChildEntity);
    $(".removeEmployer").on("click", removeChildEntity);
    //Education add/remove events
    $("#addEducation").on("click", ["education"], addChildEntity);
    $(".removeEmployer").on("click", removeChildEntity);

    //Jurisdiction add/remove events
    $("#addJurisdiction").on("click", ["jurisdiction"], addChildEntity);
    $(".removeJurisdiction").on("click", removeChildEntity);
    //Agency add/remove events
    $("#addAgency").on("click", ["agency"], addChildEntity);
    $(".removeAgency").on("click", removeChildEntity);


}

var navigation_click = function (step) {
    //step is 1 through 7
    console.log("begin step: " + step);
    $(".circle").css("background-color", "");
    $(".field_section").css("display", "none");
    $("#section_" + step).fadeIn();
    window.scrollTo(0, 0);

    for (var i = 1; i < step; i++) {
        $(".step_" + i).removeClass("previous next current").addClass("previous");
    }
    for (var i = (step + 1) ; i <= 7; i++) {
        $(".step_" + i).removeClass("previous next current").addClass("next");
    }
    $(".step_" + step).removeClass("previous next");
    $(".step_" + step).addClass("current");
    console.log("end step: " + step);

}

var validateForm = function () {
    //this function assumes the jquery unobtrusive validation is working - meaning it has already validated the form
    $("form").validate();
    if (!$("form").valid()) {
        console.log("form is not valid!!!");
    }
    
}

var setupBackgroundExplanations = function () {
    //bar membership
    $("input[id='IsBarMember']").click(function () {
        if (this.value == "True") { $("#jurisdiction_section").slideDown(); }
        else { $("#jurisdiction_section").slideUp(); }

    })
    //is practicing
    $("input[id='IsPracticing']").click(function () {
        if (this.value == "True") { $("#practice_section").slideDown(); }
        else { $("#practice_section").slideUp(); }
    })
    //was convicted
    $("input[id='WasConvicted']").click(function () {
        if (this.value == "True") { $("#was_convicted_section").slideDown(); }
        else { $("#was_convicted_section").slideUp(); }
    })
    //was convicted military
    $("input[id='WasConvictedMilitary']").click(function () {
        if (this.value == "True") { $("#was_convicted_military_explanation").slideDown(); }
        else { $("#was_convicted_military_explanation").slideUp(); }
    })
    //15. Is charged
    $("input[id='IsCharged']").click(function () {
        if (this.value == "True") { $("#is_charged_explanation").slideDown(); }
        else { $("#is_charged_explanation").slideUp(); }
    })

    //16 was expelled
    $("input[id='WasExpelled']").click(function () {
        if (this.value == "True") { $("#was_expelled_explanation").slideDown(); }
        else { $("#was_expelled_explanation").slideUp(); }
    })

    //17 was disciplined
    $("input[id='WasDisciplined']").click(function () {
        if (this.value == "True") { $("#was_disciplined_explanation").slideDown(); }
        else { $("#was_disciplined_explanation").slideUp(); }
    })

    //18 was terminated
    $("input[id='WasTerminated']").click(function () {
        if (this.value == "True") { $("#was_terminated_explanation").slideDown(); }
        else { $("#was_terminated_explanation").slideUp(); }
    })

    //19 has represented
    $("input[id='HasRepresentedGovt']").click(function () {
        if (this.value == "True") { $("#has_represented_explanation").slideDown(); }
        else { $("#has_represented_explanation").slideUp(); }
    })

    //20 was barred
    $("input[id='WasBarred']").click(function () {
        if (this.value == "True") { $("#was_barred_explanation").slideDown(); }
        else { $("#was_barred_explanation").slideUp(); }
    })

    //21 was barred
    $("input[id='HaveAppliedForAccred']").click(function () {
        if (this.value == "True") { $("#have_applied_explanation").slideDown(); }
        else { $("#have_applied_explanation").slideUp(); }
    })

    //was accred terminated
    $("input[id='WasAccredTerminated']").click(function () {
        if (this.value == "True") { $("#was_accred_terminated_explanation").slideDown(); }
        else { $("#was_accred_terminated_explanation").slideUp(); }
    })

    //Is Impaired
    $("input[id='IsImpaired']").click(function () {
        if (this.value == "True") { $("#is_impaired_explanation").slideDown(); }
        else { $("#is_impaired_explanation").slideUp(); }
    })
    //Is physically limited
    $("input[id='IsPhysicallyLimited']").click(function () {
        if (this.value == "True") { $("#is_physically_limited_explanation").slideDown(); }
        else { $("#is_physically_limited_explanation").slideUp(); }
    })

}

$(document).ready(function () {

    addChildEntityEvents();//add the add/remove events for any "child" pieces of information, such as educational institutions, military service periods, etc.

    $('form').data('validator').settings.ignore = '';//ensure the form validation works on fields that are not shown

    navigation_click("1");//start at the first step

    setupBackgroundExplanations();//events for background explantion questions hide/show

    $("form").click(function (e) {
        //validateForm();
    })




})
