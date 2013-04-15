/*
  toggle.js

  Version: $Revision: 1.0 $
 
  Date: $Date: 2009/04/01 21:56:29 $

  */


// jQuery code for the utdigithing theme.  
// 


  $(document).ready(function () {


     	// choose text for the show/hide link - can contain HTML (e.g. an image)
     	var showText="Show";
     	var hideText="Hide";
          
        // hide all of the elements with a class of 'toggle'
     	$('.toggle').hide();
	// append show/hide links to the element directly preceding the element with a class of "toggle"
	$(".toggle").prev().append('(<a href="#" class="toggleLink">'+showText+'</a>)');
                        
      	// show first of the elements with a class of 'toggle'
      	$('.toggle:first').show();
      	// append show to the first toggle element
      	$('a.toggleLink:first').html(hideText);
                      
	// capture clicks on the toggle links
	$('a.toggleLink').click(function() {                               
		if ($(this).html()==showText) {
			$(this).html(hideText);
			$(this).parent().next('.toggle').show();
		}
		else {
			$(this).html(showText);
			$(this).parent().next('.toggle').hide();
		}                       
	// return false so any link destination is not followed
	return false;

	});


	//Community Collection expand collapse
        var url = window.location.pathname;
	if (url!="/"){
		$("span.ListPlus").show();
	}
	$("span.ListMinus").hide();

	//Sub community are treated different for expand all and collapse all buttons
	$("#aspect_artifactbrowser_CommunityViewer_div_community-view h3").after("<div id='expandall'>Expand All</div>");
	$("#aspect_artifactbrowser_CommunityViewer_div_community-view h3").after("<div id='collapseall'>Collapse All</div>");
	if (url=="/community-list"){
		$(".primary p").after("<div id='expandall'>Expand All</div>");
		$(".primary p").after("<div id='collapseall'>Collapse All</div>");
	}

	$("#collapseall").hide();
	$("span.ListMinus").parent().children("ul").hide();
	$(".ds-artifact-item").css('list-style-type', 'none');
	$("span.ListPlus, span.ListMinus").css('cursor', 'pointer');

	//change first item treatment on sub community pages
	if (url!="/community-list"){
		if (url!="/"){
			$("span.ListMinus:first").show();
		}
		$("span.ListPlus:first").hide();
		$("span.ListMinus:first").parent().children("ul").show();
	} 

	//expand all
	$("#expandall").click(function(){
		$("#expandall").hide();
		$("#collapseall").show();
		$("span.ListPlus").hide();
                $("span.ListPlus").next("span.ListMinus").show();
		$("span.ListMinus").show();
		//slideUp animation doesn't work in IE6:
                if(navigator.userAgent.match("MSIE 6")) 
                {
                    $("span.ListPlus").parent().find("span.ListPlus").show();
                    $("span.ListPlus").parent().find("span.ListMinus").hide();
                    $("span.ListPLus").parent().find("span.ListMinus + span.bold ~ ul").show();
                }   
                else
                {   
                    $("span.ListPlus").parent().children("ul").slideDown("fast");
                }
		
	})

	//collapse all
        $("#collapseall").click(function(){
                $("#collapseall").hide();
                $("#expandall").show();
                $("span.ListMinus").hide();
                $("span.ListMinus").next("span.ListPlus").show();
                $("span.ListPlus").show();
                //slideUp animation doesn't work in IE6:
                if(navigator.userAgent.match("MSIE 6"))
                {   
                    $("span.ListMinus").parent().find("span.ListMinus").show();
                    $("span.ListMinus").parent().find("span.ListPlus").hide();
                    $("span.ListMinus").parent().find("span.ListPlus + span.bold ~ ul").show();
                }
                else
                {
                    $("span.ListMinus").parent().children("ul").slideUp("fast");
                }
                
        }) 
	

	//contraction with the minus sign (or vertical arrow)
        $("span.ListMinus").click(function(){ 
                $(this).hide();
                $(this).prev("span.ListPlus").show();
                //slideUp animation doesn't work in IE6:
                if(navigator.userAgent.match("MSIE 6"))
                {
                    $(this).parent().find("span.ListPlus").show();
                    $(this).parent().find("span.ListMinus").hide();
                    $(this).parent().find("span.ListMinus + span.bold ~ ul").hide();
                }   
                else
                {
                    $(this).parent().children("ul").slideUp("fast");
                }   
        }); 

	
	//community/collection hierarchy
	//expansion with the plus sign (or horizontal arrow)
	$("span.ListPlus").click(function(){
		$(this).hide();
		$(this).next("span.ListMinus").show();
		//slideDown animation doesn't work in IE6:
		if(navigator.userAgent.match("MSIE 6")) 
		{
		    $(this).parent().find("span.ListPlus").hide();
		    $(this).parent().find("span.ListMinus").show();
		    $(this).parent().find("span.ListMinus + span.bold ~ ul").show();
		}
		else
		{
		    $(this).parent().children("ul").slideDown("fast");
		}
	});

	//community/collection hierarchy
        //expansion with the plus sign (or horizontal arrow)
        $("#expandall").children("ul").show();

	$("#aspect_artifactbrowser_CommunityViewer_div_community-view").css('display', 'block');

  });

