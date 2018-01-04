var Agency = React.createClass({
	handleClick: function(event) {
		this.props.renderAgency.bind(null,this);
	},
	render () {
		return (

				<div onClick={this.props.renderAgency.bind(null,this)} className="agency" data-agencytext={this.props.name} data-logo={this.props.logo} data-agency={this.props.id} id={"agency" + this.props.id} >
				    <div className="table-wrapper">
					    <div className="logo_wrapper">
					    	<img src={this.props.logo} />
					    	<h4>{this.props.name }</h4>
					    </div>
				    </div>
				</div>
			)
	}
});


