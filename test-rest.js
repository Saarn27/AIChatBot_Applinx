// test-rest.js
import 'dotenv/config';

const key = (process.env.API_KEY || process.env.GOOGLE_API_KEY || '').trim();
const url = `https://generativelanguage.googleapis.com/v1beta/models?key=${encodeURIComponent(key)}`;

const res = await fetch(url);
console.log('HTTP', res.status, res.statusText);
console.log(await res.text());
