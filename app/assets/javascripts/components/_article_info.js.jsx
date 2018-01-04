var ArticleInfo = React.createClass({
	render () {
		return (
			<div className="row agency-principals dynamic_height agencyRowTitle" data-category={this.props.category_id} >
				<h3 className={(this.props.index == 0) ? 'text-center currently_title_visible articleTitle' : "text-center currently_title_invisible"}>{this.props.title}</h3>
				<div className={(this.props.index == 0) ? 'text-center currently_lookingForward currently_title_visible' : "text-center currently_title_invisible"}>
				  <a className="currentlyTab active " data-category={this.props.category_id} href="#">Currently</a> | <a className="lookingForward lookingForward_title" data-category={this.props.category_id} href="#">Looking Forward</a>
				</div>
				  <div className="col-sm-12 currentContent" data-category={this.props.category_id} dangerouslySetInnerHTML={{__html: this.props.article}}>
				  </div>
			</div>  
			)
	}
});




