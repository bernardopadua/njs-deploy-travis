const request = require("supertest");
const app     = require("../server");

describe("Test express connection.", () => {
    test("Should response status 200 and must have h1 tag hello world.", () => {
        return request(app)
            .get("/")
            .expect(200)
            .expect(function(res){
                const secondWord = process.env['NDT_WORD_TEST'] ? process.env['NDT_WORD_TEST'] : 'World';
                if(!res.text.match(new RegExp('\>Hello, '+secondWord))){
                    throw Error('Error trying to match default text.');
                }
            });
    });
});

app.close();