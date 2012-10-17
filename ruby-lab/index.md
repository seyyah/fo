# Ruby Lab

seyyah@bil.omu.edu.tr

---

# Lab 1: Nesne

---

# Açıklama

- Her şey nesnedir

- `self` ana nesnedir

- nesne yöntemleri (_method_) noktayla ayrılır

        !ruby
        2.even?

## Görev 1
- `next` tamsayı sınıfında sonra ki sayıyı söyler.
- `1` sayısını ve gerekli miktarda `next` kullanarak `3` sayısını ekrana
  yazdırın

---
# devam
## Görev 2

- `methods` ile nesneyle ilişkilendirilen tüm yöntemler listelenir

- herhangi bir nesne alfabetik olarak sıralanır

- bir nesnede kullanılacak yöntemlerin sıralı listesini üretecek tek satırlık
  kod parçasını yazın.

----

# devam
## Görev 3

- `index` yöntemiyle sağlanan argümanın dizide ki kaçıncı eleman olduğunu söyler

        !ruby
        print %w(foo bar baz).index('bar') # => 1

- `between?` argüman olarak aldığı iki sayı arasında mı sorusunun yanıtını
  döndürür.

        !ruby
        print 2

- `between?` yöntemi ve `1` ile `3` sayılarını kullanarak true üretecek biçimde
  kodu tamamlayın

---

# devam
## Görev 4

- tamsayılar üzerinde kullanılan `+` ve `-` işleçleri de aslında birer yöntemdir

- `1 + 2` => `1.+(2)` yani `1` nesnesinin `2` argümanıyla `+()` işlevinin
  çağrılmasıdır

- Aşağıda ki ifadelerin nesne işlevi gösterimini yapın

        !ruby
        1 + 2           => 1.+(2)
        1 + 2 * 3
        (1 + 2) * 3

---

# devam
## Görev 5

- `[]` dizilerde elemanlara erişmede kullanılır, indis kabul eder

        !ruby
        > words = %w(foo bar baz)
        > words.[](1)       # => AYNI: words[1]
        'bar'

- aşağıda ki ifadenin tam nesnel işlev gösterimini yazın

        !ruby
        > words[0] + words[1] * words[2]

---

# Lab 2: Mantıksal + Kontrol
---

# Açıklama

- Değişkenlere `=` ile atama yapılır

        !ruby
        foo = 'bar'

- Değişkenin içerisinde olanı sınamak için `==` kullanılır

        !ruby
        foo == 'bar'

`foo` değişkeninin içerisinde `bar` mı var? Evet veye Hayır. Yani _bool_.

- mantıksal ifadelerde `and` (VE; `&&`) ve `or` (VEYA; `||`) kullanılır

- mantıksal ifadeyi terslemede `not` (DEĞİL; `!`) kullanılır

- Kullanıcıdan string okumada `gets.chomp`, sayı okumada `gets.to_i` kullanılır

        !ruby
        > ad = gets.chomp
        Seyyah
        => 'Seyyah'
        > yas = gets.to_i
        35
        => 35

---
# devam
## Görev 1
- Kullanıcıdan ad ve yaş okuyan ve adı 'seyyah' yaşı 30'dan büyük olduğunda
  doğru aksi taktirde yanlış döndüren kod parçasını yazın

---

# devam
## Görev 2

- Önce ki görevi `seyyah` olmayan ve yaşı 30'dan büyük olduğunda doğru
  döndürecek biçimde tekrarlayın

---

# devam
## Görev 3

- mantıksal ifadelere dayanarak bir takım komutları çalıştırmada `if` kontrol
  yapısı kullanılır

- fonksiyon tanımlarken `def` anahtar kelimesinden yararlanılır

        !ruby
        def sayi_isareti(sayi)
          if sayi > 0
            "#{sayi} pozitiftir"
          else
            "#{sayi} negatiftir"
          end
        end

