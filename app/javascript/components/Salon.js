import React, {useEffect, useState} from "react";
import classNames from 'classnames';
import PropTypes from "prop-types"
import { SectionSplitProps } from "./utils/SectionProps";


import SectionHeader from "./partials/SectionHeader";
// import SalonCard from "./partials/SalonCard";
// import axios from "axios";

const propTypes = {
  ...SectionSplitProps.types
}

const defaultProps = {
  ...SectionSplitProps.defaults
}

const Salon = (
  {
  className,
  topOuterDivider,
  bottomOuterDivider,
  topDivider,
  bottomDivider,
  hasBgColor,
  invertColor,
  invertMobile,
  invertDesktop,
  alignTop,
  imageFill,
  ...props
}
) => {

  const innerClasses = classNames(
    ' section-inner',
  );


  const sectionHeader = {
    title: 'Be Formidable',
    paragraph: 'Find the best stylist in your city'
  };

  // const [ salons, setSalons ] = useState([]);

  // useEffect(() => {
  //   const url = `/api/v1${props.url}`
  //   axios.get(url)
  //   .then(res => {
  //     setSalons(res.data)
  //   })
  //   .catch( res => console.log(res))
  // }, [salons.length]);

  // const grid = salons.map(item => {
  //   return (
  //     <SalonCard
  //       key={item.id}
  //       data={item}
  //     />
  //   )
  // })

    return (
      <section 
        {...props}> 
        <div className={innerClasses}>
        <SectionHeader data={sectionHeader} className="center-content" />
        </div> 
      </section>
    );
}

Salon.propTypes = propTypes;
Salon.defaultProps = defaultProps;

Salon.propTypes = {
  url: PropTypes.string
};
  
export default Salon;
