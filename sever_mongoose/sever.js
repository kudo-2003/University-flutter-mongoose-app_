const express = require('express');
const app = express();
const mongoose = require('mongoose');
const User = require('./models/base'); // replace with your User model file path
var bodyParser = require('body-parser');
mongoose.connect('mongodb://localhost:27017/project', { useNewUrlParser: true, useUnifiedTopology: true });

app.use(express.json());
// parse application/x-www-form-urlencoded
app.use(bodyParser.urlencoded({ extended: false }))

// parse application/json
app.use(bodyParser.json());
app.post('/api/user', async (req, res) => {
    try {
        // console.log(`req.body ${req.body}`);
        console.log(`req.body: ${JSON.stringify(req.body)}`);
        const user = new User(req.body);
        const newUser = await user.save();
        res.status(200).json(user);
    
    } catch (error) {
        console.log(error);
        res.status(500).json(error);
    }
      }
  );
  
app.get('/',async (req, res) => {
  const users = await User.find();
  res.json(users);
});

app.post('/api/login', async (req, res) => {
  const { email, password } = req.body;

  const user = await User.findOne({ email });
  if (!user) {
    return res.status(400).send('Email or password is incorrect!🙄');
  }

  const isPasswordValid = await bcrypt.compare(password, user.password);
  if (!isPasswordValid) {
    return res.status(400).send('Email or password is incorrect!😫');
  }

  res.send('Logged in successfully💎');
});

app.listen(3000, () => {
  console.log('Server is running on port 3000💎');
});
