import React from "react";

import MainLayout from "../../components/MainLayout";
import Articles from "./container/Articles";

const HomePage = () => {
  return (
    <MainLayout>
      <Articles />
    </MainLayout>
  );
};

export default HomePage;
