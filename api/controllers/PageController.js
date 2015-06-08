/**
 * PageController
 *
 * @description :: Server-side logic for managing pages
 * @help        :: See http://links.sailsjs.org/docs/controllers
 */

module.exports = {
	getSinglePage: function(req, res){
		Page.find({ where: { id: 1 } }).exec(function pageQuery(err, pageNumber){
console.log("pageNumber: ");
console.log(pageNumber);
			return res.view("singlepage", {
				pageContext: pageNumber[0]
			});
		});
	}
};

