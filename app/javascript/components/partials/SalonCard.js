import React from "react";

import Image from "./Image";
import Button from "./Button";

const SalonCard = (props) => {
  return(

        <div className="card-background">
           <div>
           <Image
            src={require('./../../images/foto-one')}
            alt="Salon Image"
            width={285}
            height={322} /> 
          </div>
          <div className="m-8">
            <h3 className="mb-12">{props.data.name}</h3> 
            <p>O melhor canto da sua beleza. Entrar e aproveita a melhor estilista e maquiadora.</p> 
            <div className="pt-8"> 
              <Button tag="a" wideMobile href="/">
                Ver Salão
              </Button>
            </div>
          </div>
        </div>
    //    
    //       <div className={splitClasses}>
    //           <div className="split-item">
    //             <div className="split-item-content center-content-mobile">
    //               <h3 className="mt-0 mb-12">
    //                 Wakanda Forever
    //                 </h3>
    //               <p className="m-0">
    //                 O melhor canto da sua beleza. Entrar e aproveita a melhor estilista e maquiadora.
    //                 </p>
    //               <div className="pt-8"> 
    //                 <Button tag="a" color="primary" wideMobile href="https://cruip.com/">
    //                   Entrar
    //                 </Button>
    //               </div>
    //             </div>

    //          <div className={
    //            classNames(
    //              'split-item-image center-content-mobile',
    //              imageFill && 'split-item-image-fill'
    //              )}>
    //             <Image
    //             src={require('./../images/foto-one')}
    //             alt="Salon Image"
    //             width={285}
    //             height={322} />
    //           </div> 
    //         </div>
    //       </div>
    //     </div>

  )
}

export default SalonCard;