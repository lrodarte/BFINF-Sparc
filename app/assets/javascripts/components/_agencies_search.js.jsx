var AgencySearch = React.createClass({
	render () {
		return (
			<div>
				<form ref="form" className="form-inline search-form" action={ this.props.searchPath } acceptCharset="UTF-8" method="get">
				    <div className="form-group">
				      <div className="input-group">
				        <div className="input-group-addon">
				          <i className="fa fa-search"></i>
				        </div>
				        <input ref="query" name="query" className="form-control searchQuery" placeholder="Search for an agency..." onChange={ this.props.submitPath } />
				      </div>
				    </div>
				</form>
			</div>
			);
	}
});

