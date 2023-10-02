'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {".git/COMMIT_EDITMSG": "a8297d555dd34879e8e48e1cf12acefa",
".git/config": "0c2104093044b1ba83fde76def867d8e",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/FETCH_HEAD": "95ce0202f7b8a1212ea3eb317234502b",
".git/HEAD": "cf7dd3ce51958c5f13fece957cc417fb",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/fsmonitor-watchman.sample": "a0b2633a2c8e97501610bd3f73da66fc",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-commit.sample": "305eadbbcd6f6d2567e033ad12aabbc4",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-push.sample": "2c642152299a94e05ea26eae11993b13",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/push-to-checkout.sample": "c7ab00c7784efeadad3ae9b228d4b4db",
".git/hooks/sendemail-validate.sample": "4d67df3a8d5c98cb8565c07e42be0b04",
".git/hooks/update.sample": "647ae13c682f7827c22f5fc08a03674e",
".git/index": "c08f07f115eec8682c405c071f60bb0a",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "31e50ef96eead39f03832ded9620e04d",
".git/logs/refs/heads/main": "ce72526ffabffee72c447732a395982a",
".git/logs/refs/remotes/origin/main": "11e993639d96f2d5bf927a1d862449ff",
".git/objects/07/136f5bf9a61a3681904171215650a0f3a2cde2": "1c86c18df78a048765bc1fcfda801adc",
".git/objects/0b/60f2f02e193ac47134afacf53f2612e2516ae3": "89457c85b2c03f63f5aceb020179bdfd",
".git/objects/1f/56867e70c434d8dff86a85ca09e6d942a38257": "27d844aa56b9fd88c276a37ccf62cee6",
".git/objects/23/637bc3573701e2ad80a6f8be31b82926b4715f": "5f84f5c437bb2791fdc8411523eae8ff",
".git/objects/25/46a6a293f86bbc65020a7401761cbaf7709231": "15ac1a9dbd1f85a000970727e7e072f9",
".git/objects/2f/f46d5144604b6292e5ee702ec60c8fa9904f2f": "6751b7401c7ee71c16f4f7f52f93307d",
".git/objects/30/095fa11d78629974c87ea780c3fcb0e13e95c2": "49572c931788607f66f1711a209af691",
".git/objects/35/91af41948adc8001f3586d76b91181311953fc": "c91d33b29071dcff3b2b3385383761cb",
".git/objects/37/52783cf094b50e73db42eb73229b197d8b4df8": "6a45ae36a11e25001a5ac2dc01a63381",
".git/objects/38/d56fb31a94ca358913c3705ba18fd4721ce856": "20aaf9c39ed5735443edc7203afca5e4",
".git/objects/3e/ac245fee4d1adbe97ae3da9706d9547b97b307": "737570cbd4d22bd7fce326e4020344c3",
".git/objects/44/17ee0e8dd0e867917974fb68d8f9df00952f9f": "c8051874769bdbede3fc2f8805f66d67",
".git/objects/49/a3697671d6bbfe447219c6f2497ef851a10ac3": "ed5f24499345beafbde1994bbce64f1d",
".git/objects/4a/2647449e0c5f7607e638194a46cb5339fce8dc": "8125fc508a6d58caa7cc497e1fee82b7",
".git/objects/4f/3efc618842effff64981af02a39fa88fc2e5f5": "04029739eb5810e0e7477deb8142eb2a",
".git/objects/50/a22f9d7b508a3348fc35edad51a14ebec868ab": "0f9286e0005aac89131ea2ccf3eb934d",
".git/objects/53/7807567919e88db2866b7825339c57e94c24d8": "970aec5149a3dbe9370a9dc982cdd022",
".git/objects/56/8b17468dd6ba64411b21d94544945975c7fd3b": "d61953d871719e348e7edb81f239c0a2",
".git/objects/5a/e8d6e4a39b747299318b96283b09997255e52a": "8733913e0b5e5f432e3420c01a79132b",
".git/objects/68/a5caa1968cc65c01d892f4fac5100cc56b7b67": "fbbe12ce69d692fe81188aefe5be919c",
".git/objects/69/5d6119ad7e8952c81016274881c11bd619a023": "d67a739ca4271c015708a60d2cbced5a",
".git/objects/6a/0b7bb6f580ed683b1a07184e02dffcab243acf": "1566dc8d7607f719765ca783d818dca0",
".git/objects/6c/380f467a1ca94b64d753c9fb660c969640e045": "2cebf43cc47176029fff47b5fd505e88",
".git/objects/73/b7c8a1df5b46a2aaf8197c49e9c8502f9608c3": "7566f69502ab701c6398634833966c74",
".git/objects/74/fcd35a63c6522e64c218bff1e5c141d849a919": "d2d28fbad14ae2b3ec9f4a55b924c5d5",
".git/objects/78/42ccc429704556b0088f105115b705d38f2663": "28450f74e2938c7d8b87147ab659e640",
".git/objects/83/0e3d19e7f2ff19bbb4b955e3a38e3328837e12": "4412f19a8aebd49e1c2fb821b641e232",
".git/objects/86/bb971747f241c1ddcd4e1e99efb09988736db1": "173f1c85e49a6e92cf391fc25f68feba",
".git/objects/88/685a0d79f11dd4982c7132d9a94620b74577e4": "61f00d9a2872677b876d1b68e08220bd",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/8b/01dd4d32d467c935ca14dd6d415fe89e2dbc51": "5757dbf5d6670584305f3e66ef014e78",
".git/objects/8d/9e2862e13b8f1b2b0807a55d8c4c606f61b66c": "490524d3e7c8f3e02b77efcd06a92f61",
".git/objects/9e/d37228b5dacd982536e16e14d1f43f1ee14c44": "c505cbcbd720bc46cd4096b0b76adcde",
".git/objects/a0/57c6b6258e93427eaf0501d94f982503a4b1d5": "381d0dc2fda9f3e9a40463bd1c25099c",
".git/objects/a8/234e78324011301c932efde8dd789fba10495a": "5ad9ca983e505191e13f526cf3be6ade",
".git/objects/ab/10caaf5a03a5952472b794edf98d479d74565a": "1dff1296de91d5b55de5d9fcec244b80",
".git/objects/ac/b4bfa69bc04c8cea16efe8caae0541cf8b7731": "96b37338607dd7585ce8dbd05d80f601",
".git/objects/b0/bb21fb723ed3b725e0aa25f886b76419d61d8d": "d6a47be2c2e81212e7cb3b3bca1a9374",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/b9/2a0d854da9a8f73216c4a0ef07a0f0a44e4373": "f62d1eb7f51165e2a6d2ef1921f976f3",
".git/objects/bb/a2bad24b64a482fc3c53a05d0bfb303166c253": "23e56b5058912bfcdee47083dcccc180",
".git/objects/bb/ac29f5ef7a40bf14c0901bc1457724156bc0de": "1393f20f0610cabefe2d4f45865b0f54",
".git/objects/c7/f6826788236561c2e2fba3ae7143764d8e2d41": "dbab9fd18e0d00802bcdd94b1d6c94ec",
".git/objects/d3/efa7fd80d9d345a1ad0aaa2e690c38f65f4d4e": "610858a6464fa97567f7cce3b11d9508",
".git/objects/d5/b54bd4a898b373f82bb1fa52b9580e7a976e3e": "943e27e1d359e2bc22daf20c70287c19",
".git/objects/d6/9c56691fbdb0b7efa65097c7cc1edac12a6d3e": "868ce37a3a78b0606713733248a2f579",
".git/objects/d7/2c11112c7cb4e2ce754bc41470f9b829a2d00a": "d7280a766a5d6033f187d874a92b5ad6",
".git/objects/d9/e1262b6ede6f675e55714e3e906153a94b1f89": "ee0e0a88fac7af6d8062baa19919356f",
".git/objects/db/b38ed8bd014d6fa2b4e2b6a1e2f8adbae2274b": "5753ac358546a7c7c7846ddbce10bedb",
".git/objects/de/f9e0231537ad1697b405e82958e5ceb3b623fa": "e656d7bac26941e122c8d732c51b42be",
".git/objects/e0/49c81f7cb35ebc411a3e1b547bf4ccf91292e8": "efad70dc0ca77a90ee53b5cc3be528ca",
".git/objects/e6/b745f90f2a4d1ee873fc396496c110db8ff0f3": "2933b2b2ca80c66b96cf80cd73d4cd16",
".git/objects/e8/6b636d4d5af888e017860a01272f7d34f2261f": "2f12e92277431635af5c1811d68a29f5",
".git/objects/e8/7124d8389e9b465d6985c8d602b049c72e20a2": "d106cd26c554b6204ad0d1bb2ef6cd18",
".git/objects/eb/9b4d76e525556d5d89141648c724331630325d": "37c0954235cbe27c4d93e74fe9a578ef",
".git/objects/f0/b2adc59aed5b926eb9f6f6d0093e1bae973ed9": "4c22575bf94fdc7848efd07ac495923e",
".git/objects/fc/0f322e61617230621468a8090f25edb73110d5": "ecc6495fc2bada51dd28771bea5b58eb",
".git/objects/fc/de1bb3df8c330568f07ef326d43d8ae3562897": "6e5bf2450330342c243afc3723b9c27e",
".git/objects/pack/pack-e83ba80c3302b8bce1878a0021076541a0e7761f.idx": "aa41aa99045704dad624876b5119e871",
".git/objects/pack/pack-e83ba80c3302b8bce1878a0021076541a0e7761f.pack": "c780d6ae25ab4508622e6466ac62d68f",
".git/objects/pack/pack-e83ba80c3302b8bce1878a0021076541a0e7761f.rev": "49508a8e6716084c7ca6637db0577d13",
".git/ORIG_HEAD": "4a49d26113bd996267f2210a986d6de7",
".git/refs/heads/main": "4a49d26113bd996267f2210a986d6de7",
".git/refs/remotes/origin/main": "4a49d26113bd996267f2210a986d6de7",
"assets/AssetManifest.bin": "fd2bd891ae6fc6091a334f54500450e2",
"assets/AssetManifest.json": "c0c969da3caa510a75da1d8e20ac59ee",
"assets/assets/images/mypic.jpg": "a41b82aa6f2a5328fe760dcd9297b983",
"assets/assets/images/neon_bg.jpg": "f4d559307e24484773e499e922d78b37",
"assets/FontManifest.json": "5a32d4310a6f5d9a6b651e75ba0d7372",
"assets/fonts/MaterialIcons-Regular.otf": "7f5ceed8c45baaf3403c65be4782e5ff",
"assets/NOTICES": "14125d7a82f9977566cdec7fe56fad8a",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "d7791ef376c159f302b8ad90a748d2ab",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "5070443340d1d8cceb516d02c3d6dee7",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "658b490c9da97710b01bd0f8825fce94",
"assets/shaders/ink_sparkle.frag": "f8b80e740d33eb157090be4e995febdf",
"canvaskit/canvaskit.js": "bbf39143dfd758d8d847453b120c8ebb",
"canvaskit/canvaskit.wasm": "19d8b35640d13140fe4e6f3b8d450f04",
"canvaskit/chromium/canvaskit.js": "96ae916cd2d1b7320fff853ee22aebb0",
"canvaskit/chromium/canvaskit.wasm": "1165572f59d51e963a5bf9bdda61e39b",
"canvaskit/skwasm.js": "95f16c6690f955a45b2317496983dbe9",
"canvaskit/skwasm.wasm": "d1fde2560be92c0b07ad9cf9acb10d05",
"canvaskit/skwasm.worker.js": "51253d3321b11ddb8d73fa8aa87d3b15",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "6b515e434cea20006b3ef1726d2c8894",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "d466eb91b7c66e5634ce4062212efd5e",
"/": "d466eb91b7c66e5634ce4062212efd5e",
"main.dart.js": "e5d6d84cc730220315db9d2518b68edc",
"manifest.json": "eb7f3a68f567a17d91ac598d3e899c31",
"README.md": "069580d5443b2eb254e832c534afa23c",
"version.json": "390dc9362de534e754cb70335f3d18ad"};
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