- bu kod parçasında `0` geldiğinde fonksiyon ne döndürür?
- `0` geldiğinde `'İşaretsizdir'` mesajı verecek şekilde düzeltiniz.
- **İpucu**: `elsif` o değilse şunu kontrol et anlamında kullanılır.

---

# devam
## Görev 4

- Aağıda ki ifadeyi göz önüne alalım

        !ruby
        if kontrol
          puts "DOĞRU"
        end

- burada yer alan `kontrol` yerine aşağıda ki ifadelerden hangisi geldiğinde
  ekranda `'DOĞRU'` yazar

        !ruby
        false
        nil
        1
        0
        ""
        true
        []
---
# devam
## Görev 5

- tekrarlı işler yapmak için bir çok yol sunar. En basiti

        !ruby
        3.times do
            # bu görev üç kez yapılacak
        end

- kullanıcıdan alınan `mesaj`ı `n` kez söyleyen `tekrarla` işlevini yazınız

        !ruby
        def tekrarla(mesaj, n)
          p mesaj  # benim döngüye al
        end

---
# Lab 3: Diziler
---

# devam
## Boş Diziler

- En kolay yolu: `[]` kullanmaktır

- Aynı şeyi `Array.new` ile de yapabilirsiniz

## Dizi ilkleme

- bir değerle ilklerken: `[1, 2, 3]` deriz

## Görev 1

- `1`'den `5`'e kadar sayıları içeren bir dizi oluşturun

## Karma diziler

- dizi içerisinde farklı türleri barındırabilirsiniz: `[1, 'bir', 2, 'iki']`

---

# devam
## Erişim

- dizi indisleri `0`'dan başlar
- dizilere erişirken `dizi[indis]` biçimi kullanılır

## Görev 2

- Şu kod ne üretir

        !ruby
        > [1, 2, 3, 4, 5][2]

`[1, 2, 3, 4, 5, 6, 7]` dizisini göz önüne alarak,

- `5` değerini döndürecek indis nedir?
- dizinin `5.` elemanı kaçtır?

---

# devam
## Negatif indisler

- diziye tersten de bakabilirsiniz
- bu durumda dizinin son elemanı indisi `-1`, ondan bir önce ki `-2` şeklide
  ilerler

## Görev 3

`[1, 2, 3, 4, 5, 6, 7]` dizisini göz önüne alarak,

- `-5` indisli değer nedir?

- `5` değeri dizinin hangi negatif indisli elemanıdır?

---

# Büyüyen diziler

- dizinin sonuna eleman eklemek için `<<` kullanılır

        !ruby
        Array << yeni_eleman

- alternatif olarak diziler için tanımlı `push` yöntemiyle eklenir

  + *İpucu:* Ruby'de her şey nesnedir ve herhangi bir nesne yöntemi,
  argümanla şöyle çağrılabilir,

            !ruby
            Nesne.yöntem(argüman)

## Görev 4

- `[1,2,3,4,5]` dizisinin sonuna `"foo"` stringini `<<` işlecini kullanarak
  ekleyin

- `[1,2,3,4,5]` dizisinin sonuna `"foo"` stringini `push` işlevini kullanarak
  ekleyin

---

# Temel dizi işlemleri
## Dizileri dönüştürmek

`map` yöntemi bir diziden yeni bir dizi üretme de kullanılır

    !ruby
    [1, 2, 3, 4, 5, 6].map { |x| x + 1 }

Kısa kısa,

- yöntemin ardından gelen bloktur: `{ ... }`

- blok dizinin her bir elemanı üzerinde işlem yaparken `x` değişkenini kullanır

- burada yeni dizi, var olanın eleman değerleri bir fazla halidir

## Görev 5

`[1, 2, 3, 4, 5]` dizisinden `map`'i kullanarak `[3, 6, ..., 15]` dizisini
üretin

---

# Dizileri filtreleme

`select` yöntemi dizileri filtrelemeden/alt dizi seçmede kullanılır,

    !ruby
    [1,2,3,4,5,6].select { |x| x % 2 == 0 }

