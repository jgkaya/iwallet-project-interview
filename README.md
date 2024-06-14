# iWallet Project Interview

Bu proje, iWallet mülakat sürecinde yapılan bir web uygulamasıdır. Kullanıcı yönetimi üzerine odaklanmıştır.

## Kullanılan Teknolojiler

- Ruby on Rails
- HTML/CSS
- JavaScript

## Kurulum

- Depoyu klonlayın:
  ```bash
  $ git clone https://github.com/jgkaya/iwallet-project-interview.git
  $ cd iwallet-project-interview
- Bağımlılıkları yükleme:
  Ruby ve Ruby on Rails'in kurulu olduğundan emin olun. Ardından, gerekli gem'leri yükleyin:
  ```bash
  $ bundle install
- Veritabanını ayarlama:
  ```bash
  $ rails db:create
  $ rails db:migrate
- Sunucuyu başlatın:
  ```bash
  $ rails server
- Uygulamaya erişin:
  Web tarayıcınızı açın ve uygulamanın çalıştığını görmek için http://localhost:3000 adresine gidin.

## Ekran Görüntüleri

- Uygulama UsersPage sayfası ile başlamaktadır;

  ![image](https://github.com/jgkaya/iwallet-project-interview/assets/147056872/8b5c4055-7d79-489f-b79e-2e8017dddd8a)

Kullanıcılar listelenmekte ve her bir kullanıcı için düzenle butonu gözükmektedir. 

- Kullanıcı ara kısmı username'e göre arama yapmaktadır;
  
  ![image](https://github.com/jgkaya/iwallet-project-interview/assets/147056872/fcea4bc8-55c1-4f3b-ba73-b3d4a9d97646)
  
  ![image](https://github.com/jgkaya/iwallet-project-interview/assets/147056872/910d20ab-e11c-443d-b83c-5810b0316d3b)

  Ancak kullanıcı adı yoksa şu hata vermektedir;
  
  ![image](https://github.com/jgkaya/iwallet-project-interview/assets/147056872/6b5564eb-f066-49f2-9359-11c75bb0db14)


