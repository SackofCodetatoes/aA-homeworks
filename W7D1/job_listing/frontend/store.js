import { createStore } from 'redux';
import reducer from './reducer';

// createStore(reducer);

const store = createStore(reducer);

export default store;
