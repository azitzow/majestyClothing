import { Fragment } from "react";
import { useParams } from "react-router-dom"
import ProductCard from "../product-card/product-card.component";

import { CategoryContainer, Title } from './category.styles';

const Category = ({ products }) => {
  const { category } = useParams;
  return (
    <Fragment>
      <Title>{category.toUpperCase()}</Title>
      <CategoryContainer>
        {products &&
          products.map((product) => (
            <ProductCard key={product.id} product={product} />
          ))}
      </CategoryContainer>
    </Fragment>
  );
};

export default Category;
