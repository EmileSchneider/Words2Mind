const mongoose = require('mongoose');
const mongo_uri = 'mongodb://localhost/words2mind-db';

let f = function connectDB() {
  mongoose.connect(mongo_uri, function(err) {
  if (err) {
    throw err;
  } else {
    console.log(`Successfully connected to ${mongo_uri}`);
  }
});
}
module.export = f;
