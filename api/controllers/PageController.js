/**
 * PageController
 *
 * @description :: Server-side logic for managing pages
 * @help        :: See http://links.sailsjs.org/docs/controllers
 */

module.exports = {
	getSinglePage: function(req, res){
		var pageToShow = req.param("pageToShow");
		Page.find({ where: { id: pageToShow } }).exec(function pageQuery(err, pageContext){
/*console.log("PageToShow: " + pageToShow);
console.log("pageContext: ");
console.log(pageContext);*/
			pageContext[0].previousPage = parseInt(pageToShow, 10) - 1;
			pageContext[0].nextPage = parseInt(pageToShow, 10) + 1;
			return res.view("singlepage", {
				pageContext: pageContext[0]
			});
		});
	}
};

