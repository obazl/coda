module Styles = {
    open Css; 
    
    let square = (bgColor, textColor, borderColor) => 
    style([
      display(`flex),
      flexDirection(`column),
      justifyContent(`flexStart),
      alignItems(`center),
      height(`rem(23.)),
      width(`rem(23.)),
      backgroundColor(bgColor),
      selector("h1", [color(textColor), fontFamily(Fonts.ibmplexsans)]),
      borderRadius(`px(6)),
      border(`px(2), `solid, borderColor),
      /* boxShadow(~x=`zero,~y=`px(10),~blur=`px(30),`rgba((61,88,120,0.25))), */
    ]);
    
    let blockText = (textColor) => style([
    marginTop(`zero),
    height(`rem(20.)),
    width(`rem(20.)),
    overflowWrap(`breakWord),
    fontFamily(Fonts.ocrastud),
    fontSize(`rem(1.56)),
    color(textColor),
    ]);
  
  };
   
  [@react.component]
  let make = (~bgColor, ~textColor, ~borderColor, ~heading, ~text, ~active=false, ~timer=false) => 
  <div className={
    {switch (active) {
      | true =>  Styles.square(Colors.thirdBgActive, Colors.offWhite, Colors.thirdBgActive)
      | false =>  Styles.square(bgColor, textColor, borderColor)
    }}}>
    <h1> {React.string(heading)} </h1>
    <p className=Styles.blockText(textColor)> {React.string(text)} </p>
    {switch (timer) {
      | true => <div> {React.string("Timer placeholder")}</div>
      | false => React.null
    }}
  </div>;