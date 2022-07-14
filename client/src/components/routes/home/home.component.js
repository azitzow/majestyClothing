import { Outlet } from "react-router-dom";
import Directory from "../../directory/directory.component";
import { useEffect, useState } from "react";

const Home = () => {
  const [ categories, setCategories ] = useState([]);

  useEffect( () => {
    fetch("/categories")
    .then(response => response.json())
    .then(data => setCategories(data));
  }, [] );

  return (
    <div>
      <Directory categories={ categories.id }/>
      <Outlet />
    </div>
  );
};

export default Home;
