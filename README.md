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

  ![image](https://github.com/jgkaya/iwallet-project-interview/assets/147056872/c8df0e70-36bc-400d-ae37-a34fc687117c)

Kullanıcılar listelenmekte ve her bir kullanıcı için düzenle butonu gözükmektedir. 

- Kullanıcı ara kısmı username'e göre arama yapmaktadır;
  
  ![image](https://github.com/jgkaya/iwallet-project-interview/assets/147056872/fcea4bc8-55c1-4f3b-ba73-b3d4a9d97646)
  
  ![image](https://github.com/jgkaya/iwallet-project-interview/assets/147056872/67325b3f-ba55-42ff-a447-32624de7d678)

  Ancak kullanıcı adı yoksa şu hata vermektedir;
  
  ![image](https://github.com/jgkaya/iwallet-project-interview/assets/147056872/6b5564eb-f066-49f2-9359-11c75bb0db14)

- Temizle butonuna basılınca listeleme ekranına geri gelmektedir.
- Bir kullanıcnın düzenle butonuna basarsak;

  ![image](https://github.com/jgkaya/iwallet-project-interview/assets/147056872/ffb9ef07-9b98-4bc2-9125-7a0fc460d448)

- Kullanıcının adının üstüne tıklayınca kullanıcı hakkında bilgiler verilir;

  ![image](https://github.com/jgkaya/iwallet-project-interview/assets/147056872/8b629804-aa35-438c-a303-e93363c163d4)

  Albüm kısımındaki her linke tıklandığında o albümün fotoğrafları gelmektedir;

  ![image](https://github.com/jgkaya/iwallet-project-interview/assets/147056872/6a99b307-c76e-4246-b8bd-877d12bca757)



