import streamlit as st

# Apply CSS for professional design
def apply_custom_css():
    st.markdown("""
        <style>
        /* Background */
        body {
            background: linear-gradient(to right, #6a11cb, #2575fc);
            font-family: Arial, sans-serif;
            margin: 0;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .main-container {
            display: flex;
            justify-content: center;
            align-items: center;
            width: 100%;
        }

        /* Card */
        .card {
            background: #fff;
            width: 350px;
            padding: 30px;
            border-radius: 20px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
            text-align: center;
        }

        .card img {
            width: 150px;
            margin-bottom: 20px;
            border-radius: 30%;
        }

        .card h2 {
            color: #333;
            margin-bottom: 20px;
        }

        /* Input Fields */
        .card input {
            width: calc(100% - 20px);
            padding: 10px;
            margin: 10px 0;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 10px;
        }

        .card input:focus {
            border: 1px solid #6a11cb;
            outline: none;
        }

        /* Button */
        .card button {
            background: rgb(255, 84, 44);
            color: #fff;
            border: none;
            padding: 10px 20px;
            margin-top: 20px;
            border-radius: 25px;
            cursor: pointer;
            font-size: 16px;
            transition: 0.3s;
        }

        .card button:hover {
            background: rgb(153, 153, 153);
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
        }

        /* Footer */
        .footer {
            margin-top: 20px;
            font-size: 14px;
            color: #777;
        }

        .footer a {
            color: #2575fc;
            text-decoration: none;
        }

        .footer a:hover {
            text-decoration: underline;
        }

        /* Redirect link at the bottom of the card */
        .redirect-link {
            margin-top: 15px;
            font-size: 14px;
            text-align: center;
        }

        .redirect-link a {
            color: #2575fc;
            text-decoration: none;
        }

        .redirect-link a:hover {
            text-decoration: underline;
        }
        </style>
    """, unsafe_allow_html=True)

# Simulate authentication (placeholder for real authentication logic)
def authenticate(username, password):
    if username == "admin" and password == "password":
        return True
    return False

# Main login form
def login_page():
    apply_custom_css()

    st.markdown('<div class="main-container">', unsafe_allow_html=True)
    st.markdown("""
        <div class="card">
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfwJL8YmjjAW0-dQKwd5fMvC_lwgMzZQe93Q&s" alt="Company Logo">
            <form>
                <input type="text" placeholder="Username" id="username">
                <input type="password" placeholder="Password" id="password">
                <button onclick="login()">Login</button>
            </form>
            <div class="footer">
                <p>Powered by <a href="" target="_blank">SBT</a></p>
            </div>
        </div>
    """, unsafe_allow_html=True)

    # Place the "Need help?" link outside the form
    st.markdown("""
        <div class="redirect-link">
            <p>Need help? <a href="" target="_blank">Click here for support</a></p>
        </div>
    """, unsafe_allow_html=True)

    st.markdown('</div>', unsafe_allow_html=True)

# Streamlit app logic
if "authenticated" not in st.session_state:
    st.session_state.authenticated = False

if not st.session_state.authenticated:
    login_page()
else:
    st.success("Welcome to the main application dashboard!")
