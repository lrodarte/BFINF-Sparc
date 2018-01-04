var AgencyNav = React.createClass({
	handleClick: function(event) {
		this.props.renderAgency.bind(null,this);
	},
	render () {
		return (
				<div className={this.props.col}>
					<li className="col-sm-12 agencyNavbar">
						<a href="#">
							<span className="agencyNavLogoBG">
								<div className="table-cell-logo">
									<img className="agencyNavLogo"  src={this.props.logo}/>
								</div>
							</span>
						</a> 
					</li>
				</div>
			)
	}
});


