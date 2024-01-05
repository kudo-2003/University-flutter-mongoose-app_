const mongoose = require('mongoose');
const Schema = mongoose.Schema;

const UserSchema = new Schema({
  name: {
    type: String
  },
  email: {
    type: String
  },
  phone: {
    type: String
  },
  password: {
    type: String
  }
});

const User = mongoose.model('User', UserSchema);
module.exports = User;
