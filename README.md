<h1>Warranty Management System</h1>
<h2>Links:</h2>
<ul>
  <li>Client Repository: https://github.com/swholm19/warranty-tracking-client</li>
  <li>Client Deployed: http://scottwholm.com/warranty-tracking-client/</li>
  <li>API Repository: https://github.com/swholm19/warranty-tracking-api</li>
  <li>API Deployed: https://warranty-tracking-api.herokuapp.com</li>
</ul>

<h2>How it Works</h2>
<p>After user logins in, all warranties they have already loaded are automatically
populated in UI. On the left hand side there is a create new warranty button which
will open a new UI, where you can fill in information. If you click the scan
barcode button it will open another UI which you can scan the barcode and it will
automatically populate the serial ID number field. This functionality only works
in localhost because when it is deployed you need to have a secure URL (HTTPS)
which the site currently does not have. In each warranty that is displayed
in the UI you can edit or delete, the warranty. Only warranties that the user who
is logged in will appear on the screen. Full authentication is also provided and
works like the standard browser authentication.</p>

<h2>Back-end Technologies Used:</h2>
<ul>
  <li>Ruby</li>
  <li>Rails</li>
  <li>Command Line</li>
  <li>PSQL</li>
</ul>

<h2>Future Iteration/ fixed problems</h2>
<ul>
  <li>Fix: Make URL Secure HTTPS, so Barcode Scanner can use video feed.</li>
  <li>Future: User can upload image of item which will be saved in AWS S3</li>
  <li>Future: Mobile/smaller screen size compabtabilty</li>
</ul>

<h2>Wireframe & ERD</h2>
https://imgur.com/gallery/78FDICv

<h2>Development Process:</h2>
<p>Once idea for project was finalized user stories, wireframes, and ERD were create
to start planning with. Iterated through designs until an acheiviable MVP in the
timeframe was identified. From there Client and API files repositories and files
were created to work inside of, and once able to deploy and prove connections
were working moved on. First coding was for the backend API, where Rails was
used to scaffold out the API then modifications were made to customize it. Finally
Curl-Scirpts and Postman were used to test the API. Once API was mature moved on to
client, where a rough wireframe was created in HTML to show divs and button and
provided elements to interact with. Next the authentication and view were established.
After that curl-scripts were created to test the API routes and then full CRUD
to the newly created API were developed. Once AJAX calls were working, created
handlebars and made UI changes based on the API returned information. After that
implemented NPM Package for bar code scanner, which allows user to scan a
bar code and the system will automatically populate it. After basic functionality was
implemented and tested, moved on to styling the UI and making it look presentable.
After that bug fixes and minor tweaks to improved the user experience were
added.</p>

<h2>API Route Catalog</h2>
<ul>
  <li>user/sign-in **GET</li>
  <li>user/sign-up **POST</li>
  <li>user/sign-out **DELETE</li>
  <li>user/change-password **PATCH</li>
  <li>items/ **GET</li>
  <li>items/:id **GET</li>
  <li>items/:id **PATCH</li>
  <li>items/:id **DELETE</li>
  <li>items/ **POST</li>
</ul>

<h2>Set-up and Installation Instructions</h2>
<p>To set up front-end you will need to fork and clone repo. Do an NPM install.
Will need to create a heroku project and set up client origin to your
newly created repo, and set the secret base keys for heroku.</p>