Kısa kısa,

- bu yöntemde bir blok bekler

- blok içerisinde seçim kriteri söylenir: `x % 2 == 0`

- ikiye bölümünden kalanı sıfır olanları seç

## Görev 6

`names = ['rock', 'paper', 'scissors', 'lizard', 'spock']` dizisinde adı `5`
karakterden uzun olanları `select` ile seçin

---

# Eleman silme

`delete` yöntemi, argüman olarak aldığı _değer_'e sahip elemanları siler.

**İpucu:** `Dizi.delete(değer)` kalıbı kullanılır.

## Görev 7

`[1,3,5,4,6,7]` dizisinden `5` değerini siliniz

## Koşullu silme

`delete_if` verilen koşula uyanları silmede kullanılır.

    !ruby
    [1,2,3,4,5,6,7].delete_if { |x| x < 4 }

- Genel bir alışkanlık olarak Ruby'ciler uzun yöntem isimlerinde boşlukları `_`
  ile ayırırlar. Ör. `bu_cok_uzun_bir_yontem()`

## Görev 8

`[1, 2, 3, 4, 5, 6, 7]` dizisini göz önüne alarak, dizi içerisinde ki tüm çift
sayıları silen kodu yazınız.

---

# Diziler ve döngüler

## for döngüleri

Bir çok dilde olduğu gibi Ruby'de de `for` ile döngü oluşturulabilir,

    !ruby
    dizi = [1,2,3,4,5,6]
    for x in dizi
      pust i
    end

## Görev 9

`kaynak` dizi içerisinde ki `4` değerinden küçük olanları `hedef` diziye
kopyalayan `dizi_kopyala` işlevini yazınız,

    !ruby
    def dizi_kopyala(kaynak)
      hedef = []

      # kodlarınız buraya gelecek

      return hedef
    end

---

# each döngüsü

- `for` ile aynı işi yapar

- daha doğrusu `for` her bir yinelemede `Array#each`'i çağırır

- Ruby'nin ifade tarzına daha uygun (`idiomatic`) olduğundan `each`'i tercih
ederiz

        !ruby
        dizi = [1,2,3,4,5,6]
        dizi.each do |x|
          puts x
        end

## Görev 10

Görev 9'u `each` ile gerçekleyin

    !ruby
    def dizi_kopyala(kaynak)
      hedef = []

      # kodlarınız buraya gelecek

      return hedef
    end

---

# Lab 4: Hash

---

# Hash oluşturma

- *Hash*, anahtar-değer çiftleri şeklinde verileri bir arada tutmaya yarar

- Diğer dillerde *ilişkili diziler* (SQL), *sözlük* (Python), *HashMap* (Java)
  olarak karşımıza çıkar

- dizilerde `[]` kullanılırken hash'lerde `{}` kullanılır

        !ruby
        ogrenci_yas = { "Seyyah" => 35,
                        "Nemo"   => 20,
                        "Foo"    => 25 }

- burada `"Seyyah"`, `"Nemo"` ve `"Foo"` anahtar, `35, 20, 25` ise değerlerdir.

---
# Görev 1

Aşağıda anahtar-değer çiftlerini içeren hash'i üretin,

    !ruby
    Çorba = 3
    Adana = 7
    Cacık = 1
    Tatlı = 2

Üretmeniz istenen hash,

    !ruby
    restoran_menu = # hash'i buraya yazın

---

# Hash'den değer okuma

- dizilerde olduğu gibi `[]` kullanılır

- köşeli parantez içerisinde *anahtar* yazılır

- *İpucu*: `Hash[anahtar] => değer`

## Görev 2

Daha önce ki görevde oluşturduğunuz `restoran_menu` hash'inden `Tatlı`'nın
fiyatını verecek kodu yazın.

---

# Hash değerini güncelleme

dizilerde olduğu gibi `Koleksiyon[anahtar] = yeni_değer` kalıbı kullanılır

    !ruby
    restoran_menu["Adana"] = 10

