// Get all notification containers
const containers = {
  "top-right": document.getElementById('notification-container-top-right'),
  "top-left": document.getElementById('notification-container-top-left'),
  "bottom-left": document.getElementById('notification-container-bottom-left')
};

// Function to replace color codes with HTML
function applyColorCodes(text) {
  return text
    .replace(/~y~/g, '<span style="color: yellow;">')
    .replace(/~p~/g, '<span style="color: purple;">')
    .replace(/~b~/g, '<span style="color: blue;">')
    .replace(/~r~/g, '<span style="color: red;">')
    .replace(/~g~/g, '<span style="color: green;">')
    .replace(/~w~/g, '<span style="color: white;">')
    .replace(/~/g, '</span>');
}

// Dynamische Berechnung des Bottom-Abstands basierend auf Bildschirmhöhe
function calculateBottomOffset() {
  const screenHeight = window.innerHeight;
  if (screenHeight <= 1080) return 250; // Für 1080p und kleiner
  if (screenHeight >= 1440) return 350; // Für höhere Auflösungen
  return 300; // Standard
}

// Setze den dynamischen Abstand für den Container
containers["bottom-left"].style.bottom = `${calculateBottomOffset()}px`;


// Function to show a notification
function showNotification(title, message, icon, position = "top-right") {
  // Default to top-right if position is invalid
  const container = containers[position] || containers["top-right"];

  // Create notification element
  const notification = document.createElement('div');
  notification.classList.add('notification');
  
  notification.innerHTML = `
    <div class="notification-icon">
      <img src="${icon || 'default-icon.png'}" alt="Icon">
    </div>
    <div class="notification-content">
      <h4>${title}</h4>
      <p>${applyColorCodes(message)}</p>
    </div>
    <span class="notification-time">Now</span>
  `;

  // Append notification to the correct container
  container.appendChild(notification);

  // Show notification with animation
  setTimeout(() => {
    notification.classList.add('visible');
  }, 10);

  // Remove notification after 10 seconds
  setTimeout(() => {
    notification.classList.remove('visible');
    setTimeout(() => {
      container.removeChild(notification);
    }, 300);
  }, 10000);
}

// Listen for messages from FiveM
window.addEventListener('message', (event) => {
  if (event.data.action === 'showNotification') {
    showNotification(event.data.title, event.data.message, event.data.icon, event.data.position);
  }
});
