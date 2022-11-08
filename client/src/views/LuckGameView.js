import React, {useEffect, useState} from "react";
import countries from "i18n-iso-countries";
// Country list downloaded via https://www.npmjs.com/package/i18n-iso-countries
// Additional reference: https://javascript.plainenglish.io/create-a-country-select-component-with-react-2021-a259bd0350d5
import "./LuckGameView.css";
import Voting from "./Voting";

function LuckGameView(props) {
    const [country, setCountry] = useState("");
    const [pic, setPic] = useState(false);
    

// function handleClick(e) {
//     // Have to register the languages you want to use
//     countries.registerLocale(require("i18n-iso-countries/langs/en.json"));

//     // To get an object of all the countries and store it in countryObj
//     const countryObj = countries.getNames("en", { select: "official" });

//     console.log(countryObj);

//     // Use Object.entries(countryObj) to return an array of key-value pairs (Need an array to map)
//     // The same as iterating with a for...in loop
//     const countryArr = Object.entries(countryObj).map(([key, value]) => {
//         return {
//         country: value,
//         code: key,
//         };
//     });

//     let result = countryArr[Math.floor(Math.random() * 251)]
//     setCountry(result.country);

//     console.log(countryArr[Math.floor(Math.random() * 251)]);

//     handleChangeView();
// };

// useEffect(() => {
//     getCountry();
// }, []); 

function handleChangeView() {
    setPic(true);
}

function reset2() {
    setPic(false);
}
async function getCountry() {
    try {
      let response = await fetch("/countries");
      if (response.ok) {
        let data = await response.json(); 
        let result = data[Math.floor(Math.random() * 251)]
        console.log(result)
        setCountry(result);
        handleChangeView();
      } else {
        console.log(`Server error: ${response.status} ${response.statusText}`);
      }
    } catch (err) {
      console.log(`Network error: ${err.message}`);
    }
  }
// QUESTION 1: Can I input this?
// let countryflag = `https://www.sciencekids.co.nz/images/pictures/flags680/${country}.jpg`
// ANSWER Using template literals as below and also {} for JavaScript (since return block is JSX)
{/* <img src={`https://www.sciencekids.co.nz/images/pictures/flags680/${country}.jpg`}></img> */}

// QUESTION 2: How do I toggle between?


  return (
    <div className="LuckGameView">
        <div className="box">
        <div className="container-fluid">
           
            { pic ? 
            (
                <div onClick={reset2} className="country">
                    <p className="countrytext">
                        {country.name}
                    </p>
                </div>
            ) : (
                <div className="lucky">
                <img src="https://img.freepik.com/premium-vector/feeling-lucky-today-poster_105554-149.jpg?w=740"></img>
                </div>
            )}
           
            </div>
            </div>
            <div className="box1">
         <Voting/>
         </div>
         <div className="next">
             <button  onClick={getCountry}>Where to next?</button>
         </div>
        </div>
  
  );
}

export default LuckGameView;