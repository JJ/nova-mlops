import puppeteer from "https://deno.land/x/puppeteer@9.0.0/mod.ts";
import { cheerio } from "https://deno.land/x/cheerio@1.0.4/mod.ts";

const url = 'https://www.ine.pt/xportal/xmain?xpid=INE&xpgid=ine_indicadores&userLoadSave=Load&userTableOrder=11804&tipoSeleccao=1&contexto=pq&selTab=tab1&submitLoad=true';

try {
    const browser = await puppeteer.launch();
    const page = await browser.newPage();
    await page.goto(url);
    await page.content();
    const frame = await page.frames()[1];
    console.log(frame);
    const content = await frame.content();

    const $ = cheerio.load(content);

    const pageText = $('table').text();

    console.log(pageText)
} catch(error) {
    console.log(error);
}