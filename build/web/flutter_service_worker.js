'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "96cff1394ea77ada9b8d24567efcb157",
"assets/AssetManifest.bin.json": "51b365f49bed96fcc78e325eeb7ab5e1",
"assets/AssetManifest.json": "c33286fca30384176a27122f293468ba",
"assets/assets/images/arduino.svg": "ed17e1c3a6ed49bc2e46e072a507e9f6",
"assets/assets/images/best_city.png": "527530831e80492fe98fd066b5500bd1",
"assets/assets/images/best_month.png": "870c09d77e5c1ed28e607a27ede61c9c",
"assets/assets/images/best_prod.png": "af84c176d9246066e31c93766d9f6c38",
"assets/assets/images/best_time.png": "6790099cd1c25cf01b9633cbf702eab5",
"assets/assets/images/call_center.png": "e7cebde20c241b1f6c5b9cab18e5bad1",
"assets/assets/images/database.svg": "d632bb634d3ebbd00723412cd8d4f808",
"assets/assets/images/excel.svg": "6543c5505ded532b281a7d1006fd1f69",
"assets/assets/images/firebase.svg": "92ed4416ef316b0a25440b0222573da7",
"assets/assets/images/flutter.svg": "d8c5b166c18bd482f8e23e29f1bca662",
"assets/assets/images/github.svg": "272e350af079ec9072501bd1791ef757",
"assets/assets/images/gmail.png": "6c9baa013f158d3e9fc323ecd7afad9b",
"assets/assets/images/google.png": "32723c1e9e1b8edcc5dd3e244eca077d",
"assets/assets/images/grid.png": "ab723690837bcfcdfebae8885d73add2",
"assets/assets/images/ithra/ithra.jpg": "ebd5d44909eb426269407496edc4b0dd",
"assets/assets/images/ithra/ithra1.jpg": "21db7652e82ac9bff5600bf5ba414de2",
"assets/assets/images/ithra/ithra2.jpg": "8f674e7dcda2cc87dd59e39c0be627b8",
"assets/assets/images/ithra/ithra3.jpg": "1b14b8e745f12163f847cd31e4f85115",
"assets/assets/images/ithra/ithra4.jpg": "1b0598b0fea7c2f9a39dceca6726e529",
"assets/assets/images/ithra/ithra5.jpg": "2a054804b3c9f94ea19e2eec6a8c1eac",
"assets/assets/images/ithra/ithra7.jpg": "a8cca973dc86a92f22ae2eb4c57b4f5c",
"assets/assets/images/ithra/ithra8.jpg": "6fc5817a63f9d757928ba0b9c584f54d",
"assets/assets/images/ithra/ithra9.jpg": "d8b8afc0959ba5f8502a0b4cfb1401b1",
"assets/assets/images/ithra/ithracover.png": "97efef2a9b20b60386b992952cadf4bd",
"assets/assets/images/linkedin.png": "28feebffb9050bafab007a3c42387fc8",
"assets/assets/images/postman.svg": "2ba02454eff8b96a660cab7864d5a2e6",
"assets/assets/images/powerbi.svg": "6b9375de47ba02062cd213bc7c785a70",
"assets/assets/images/profile-pic.png": "1d6b60531ddd55743d278d11668b70c7",
"assets/assets/images/python.svg": "4948e6764d2214fe0c09621c6defe06b",
"assets/assets/images/Road%2520Dashboard.png": "9282bf676e911e2fb8e5f790782cdf9e",
"assets/assets/images/sales.jpg": "43e69f19a488a18715a4ec3c051f8179",
"assets/assets/images/sql.jpg": "d5cb465a189021fe98f92e77fa178947",
"assets/assets/images/sql.svg": "690b33c2180b2ad1905d893a8622ebbe",
"assets/assets/images/sqlicon.png": "73876e5ac1605409f950f50cec4ac07b",
"assets/assets/images/udacity.png": "587a4d1b0fea93acfd18b62f58aa0e42",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "32fce58e2acb9c420eab0fe7b828b761",
"assets/NOTICES": "c323e75db0ea4cea9d82f1684367309f",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/shaders/ink_sparkle.frag": "4096b5150bac93c41cbc9b45276bd90f",
"canvaskit/canvaskit.js": "eb8797020acdbdf96a12fb0405582c1b",
"canvaskit/canvaskit.wasm": "73584c1a3367e3eaf757647a8f5c5989",
"canvaskit/chromium/canvaskit.js": "0ae8bbcc58155679458a0f7a00f66873",
"canvaskit/chromium/canvaskit.wasm": "143af6ff368f9cd21c863bfa4274c406",
"canvaskit/skwasm.js": "87063acf45c5e1ab9565dcf06b0c18b8",
"canvaskit/skwasm.wasm": "2fc47c0a0c3c7af8542b601634fe9674",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "59a12ab9d00ae8f8096fffc417b6e84f",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "5d97708bf82bf12731a220c7e37e5240",
"/": "5d97708bf82bf12731a220c7e37e5240",
"main.dart.js": "c13e0a9a39d5145ba8c3362368ebc133",
"manifest.json": "c93eb1ddad03822037816100e585f135",
"version.json": "8033db32c85da4e1f3ce2d00e99f10f0"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
