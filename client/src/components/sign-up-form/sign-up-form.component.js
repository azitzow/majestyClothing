import { useState } from 'react';
import Button from '../button/button.component'
import FormInput from '../form-input/form-input.component';
import { SignUpContainer } from './sign-up-form.styles';

const defaultFormFields = {
  displayName: '',
  email: '',
  password: '',
  confirmPassword: ''
};

const SignUpForm = () => {
  const [formFields, setFormFields] = useState(defaultFormFields);
  const [ user, setUser ] = useState([])

  const { username, email, password, confirmPassword } = formFields;

  // const resetFormFields = () => {
  //   setFormFields(defaultFormFields);
  // };

  const handleSubmit = (event) => {
    event.preventDefault()

    if (!Object.values(setFormFields).includes("")) {
      fetch("/users", {
        method: "POST",
        headers: {
          "Content-Type": "application/json"
        },
        body: JSON.stringify({
          email,
          username,
          password,
          confirmPassword
        }),
      })
        .then((response) => response.json())
        .then((newUser) => setUser(user => [...user, newUser]))
        .then(data => {
          alert('Please log in!')
        })
        .then(setFormFields(defaultFormFields))
    } else {
      alert("Please fill out all the boxes!")
    }
  }

  const handleChange = (event) => {
    const { name, value } = event.target;

    setFormFields({ ...formFields, [name]: value });
  };

  return (
    <SignUpContainer>
      <h2>Don't have an account?</h2>
      <span>Sign up with your email and password</span>
      <form onSubmit={handleSubmit}>
        <FormInput
          label="Username"
          type='text'
          required
          onChange={handleChange}
          name='username'
          value={username}
        />

        <FormInput
          label="Email"
          type='email'
          required
          onChange={handleChange}
          name='email'
          value={email}
        />

        <FormInput
          label="Password"
          type='password'
          required
          onChange={handleChange}
          name='password'
          value={password}
        />

        <FormInput
          label="Confirm Password"
          type='password'
          required
          onChange={handleChange}
          name='confirmPassword'
          value={confirmPassword}
        />
        <Button type='submit'>Sign Up</Button>
      </form>
    </SignUpContainer>
  );
};

export default SignUpForm;