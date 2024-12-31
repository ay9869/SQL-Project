import pandas as pd

# Load CSV files
least_played_tracks =pd.read_csv('/Users/abhiyadav/Downloads/SQL Project/least_played.csv')
top_genres = pd.read_csv('/Users/abhiyadav/Downloads/SQL Project/top_genres.csv')
top_listeners = pd.read_csv('/Users/abhiyadav/Downloads/SQL Project/top_listeners.csv')
track_performance = pd.read_csv('/Users/abhiyadav/Downloads/SQL Project/track_performance.csv')
top_artist = pd.read_csv('/Users/abhiyadav/Downloads/SQL Project/top_artist.csv')
popular_playlist = pd.read_csv('/Users/abhiyadav/Downloads/SQL Project/popular_playlist.csv')
widest_genre_diversity = pd.read_csv('/Users/abhiyadav/Downloads/SQL Project/widest_genre_diversity.csv')
longest_listening_time = pd.read_csv('/Users/abhiyadav/Downloads/SQL Project/longest_listening_time.csv')

import matplotlib.pyplot as plt

# Bar Chart for least-played tracks
plt.figure(figsize=(10, 6))
plt.barh(least_played_tracks['TrackName'], least_played_tracks['TotalPlays'], color='salmon')
plt.xlabel('Total Plays')
plt.ylabel('Tracks')
plt.title('Least-Played Tracks')
plt.gca().invert_yaxis()  # Invert y-axis for readability
plt.show()
plt.savefig('/Users/abhiyadav/Downloads/visualization1.png')

# Pie Chart for top genres
plt.figure(figsize=(8, 8))
plt.pie(top_genres['TotalPlays'], labels=top_genres['Genre'], autopct='%1.1f%%', startangle=140, colors=plt.cm.tab10.colors)
plt.title('Top Genres by Total Play Count')
plt.show()
plt.savefig('/Users/abhiyadav/Downloads/visualization2.png')

# Bar Chart for top listeners
plt.figure(figsize=(10, 6))
plt.bar(top_listeners['Name'], top_listeners['TotalPlays'], color='lightblue')
plt.xlabel('Listeners')
plt.ylabel('Total Plays')
plt.title('Top 5 Listeners by Total Play Count')
plt.show()
plt.savefig('/Users/abhiyadav/Downloads/visualization3.png')

import seaborn as sns


# Bar chart for Genre and TotalPlays from widest_genre_diversity DataFrame
plt.figure(figsize=(10, 6))
plt.bar(widest_genre_diversity['Genre'], widest_genre_diversity['TotalPlays'], color='teal')
plt.xlabel('Genres')
plt.ylabel('Total Plays')
plt.title('Total Plays by Genre')
plt.show()
plt.savefig('/Users/abhiyadav/Downloads/visualization4.png')

# Bar Chart for track with longest total listening time
plt.figure(figsize=(10, 6))
plt.barh(longest_listening_time['PlaylistName'], longest_listening_time['TotalPlays'], color='green')
plt.xlabel('Total Listening Time (seconds)')
plt.ylabel('Tracks')
plt.title('Track with the Longest Total Listening Time')
plt.gca().invert_yaxis()
plt.show()
plt.savefig('/Users/abhiyadav/Downloads/visualization5.png')