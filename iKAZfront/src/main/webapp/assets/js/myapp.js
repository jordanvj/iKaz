$(function(){
	switch(menu){
	case 'About':
		$('#about').addClass('active');
		break;
	case 'View Products':
		$('#listProducts').addClass('active');
		break;
	case 'Delivery':
		$('#delivery').addClass('active');
		break;
	case 'News':
		$('#news').addClass('active');
		break;
	case 'Contact':
		$('#contact').addClass('active');
		break;
	default:
		$('#home').addClass('active');
		break;
	}
});