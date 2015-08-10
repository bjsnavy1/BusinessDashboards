Bootstrap Navigation Samples Dependencies
---------------------------------------------
Bootstrap
  www.getbootstrap.com
jQuery
  www.jquery.com


Notes
-------------------------
When using 'collapse' you can't have a postback, so use a <div> instead of a button.
Always add a 3rd ContentPlaceHolder in your master page for JavaScript at the end of the page
For these samples I put the navigation in each page. In a real application you would normally just choose 1 form of navigation and place that into your master page.
  This also meant that I had to put the <form> tag into each page.
  If you use ASP.NET controls for navigation as I have done in these samples, then you need the <form> tag in the master page.
  If you use all HTML controls for navigation in the master page, then I recommend putting the <form> tag into each page in which you need it.