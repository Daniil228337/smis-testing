import "./i18n";
import { loadLanguageFromDB } from "./i18n";
import React from "react";
import ReactDOM from "react-dom/client";
import App from "./App";
import "./index.css";

loadLanguageFromDB();

ReactDOM.createRoot(document.getElementById("root") as HTMLElement).render(
  <React.StrictMode>
    <App />
  </React.StrictMode>
);
