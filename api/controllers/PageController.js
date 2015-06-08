/**
 * PageController
 *
 * @description :: Server-side logic for managing pages
 * @help        :: See http://links.sailsjs.org/docs/controllers
 */

module.exports = {
	getSinglePage: function(req, res){
		Page.find().exec(function pageQuery(err, pageNumber){
console.log("pageNumber: " + pageNumber);
			return res.view("singlepage/" + 1, {
				pageContext: pageNumber
			});
		});
	}
};