Bu yapı aynı zamanda eğer verilen anahtar yoksa yeni anahtar-değer çifti
oluşturmada da kullanılır.

## Görev 3

Boş hash üretmek için `{}` ile değişkeni ilklendirmek yeterlidir.

boş oluşturulmuş `restoran_menu` hash'ine aşağıda ki ürünleri teker teker ekleyin,

    !ruby
    Hamsi Tava = 5
    Salata = 1.5

Başlangıç kodu,

    !ruby
    restoran_menu = {}
    # her bir ürünü teker-teker ekleyin

---

# Hash ve döngü

Dizilerde olduğu gibi `each` kullanılabilir

Örnek,

    !ruby
    restoran_menu = { "Çorba" => 3, "Yemek" => 7, "Tatlı" => 4 }
    restoran_menu.each do |urun, fiyat|
      puts "#{urun} #{fiyat} TL'dir"
    end

## Görev 4

Zarar etmeye başlayan restorana yardım edelim ve her bir ürünün fiyatını %10
arttıralım,

    !ruby
    restoran_menu = { "Çorba" => 3, "Yemek" => 7, "Tatlı" => 4 }
    # döngü buraya gelecek ve restoran_menu güncellenecek

*İpucu*: bir değişkenin değerini `%10` artırmak için `fiyat + fiyat * 0.1`
kullanabilirsiniz.

---

# Hash'in anahtarları ve değerleri

- tüm anahtarları almak için `keys`, değerleri almak için `values` yöntemi
  kullanılır

- *İpucu*: `hash.keys`

## Görev 5

Restorantta ki tüm ürünleri listeleyelim,

    !ruby
    restoran_menu = { "Çorba" => 3, "Yemek" => 7, "Tatlı" => 4 }
    # kodlarınız buraya gelecek

<textarea rows=15 cols=100></textarea>

---

# Hash: sembol X string

- Hash'de anahtar olarak sayılar, stringler ve semboller kullanılabilir

        !ruby
        hash = {}
        hash[1] = 'foo'
        hash["bar"] = 35
        hash[:baz] = 45

- Hash açısından sembol kullanımı daha verimlidir (bellek kullanımı ve hız
kullanımı açısından). Sizler de tercih edin.

        !ruby
        # İYİ
        hash = {anahtar1: değer1, anahtar2: değer2}

        # KÖTÜ
        hash = {"anahtar1" => değer1, "anahtar2" => değer2}

- Ruby 1.9 ile birlikte söz diziminde ilk gösterim tercih edilir

        !ruby
        # İYİ
        hash = {sembol1: değer1, sembol2: değer2}

        # KÖTÜ
        hash = {:sembol1 => değer1, :sembol2 => değer2}

---

# Örnek,

    !ruby
    restoran_menu = {corba: 3, yemek: 7, tatli: 4}
    restoran_menu[:corba] # => 3
    restoran_menu[:tatli] = 5

---

# Lab 5: Yöntemler
---

# Yöntemler

- Ruby'de her şey nesnedir
- Nesneye yetenek kazandırma ise işlevle sağlanır

Örnek,

    !ruby
    puts 1.next

- `1` tamsayı türünde bir nesnedir
- `next` tamsayıların ardından gelen sayıyı söylemesini sağlayan işlevi
- işlevin döndürdüğü tamsayı değeri/nesnesi `puts` işleviyle işlenir/ekrana
  yazılır

---
# Yöntem: method, call

Bu kısım atlanabilir. Yakın çekim,

    !ruby
    puts 1.method("next")

- her nesne için `method` isminde bir işlev öntanımlı olarak vardır
- her şey ama her şey nesnedir: işlev bile bir nesnedir
- `method("next")` ile `next` yöntemi/nesnesinin bir örneği üretilir
- bu diğer dillerde (ör. C) fonksiyon pointerı olarak bilinir

