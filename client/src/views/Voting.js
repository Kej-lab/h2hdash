import React, { useEffect, useState} from 'react'
import './Voting.css'
import { Doughnut } from 'react-chartjs-2'
import { Chart as ChartJS, ArcElement, Tooltip, Legend } from 'chart.js';
ChartJS.register(ArcElement, Tooltip, Legend);

function Voting() {
    const [votes, setVotes] = useState([])


    const data = ({
        labels: ['yes', 'no'],
        datasets: [
          {
            label:  'Votes',
            data: [Number(votes[0]?.yes), Number(votes[0]?.no)],
            backgroundColor: [
              'rgba(0, 255, 142, 0.5)',
              'rgba(255, 99, 132, 0.5)'
              
              
            ],
            borderColor: [
              'rgba(0, 255, 142, 1)',
              'rgba(255, 99, 132, 1)'
        
          
            ],
            borderWidth: 4,
            cutout: '58%',

          },
        ],
      })
    

    useEffect(() => {
        getVote();
      }, []); // 
    
      async function getVote() {
        try {
          let response = await fetch("/vote");
          if (response.ok) {
            let vote = await response.json();
            setVotes(vote);
          } else {
            console.log(`Server error: ${response.status} ${response.statusText}`);
          }
        } catch (err) {
          console.log(`Network error: ${err.message}`);
        }
      };

      async function addVoteYes(id) {
        let agree = votes.find(v => v.id === id);
        agree.yes++;

         let options = {
            method: 'PUT',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify(agree)
        };

        try {
            let response = await fetch(`/vote/${id}`, options);  
            if (response.ok) {
                let vote = await response.json();
                setVotes(vote);
            } else {
                console.log(`Server error: ${response.status} ${response.statusText}`);
            }
        } catch (err) {
            console.log(`Server error: ${err.message}`);
        }
    };

    async function addVoteNo(id) {
      let disagree = votes.find(v => v.id === id);
      disagree.no++;

       let options = {
          method: 'PUT',
          headers: { 'Content-Type': 'application/json' },
          body: JSON.stringify(disagree)
      };

      try {
          let response = await fetch(`/vote/${id}`, options);  
          if (response.ok) {
              let vote = await response.json();
              setVotes(vote);
          } else {
              console.log(`Server error: ${response.status} ${response.statusText}`);
          }
      } catch (err) {
          console.log(`Server error: ${err.message}`);
      }
  };

  async function resetVote(id) {
    let reset = {}
    reset.yes = 0;
    reset.no = 0;

     let options = {
        method: 'PUT',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(reset)
    };

    try {
        let response = await fetch(`/vote/${id}`, options);  
        if (response.ok) {
            let vote = await response.json();
            setVotes(vote);
        } else {
            console.log(`Server error: ${response.status} ${response.statusText}`);
        }
    } catch (err) {
        console.log(`Server error: ${err.message}`);
    }
};
  

    
  return (
    <div className='votebox'>
        
        <div className='vote-chart'>
            <Doughnut data={data}
            /> 
        </div>
        {votes.map(v => (
          <div key={v.id}> 
          <button className='yes-button' onClick = {(e) => addVoteYes(v.id)} type="button">Yes</button>
          <button className='re-button'onClick = {(e) => resetVote(v.id)} type="button">Reset</button>
          <button className='no-button' onClick = {(e) => addVoteNo(v.id)} type="button">No</button>
          
        </div>
        ))}
    </div>
    )
  }

export default Voting;