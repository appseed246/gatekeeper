import React, { useEffect, useState } from "react";
import logo from "./logo.svg";
import "./App.css";
import axios from "axios";

type ProductResponse = {
  id: number;
  product: string;
  created_at: Date;
  updated_at: Date;
};

const target_url: string = "http://localhost:3001/products";

const useResponse = () => {
  const fetchResource = async () => {
    const response = await axios.get<ProductResponse[]>(target_url);
    return response.data;
  };
  const [data, setData] = useState<ProductResponse[]>([]);
  useEffect(() => {
    fetchResource().then(res => setData(res));
  }, []);

  return data;
};

const App: React.FC = () => {
  const products = useResponse();
  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <p>Hello, world to Gatekeeper App!</p>
        <ul>
          {products.map(product => {
            return <li>{product.product}</li>;
          })}
        </ul>
        <a
          className="App-link"
          href="https://reactjs.org"
          target="_blank"
          rel="noopener noreferrer"
        >
          Learn React
        </a>
      </header>
    </div>
  );
};

export default App;
