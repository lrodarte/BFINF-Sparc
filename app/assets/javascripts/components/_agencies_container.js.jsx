var agencyIds=[];
var AgenciesContainer = React.createClass({
  componentWillMount(){
    this.fetchAgencies();
  },
  componentDidMount: function() {
    // var params = url("?").ids.split(',');
    // for (var i in params) {
    //   console.log(i);
    // $('[data-agency='+params[i]+']').click();
    // }
    // var event = new MouseEvent('click', {
    //  'view': window, 
    //  'bubbles': true, 
    //  'cancelable': false
    // });
    // var node = document.getElementById('agency8');
    // console.log(node)
    // node.dispatchEvent(event);
  },
  fetchAgencies() {
    $.ajax({
        url: this.props.agenciesPath,
        dataType: 'json',
        success: function(data) {
          this.setState({agencies: data});
        }.bind(this),
        error: function(data) {
          this.setState({agencies: []});
        }.bind(this)
      });
  },

  searchAgencies(event) {
    if (event.target.value) {
      $.ajax({
          url: this.props.searchPath+"?query="+event.target.value,
          dataType: 'json',          
          success: function(data) {
            this.setState({agencies: data});
          }.bind(this),

          error: function(data) {
            this.setState({agencies: []});
          }.bind(this)
        });
    }
    else{
      this.fetchAgencies();
    }
    history.pushState("search: searched", null, this.props.searchPath+"?query="+event.target.value)
  },

  renderAgency(event){
    console.log("followed through");
    var index = agencyIds.indexOf(event.props.id);
    // see if the index is here 
    if(index == -1){
      // if it does contain the index go ahead with the code
      if(agencyIds.length <= 2){
        agencyIds.push(event.props.id);
        this.setState({hidden: ""});
        $.ajax({
            url: "compare.json?ids="+agencyIds+ "&compare="+this.props.compare,
            dataType: 'json',          
            success: function(data) {
              this.setState({rendered_agencies: data});
            }.bind(this),
            error: function(data) {
              this.setState({rendered_agencies: []});
            }.bind(this)
          });
      }
    }
    else{
    // else remove it 
    agencyIds.splice(index, 1);
    $.ajax({
        url: "compare.json?ids="+agencyIds+ "&compare="+this.props.compare,
        dataType: 'json',          
        success: function(data) {
          this.setState({rendered_agencies: data});
        }.bind(this),
        error: function(data) {
          this.setState({rendered_agencies: []});
        }.bind(this)
      });
    }
   history.pushState("comapred: comapreded", null, "/compare?ids="+agencyIds+"&compare="+this.props.compare,);
  // Get an array of all element heights leotaku16 551 497 2703
  },
  getInitialState() {
    return { agencies: [] , hidden: "hidden" , rendered_agencies:[], yolo:"awesome" , compare: this.props.compare };
  },

  render() {

    var header;
    if (this.props.compare == "data"){
      var header =           
      <div className="container">
      <h1>
      Browse Data Sharing Requirements by Federal Agency 
      </h1>
      <p>
      This community resource for tracking, comparing, and understanding both current and future U.S. federal funder research data sharing policies is a joint project of SPARC & Johns Hopkins University Libraries. Click the icons below to select up to three agencies to view or compare. Click <a href="http://sparcopen.org/wp-content/uploads/2016/05/SPARC-JHU-Digest-of-Federal-Data-Sharing-Requirements_v2_20160510.xlsx
      " download>here to download</a> the full data set. Email corrections to <a href="mailto:nick@sparcopen.org">nick@sparcopen.org</a>
      </p>
      <a href="/articles" className="btn btn-primary"> VIEW ARTICLE SHARING POLICIES </a>
      </div>;
    }
    else{
      var header =
      <div className="container">
      <h1>
      Browse Article Sharing Requirements by Federal Agency
      </h1>
      <p>
      This is a community resource for tracking, comparing, and understanding U.S. federal funder article sharing policies. Click the icons below to select up to three agencies to view or compare. Click <a href="https://docs.google.com/spreadsheets/d/1StkRzBvnvnVqVul9YflAuNxIKZpY0ORnGUmntNg1FcY/edit#gid=1957704682
      " target="_blank">here to download</a> the full data set. Email corrections to <a href="mailto:nick@sparcopen.org">nick@sparcopen.org</a>.
      </p>
      <a href="/data" className="btn btn-primary"> VIEW DATA SHARING POLICIES </a>      
      </div>;      
    }
    return (
    <div>
      <Navbar agencies={this.state.rendered_agencies} />
      <div className="clearfix">
        <div className="home-hero text-center">
          {header}
        </div>
        <AgencySearch searchPath={this.props.searchPath} submitPath={this.searchAgencies} cancelPath={this.fetchAgencies}/>
        <div className="container">
          <Agencies agencies={this.state.agencies} renderAgency={this.renderAgency}/>
          <hr></hr>
          <div className="row agency-headers text-center">
            <AgencyPartial agencies={this.state.rendered_agencies} compare={this.props.compare} hidden={this.state.hidden} renderAgency={this.renderAgency} />
          </div>
        </div>
      </div>
    </div>
      );
  }
});