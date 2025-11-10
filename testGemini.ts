// testGemini.ts
import { convertXmlToJsoni } from './services/geminiService.ts';

const sampleXml = `
<Root>
  <Core Type="1" Name="A/B/551/ORDERS/MAIN"/>
  <Mapping>
    <Field name="Customer" label="Customer Name" row="1" col="2" maxlength="20" />
    <Field name="OrderID" label="Order ID" row="2" col="3" maxlength="10" />
  </Mapping>
</Root>
`;

(async () => {
  const out = await convertXmlToJsoni(sampleXml);
  console.log(out);
})();
