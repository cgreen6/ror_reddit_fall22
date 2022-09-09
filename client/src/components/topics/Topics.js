import { useState, useEffect } from 'react';
import axios from 'axios';
import { useParams } from 'react-router-dom';
import TopicList from './TopicList';
import TopicForm from './TopicForm';

const Topics = () => {
  const [topics, setTopics] = useState([])

  const { subId } = useParams()

  useEffect( () => {
    axios.get(`/api/subs/${subId}/topics`)
      .then( res => setTopics(res.data) )
      .catch( err => console.log(err) )
  }, [])

  const addTopic = (topic) => {
    axios.post(`/api/subs/${subId}/topics`, { topic })
      .then( res => setTopics([...topics, res.data]))
      .catch( err => console.log(err) )
  }

  const updateTopic = (id, topic) => {
    axios.put(`/api/subs/${subId}/topics/${id}`, { topic })
      .then(res => {
        const newUpdatedTopics = topics.map( t => {
          if (t.id === id) {
            return res.data
          }
        })
        setTopics(newUpdatedTopics)

  })

  const deleteTopic = (id) => {

  }

  return (
    <>
      <h1>Topics</h1>
      <TopicForm 
        addTopic={addTopic}
      />
      <TopicList 
        topics={topics}
      />
    </>
  )
}

export default Topics;