Sonra,

    !ruby
    next_yontem_nesnesi = 1.method("next")
    puts next_yontem_nesnesi.call

- yöntem `call` ile çağrılır

---

# Özet

AMA biz böyle uzun uzun söylemeyiz,

    !ruby
    # KÖTÜ
    1.method("next").call

    # İYİ
    1.next

---

# Görev 1

Aşağıda ki boşlukları doldurun,

    !ruby
    def kare(bir_sayi)
      # kodlarınız buraya gelecek
    end

    # uzun yöntemle 2 sayısının karesini hesaplayın
    # uzun yöntemle 2 sayısının iki kez karesini hesaplayın
    # kısa yöntemle 2 sayısının karesini hesaplayın

---

# Tanımlama

İşlev şöyle tanımlanır,

    !ruby
    def isareti_tersle(bir_tamsayi)
      return 0 - bir_tamsayi
    end

    puts isareti_tersle(100) # => -100
    puts isareti_tersle(-5)  # => +5

- `def` bir anahtar kelimedir
- şu an ki nesnede yöntem tanımlar (definition)
- yöntem isminde de boşluk yer almaz, alt çizgi kullan
- genel olarak işlev isimleri küçük harftir
- `bir_tamsayi` işlevin argümanıdır
- işlevi çağırana değer döndürmede `return` kullanılır
- `def` ile başlayan cümle `end` ile sonlanır

---

# İşlev + sınıf

Örnek,

    !ruby
    def bir_seyler_yap
    end

    puts bir_seyler_yap.class

- argüman istemeyen işlevler için parantez kullanılmaz
- `return` yardımıyla değer geri döndürülmezse dönüt değeri `nil`'dir
- dolayısıyla `işlev.class` NilClass'dır
- `nil` ekrana yazdırılırsa bo string üretir (nil.to_s => "")

---

# Görev 2

Aşağıda işlemler ne üretir?

    !ruby
    def sayi
      return 1
    end

    def dizgi
      return "hello"
    end

    puts sayi.class
    puts dizgi.class

---

# return

`return` ifadesini kullanırken dikkatli olun,

    !ruby
    def erken_donduren_return
      return
      puts "Bu yazı hiç bir zaman görünmeyecek neden?"
    end

    puts erken_donduren_return.class

## Görev 3

Ekranda ne görüyorsunuz? Neden?

---

# Yöntemi çağırmak

yöntemler birden fazla argüman kabul edebilir

    !ruby
    def ekle(bir_sayi, diger_sayi)
      bir_sayi + diger_sayi
    end

    puts ekle(1, 2)

daha fazla da olabilir,

    !ruby
    def ekle(bir_sayi, diger_sayi, baska_bir_sayi)
      bir_sayi + diger_sayi + baska_bir_sayi
    end

    puts ekle(1, 2, 3)

Argümanların öntanımlı değerleri de olabilir, verilmediğinde bu değerleri
kullanılır,

    !ruby
    def ekle(bir_sayi, diger_sayi, baska_bir_sayi=0)
      bir_sayi + diger_sayi + baska_bir_sayi
    end

    puts ekle(1, 2, 3) # => 6
    puts ekle(1, 2)    # => 3
    puts ekle(1)       # HATA: eksik argüman

---

# Görev 4

Aşağıda ki işlevde eksik alanaları tamamlayınız,

    !ruby
    def merhaba_de(ad)
      "Merhaba #{ad}"
    end

    puts merhaba_de("Ahmet") # => Merhaba Ahmet
    puts merhaba_de          # => Merhaba Ruby Seven Kişi

**İpucu**: parametre öntanımlı değerini henüz öğrendik.

---

# Dizi olarak erişmek

Argüman değişkeninin başına `*` ekleyerek, keyfi uzunluklu argümanla çağırma
olanağına kavuşuruz,

    !ruby
    def topla(*sayilar)
      toplam = 0
      sayilar.each {|sayi| toplam += sayi}
      toplam
    end

    puts topla(1)          # => 1
    puts topla(1, 2)       # => 3
    puts topla(1, 2, 3)    # => 6
    puts topla(1, 2, 3, 4) # => 10

