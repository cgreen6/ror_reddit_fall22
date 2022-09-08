import { useState, useEffect } from 'react';
import axios from 'axios';
import { useParams } from 'react-router-dom';

const Topics = () => {
  const [topics, setTopics] = useState([])

  const { subId } = useParams()

  useEffect( () => {
    axios.get(`/api/subs/${subId}/topics`)
      .then( res => setTopics(res.data) )
      .catch( err => console.log(err) )
  }, [])

  return (
    <>
    
    </>
  )
}

export default Topics;