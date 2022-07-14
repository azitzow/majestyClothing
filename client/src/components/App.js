import { Routes, Route} from "react-router-dom";

import Home from "./routes/home/home.component";
import Navigation from "./routes/navigation/navigation";
// import Authentication from "./routes/authentication/authentication.component";
import SignIn from "../components/routes/sign-in/sign-in.component"
import Shop from "./routes/shop/shop.component";

const App = () => {
  return (
      <Routes>
        <Route path="/" element={ <Navigation /> }>
          <Route index element={<Home />} />
          <Route path="shop" element={ <Shop /> } />
          <Route path="auth" element={ <SignIn /> } />
        </Route>
      </Routes>
  );
};

export default App;