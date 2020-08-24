const request = require("supertest");
const app     = require("../server");

describe("Test express connection.", () => {
    test("Should response status 200 and must have h1 tag hello world.", () => {
        return request(app)
            .get("/")
            .expect(200)
            .end(function(res){
                res.text.should.match(/\>Hello, World/);
                done();
            });
    });
});

app.close();