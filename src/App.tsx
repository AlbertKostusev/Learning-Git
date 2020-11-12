import React from 'react';
import './App.css';

// This is a long doc. comment, should be commited seperately
function App() {
  const [state, setState] = React.useState(0);
  return (
    <div className="App">
      <header className="App-header">
        <div>
          <button style={{marginRight:20}} onClick={() => setState(state +1)}>Add 1</button>
          <button onClick={() => setState(state -1)}>Remove 1</button>
        </div>
        <h2>Count: </h2>
        <button></button>
      </header>
    </div>
  );
}

export default App;
