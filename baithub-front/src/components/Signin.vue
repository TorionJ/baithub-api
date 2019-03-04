<template>
  <div>
    <h3>Sign in</h3>
    <form @submit.prevent='signin'>
      <div class='' v-if='error'>{{error}}</div>

      <div>
        <label for="username" class=''>Username</label>
        <input type="text" v-model="username" class="input" id="username" placeholder="Username">
      </div>

      <div>
        <label for="Password" class=''>Password</label>
        <input type="password" v-model="password" class="input" id="username" placeholder="Password">
      </div>

      <button type="submit" class="">Sign in</button>

      <div>
        <router-link to="/signup" class="link">Sign Up</router-link>
      </div>
    </form>
  </div>
</template>

<script>
export default {
  name: "Signin",
  data() {
    return {
      username: "",
      password: "",
      error: ""
    };
  },
  created() {
    this.checkSignin();
  },
  updated() {
    this.checkSignin();
  },
  methods: {
    signin() {
      this.$http.plain
        .post("/signin", {
          username: this.username,
          password: this.password
        })
        .then(response => this.signinSuccessful(response))
        .catch(error => this.signinFailed(error));
    },
    signinSuccessful(response) {
      if (!response.data.csrf) {
        this.signinFailed(response);
        return;
      }
      localStorage.csrf = response.data.csrf;
      localStorage.signedIn = true;
      this.error = "";
      this.$router.replace("/tacklebox");
    }
  }
};
</script>

<style scoped>
</style>


