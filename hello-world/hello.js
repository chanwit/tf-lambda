// Lambda function code

module.exports.handler = async (event) => {
  console.log('Event: ', event);
  let responseMessage = 'bonjour, World!';

  if (event.queryStringParameters && event.queryStringParameters['Name']) {
    responseMessage = 'bonjour ' + event.queryStringParameters['Name'] + '!'
  }

  return {
    statusCode: 200,
    headers: {
      'Content-Type': 'application/json',
    },
    body: JSON.stringify({
      message: responseMessage,
    }),
  }
}