Ruby'de her problemin birden fazla çözümü vardır,

    !ruby
    def topla(*sayilar)
      sayilar.inject(0) { |toplam, sayi| toplam + sayi }
    end

---

# Dizi olarak erişmek - 2

Önce ki verdiğimiz işlev,

    !ruby
    def ekle(bir_sayi, diger_sayi, baska_bir_sayi)
      bir_sayi + diger_sayi + baska_bir_sayi
    end

Şöyle çağırmıştık,

    !ruby
    puts ekle(1, 2, 3) # => 6

Aynı zamanda şöyle de çağırabiliriz,

    !ruby
    toplanacak_sayilar = [1, 2, 3]
    puts ekle(*toplanacak_sayilar) # => 6

Diziyi açmada kullanılan `*`'a dikkat ediniz.

---

# Dizi olarak erişmek - 3

Sabit argümanla keyfi uzunluklu argüman listesi birleştirilebilir,

    !ruby
    def topla(*sayilar)
      sayilar.inject(0) { |toplam, sayi| toplam + sayi }
    end

    def mesajli_topla(mesaj, *sayilar)
      "#{mesaj}: #{topla(*sayilar)}"
    end

    puts mesajli_topla("Toplam değer ", 1, 2, 3) # => Toplam değer: 6

---

# Görev 5

`selamla` isminde bir işlev tasarlayın. Argüman olarak yaş, cinsiyet ve keyfi
adet isim kabul etsin.

    !ruby
    p selamla(19, 'E', 'Mehmet', 'Şen') # => Merhaba 19 yaşında ve E cinsiyetli Mehmet Şen
    p selamla(19, 'E', 'Mehmet', 'Ali', 'Şen') # => Merhaba 19 yaşında ve E cinsiyetli Mehmet Ali Şen

**İpucu**: Array#join ile isimleri birleştirip tek string oluşturabilirsiniz.

---

# İsimlendirilmiş parametreler

En son tasarlanan topla işlevine yeni özellikler eklemek istersek,

    !ruby
    def topla(bir_sayi, diger_bir_sayi, secenekler = {})
      toplam = bir_sayi + diger_bir_sayi
      toplam = toplam.abs if secenekler[:mutlak]
      toplam = toplam.round(secenekler[:hassasiyet]) if secenekler[:yuvarla]
    end

    puts topla(1.0134, -5.568)
    puts topla(1.0134, -5.568, mutlak: true)
    puts topla(1.0134, -5.568, mutlak: true, yuvarla: true, hassasiyet: 2)

burada,

- `secenekler` parametresi isimlendirilmiş alt parametreleri (ör. `hassasiyet`) tutar

- `secenekler` bir hash veri yapısıdır

- bu kalıp yardımıyla işlevin arayüzünü değiştirmeden keyfi uzunlukta parametre
  tanımlayabiliriz

---

# Görev 6

- Yukarıda ki işlevin ürettiği çıktıları not edin ve tartışın.

- `5.0` çıktısı üretmek için kullanılması gereken `secenekler` nedir?

---

# Görev 7

Aşağıda ki testlerden geçecek `topla`, `cikart` ve `hesapla` işlevlerini
tasarlayınız.

    !ruby
    p topla(4,5) # => 9
    p topla(-10,2,3) # => -5
    p topla(0,0,0,0) # => 0
    p cikart(4,5) # => -1
    p cikart(-10,2,3) # => -15
    p cikart(0,0,0,0,-10) # => 10
    p hesapla(4,5, topla: true) # => 9
    p hesapla(0,0,0,0,topla: true) # => 0
    p hesapla(4,5,cikart:true) # => -1
    p hesapla(-10,2,3,cikart:true) # => -15
    p hesapla(0,0,0,0,-10, cikart:true) # => 10

---

# Lab 6 Sınıflar
---

