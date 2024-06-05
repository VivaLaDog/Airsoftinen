<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title></title>
</head>
<body>
  <style>
  .profile {
    background-color: #fff;
    display: flex;
    flex-direction: column;
    align-items: center;
    padding: 80px 60px 48px;
  }

  @media (max-width: 991px) {
    .profile {
      padding: 40px 20px;
    }
  }

  .profile-content {
    display: flex;
    margin-top: 174px;
    width: 325px;
    max-width: 100%;
    flex-direction: column;
    align-items: center;
  }

  @media (max-width: 991px) {
    .profile-content {
      margin-top: 40px;
    }
  }

  .profile-image {
    border-radius: 50%;
    width: 100%;
    height: 309px;
    aspect-ratio: 1;
  }

  .profile-name {
    background-color: #d9d9d9;
    align-self: stretch;
    margin-top: 30px;
    height: 72px;
  }

  @media (max-width: 991px) {
    .profile-name {
      margin-top: 40px;
    }
  }

  .profile-title {
    background-color: #d9d9d9;
    align-self: stretch;
    margin-top: 38px;
    height: 72px;
  }

  .profile-button-1 {
    background-color: #d9d9d9;
    margin-top: 38px;
    width: 142px;
    height: 49px;
  }

  .profile-button-2 {
    background-color: #d9d9d9;
    margin-top: 25px;
    width: 142px;
    height: 49px;
  }
  .login{
    font-size: 40px;
    font-weight: bolder;
  }
</style>

<main class="profile">
  <section class="profile-content">
    <img src="icon.jpg" class="profile-image">
    <p class="login">Log-in/Register</p>
    <input class="profile-name" placeholder="Username"></input>
    <input class="profile-title" placeholder="Password"></input>
    <button class="profile-button-1" class="Login">Log-in</button>
    <button class="profile-button-2" class="Register">Register</button>
  </section>
</main>

</body>
</html>