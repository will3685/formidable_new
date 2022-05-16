import React from "react";
import classNames from "classnames";
import Button from "./Button";
import Image from './Image';


const CategoryCard = (props, imageFill) => {

  return (

      <div className="split-item">
        <div className="split-item-content center-content-mobile " data-reveal-container=".split-item">
          <h3 className="mt-0 mb-12">
            {props.attributes.name}
          </h3>
          <h4 className="m-0">
            {props.attributes.description}
            </h4>
          <Button
            tag="a" 
            color="dark"
            wideMobile
            href={`/categories/${props.attributes.id}/salons`}
            >Ver Categoria</Button>
        </div>
        <div className={
          classNames(
            'split-item-image center-content-mobile',
            imageFill && 'split-item-image-fill'
            )} data-reveal-container=".split-item">
        <Image
          src={props.attributes.url}
          alt="Category image"
          width={528}
          height={396} />
        </div>
    </div>
  )
};

export default CategoryCard;