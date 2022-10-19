const axios = require("axios");
const { parse } = require("node-html-parser");

const CLI_COMMANDS_URL = "https://docs.npmjs.com/cli/v8/commands";

axios
  .get(CLI_COMMANDS_URL)
  .then((html) => {
    const doc = parse(html.data);
    const commands = Array.from(
      new Set(
        Array.from(doc.querySelectorAll("li > .Link-kudw2l-0"))
          .map((l) => l.innerHTML)
          .filter((l) => l.startsWith("npm "))
          .map((l) => l.slice(4))
          .concat("run")
      )
    ).join(" ");

    console.log(commands);
  })
  .catch((err) => {
    throw err;
  });
