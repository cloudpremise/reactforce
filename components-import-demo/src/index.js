import React from 'react';
import { render } from 'react-dom';

import * as Reactforce from '@cloudpremise/react-force';

render(
  <div>
    <h2>Reactforce Component Demo</h2>
    <Reactforce.BoilerplateComponent label="My imported boilerplate component: " onChange={val => console.log(val)} />
    <Reactforce.BoilerplateComponent2 label="My imported boilerplate component: " onChange={val => console.log(val)} />
  </div>, 
  document.getElementById('app')
);