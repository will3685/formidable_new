import React from 'react';
import PropTypes from 'prop-types';
import classNames from 'classnames';

const propTypes = {
  data: PropTypes.shape({
    title: PropTypes.string,
    paragraph: PropTypes.string
  }).isRequired,
  children: PropTypes.node,
  tag: PropTypes.oneOf(['h1', 'h2', 'h3', 'h4', 'h5'])
}

const defaultProps = {
  children: null,
  tag: 'h2'
}

const SectionHeader = ({
  className,
  data,
  children,
  tag,
  ...props
}) => {

  const classes = classNames(
    'pb-12',
    className
  );

  const Component = tag;

  return (
    <>
      {(data.title || data.paragraph) &&
        <div
          {...props}
          className={classes}
        >
          <div className="container-xs">
            {children}
            {data.title
            &&
              <Component className={
                classNames(
                  'mt-0',
                  data.paragraph ? 'mb-16' : 'mb-0'
                )}>{data.title}</Component>
            }
            {data.paragraph &&
              <h5 className="m-0">{data.paragraph}</h5>
            }
          </div>
        </div>
      }
    </>
  );
}

SectionHeader.propTypes = propTypes;
SectionHeader.defaultProps = defaultProps;

export default SectionHeader;