# Nesneleri gruplama

- her şey nesnedir
- herhangi bir şeyin hangi nesneden olduğunu `class` ile öğrenebiliriz

Örnek,

    !ruby
    p 1.class  # => Fixnum
    p "".class # => String
    p [].class # => Array

Belli bir sınıfta olup-olmadığını ise `is_a?` ile öğreniriz,

    p 1.is_a?(Integer) # => true
    p 1.is_a?(String)  # => false

---

# Sınıflar da insanlara benzer

Kişinin ceddi kimdir dersek? Onun da ceddi kimdirle devam edebiliriz,

    !ruby
    p 1.class
    p 1.class.class
    p 1.class.class.class

## Görev 1

Bir önce ki kod satırlarını çıktısı nedir, tartışınız.

---

# Sınıflarla ne yapılabilir?

- Nesneler mantıksal bir gruplama sağlar

- nesnenin bir örneğini (_instance_) üretmek için `new` anahtar kelimesi
  kullanılır

Örnek,

    !ruby
    Object.new
    Array.new

---

# Sınıf tasarlama

Basit bir sınıf, geometride kullanılan Dikdörtgen.

    !ruby
    class Dikdortgen
    end

burada,

- `class` anahtar kelime
- `Dikdörtgen` büyük harfle başlar, Ruby geleneğinden gelir

## Özellikler

Sınıfların iki farklı özniteliği vardır,

- **Durum**: nesne örneğinin özelliklerini tanımlar. Uzunluk, köşe noktası gibi.

- **Davranış**: nesne üzerinde, benzer nesnelerle yapılabilecek eylemleri
  tanımlar

---

# Durum ve davranışlar

Dikdörtgen'e ne sorardınız?

- çevren ne kadar?

- alanın nedir?

Bu sorulara `davranış` üzerinden yanıt üretilebilir, o ise bir işlevdir

    !ruby
    class Dikdortgen
      def cevre
        2 * (@uzunluk + @genislik)
      end
    end

Kullanım,

    !ruby
    p Dikdortgen.new.cevre # => ?

burada yer alan değişkenler `@uzunluk` ve `@genislik` nedir? Bunlarda
Dikdörtgen'in durumlarını tutan değişkenlerdir.

---

# Durum

Durum değişkenleri nasıl atanacak?

    !ruby
    class Dikdortgen
      def initialize(uzunluk, genislik)
        @uzunluk = uzunluk
        @genislik = genislik
      end

      def cevre
        2 * (@uzunluk + @genislik)
      end
    end

Kullanım,

    !ruby
    > d = Dikdortgen.new(3, 4)
    > p d.cevre # => 14

## Görev 2

Dikdörtgenin alanını hesaplatın.

---

# Lab 7: String
---

# Nasıl?


- tek veya çift tırnakla stringler oluşturulur

- String sınıfına dair bir çok işlev vardır

Kullanım,

    !ruby
    > "Dizgi".methods
    > "Dizgi".length

---

# Dizgi yapma

herhangi bir türü dizgiye çevirmek/olarak yorumlamak mümkündür

    !ruby
    a = 1
    b = 4
    p "#{a} sayısı, #{b} sayısından küçüktür"

burada,

- dizgi içerisinde `#{}` kalıbı içerisinde yer alan ifade hesaplanarak sonucu
  dizgiye çevrilir

- tek tırnak içerisinde ki dizgiler yorumlanmaz

- `\n` karakteri çift tırnak içerisinde yeni satır karakteri üretir

---

# Görev 1

yukarıda ki ifadeyi tek tırnak içerisinde yazınca çıktı nedir, yorumlayın.

## Görev 2

Argüman olarak aldığı dizgi uzunluğunu ekrana yazan işlevi gerçekleyin,

    !ruby
    def dizgi_uzunluk_soyle(gelen_dizgi)
      "Verdiginiz dizginin uzunlugu "
    end

## Görev 3

