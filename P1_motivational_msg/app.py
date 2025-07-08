from bottle import route, run
import requests

@route('/')
def home():
    try:
        # Fetch random motivational quote
        response = requests.get("https://zenquotes.io/api/random")

        # Check if response is successful
        if response.status_code == 200:
            data = response.json()[0]  # Get the first item in the list
            quote = data['q']
            author = data['a']
            return f"<h1>Motivational Quote</h1><p>\"{quote}\"<br><strong>- {author}</strong></p>"
        else:
            return f"API request failed with status {response.status_code}"

    except Exception as e:
        return f"An error occurred: {e}"

# Run the app on localhost:8080
run(host='localhost', port=8080, debug=True)
