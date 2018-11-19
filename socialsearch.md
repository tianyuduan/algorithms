People Search API

Pipl -
People Data API-

Pros:
API seems simple and easy to integrate

Pricing:
Contact - $.10 per match
Name			
Gender			
Age			
Address			
Landline Phone			

Social - $.20 per match
Name			
Gender			
Age			
Address			
Landline Phone			
Username			
Images			
Associates			
Social Profile URLs			

Business $.4 per match
Name			
Gender			
Age			
Address			
Landline Phone			
Username			
Images			
Associates			
Social Profile URLs			
Career			
Education			
Mobile Phone			
Email Address			

PER ACCOUNT $1000 Spend Limit per month Unless payment + account verified, can increased credit Line

Limitations:
30 queries for demo account for 7 days, total
20 query per second limit  for verified account

Has code examples

Social Searcher API

Can search instagram, facebook and linkedin
I believe its only name, can return a wide variety of results

20 Euros a month for 800 searches per day its cheap


Full Contact - Person Enrichment API
Similar to rest
Request include email, full name and twitter

Returns example response

Pricing 100/match per month is free
50,000 is 500 per month

Has code examples

import org.apache.http.client.fluent.Request;
import org.apache.http.entity.StringEntity;

Request.Post("https://api.fullcontact.com/v3/person.enrich")
    .addHeader("Authorization","Bearer {Your API Key}")
    .body(new StringEntity("{" +
       "\"email\":\"bart@fullcontact.com\"," +
       "\"twitter\":\"@bartlorang\"," +
       "\"fullName\":\"Bart Lorang\"" +
    "}"))
    .execute()
    .returnContent();

{
  "fullName": "Bart Lorang",
  "ageRange": "30-39",
  "gender": "Male",
  "location": "Denver, CO, United States",
  "title": "Co-Founder & Managing Director",
  "organization": "V1.vc",
  "twitter": "https://twitter.com/bartlorang",
  "linkedin": "https://www.linkedin.com/in/bartlorang",
  "facebook": "https://www.facebook.com/bart.lorang",
  "bio": "CEO & Co-Founder of @FullContact, Managing Director @v1vc_. Tech Entrepreneur, Investor. Husband to @parkerbenson and Father to Greyson Lorang",
  "avatar": "https://d2ojpxxtu63wzl.cloudfront.net/static/a7e6a5aba590d4933e35eaadabd97fd2_44e00e968ac57725a15b32f9ca714827aff8e4818d290cb0c611f2e2585253b3",
  "website": "https://fullcontact.com/bart",
  "details": {...}
}
