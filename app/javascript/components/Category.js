import React, {useEffect, useState} from 'react';
import classNames from 'classnames';
import { SectionSplitProps } from './utils/SectionProps';

import CategoryCard from './partials/CategoryCard';


const propTypes = {
  ...SectionSplitProps.types
}

const defaultProps = {
  ...SectionSplitProps.defaults
}

const Category = (
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
  ...props
) => {

  const outerClasses = classNames(
    'features-split section',
    topOuterDivider && 'has-top-divider',
    bottomOuterDivider && 'has-bottom-divider',
    hasBgColor && 'has-bg-color',
    invertColor && 'invert-color',
    className
  );

  const innerClasses = classNames(
    'features-split-inner section-inner',
    topDivider && 'has-top-divider',
    bottomDivider && 'has-bottom-divider'
  );

  const splitClasses = classNames(
    'split-wrap',
    invertMobile && 'invert-mobile',
    invertDesktop && 'invert-desktop',
    alignTop && 'align-top'
  );

  const categories = [
    {
      id: 1,
      name: "All things hair",
      description: "Your ultimate resource for hair inspiration, styling tips, stylist and more",
      url: require('./../images/category-image-01')
    },
    {
      id: 2,
      name: "Lashes",
      description: "Classic lashes, all things beauty, your ultimate resource for lashes stylist",
      url: require('./../images/category-image-02')
    },
    {
      id: 3,
      name: "Makeup artist",
      description: "Find the best related makeup artist for your beauty",
      url: require('./../images/category-image-03')
    },
    {
      id: 4,
      name: "Others",
      description: "Other services",
      url: require('./../images/category-image-04')
    }
  ];

  const [ category, setCategory ] = useState([]);

  useEffect(() => {
      setCategory(categories)  
  }, [category.length]);

  const grid = category.map( item => {
    return (
      <CategoryCard
        key={item.id}
        attributes={item}
      />
    )
  });

  return (
    <section
      {...props}
      className={outerClasses}>
        <div className="container">
          <div className={innerClasses}>
            <div className={splitClasses}>
              { grid}
            </div>
        </div>
      </div>
    </section>
     
  )
}

Category.propTypes = propTypes;
Category.defaultProps = defaultProps;

export default Category;
