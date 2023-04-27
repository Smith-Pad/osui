/******************************************************

Quiz Version 1.0 
Name: Exponents Practice Quiz
Model NO: 



*******************************************************/


/* TODO 
* Figure out how to modify the alert box 
* Decorate the code */


function multiple_choice(){
    /* ******************************************** */
    var total = 5;
    /* ******************************************** */

    /* ******************************************** */
    var score = 0;
    /* ******************************************** */





    /* ******************************************** */
    var question  = {
        1: document.forms['quizForm']['q1'].value,
        2: document.forms['quizForm']['q2'].value,
        3: document.forms['quizForm']['q3'].value,
        4: document.forms['quizForm']['q4'].value,
        5: document.forms['quizForm']['q5'].value
    };
    /* ******************************************** */



    
    /* ******************************************** */
    var correctAnswers = {
        1: "c",
        2: "d",
        3: "a",
        4: "c",
        5: "b"
    }
    /* ******************************************** */


    for (var key in question){

        var results = document.getElementById('results');

        if(question[key] === null || question[key] === ''){
            // If User misses a question or questions, the alert box will appear containing the number of questions missed 
            // If User misses a question or questions, the alert box will appear containing the number of questions missed 

            
             alert("You missed question: " + key);

            results.innerHTML = "<h3>Please answer all the questions in order to get a result</h3>";

        }else if(question[key] === correctAnswers[key]){
            // Call Score ++ 
            score++;


            if(score === 5){

                // If all the answers are correct, it will say this message 
                results.innerHTML = `<h3>Awesome Specticular Job </h3>`;


            }else if(score !== 0){
                // If an answer to a question or questions are missed, it will display the number of answers incorrect and the total answers contained 
                // For example You had 4 out of 5 
                results.innerHTML = `<h3> You had <span> ${score} </span> out of <span> ${total} </span Right answers </h3>`;;

            }
        }else if(score === 0){

            // If User Misses answering all of the questions, then it will represent this message 
            results.innerHTML = `<h3> You had no right answers!</h3>`;


        }

    }
   
    return false;
        
    }