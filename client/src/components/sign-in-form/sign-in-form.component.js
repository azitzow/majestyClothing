import { useState } from 'react';
import "./sign-in-form.styles.scss";
import Button from "../button/button.component"

const SignInForm = () => {
  const defaultFormFields = {
    email: '',
    password: ''
  };

  const [formFields, setFormFields] = useState(defaultFormFields);
  const { email, password } = formFields;

  // const resetFormFields = () => {
  //   setFormFields(defaultFormFields);
  // };

  const handleSubmit = (event) => {
    event.preventDefault();
    // resetFormFields
  };

  const handleChange = (event) => {
    const { name, value } = event.target;

    setFormFields({ ...formFields, [name]: value });
  };

  return (
    <div className='sign-in-container'>
      <h2>Already have an account?</h2>
      <span>Sign in with your email and password</span>
      <br/>
      <form onSubmit={handleSubmit}>
        <label>Email</label>
        <br/>
        <input
          label='Email'
          type='email'
          required
          onChange={handleChange}
          name='email'
          value={email}
        /> <br/>
        <label>Password</label>
        <br/>
        <input
          label='Password'
          type='password'
          required
          onChange={handleChange}
          name='password'
          value={password}
        />
        <br/>
        <div className='buttons-container'>
          <Button type='submit'>Sign In</Button>
        </div>
      </form>
    </div>
  );
};

export default SignInForm;