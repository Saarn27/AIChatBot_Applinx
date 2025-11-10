// check-key.js
import 'dotenv/config';

function normalize(k = '') {
  return k.trim().replace(/\r?\n/g, '');
}
const key = normalize(process.env.API_KEY || process.env.GOOGLE_API_KEY || '');

console.log({
  present: !!key,
  length: key.length,
  startsWithAIza: key.startsWith('AIza'),
  regexOK: /^AIza[0-9A-Za-z_\-]{35}$/.test(key), // typical AI Studio key shape
  preview: key ? key.slice(0, 6) + '...' + key.slice(-4) : 'N/A',
});

// print every char code to catch invisible characters
console.log('codes:', [...key].map(c => c.charCodeAt(0)));
