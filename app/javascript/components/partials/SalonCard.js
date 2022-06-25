import React from "react";

import Button from "./Button";
import Image from "./Image";

const SalonCard = (props) => {

  return(
        <div className="card-background">
           <div>
           <Image
            src={'https://res.cloudinary.com/dx29o6cc9/image/upload/v1654001590/avatar-default_qj2oz9.png'}
            alt="Salon Image"
            width={285}
            height={322} /> 
          </div>
          <div className="p-2">
            <h3 className="m-0 ">{props.data.name}</h3> 
            <div className="mb-0">{props.data.description}</div>
            {/* <a href={`/salons/${props.data.id}`}>Ver Salao</a> */}
            <Button
              tag="a"
              href={`/salons/${props.data.id}`}
              className="button-rdark"
            >Ver Salão</Button>
          </div>
        </div>
  )
}


export default SalonCard;