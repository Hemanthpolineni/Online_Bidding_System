<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BookShelf</title>
    <link rel="icon" href="./images/logo2.png">
    <link rel="stylesheet" href="./css/style.css">
    <style>
    *{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
body{
    width: 100%;
    background: #0c111b;
    position: relative;
    font-family: roboto, sans-serif;
}
.navbar{
    width: 100%;
    height: 80px;
    position: fixed;
    top: 0;
    left: 0;
    padding: 0 4%;
    background: #0c111b;
    z-index: 9;
    display: flex;
    align-items: center;
}
.brand-logo{
    height: 70px;
}
.navbar span{
    color: #fff;
    padding: 2px;
    margin-top: 12px;
}
.nav-links{
    margin-top: 10px;
    display: flex;
    list-style: none;
}
.nav-items a{
    text-decoration: none;
    margin-left: 20px;
    text-transform: capitalize;
    color: #fff;
    opacity: 0.9;
}
.right-container{
    display: block;
    margin-left: auto;
}
.search-box{
    border: none;
    border-bottom: 1px solid #aaa;
    background: transparent;
    outline: none;
    height: 30px;
    color: #fff;
    width: 250px;
    text-transform: capitalize;
    font-size: 16px;
    font-weight: 500;
    transition: .5s;
}
.search-box:focus{
    width: 400px;
    border-color: #1f80e0;
}
.sub-btn{
    background: #1f80e0;
    height: 20px;
    padding: 0 20px;
    color: #fff;
    border-radius: 5px;
    border: none;
    outline: none;
    text-transform: uppercase;
    font-weight: 700;
    font-size: 12px;
    margin: 0 10px;
}
.login-link{
    color: #fff;
    opacity: 0.9;
    text-transform: uppercase;
    font-size: 15px;
    font-weight: 700;
    text-decoration: none;
}
.carousel-container{
    position: relative;
    width: 100%;
    height: 450px;
    padding: 20px 0;
    overflow-x: hidden;
    margin-top: 80px;
}
.carousel{
    display: flex;
    width: 92%;
    height: 100%;
    position: relative;
    margin: auto;
}
.slider{
    flex: 0 0 auto;
    margin-right: 30px;
    position: relative;
    background: rgba(0, 0, 0, .5);
    border-radius: 5px;
    width: 100%;
    height: 100%;
    left: 0;
    transition: 1s;
    overflow: hidden;
}
.slider img{
    width: 70%;
    min-height: 100%;
    object-fit: cover;
    display: block;
    margin-left: auto;
}
.slide-content{
    position: absolute;
    width: 50%;
    height: 100%;
    z-index: 2;
    background: linear-gradient(to right , #030b17 80%, #0c111b00);
    color: #fff;
}
.movie-title{
    padding-left: 50px;
    text-transform: capitalize;
    margin-top: 80px;
}
.movie-des{
    width: 80%;
    line-height: 30px;
    padding-left: 50px;
    margin-top: 30px;
    opacity: 0.8;
}
.video-card-container{
    position: relative;
    width: 92%;
    margin: auto;
    height: 10vw;
    display: flex;
    margin-bottom: 20px;
    justify-content: space-between;
}
.video-card{
    position: relative;
    min-width: calc(100%/5 - 10px);
    width: calc(100%/5 - 10px);
    height: 100%;
    border-radius: 5px;
    overflow: hidden;
    background: #030b17;
}
.video-card-image,
.card-video{
    width: 100%;
    height: 100%;
    object-fit: cover;
}
.card-video{
    position: absolute;
}
.video-card:hover .video-card-image{
    display: none;
}
.title{
    color: #fff;
    opacity: 0.9;
    padding-left: 4%;
    text-transform: capitalize;
    font-size: 22px;
    font-weight: 500;
}
.mivies-list{
    width: 100%;
    height: 220px;
    position: relative;
    margin: 10px 0 20px;
}
.card-container{
    position: absolute;
    width: 92%;
    padding-left: 10px;
    height: 220px;
    display: flex;
    margin: 0 auto;
    align-items: center;
    overflow-x: auto;
    overflow-y: visible;
    scroll-behavior: smooth;
    margin-left: 45px;
}
.card-container::-webkit-scrollbar{
    display: none;
}
.card{
    position: relative;
    min-width: 150px;
    width: 150px;
    height: 200px;
    border-radius: 5px;
    overflow: hidden;
    margin-right: 10px;
    transition: .5s;
    background: #000;
}
.card:hover{
    transform: scale(1.1);
}
.card:hover .card-body{
    opacity: 1;
}
.card-img{
    width: 100%;
    height: 100%;
    object-fit: cover;
}
.card-body{
    opacity: 0;
    width: 100%;
    height: 100%;
    position: absolute;
    top: 0;
    left: 0;
    z-index: 2;
    background: linear-gradient(to bottom, rgba(4,8,15,0), #192133 90%);
    padding: 10px;
    transition: 0.5s;
}
.name{
    color: #fff;
    font-size: 15px;
    font-weight: 500;
    text-transform: capitalize;
    margin-top: 60%;
}
.des{
    color: #fff;
    opacity: 0.8;
    margin: 5px 0;
    font-weight: 500;
    font-size: 12px;
}
.watchlist-btn{
    position: relative;
    width: 100%;
    text-transform: capitalize;
    background: none;
    border: none;
    font-weight: 500;
    text-align: right;
    color: rgba(255, 255, 255, 0.5);
    margin: 5px 0;
    cursor: pointer;
    padding: 10px 5px;
    border-radius: 5px;
}
.watchlist-btn::before{
    content: '';
    position: absolute;
    top: 0;
    left: -5px;
    height: 35px;
    width: 35px;
    background-image: url(./images/add.png);
    background-size: cover;
    transform: scale(0.4);
}
.watchlist-btn:hover{
    color: #fff;
    background:rgba(255, 255, 255, 0.1);
}
.pre-btn,
.nxt-btn{
    position: absolute;
    top: 0;
    width: 5%;
    height: 100%;
    z-index: 2;
    border: none;
    cursor: pointer;
    outline: none;
}
.pre-btn{
    left: 0;
    background: linear-gradient(to right, #0c111b 0%, #0c111b00);
}
.nxt-btn{
    right: 0;
    background: linear-gradient(to right, #0c111b 0%, #0c111b00);
}
.pre-btn img,
.nxt-btn img{
    width: 15px;
    height: 20px;
    opacity: 0;
}
.pre-btn:hover img,
.nxt-btn:hover img{
    opacity: 1;
}
    </style>
</head>
<body>
    <nav class="navbar">
        <a href="index.html">
        <img src="./images/logo2.png" class="brand-logo" alt=""><span></span></a>
        <ul class="nav-links">
            <li class="nav-items"><a href="index.html">Home</a></li>
            <li class="nav-items"><a href="store.html">Store</a></li>   
            <li class="nav-items"><a href="mycart.html">MyCart</a></li>
            <li class="nav-items"><a href="mycart.html">MyWishlist</a></li>
            <li class="nav-items"><a href="aboutus.html">About us</a></li>
            <li class="nav-items"><a href="contactus.html">Contact Us</a></li>
        </ul>

        <div class="right-container">
            <input type="text" class="search-box" placeholder="search">
            <a href="sign.html" class="sub-btn">Seller Login</a>
            <a href="customersign.html" class="login-link">Login</a>
        </div>
    </nav>

    <div class="carousel-container">
        <div class="carousel">
            <!-- <div class="slider">
                <div class="slide-content">
                    <h1 class="movie-title">Loki</h1>
                    <p class="movie-des">Loki, the God of Mischief, steps out of his brother's shadow to embark on an adventure that takes place after the events of Avengers: Endgame.</p>
                </div>
                <img src="./images/slider 1.png" alt="">
            </div> -->
        </div>
    </div>

    <div class="video-card-container">
        <div class="video-card">
            <img src="./images/comics.png" class="video-card-image" alt="">
            <video src="./videos/comics.mp4" mute loop class="card-video"></video>
        </div>
        <div class="video-card">
            <img src="./images/novels.png" class="video-card-image" alt="">
            <video src="./videos/novel.mp4" mute loop class="card-video"></video>
        </div>
        <div class="video-card">
            <img src="./images/manga.png" class="video-card-image" alt="">
            <video src="./videos/manga.mp4" mute loop class="card-video"></video>
        </div>
        <div class="video-card">
            <img src="./images/spacefiction.png" class="video-card-image" alt="">
            <video src="./videos/spacefiction.mp4" mute loop class="card-video"></video>
        </div>
        <div class="video-card">
            <img src="./images/kids.png" class="video-card-image" alt="">
            <video src="./videos/kids.mp4" mute loop class="card-video"></video>
        </div>
    </div>

    <h1 class="title">Recommended for you</h1>
    <div class="mivies-list">
        <button class="pre-btn"><img src="./images/pre.png" alt=""></button>
        <button class="nxt-btn"><img src="./images/nxt.png" alt=""></button>
        <div class="card-container">
            <div class="card">
                <img src="./images/halfgirlfriend.jpeg" class="card-img" alt="">
                <div class="card-body">
                    <h2 class="name">Half Girlfriend</h2>
                    <h6 class="des">Complex romance blurring friendship's boundaries.</h6>
                    <button class="watchlist-btn">add to watchlist</button>
                </div>
            </div>
            <div class="card">
                <img src="./images/richdadpoordad.jpeg " class="card-img" alt="">
                <div class="card-body">
                    <h2 class="name">Rich Dad Poor Dad</h2>
                    <h6 class="des">Financial wisdom through contrasting paternal perspectives.</h6>
                    <button class="watchlist-btn">add to watchlist</button>
                </div>
            </div>
            <div class="card">
                <img src="./images/percyjackson.jpeg" class="card-img" alt="">
                <div class="card-body">
                    <h2 class="name">Percy Jackson</h2>
                    <h6 class="des">Modern quests, gods, and demigod adventures intertwined.</h6>
                    <button class="watchlist-btn">add to watchlist</button>
                </div>
            </div>
            <div class="card">
                <img src="./images/outofhiding.png" class="card-img" alt="">
                <div class="card-body">
                    <h2 class="name">Out Of Hiding</h2>
                    <h6 class="des">Emerging courageously, stepping out of hiding.</h6>
                    <button class="watchlist-btn">add to watchlist</button>
                </div>
            </div>
            <div class="card">
                <img src="./images/tantratantrik2.png" class="card-img" alt="">
                <div class="card-body">
                    <h2 class="name">Tantra Tantrik</h2>
                    <h6 class="des">Supernatural intrigue, magic, and mystical realms collide.</h6>
                    <button class="watchlist-btn">add to watchlist</button>
                </div>
            </div>
            <div class="card">
                <img src="./images/mokingbird.jpg" class="card-img" alt="">
                <div class="card-body">
                    <h2 class="name">Mocking Bird</h2>
                    <h6 class="des">Symbolic journey of hope through hardship.</h6>
                    <button class="watchlist-btn">add to watchlist</button>
                </div>
            </div>
            <div class="card">
                <img src="./images/pride.jpg" class="card-img" alt="">
                <div class="card-body">
                    <h2 class="name">Pride</h2>
                    <h6 class="des">Empowering narrative celebrating identity, diversity, and acceptance.</h6>
                    <button class="watchlist-btn">add to watchlist</button>
                </div>
            </div>
            <div class="card">
                <img src="./images/malala.jpg" class="card-img" alt="">
                <div class="card-body">
                    <h2 class="name">Malala</h2>
                    <h6 class="des">Courageous advocate for education and equality.</h6>
                    <button class="watchlist-btn">add to watchlist</button>
                </div>
            </div>
            <div class="card">
                <img src="./images/adventuresoffinn.jpg" class="card-img" alt="">
                <div class="card-body">
                    <h2 class="name">Adventure of Huckleberry Finn</h2>
                    <h6 class="des">Mississippi journey, Huck's escapades, societal critiques woven.</h6>
                    <button class="watchlist-btn">add to watchlist</button>
                </div>
            </div>
            <div class="card">
                <img src="./images/prideandprejudice.jpg" class="card-img" alt="">
                <div class="card-body">
                    <h2 class="name">Pride and Prejudice</h2>
                    <h6 class="des">Classical romance, societal norms challenged, love blossoms.</h6>
                    <button class="watchlist-btn">add to watchlist</button>
                </div>
            </div>
            <div class="card">
                <img src="./images/hindu.jpg" class="card-img" alt="">
                <div class="card-body">
                    <h2 class="name">Hindu</h2>
                    <h6 class="des">Ancient scriptures, diverse beliefs, spiritual insights.</h6>
                    <button class="watchlist-btn">add to watchlist</button>
                </div>
            </div>
            <div class="card">
                <img src="./images/psycology.jpg" class="card-img" alt="">
                <div class="card-body">
                    <h2 class="name">Psychology</h2>
                    <h6 class="des">Mind's intricacies explored, behavior's mysteries unravel.</h6>
                    <button class="watchlist-btn">add to watchlist</button>
                </div>
            </div>
            <div class="card">
                <img src="./images/ikigai.jpg" class="card-img" alt="">
                <div class="card-body">
                    <h2 class="name">Ikigai</h2>
                    <h6 class="des">
                        Japanese concept: Purpose, joy, fulfillment, life's essence.</h6>
                    <button class="watchlist-btn">add to watchlist</button>
                </div>
            </div>
            <div class="card">
                <img src="./images/grapes.jpg" class="card-img" alt="">
                <div class="card-body">
                    <h2 class="name">Grapes of Wrath</h2>
                    <h6 class="des">Depression-era struggles, migrant family's resilience portrayed.</h6>
                    <button class="watchlist-btn">add to watchlist</button>
                </div>
            </div>
            <div class="card">
                <img src="./images/youcan.jpg" class="card-img" alt="">
                <div class="card-body">
                    <h2 class="name">You Can</h2>
                    <h6 class="des">Exploration of existence's meaning, philosophical insights  .</h6>
                    <button class="watchlist-btn">add to watchlist</button>
                </div>
            </div>
            <div class="card">
                <img src="./images/richestman.jpg" class="card-img" alt="">
                <div class="card-body">
                    <h2 class="name">The Richestman in Babylon</h2>
                    <h6 class="des">Ancient parables sharing timeless financial wisdom.</h6>
                    <button class="watchlist-btn">add to watchlist</button>
                </div>
            </div>
            <div class="card">
                <img src="./images/shuggiebain.jpg" class="card-img" alt="">
                <div class="card-body">
                    <h2 class="name">Shuggie</h2>
                    <h6 class="des">Shuggie Bain: A poignant, Glasgow-set family saga.</h6>
                    <button class="watchlist-btn">add to watchlist</button>
                </div>
            </div>
        </div>
    </div>

    <h1 class="title">Popular Books</h1>
    <div class="mivies-list">
        <button class="pre-btn"><img src="./images/pre.png" alt=""></button>
        <button class="nxt-btn"><img src="./images/nxt.png" alt=""></button>
        <div class="card-container">
            <div class="card">
                <img src="./images/annefrank.jpg" class="card-img" alt="">
                <div class="card-body">
                    <h2 class="name">Anne Frank</h2>
                    <h6 class="des">Diary of a Jewish Girl.</h6>
                    <button class="watchlist-btn">add to watchlist</button>
                </div>
            </div>
            <div class="card">
                <img src="./images/bookthief.jpg" class="card-img" alt="">
                <div class="card-body">
                    <h2 class="name">Book Thief</h2>
                    <h6 class="des">World War II, Liesel, Words.</h6>
                    <button class="watchlist-btn">add to watchlist</button>
                </div>
            </div>
            <div class="card">
                <img src="./images/belljar.jpg" class="card-img" alt="">
                <div class="card-body">
                    <h2 class="name">Bell Jar</h2>
                    <h6 class="des">Coming-of-age struggle with depression.</h6>
                    <button class="watchlist-btn">add to watchlist</button>
                </div>
            </div>
            <div class="card">
                <img src="./images/catch22.jpg" class="card-img" alt="">
                <div class="card-body">
                    <h2 class="name">Catch 22</h2>
                    <h6 class="des">Absurdity, War, Bureaucracy, Paradoxical Logic.</h6>
                    <button class="watchlist-btn">add to watchlist</button>
                </div>
            </div>
            <div class="card">
                <img src="./images/easteden.jpg" class="card-img" alt="">
                <div class="card-body">
                    <h2 class="name">Easth EDen</h2>
                    <h6 class="des">Family, Good vs. Evil, Redemption.</h6>
                    <button class="watchlist-btn">add to watchlist</button>
                </div>
            </div>
            <div class="card">
                <img src="./images/eatpraylove.jpg" class="card-img" alt="">
                <div class="card-body">
                    <h2 class="name">Eat Pray Love</h2>
                    <h6 class="des">Lorem ipsum dolor sit amet consectetur.</h6>
                    <button class="watchlist-btn">add to watchlist</button>
                </div>
            </div>
            <div class="card">
                <img src="./images/handmaids.jpg" class="card-img" alt="">
                <div class="card-body">
                    <h2 class="name">Hand Maids</h2>
                    <h6 class="des">Totalitarian society, female subjugation, resistance.</h6>
                    <button class="watchlist-btn">add to watchlist</button>
                </div>
            </div>
            <div class="card">
                <img src="./images/kiterunner.jpg" class="card-img" alt="">
                <div class="card-body">
                    <h2 class="name">Kite Runner</h2>
                    <h6 class="des">Friendship, betrayal, redemption, guilt, Afghanistan.</h6>
                    <button class="watchlist-btn">add to watchlist</button>
                </div>
            </div>
            <div class="card">
                <img src="./images/lightwecannotsee.jpg" class="card-img" alt="">
                <div class="card-body">
                    <h2 class="name">Light We Cannot See</h2>
                    <h6 class="des">War, Blindness, Radios, Hope, Connection.</h6>
                    <button class="watchlist-btn">add to watchlist</button>
                </div>
            </div>
            <div class="card">
                <img src="./images/littlelife.jpg" class="card-img" alt="">
                <div class="card-body">
                    <h2 class="name">Little Life</h2>
                    <h6 class="des">Intimate friendship, trauma, resilience, love..</h6>
                    <button class="watchlist-btn">add to watchlist</button>
                </div>
            </div>
            <div class="card">
                <img src="./images/lonley-bone.jpeg" class="card-img" alt="">
                <div class="card-body">
                    <h2 class="name">Lonely Bone</h2>
                    <h6 class="des">"The Lovely Bones" by Alice Sebold.</h6>
                    <button class="watchlist-btn">add to watchlist</button>
                </div>
            </div>
            <div class="card">
                <img src="./images/on-the-road.jpeg" class="card-img" alt="">
                <div class="card-body">
                    <h2 class="name">On The Road</h2>
                    <h6 class="des">Journey of self-discovery and freedom.</h6>
                    <button class="watchlist-btn">add to watchlist</button>
                </div>
            </div>
            <div class="card">
                <img src="./images/stay-true.jpg" class="card-img" alt="">
                <div class="card-body">
                    <h2 class="name">Stay True</h2>
                    <h6 class="des">Lorem ipsum dolor sit amet consectetur.</h6>
                    <button class="watchlist-btn">add to watchlist</button>
                </div>
            </div>
            <div class="card">
                <img src="./images/poster 6.png" class="card-img" alt="">
                <div class="card-body">
                    <h2 class="name">movie name</h2>
                    <h6 class="des">Lorem ipsum dolor sit amet consectetur.</h6>
                    <button class="watchlist-btn">add to watchlist</button>
                </div>
            </div>
            <div class="card">
                <img src="./images/poster 4.png" class="card-img" alt="">
                <div class="card-body">
                    <h2 class="name">movie name</h2>
                    <h6 class="des">Lorem ipsum dolor sit amet consectetur.</h6>
                    <button class="watchlist-btn">add to watchlist</button>
                </div>
            </div>
            <div class="card">
                <img src="./images/poster 3.png" class="card-img" alt="">
                <div class="card-body">
                    <h2 class="name">movie name</h2>
                    <h6 class="des">Lorem ipsum dolor sit amet consectetur.</h6>
                    <button class="watchlist-btn">add to watchlist</button>
                </div>
            </div>
            <div class="card">
                <img src="./images/poster 10.png" class="card-img" alt="">
                <div class="card-body">
                    <h2 class="name">movie name</h2>
                    <h6 class="des">Lorem ipsum dolor sit amet consectetur.</h6>
                    <button class="watchlist-btn">add to watchlist</button>
                </div>
            </div>
            <div class="card">
                <img src="./images/alittlelife.jpeg" class="card-img" alt="">
                <div class="card-body">
                    <h2 class="name">A Little Life</h2>
                    <h6 class="des">Lorem ipsum dolor sit amet consectetur.</h6>
                    <button class="watchlist-btn">add to watchlist</button>
                </div>
            </div>
        </div>
    </div>

    <h1 class="title">New Releases</h1>
    <div class="mivies-list">
        <button class="pre-btn"><img src="./images/pre.png" alt=""></button>
        <button class="nxt-btn"><img src="./images/nxt.png" alt=""></button>
        <div class="card-container">
            <div class="card">
                <img src="./images/thehungrygames.jpeg" class="card-img" alt="">
                <div class="card-body">
                    <h2 class="name">The Hungry Games</h2>
                    <h6 class="des">Dystopian survival games challenge youth.</h6>
                    <button class="watchlist-btn">add to watchlist</button>
                </div>
            </div>
            <div class="card">
                <img src="./images/thecat.jpg" class="card-img" alt="">
                <div class="card-body">
                    <h2 class="name">The Cat</h2>
                    <h6 class="des">Feline Tales in Purrfect Pictures.</h6>
                    <button class="watchlist-btn">add to watchlist</button>
                </div>
            </div>
            <div class="card">
                <img src="./images/thehousemaid.jpeg" class="card-img" alt="">
                <div class="card-body">
                    <h2 class="name">The House Maid</h2>
                    <h6 class="des">Housemaid's Life Revealed in Novel.</h6>
                    <button class="watchlist-btn">add to watchlist</button>
                </div>
            </div>
            <div class="card">
                <img src="./images/thetaleoftwocities.jpeg" class="card-img" alt="">
                <div class="card-body">
                    <h2 class="name">The Tale of Two Cities.</h2>
                    <h6 class="des">Revolution, Sacrifice, Resurrection, Love, Redemption.</h6>
                    <button class="watchlist-btn">add to watchlist</button>
                </div>
            </div>
            <div class="card">
                <img src="./images/ninteeneightyfour.jpeg" class="card-img" alt="">
                <div class="card-body">
                    <h2 class="name">Ninteen Eighty Four</h2>
                    <h6 class="des">LTotalitarianism, surveillance, thought control, dystopia, rebellion.</h6>
                    <button class="watchlist-btn">add to watchlist</button>
                </div>
            </div>
            <div class="card">
                <img src="./images/thebooktheif.jpeg" class="card-img" alt="">
                <div class="card-body">
                    <h2 class="name">The Book Thief</h2>
                    <h6 class="des">Lorem ipsum dolor sit amet consectetur.</h6>
                    <button class="watchlist-btn">add to watchlist</button>
                </div>
            </div>
            <div class="card">
                <img src="./images/itendswithus.jpeg" class="card-img" alt="">
                <div class="card-body">
                    <h2 class="name">It End With Us.</h2>
                    <h6 class="des">Lorem ipsum dolor sit amet consectetur.</h6>
                    <button class="watchlist-btn">add to watchlist</button>
                </div>
            </div>
            <div class="card">
                <img src="./images/hobbit.jpeg" class="card-img" alt="">
                <div class="card-body">
                    <h2 class="name">Hobbit</h2>
                    <h6 class="des">Lorem ipsum dolor sit amet consectetur.</h6>
                    <button class="watchlist-btn">add to watchlist</button>
                </div>
            </div>
            <div class="card">
                <img src="./images/gatsby.jpeg" class="card-img" alt="">
                <div class="card-body">
                    <h2 class="name">Gatsby</h2>
                    <h6 class="des">Lorem ipsum dolor sit amet consectetur.</h6>
                    <button class="watchlist-btn">add to watchlist</button>
                </div>
            </div>
            <div class="card">
                <img src="./images/lordofrings.jpeg" class="card-img" alt="">
                <div class="card-body">
                    <h2 class="name">Lord of Rings</h2>
                    <h6 class="des">Lorem ipsum dolor sit amet consectetur.</h6>
                    <button class="watchlist-btn">add to watchlist</button>
                </div>
            </div>
            <div class="card">
                <img src="./images/frankenstein.jpeg" class="card-img" alt="">
                <div class="card-body">
                    <h2 class="name">Frankenstein</h2>
                    <h6 class="des">Lorem ipsum dolor sit amet consectetur.</h6>
                    <button class="watchlist-btn">add to watchlist</button>
                </div>
            </div>
            <div class="card">
                <img src="./images/educated.jpeg" class="card-img" alt="">
                <div class="card-body">
                    <h2 class="name">Educated</h2>
                    <h6 class="des">Lorem ipsum dolor sit amet consectetur.</h6>
                    <button class="watchlist-btn">add to watchlist</button>
                </div>
            </div>
            <div class="card">
                <img src="./images/davincicode.jpeg" class="card-img" alt="">
                <div class="card-body">
                    <h2 class="name">Da Vinci Code</h2>
                    <h6 class="des">Lorem ipsum dolor sit amet consectetur.</h6>
                    <button class="watchlist-btn">add to watchlist</button>
                </div>
            </div>
        </div>
    </div>

    <script src="./javascript/data.js"></script>
    <script src="./javascript/app.js"></script>
</body>
</html>