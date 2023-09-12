const elmApp = Elm.ElmApp.init({
    node: document.getElementById('elm-root')
});

// On button click, send the input value to Elm
document.getElementById('sendMessage').addEventListener('click', () => {
    const message = (document.getElementById('messageInput') as HTMLInputElement).value;
    elmApp.ports.receiveFromJs.send(message);
});

// Optional: Send a default message to Elm after 1 second
setTimeout(() => {
    elmApp.ports.receiveFromJs.send("Hello from TypeScript!");
}, 1000);
