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
    color: white;
  }
</style>

<main class="profile">
  <section class="profile-content">
    <img src="icon.jpg" class="profile-image">
    <p class="login">Log-in/Register</p>
    <form action="Authentcate.php" method="post">
        <label for="username">
          <i class="fas fa-user"></i>
        </label>
        <input type="text" name="username" placeholder="Username" id="username" required>
        <label for="password">
          <i class="fas fa-lock"></i>
        </label>
        <input type="password" name="password" placeholder="Password" id="password" required>
        <input type="submit" value="Login">
      </form>
  </section>
</main>

<style>
body {
  background-image: url('camo.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: 100% 100%;
}
</style>
</body>
</html>