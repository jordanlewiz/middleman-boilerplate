var Application = Application || {};

Application.Core = function(){
	"use strict";

	// Twitter Feed
	$("footer .news .tweet").tweet({
		username: "innovationbay",
		join_text: "auto",
		avatar_size: 0,
		count: 3,
		loading_text: "loading tweets..."
	});


  return true;
};

Application.Core.init = function(){
  return new Application.Core();
};

$(Application.Core.init);
