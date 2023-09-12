# Elm & TypeScript Integration Demo

This repository showcases a simple integration of Elm with TypeScript. It serves as a basic example of how to set up a project that uses both technologies and allows them to communicate with each other.

## Project Structure

```
/demo
|-- index.html # Main HTML page
|-- main.ts # TypeScript source
|-- elmApp.elm # Elm source
```

## Getting Started

### Prerequisites

- Install [Elm](https://guide.elm-lang.org/install/elm.html).
- Install [TypeScript](https://www.typescriptlang.org/download).

### Running the Demo

1. **Compile the Elm Code**:

Navigate to the demo directory and run:

```bash
elm make elmApp.elm --output=elm.js
```
This will produce the elm.js file.

2. **Compile the TypeScript Code**:

Still in the demo directory, run:

```bash
tsc main.ts elm.d.ts
```
This will produce the main.js file.

3. **Open the Demo in a Browser**:

Just open index.html in your favorite web browser. After a brief moment, you should see a message indicating communication from TypeScript to Elm.

## How it Works
The TypeScript script initializes an Elm application and then sends a message to it. The Elm application listens for this message via ports and displays it once received.

## Next Steps

Enhance Communication: Try extending the demo by allowing Elm to send messages back to TypeScript.
Integrate with a Bundler: For larger projects, consider using a bundler like Webpack or Parcel for better asset and dependency management.
