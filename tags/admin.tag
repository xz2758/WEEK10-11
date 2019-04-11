<admin>
  <div class="login" if={!currentUser}>
     <p>Thanks for visiting. Please proceed to Google Authentication</p>
     <button type="button" onclick={ logIn }>Login</button>
   </div>

<script>

this.currentUser = user.currentUser;

    //sign-in with google
    this.logIn = function () {
      console.log("logging in...");
      var provider = new firebase.auth.GoogleAuthProvider();
      user.signInWithPopup(provider);
    }

    //sign-out
    this.logOut = function () {
      console.log("logging out...");
      user.signOut();
    }



</script>



</admin>
