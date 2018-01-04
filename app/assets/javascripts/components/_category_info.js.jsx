var CategoryInfo = React.createClass({
	render () {
		var views;
		if (this.props.compare == "data") {
		views =   
				 <div>
				  <div className={(this.props.index == 0) ? 'text-center currently_lookingForward currently_title_visible' : "text-center currently_title_invisible"}>
				  	<a className="currentlyTab active " data-category={this.props.category_id} href="#">Currently</a> | <a className="lookingForward lookingForward_title" data-category={this.props.category_id} href="#">Looking Forward</a>
				  </div>
				  <div className="currently">
				  <div dangerouslySetInnerHTML={{__html: this.props.description}}>
				  </div>
				  <div className="col-sm-12 currentContent" data-category={this.props.category_id} dangerouslySetInnerHTML={{__html: this.props.currently}}>
				  </div>
				  <div className="col-sm-12 forwardContent" data-category={this.props.category_id} dangerouslySetInnerHTML={{__html: this.props.forward}} >
				  </div>
				  </div>
				</div>
		} else {
				views =
				<div>
				<div className={(this.props.index == 0) ? 'text-center currently_lookingForward currently_title_visible hidden' : "text-center currently_title_invisible hidden"}>
				  <a className="currentlyTab active  " data-category={this.props.category_id} href="#">Currently</a> | <a className="lookingForward lookingForward_title" data-category={this.props.category_id} href="#">Looking Forward</a>
				</div>				
				<div className="currently">
					<div className="col-sm-12 currentContent" data-category={this.props.category_id} dangerouslySetInnerHTML={{__html: this.props.description}}></div>
				</div>
				</div>
		}
		return (
			<div className="row agency-principals dynamic_height" data-category={this.props.category_id} >
				<h3 className={(this.props.index == 0) ? 'text-center currently_title_visible' : "text-center currently_title_invisible"}>{this.props.title}</h3>

				{views}
			</div>  
			)
	}
});




