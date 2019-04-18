<admin>

  <div class="login" if={!currentUser}>
     <p>Thanks for visiting. Please proceed to Google Authentication</p>
     <button type="button" onclick={ logIn }>Login</button>
   </div>
   <div class="login" if={currentUser}>
      <p>Welcome to the admin section.</p>
      <button type="button" onclick={ logOut}>Log Out</button>
</div>

<script>
  var tag = this;

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

    // sign-in Listener
    user.onAuthStateChanged(function(userObj) {
      tag.currentUser = user.currentUser;
      tag.update();
    });


</script>



</admin>
