var AgencyInfo = React.createClass({
	  getInitialState: function() {
	    return {rendered_categories: [] };
	  },
	componentWillMount(){
		this.getAgencyInfo();
	},
	getAgencyInfo(event){
		$.ajax({
		    url: "agencies/"+this.props.id+".json?compare="+this.props.compare,
		    dataType: 'json',          
		    success: function(data) {
		      this.setState({rendered_categories: data});
		    }.bind(this),
		    error: function(data) {
		      this.setState({rendered_categories: []});
		    }.bind(this)
		  });
	},
	render () {

		var other_data;
		if (this.props.compare == "data") {
		other_data =   
			<div className="scrollEnd">
			   <h3 className={(this.props.index == 0) ? 'text-center currently_title_visible' : "text-center currently_title_invisible"}> Related Documents Not Cited </h3>
		      <div className="row quick_links">
		      	<p className="text-left" dangerouslySetInnerHTML={{__html: this.props.quicklinks}}></p>
		      </div>
		      <h3 className={(this.props.index == 0) ? 'text-center currently_title_visible' : "text-center currently_title_invisible"}> Documents Cited </h3>
		      <div className="row documents_cited">
		      	<p className="text-left" dangerouslySetInnerHTML={{__html: this.props.documentscited}}></p>
		      </div>
		      <h3 className={(this.props.index == 0) ? 'text-center currently_title_visible' : "text-center currently_title_invisible"}> Content Creator and Date Completed (ISO 8601)</h3>
		      <div className="row content_creator">
		      	<p className="text-left">{this.props.content_creator}</p>
		      </div>
		    </div>
		} else {
			other_data=
			<div className="scrollEnd">
			  <h3 className={(this.props.index == 0) ? 'text-center currently_title_visible' : "text-center currently_title_invisible"}> Related Documents Not Cited </h3>
		      <div className="row quick_links">
		      	<p className="text-left" dangerouslySetInnerHTML={{__html: this.props.article_quicklinks}}></p>
		      </div>
		      <h3 className={(this.props.index == 0) ? 'text-center currently_title_visible' : "text-center currently_title_invisible"}> Documents Cited </h3>
		      <div className="row documents_cited">
		      	<p className="text-left" dangerouslySetInnerHTML={{__html: this.props.article_documentscited}}></p>
		      </div>
		      <h3 className={(this.props.index == 0) ? 'text-center currently_title_visible' : "text-center currently_title_invisible"}> Content Creator and Date Completed (ISO 8601)</h3>
		      <div className="row content_creator">
		      	<p className="text-left">{this.props.article_content_creator}</p>
		      </div>
		    </div>

		}		

		var categories = (category) => <CategoryInfo index={this.props.index} category_id={category.category_id} title={category.category} currently={category.currently} forward={category.looking_forward} compare={this.props.compare} description={category.description} />
		return (
	    <div className={this.props.col + " agencyCntr"} data-agency={this.props.id} >
	    	<div className="agency_wrapper">
	    		<button type="button"  onClick={this.props.renderAgency.bind(null,this)}  className="close" data-agency={this.props.id} data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		      <div className="agency-logo-wrapper">
		      	<div className="agency-logo-wrapper-table">
		      		<img className="agency-logo img-responsive" src={this.props.logo} />
		      	</div>
		      </div>
		      <h2>{this.props.name}</h2>
		      {this.state.rendered_categories.map(categories)}
		      {other_data}

	      	</div>
	    </div>   



			)
	}
});

// <AgencyInfo quick_links={agency.quick_links} documents_cited={agency.documents_cited} name={agency.title} id={agency.id} key={agency.id}  />;



