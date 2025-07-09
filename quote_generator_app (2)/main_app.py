
import sqlite3
import tkinter as tk
import random

def get_quote(category):
    conn = sqlite3.connect('quotes.db')
    cursor = conn.cursor()
    cursor.execute("SELECT quote FROM quotes WHERE category = ?", (category,))
    quotes = cursor.fetchall()
    conn.close()
    if quotes:
        random_quote = random.choice(quotes)[0]
        quote_text.set(random_quote)
    else:
        quote_text.set("No quotes found in this category.")

# GUI Setup
root = tk.Tk()
root.title("✨ Quote Generator ✨")
root.geometry("800x400")
root.configure(bg="#f0f8ff")

title = tk.Label(root, text="🌟 Quote Generator 🌟", font=("Helvetica", 24, "bold"), fg="#333", bg="#f0f8ff")
title.pack(pady=20)

quote_text = tk.StringVar()
quote_text.set("Click a category button to get a quote")

quote_label = tk.Label(root, textvariable=quote_text, wraplength=700, justify="center",
                       font=("Georgia", 16, "italic"), fg="#444", bg="#f0f8ff")
quote_label.pack(pady=30)

button_frame = tk.Frame(root, bg="#f0f8ff")
button_frame.pack(pady=20)

categories = ["Coding", "Happy", "Confidence", "Work"]
button_colors = ["#d1e7dd", "#fff3cd", "#f8d7da", "#cfe2ff"]
for i, cat in enumerate(categories):
    tk.Button(button_frame, text=cat, width=15, height=2, bg=button_colors[i], font=("Helvetica", 12, "bold"),
              command=lambda c=cat: get_quote(c)).grid(row=0, column=i, padx=15)

root.mainloop()
