document.write('<div style="background-color:blue;">');
var menuHierarchy = 
[
	['HOME', "index.html"],
	['About US', "About.html"],
	['Organization', null,
		
		['Photo Gallery', "photoGallery.htm",],
		['Reception', "reception.htm"],
		['Service', "service.html",],
	],
	['Special Offers', "specialOffers.htm"],
	
	['Contact Us', "contactUs.jsp"],
	['Login', "login.jsp"],
	['Logout', "logout.jsp"],
	['Help', "help.php"],
]
document.write('</div>');