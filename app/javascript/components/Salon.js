import React, {useEffect, useState} from "react";
import classNames from 'classnames';
import { SectionSplitProps } from "./utils/SectionProps";


import SectionHeader from "./partials/SectionHeader";
import SalonCard from "./partials/SalonCard";
import axios from "axios";

const propTypes = {
  ...SectionSplitProps.types
}

const defaultProps = {
  ...SectionSplitProps.defaults
}


const Salon = ({
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
}) => {

  const outerClasses = classNames(
    'features-split section',
    topOuterDivider && 'has-top-divider',
    bottomOuterDivider && 'has-bottom-divider',
    hasBgColor && 'has-bg-color',
    invertColor && 'invert-color',
    className
  );

  const innerClasses = classNames(
    ' section-inner',
  );

  const splitClasses = classNames(
    'split-wrap',
    invertMobile && 'invert-mobile',
    invertDesktop && 'invert-desktop',
    alignTop && 'align-top'
  );
  const sectionHeader = {
    title: 'Seja Formidable',
    paragraph: 'Encontre o trancista na sua cidade e agenda já seu serviço.'
  };

  const [ salons, setSalons ] = useState([]);

  useEffect(() => {
    axios.get('/api/v1/salons')
    .then( res => {
      setSalons(res.data)
    })
    .catch( res => console.log(res))
  }, [salons.length])

  const grid = salons.map(item => {
    return (
      <SalonCard
        key={item.id}
        data={item}
      />
    )
  })

    return (
      <section 
        {...props}> 
        <div className={innerClasses}>
        <SectionHeader data={sectionHeader} className="center-content" />

          <div>
            {grid}
          </div>

        </div> 
      </section>
    );
}

Salon.propTypes = propTypes;
Salon.defaultProps = defaultProps;
  
export default Salon;
