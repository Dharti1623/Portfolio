'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"version.json": "009c9e65172e010890f7f65fde438006",
"index.html": "07c8a15c390bf73e6f74a33634566d27",
"/": "07c8a15c390bf73e6f74a33634566d27",
"main.dart.js": "2dae39ffd32883f0a3cc20b7343ccc8f",
"flutter.js": "6fef97aeca90b426343ba6c5c9dc5d4a",
"favicon.png": "e9d4477ce7a9cfe141da6a01b3db9ac8",
"icons/Icon-192.png": "04c44dbe2579e1b74024bd68e86ab574",
"icons/Icon-maskable-192.png": "04c44dbe2579e1b74024bd68e86ab574",
"icons/Icon-maskable-512.png": "40f43f7ac77455fb8e37802c99050f18",
"icons/Icon-512.png": "40f43f7ac77455fb8e37802c99050f18",
"manifest.json": "eb753ed94b6f3b9554bd38a9dc987e9b",
"assets/AssetManifest.json": "4563cf6d85d54038b419bfe2037b402c",
"assets/NOTICES": "7b2792e208d5564d3b051e06dab5592a",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "57d849d738900cfd590e9adc7e208250",
"assets/shaders/ink_sparkle.frag": "f8b80e740d33eb157090be4e995febdf",
"assets/AssetManifest.bin": "dedf4c9681c1c4b176db39caaef0cc0d",
"assets/fonts/MaterialIcons-Regular.otf": "62ec8220af1fb03e1c20cfa38781e17e",
"assets/assets/images/PNG/email.png": "758de7d5c399698345327f166d35424c",
"assets/assets/images/PNG/desktop.png": "416a19e7c411c4e45807f798064d1c11",
"assets/assets/images/PNG/download.png": "d9317d736e7b69f20f57f6ab13f34d3c",
"assets/assets/images/PNG/key.png": "cbcb22fcbf164e298cd4f7af3d80ce05",
"assets/assets/images/PNG/flutter.png": "94b8139a9f1f2c226184af4106495c66",
"assets/assets/images/PNG/blue_contact.png": "5015b7aa865b12b0eb871e53fb2f8067",
"assets/assets/images/PNG/recent_work_bg.png": "531a8461fd1ec42f03f4cfb891790635",
"assets/assets/images/PNG/hover_flip.png": "57d317fc22080b316188ebe73407065b",
"assets/assets/images/PNG/person.png": "c7ceef3575b62e5145310f35a1ac0ad4",
"assets/assets/images/PNG/keyboards.png": "03dec8b6e017441c740107b4aca91d95",
"assets/assets/images/PNG/hands_carton.png": "99a88329cdac1728e828df05a11e6512",
"assets/assets/images/PNG/hand.png": "d7c6f40ec1244a86fb4610cd515fee55",
"assets/assets/images/PNG/resume.png": "50dba0fd5effe8fcf38801544d484fd2",
"assets/assets/images/PNG/background.png": "0614a717659df3fd409c60ff04fac983",
"assets/assets/images/PNG/contact_icon.png": "7db64b0d181fc34109c31ab3a0eb4d89",
"assets/assets/images/PNG/skype.png": "6235db38359f11f6157ad3358333fa7c",
"assets/assets/images/PNG/logo.png": "a9175e8af90848d7eef2508eb4e27865",
"assets/assets/images/PNG/messenger.png": "b473fcad595f09b0afe1270d9016ac8c",
"assets/assets/images/PNG/linkedIn.png": "0bad3299558c4367b8ef0d6c756190a2",
"assets/assets/images/PNG/red_contact.png": "6f472dd3d84163c76711f285d2b6ef2e",
"assets/assets/images/PNG/web.png": "4bf11360854fc9bd04efbf3e96fce733",
"assets/assets/images/PNG/interaction_design.png": "ca5b23ba4df70eb698d49a8e0e3931a3",
"assets/assets/images/PNG/bg_img_2.png": "8257ef89b2dfeab767578260965a7e2d",
"assets/assets/images/PNG/resume_boy.png": "ed83bedf8e342394453e77c917d7fa2d",
"assets/assets/images/PNG/hover.png": "f0a2318c40269d84384f56f54d25ad69",
"assets/assets/images/PNG/work-2.png": "e0317c984099a9dce8d7411f3beaa63a",
"assets/assets/images/PNG/work-3.png": "533b6fff62f3ac46922abcb64417d91c",
"assets/assets/images/PNG/vue_js.png": "94a445c2d93f8d062a1b9ea43acf302b",
"assets/assets/images/PNG/work-1.png": "5ca28740be1ef5d82bd48f724f5ee1f7",
"assets/assets/images/PNG/whatsapp.png": "b1c6efd147306ea590706f5ff7d9b0fb",
"assets/assets/images/PNG/facebook.png": "3141e3b88a20342505e8a5e8b226d5e6",
"assets/assets/images/PNG/d.png": "641b057c8deca228effdffab868836aa",
"assets/assets/images/PNG/work-4.png": "4bcd059d326422ab30e005cb25323685",
"assets/assets/images/PNG/dart.png": "a675cb93b75d5f1656c920dceecdcb38",
"assets/assets/images/PNG/work-5.png": "39c75f40fdb35b4b477eaf9746802b7c",
"assets/assets/images/PNG/laravel.png": "e87bbfeffe75dc1985fb654c1f31c483",
"assets/assets/images/PNG/bg.png": "3da1903e3d955b7b7c7e1ddbc2754032",
"assets/assets/images/JPEG/me.jpeg": "5600cb8696d5742c245a164599e3b8a0",
"assets/assets/images/GIF/cat.gif": "e6294964e26db35f05e41e25e689b19d",
"assets/assets/images/GIF/giphy.gif": "8bb3e9f49d144a607d60382921756a88",
"assets/assets/images/GIF/cat1.gif": "e9351507c68a7e1a47d4c8e78262bd0c",
"canvaskit/skwasm.js": "1df4d741f441fa1a4d10530ced463ef8",
"canvaskit/skwasm.wasm": "6711032e17bf49924b2b001cef0d3ea3",
"canvaskit/chromium/canvaskit.js": "8c8392ce4a4364cbb240aa09b5652e05",
"canvaskit/chromium/canvaskit.wasm": "fc18c3010856029414b70cae1afc5cd9",
"canvaskit/canvaskit.js": "76f7d822f42397160c5dfc69cbc9b2de",
"canvaskit/canvaskit.wasm": "f48eaf57cada79163ec6dec7929486ea",
"canvaskit/skwasm.worker.js": "19659053a277272607529ef87acf9d8a"};
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
