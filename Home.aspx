<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="TourAndTravel2.WebForm2" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Mountain Travel</title>
  <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
  <link href="https://fonts.googleapis.com/css?family=Quicksand" rel="stylesheet">
  <link rel="stylesheet" href="./css/Home.css">
  <link rel="stylesheet" href="./css/HoverPackage.css">
</head>
<body>
        <form id="form2" runat="server">

  <header>
    <h2><a href="#">Tours and Travel</a></h2>
    <nav>
      <li><a href="#">Tours</a></li>
      <li><a href="#">About</a></li>
      <li><a href="#">Contact</a></li>
    </nav>
  </header>

  <section class="hero">
    <div class="background-image" style="background-image: url(https://dl.dropboxusercontent.com/s/jxjux5ahxk3a41t/main.jpg?dl=0)"></div>
    <div class="hero-content-area">
      <h1>Explore Now!</h1>
      <h3>Book With Us And Book It Out Of Here!</h3>
      <a style="font-size: 18px;" href="LoginandRegistration.aspx" class="btn">Sign In/Up Now</a>
    </div>
  </section>

  <section class="destinations">
    <h3 class="title">Some of our destinations: </h3>
    <p>Tired of the ocean? Are the plains too plan? Come along with us on one of our mountain adventurers. Here are some of the pictures from people who have had elevated experiences with us.</p>
    <hr>

    <ul class="grid">
      <li class="small" style="background-image: url(https://dl.dropboxusercontent.com/s/u2ip4n50zj7qvxv/mountain1.jpg?dl=0)"></li>
      <li class="large" style="background-image: url(https://dl.dropboxusercontent.com/s/lfh15t4msq640yu/mountain2.jpg?dl=0);"></li>
      <li class="large" style="background-image: url(https://dl.dropboxusercontent.com/s/v1fx6mylcfia4qc/mountain3.jpg?dl=0);"></li>
      <li class="small" style="background-image: url(https://dl.dropboxusercontent.com/s/25q8ytxp443t0sz/mountain4.jpg?dl=0);"></li>
    </ul>
  </section>

  <section class="packages">
     
    <h3 class="title">Tour Packages</h3>
    <p>We offer a variety of mountaineering packages. Whether you've climbed Everest or don't even know what a mountain is, we've got the perfect vacation for you.</p>
    <hr>
       <main class="page-content">
  <div class="card">
    <div class="content">
      <h2 class="title">Mountain View</h2>
      <p class="copy">Check out all of these gorgeous mountain trips with beautiful views of, you guessed it, the mountains</p>
      <button class="btn">View Trips</button>
    </div>
  </div>
  <div class="card">
    <div class="content">
      <h2 class="title">To The Beach</h2>
      <p class="copy">Plan your next beach trip with these fabulous destinations</p>
      <button class="btn">View Trips</button>
    </div>
  </div>
  <div class="card">
    <div class="content">
      <h2 class="title">Desert Destinations</h2>
      <p class="copy">It's the desert you've always dreamed of</p>
      <button class="btn">Book Now</button>
    </div>
  </div>
  <div class="card">
    <div class="content">
      <h2 class="title">Explore The Galaxy</h2>
      <p class="copy">Seriously, straight up, just blast off into outer space today</p>
      <button class="btn">Book Now</button>
    </div>
  </div>
</main>

    <ul class="grid">
        <li>
          <i class="fa fa-compass fa-4x"></i>
          <h4>Guided Trips</h4>
          <p>Looking for the complete experience? Take a tour with one of our experts. They'll show you secrets that you're likely to miss otherwise.</p>
        </li>
        <li>
          <i class="fa fa-camera-retro fa-4x"></i>
          <h4>Photo Trips</h4>
          <p>Want to experience nature's beauty without all of that annoying exercise? Take a photo tour on one of our mountain buses.</p>
        </li>
        <li>
          <i class="fa fa-bicycle fa-4x"></i>
          <h4>Biking Trips</h4>
          <p>If bicycles are more your speed, consider taking a tour through one of our mountain bike paths. We'll provide the bikes, and lunch too!</p>
        </li>
        <li>
          <i class="fa fa-flag-checkered fa-4x"></i>
          <h4>Racing Trips</h4>
          <p>Got a competitive spirit? Sign up for one of our mountain marathons! Try to reach the summit before anyone else.</p>
        </li>
      </ul>
    </section>

    <section class="testimonials">
      <h3 class="title">Testimonials from our adventures:</h3>
      <hr>
      <p class="quote">Wow! This tour made me realize how much I love mountains. After going on one of these tours, I can safely say that they are my favorite geographic feature, and my favorite word that starts with M.</p>
      <p class="author">- Colt Steele</p>
      <p class="quote">I never understood why people cared so much about mountains. But then I went on one of these tours. Now I can't understand people who <em>don't</em> care about mountains!</p>
      <p class="author">- Elie Schoppik</p>
      <p class="quote">If you want to understand the universe, head to the mountains. I mean, seriously. It's like, woah. You know? It's like that.</p>
      <p class="author">- Tim Garcia</p>
    </section>

    <section class="contact">
      <h3 class="title">Learn more</h3>
      <p>Want to know about our upcoming mountain-related events, or come to one of our mixers? Just sign up for our mailing list. No spam from us, we promise! Except for the spam we give you to keep up your energy while you're hiking through the mountains. We have tons of that.</p>
      <hr>
      <form action="">
        <input type="text" placeholder="Email">
        <a href="#" class="btn">Subscribe now!</a>
      </form>
    </section>

    <footer>
      <p>All Rights <a href="http://unsplash.com/">Reserved. 2021</a></p>
      <p>Proudly Developed By Manish Sable, Ankit Vishwakarma, Sanambir Singh.</p>
      <ul>
        <li><a href="#"><i class="fab fa-twitter-square fa-2x"></i></a></li>
        <li><a href="#"><i class="fab fa-snapchat-square fa-2x"></i></a></li>
        <li><a href="#"><i class="fab fa-facebook-square fa-2x"></i></a></li>
      </ul>
    </footer>
                </form>

</body>
</html>
