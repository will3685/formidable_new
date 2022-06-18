import React from "react";
import PropTypes from "prop-types"
import SectionHeader from "./partials/SectionHeader";

class Header extends React.Component {
  render() {
    const sectionHeader = {
      title: `Welcome ${this.props.nome},`,
      paragraph: 'What are we doing today?'
    };
    
    return(
      <React.Fragment> 
        <div>
          <SectionHeader data={sectionHeader} className="center-content" />
        </div> 
      </React.Fragment>
    )
  }
}

Header.propTypes = {
  nome: PropTypes.string
};

export default Header;
