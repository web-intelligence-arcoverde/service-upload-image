'use strict';

const Route = use('Route');

Route.get('/', () => {
  return {greeting: 'realtime update'};
});
