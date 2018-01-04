$(document).ready(function() {
  var scrollTimer = null;
$(window).scroll(function () {
    if (scrollTimer) {
        clearTimeout(scrollTimer);   // clear any previous pending timer
    }
    scrollTimer = setTimeout(handleScroll, 100);   // set new timer
});

function handleScroll() {
    scrollTimer = null;
    var headerBottom = 76;
    var width = $(window).width();
    var ScrollTop = $(window).scrollTop();
    
    if (ScrollTop > headerBottom ) {
      $('#primaryHeader').fadeOut();
      $('#scrolledHeader').fadeIn();
    } else {
      $('#primaryHeader').fadeIn();
      $('#scrolledHeader').fadeOut();
    }    
    
  
}

});

var scrollCounter = 0;



function nullHeight(){

}



$(window).scroll(function(){
   console.log('scrolled');
});


function adjustHeight(){

  var scrollPosition = [
  self.pageXOffset || document.documentElement.scrollLeft || document.body.scrollLeft,
  self.pageYOffset || document.documentElement.scrollTop  || document.body.scrollTop
  ];
  var html = jQuery('html'); // it would make more sense to apply this to body, but IE7 won't have that
  html.data('scroll-position', scrollPosition);
  html.data('previous-overflow', html.css('overflow'));
  html.css('overflow', 'hidden');
  window.scrollTo(scrollPosition[0], scrollPosition[1]);


  $('.dynamic_height').height("");
  $('.quick_links').height("");
  $(".documents_cited").height("");
  $(".content_creator").height("");


     if(window.innerWidth >= 800 && window.innerHeight >= 400) {
    // sections

    var list = $(".dynamic_height").map(function(){return $(this).data("category");}).get();
     
    $.map($.unique(list) , function( val, i ) {

      var elementHeights = $(".dynamic_height[data-category=" + val +"]").map(function() {
        var height = $(this).height();
        return $(this).height();
      }).get();

      // Math.max takes a variable number of arguments
      // `apply` is equivalent to passing each height as an argument
      var maxHeight = Math.max.apply(null, elementHeights);
      // Set each height to the max height
      $(".dynamic_height[data-category="+ val +"]").height(maxHeight);
    });


    // quick links
    var elementHeights = $(".quick_links").map(function() {
      var height = $(this).height();
    return $(this).height();
    }).get();

    // Math.max takes a variable number of arguments
    // `apply` is equivalent to passing each height as an argument
    var maxHeight = Math.max.apply(null, elementHeights);

    // Set each height to the max height
    $(".quick_links").height(maxHeight);


    var elementHeights = $(".documents_cited").map(function() {
      var height = $(this).height();
    return $(this).height();
    }).get();

    // Math.max takes a variable number of arguments
    // `apply` is equivalent to passing each height as an argument
    var maxHeight = Math.max.apply(null, elementHeights);

    // Set each height to the max height
    $(".documents_cited").height(maxHeight);


    var elementHeights = $(".content_creator").map(function() {
      var height = $(this).height();
    return $(this).height();
    }).get();

    // Math.max takes a variable number of arguments
    // `apply` is equivalent to passing each height as an argument
    var maxHeight = Math.max.apply(null, elementHeights);

    // Set each height to the max height
    $(".content_creator").height(maxHeight);
    } 
// un-lock scroll position
var html = jQuery('html');
var scrollPosition = html.data('scroll-position');
html.css('overflow', html.data('previous-overflow'));
window.scrollTo(scrollPosition[0], scrollPosition[1])


}




$('.document').bind("DOMSubtreeModified", adjustHeight);


