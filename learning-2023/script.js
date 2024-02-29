
import http from 'k6/http';
import { sleep } from 'k6';

export const options = {
  
  // vus: 120, // A number specifying the number of VUs to run concurrently.
  // iterations: 120, 

  // 100 / 50 = 2 batches of 50. 
  // vus: 50, // A number specifying the number of virtual users to run concurrently.
  // iterations: 100, // Number of times the requests (function below) will be called. 

  // 1 batch of 120 users. 
  // vus: 120,
  // iterations: 120, 

  // 10 requests from one user. 
  // vus: 1,
  // iterations: 10, 





  //
  // Ramping user sessions. 
  //
  stages : [
      { duration: "0s", target: 10 },   // Start with 10 users. 

      { duration: "10s", target: 100 }, // Increase to 100 users over 10 seconds. 
      { duration: "5m", target: 100 },  // Hold at 100 users for 5 minutes. 
  ], 
};

export default function() {
  http.get('https://test.k6.io');
  sleep(1);
}
