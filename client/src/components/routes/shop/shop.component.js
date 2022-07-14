import { Routes, Route } from 'react-router-dom';
import { useEffect, useState } from "react";

import CategoriesPreview from '../../categories-preview/categories-preview.component';
import Category from "../../category/category.component";

import './shop.styles.scss';

const Shop = () => {
const [ products, setProducts ] = useState([])

  useEffect( () => {
    fetch("/items")
    .then(response => response.json())
    .then(data => setProducts(data));
  }, [] );

  return (
    <Routes>
      <Route index element={<CategoriesPreview />} />
      <Route path=':category' element={<Category products={ products }/>} />
    </Routes>
  );
};

export default Shop;

/*
import { Routes, Route } from 'react-router-dom';

import CategoriesPreview from '../categories-preview/categories-preview.component';
import Category from '../category/category.component';

import './shop.styles.scss';

const Shop = () => {
  return (
    <Routes>
      <Route index element={<CategoriesPreview />} />
      <Route path=':category' element={<Category />} />
    </Routes>
  );
};

export default Shop; */