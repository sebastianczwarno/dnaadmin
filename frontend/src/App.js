import React, {Component} from 'react';
import './App.css';
import NavigationBar from "./NavigationBar/NavigationBar";
import DnaTable from "./DnaTable/DnaTable";

class App extends Component {
    render() {
        return (
            <div>
                <NavigationBar/>
                <DnaTable/>
            </div>
        )
    }

}

export default App;
