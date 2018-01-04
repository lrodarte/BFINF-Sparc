var AgencyPartial = React.createClass({
	render() {
		var showAgencies = (agency, i) => <AgencyInfo index={i} col={"col-sm-" + 12 / this.props.agencies.length} compare={this.props.compare} renderAgency={this.props.renderAgency} quicklinks={agency.quick_links} article_quicklinks={agency.articles_quick_links} content_creator={agency.content_creator_and_date_completed} article_content_creator={agency.article_content_creator_and_date_completed} documentscited={agency.documents_cited} article_documentscited={agency.article_documents_cited} name={agency.title} logo={agency.logo} id={agency.id} key={agency.id}  />;
		return (
			<div>
				{this.props.agencies.map(showAgencies)}
			</div>
			);
	}
});


