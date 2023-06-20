// Function to get the lyrics of 'Healing Waters'
function getLyrics(){
  return `
  Chorus
Healing waters flowing over me
Bringing life and liberty
My heart is an open sea
Healing waters are over me

Verse 1
My soul is thirsty Lord
Come quench this empty space
Fill me with the living water
That I may find my saving grace

Chorus
Healing waters flowing over me
Bringing life and liberty
My heart is an open sea
Healing waters are over me

Verse 2
The rivers of forgiveness
Are deep and wide
Let me drink from them
And quench my parched pride

Chorus
Healing waters flowing over me
Bringing life and liberty
My heart is an open sea
Healing waters are over me

Verse 3
The torrents of mercy
Are so overwhelming
Swimming in them I’ll find
My joy and meaning

Chorus
Healing waters flowing over me
Bringing life and liberty
My heart is an open sea
Healing waters are over me

Bridge
Let the healing waters come in
Cleansing my heart and my sin
Let the healing waters come in
Flowing over me

Chorus
Healing waters flowing over me
Bringing life and liberty
My heart is an open sea
Healing waters are over me
  `
}

// Function to print the lyrics of 'Healing Waters'
function printLyrics(){
  console.log(getLyrics());
}

// Function to play the audio of the song
function playSong(){
  let audio = new Audio("/path/to/the/audio/file.mp3");
  audio.play();
}

// Function to pause the audio of the song
function pauseSong(){
  let audio = new Audio("/path/to/the/audio/file.mp3");
  audio.pause();
}

// Function to create a new div in the document
function createLyricsDiv(){
  let lyricsDiv = document.createElement('div');
  lyricsDiv.innerHTML = getLyrics();
  document.body.appendChild(lyricsDiv);
}

// Event listener for click on a button with id 'play-button'
document.getElementById('play-button').addEventListener('click', function(){
  playSong();  
});

// Event listener for click on a button with id 'pause-button'
document.getElementById('pause-button').addEventListener('click', function(){
  pauseSong();
});

// Event listener for click on a button with id 'print-button'
document.getElementById('print-button').addEventListener('click', function(){
  printLyrics();
});

// Event listener for click on a button with id 'lyrics-button'
document.getElementById('lyrics-button').addEventListener('click', function(){
  createLyricsDiv();
});