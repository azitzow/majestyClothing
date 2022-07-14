import './product-card.styles.scss';

import Button from '../button/button.component';

const ProductCard = ({ product }) => {
  const { description, price, imageUrl } = product;
  return (
    <div className='product-card-container'>
      <img src={imageUrl} alt={`${description}`} />
      <div className='footer'>
        <span className='name'>{description}</span>
        <span className='price'>${price}</span>
      </div>
      <Button buttonType='inverted'>Add to card</Button>
    </div>
  );
};

export default ProductCard;