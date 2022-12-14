import React, { useState } from "react";
import Clock from "react-live-clock";

// just display one city (instead of rendering all cities)
// pass the time at which API responded, timer needs a starting point

function Time(props) {
  // NOTE: props.compile is an object, props.index is unique number to each object
  let c = props.compile[props.index];
 

  return (
    <div className="Time">
               <ul className="timelist">
              {/* NOTE: Having the list in an if statement because prob due to asynchronous nature, may not load */}
              {c ? <li key={c.id} className={`id${c.id}`}>
        
                  <div>
                  <Clock format={'HH:mm:ss'} ticking={true} timezone={c.timezone}/>
                  </div>
                  
              </li> : null}
      </ul>
     
    </div>
  )
}

export default Time;