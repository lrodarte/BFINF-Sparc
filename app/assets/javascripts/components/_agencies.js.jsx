var Agencies = React.createClass({
	render() {
		var showAgencies = (agency) => <Agency  logo={agency.logo} name={agency.title} id={agency.id} key={agency.id} renderAgency={this.props.renderAgency} />;
		return (
			<div className="agencies_buttons_wrapper">
				<div className="agencies">
	        		{this.props.agencies.map(showAgencies)}
				</div>
				<p className="fade-out"></p>
			</div>
			);
	}
});