Bir önce ki görevde tek bir dizgi içerisinde uzunluk değerini yeni satırda
yazdırın.

**İpucu**: `\n` kullanacaksınız.

---

# Arama

Dizgi içerisinde bir başka dizginin var mı?

## Görev 4

Şöyle bir konuşma metninde `seyyah` var mı?

    !ruby
    "[nemo:] burada hava çok soğuk. [seyyah:] sıcak iklime gitmelisin."

**İpucu**: String#include?

## Görev 5

Aşağıda ki dizgi "Ruby" ile başlıyor mu?

    !ruby
    "Ruby nesne yönelimli bir dildir"

**İpucu**: String#start_with?

---

# Görev 6

Aşağıda ki dizgi "Ruby" ile bitiyor mu?

    !ruby
    "Pascal, C, Python, Ruby"

**İpucu**: String#end_with?

## Görev 7

'R' dizgide kaçıncı karakter?

    !ruby
    "Biz artık Rubiciyiz!"

**İpucu**: String#index

---

# Büyük/küçük

- `upcase` büyük

- `downcase` küçük

- `swapcase`

## Görev 8

Aşağıda ki görevleri yerine getirin,

    !ruby
    p "ben küçük harfliyim. büyük harfe çevir beni."
    p "ben de küçük de var BÜYÜK de peki ne olacak şimdi. tamamımı büyük yapacaksın"
    p "burada ki Büyük harfleri küçük YaPmalısın, küçük harfleri ise Büyük yapmalısın"

---

# İleri düzey dizgi işlemleri

`split` argüman olarak karakter yardımıyla dizgiden dizi üretir

## Görev 9

Bir cümle içerisinde ki kelimelerden oluşan diziyi üreten kod nedir?

**İpucu**: String.split(' ')

---

# Birleştirme

- `+` işleci iki dizgiyi birleştirir

- aynı görev `concat` işleviyle de sağlanır. String#concat

- alternatif yaklaşım ise `<<`'i kullanmaktır

## Görev 10

Ad ve soyadı birleştirip tek değişken olarak tutan ve ekrana yazan programı
yazınız,

    !ruby
    ad = "seyyah"
    soyad = "nemo"
    adsoyad # burayı düzeltin
    p adsoyad

Bu görevi üç farklı yolla gerçeklemelisiniz.

---

# Yer değiştirme

- Dizgi içerisinde bir alt dizgiyi başka bir alt dizgiyle değiştirmede `sub`
işlevi kullanılır. Bu işlev sadece ilk gördüğünü değiştirir

- global bir değişiklik (hepsini değiştirsin) isterseniz `gsub`'ı
  kullanabilirsiniz

## Görev 11

Aşağıda ki dizgide `ş` harfini `s` harfiyle yer değiştirin,

    !ruby
    "Foç şoğ Haş aşı"

- bu görevde ilkini değiştirmek için ne yapacaksınız
- hepsini nasıl değiştirebilirsiniz

---

# Düzenli ifadeler

`gsub` daha fazlasına, düzenli ifadelere de imkan verir,

    !ruby
    "RubyMonk".gsub(/[aeiou]/, '1') #=> R1byM1nk

## Görev 12

Aşağıda ki dizgiyi göz önüne alın,

    !ruby
    "Foç şoğ Haş aşı" 

a) bu dizgide ki tüm Türkçe'ye özgü karakterleri `*` değiştirin

b) tüm büyük harfleri `1` ile değiştirin

**İpucu**: /[A-Z]/

---

# RegEx

Düzenli ifadeler çok güçlüdür: `/ ./` bir veya daha fazla boşluk anlamına gelir.

## Görev 13

Aşağıda ki cümleyi göz önüne alın,

    !ruby
    "Bu gün hava çok güzel."

- ikinci kelimenin ilk harfini verecek ifade nedir?

- üçüncü kelimenin ilk harfini verecek ifade nedir?

**İpucu**: ri Regexp

---

# Lab 8: Lambda
---