$(document).ready(function(){

  adjustHeight();


  $( "body" ).on("click", '.currentlyTab',function(){
    $(this).parent().find(".lookingForward").removeClass('active');
    $(this).addClass("active");
    var category = $(this).data('category');
    $(".currentContent[data-category='" + category +"']").show(); 
    $(".forwardContent[data-category='" + category +"']").hide(); 
    nullHeight();
    adjustHeight();
    return false;
  });

  $( "body" ).on("click", '.lookingForward',function(){
    $(this).addClass("active");
    $(this).parent().find(".currentlyTab").removeClass('active'); 
    var category = $(this).data('category');
    $(".currentContent[data-category='" + category +"']").hide(); 
    $(".forwardContent[data-category='" + category +"']").show();    
    nullHeight();
    adjustHeight();
    return false;
  });

  $("body").on("click", ".unclickAble", function(){
    return false;
  });

  /// popover
  $('.copyLink').on('click', function(e) {
    console.log ( url() );
    e.preventDefault(); 
    var clipboard = new Clipboard('.copyLink', {
        text: function(trigger) {
           return url()
        }
    });
    $('.copyLink').popover({
      trigger: 'manual',
      content: function(){
        return url()
      }
    })
      $('.copyLink').popover("toggle");
    return true;
  });







  // close data agency
  $("body").on("click", ".close", function(){
    var agency = $(this).data("agency");
    $(".borderAgency[data-agency='" + agency +"']").removeClass("borderAgency"); 
    $('.agency').not('.borderAgency').removeClass('unclickAble');
  });



  $("body").on("keydown", ".searchQuery", function(event){
    if (event.keyCode == 10 || event.keyCode == 13){
      event.preventDefault();
    }
    setTimeout(function(){
        $('.agencyCntr[data-agency]').each(function(){
          var agency= $(this).data('agency');
          $('.agency[data-agency='+agency+']').addClass('borderAgency');
        });
        var clickedAgencies = $('.agency-logo-wrapper').length;
        if(clickedAgencies == 3){
          $('.agency').not('.borderAgency').addClass('unclickAble');
        }
    }, 1000);
  });


  $("body").on("click", ".agency", function(){
    scrollCounter = 0;
    var clickedAgencies = $('.agency-logo-wrapper').length;
    var agencyLogo = $(this).data("logo");
    var agencyId = $(this).data("agency");
    var agencyText = $(this).data("agencytext");
    if (clickedAgencies <= 3){
      $(this).addClass("borderAgency");
      $('.agency').removeClass('unclickAble');
      // $('.navAgencies').children('li').attr('class', 'agencyNavbar col-sm-'+ (12/ (clickedAgencies +1) ) );
      var mylist = $('.navAgencies');
      var listitems = mylist.children('li').get();
      listitems.sort(function(a, b) {
         return $(a).data('agencytext').toUpperCase().localeCompare($(b).data('agencytext').toUpperCase());
      })
      $.each(listitems, function(idx, itm) { mylist.append(itm); });
    }
    if (clickedAgencies >= 2){
      // add shade
      $('.agency').not('.borderAgency').addClass('unclickAble');
    }

    /// need to put this into the navbar
  });


  $("body").on("click", ".borderAgency", function(){
    $(this).removeClass("borderAgency");
    scrollCounter = 0;
    $('.agency').removeClass('unclickAble');
    var clickedAgencies = $('.agency-logo-wrapper').length;
  });


  $("body").on("mouseenter", ".shareLink", function(){
    var url_params = url();
    $(this).attr("href", 'https://www.linkedin.com/shareArticle?mini=true&url='+url_params+'&title=Sparc&summary=sparc&source=Sparc')
  });


  $("body").on("click", ".emailLink", function(event){
      event.preventDefault();
      var url_params = url();
      var email = '';
      var subject = 'Review These Federal Data Sharing Requirements';
      var emailBody = 'Click the following link to review federal data sharing requirements by agency: ' + url_params + '%0A %0AThis community resource for tracking, comparing, and understanding both current and future U.S. federal funder research data sharing policies is a joint project of SPARC (the Scholarly Publishing and Academic Resources Coalition) & Johns Hopkins University Libraries.';
      window.location = 'mailto:' + email + '?subject=' + subject + '&body=' +   emailBody;
    });




  // $("body").on("mouseleave", ".agency, .agencies, .home-hero ", function(){
  //   adjustHeight();
  // });

  // $("body").on("mouseenter", " .articleTitle , .agencyRowTitle,  .agency-principals ", function(){
  //   adjustHeight();
  // });


})




$(window).scroll(function(){
  var scrollPosition = $(window).scrollTop();
  var sectionOne = $('.scrollEnd').offset().top - 500;
  adjustHeight(); 
});





$(window).load(function(){
  setTimeout(function(){
    var params = url("?").ids.split(',');
    for (var i in params) {
     var ol = $('[data-agency='+params[i]+']');
      $('[data-agency='+params[i]+']').click();

    }
    if(params.length == 3){
      $('.agency').not('.borderAgency').addClass('unclickAble');
    }
    adjustHeight();
}, 1000);

});
