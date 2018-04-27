/* globals gauge*/
"use strict";
const { openBrowser, closeBrowser, goto, title, $, write, into, button } = require('taiko');
const assert = require("assert");

beforeSuite(async () => openBrowser({ executablePath: '/usr/bin/chromium-browser', args: ['--no-sandbox', '--headless', '--disable-gpu'] }));

afterSuite(async () => closeBrowser());


step("Go to homepage at <query>", async query => goto(query));

step("Check title is <word>", async (word) => {
    let t = await title();
    assert.equal(t, word)
});

step("Enter <word> in textbox", async (word) => {
    await write(word, into($('input')));
});

step("Verify Submit", async() => {
    await button('Submit').exists();
});
