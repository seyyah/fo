# Ruby: Ders

.fx: first

Nurettin Şenyer <seyyah@bil.omu.edu.tr>

<http://seyyah.me/p>

<http://shelr.tv/users/5051947696608018680000de>

Haziran, 2012

Samsun

.qr: 150|http://seyyah.me/p/ruby-ders

---

# Bölüm 1: INTRODUCTION

<img src="http://i.imgur.com/5QnK9.png" height="500">

---

# Genel

- dinamik programlama dilidir

> - dinamik mi? derlemeli mi?
> - kod ekleme

- Lisp, Smalltalk, Perl'den ilham alır FAKAT

> - List: LISt Processing

- C'nin kolaylığında grameri vardır

---

# Hello

.code: code/01_hello.rb

- `print`: standart giriş/çıkış/error

- tırnak: karakter => dizgi

---

# Ruby Turu: OOP

.coden: code/01_oop.rb

---

# Ruby Turu: Bloklar ve Iteratorler

.coden: code/01_block.rb

---

# Ruby Turu: İfadeler ve İşleçler

.coden: code/01_expression.rb

shelr: 5051de1e96608010b3000025

---

# Ruby Turu: Yöntemler

.coden: code/01_fun.rb

shelr: 5051de9c966080189000001e

---

# Ruby Turu: Atama

.coden: code/01_atama.rb

shelr: 5051dfac96608010b3000026

---

# Ruby Turu: Punctuation

- fonksiyon tanımında `!` ve `?` sıklıkla kullanılır

- öntakı olarak `$` (global değişken), `@` (instance değişkeni) ve `@@` (class değişkeni) kullanılır

.coden: code/01_punc.rb

shelr: 5051e094966080189000001f

---

# Ruby Turu: Regexp ve Range

.coden: code/01_regexp.rb

shelr: 5051e3039660801890000020

---

# Ruby Turu: Class ve Modüller

.coden: code/01_class.rb

shelr: 5051e41b96608010b3000029

---

# IRB

- nokta-`.`: class/modül ile yöntemi ayırır

- diyez-`#`: instance yöntemi

- iki nokta-`::`: class yöntemi

.coden: code/01_irb.rb

shelr: 5051e6ef96608010b300002c

---

# Müfredat

1. Hafta: bugün

2. Hafta: karakter kümesi, rezerve kelimeler

3. Hafta: veri türleri

4. Hafta: ifadeler, işleçler

5. Hafta: koşul, döngü

6. Hafta: proc ve lambda; closure, fonksiyonel programlama

7. Hafta: class ve module

8. Hafta: metaprogramlama

9. Hafta: en önemli kitaplıklar

10. Hafta: üst düzey Ruby programlama: global değişkenler vs

---

# Bölüm 2: Genel

<img src="http://i.imgur.com/1AhcK.png" height="500">

---

# Yorum

Yorum satırları diyez-`#` ile başlatılır

    !ruby
    # Bu satırın tamamı yorum satırıdır
    x = "#Bu bir katardır" 		    # bu ise yorumdur
    y = "/#bu düzenli ifadedir/"	# bu diğer bir yorumdur

---

# Yardım gömme

Markdown'a benzer bir stili vardır,

    !ruby
    #
    # = Başlık 1
    # == Başlık 2
    #
    # Liste,
    # * foo
    # * bar
    #
    # Yazılar stillendirilebilir _eğik_, *koyu* veya +kod+

---

# Sabitler

Sabitler,

    !ruby
    1         # Tamsayı
    1.0       # Gerçel sayı
    'one'     # Dizgi
    "one"     # Dizgi
    /one/     # Düzenli ifade

---

# İsimlendirme Kuralı

- isimler: değişken, yöntem, sınıf vs

- harf, sayı ve alt çizgi; sayıyla başlayamaz!

- küçük-BÜYÜK harf **farklıdır**.

- Türkçe'ye özel karakter kullanabilirsiniz

Örnekler,

    !ruby
    # GEÇERLİ
    i
    x2
    eski_deger
    _internal
    PI

    # GEÇERSİZ
    1x
    foo bar
    foo%bar

---

# Özel karakterler

İzin verilen özel karakterler,

    !ruby
    $files    # Global değişken
    @data     # instance değişkeni
    @@counter # class değişkeni
    empty?    # Yöntem, mantıksal değer döndürür
    sort!     # Solunu (in-place) günceller
    timeout=  # Atama

---

# Anahtar kelimeler

![](http://i.imgur.com/v46KF.png)

bunları kullanmayın.

---

# Beyaz Boşluklar

.coden: code/01_whitespace.rb

shelr: 5051f02096608010b3000031

---


# Beyaz Boşluklar + Fonksiyonlar

- Fonksiyonları çağırırken parantez zorunlu değildir

- FAKAT dikkatli olmakta yarar var!

Örnek çalışma,

    !ruby
    def f(x)
      x**2
    end

    p(5)           # => 5**2 => 25
    p 5            # => 5**2 => 25
    p f(3+2) + 1   # => 25 + 1 => 26
    p f (3+2) + 1  # =>
    p f((3+2) + 1) # => ((3+2) + 1) => 6; f(6) => 36

- **Not**: `return` kullanmaksızın en son ifade geri döndürülür

---

# Program Kalıpları/Yapıları

Basit/İlkel İfadeler,

- Ruby söz diziminin en basit birimi: **deyim** (expression)

- deyim yürütüldüğünde değer üretir

- sayı ve dizgi sabitleri ilkel deyimlerdir

- bunlara `true-false-nil-self`'i de ekleyebiliriz

Daha üst düzey yapılar: diziler, hash, range

    !ruby
    [1, 2, 3]                        # Dizi
    { tr: "Türkiye", de: "Almanya" } # Hash
    1..10                            # Range

İşleçler devreye girer,

    !ruby
    1          # ilkel deyim
    x          # ilkel deyim
    x = 1      # atama deyimi
    x = x + 1  # iki işleçli deyim

---

# İfade X Deyim

Koşul ve döngü **ifade**leri (statement) ile birleştirilebilir

    !ruby
    if x < 10 then  # Eğer bu deyim doğruysa
      x = x + 1     # bu ifadeyi yürüt
    end             # koşul sonu

    while x < 10 do # Bu deyim doğru olduğu sürece ...
      print x       # Bu ifadeyi yürüt
      x = x + 1     # + bu ifadeyi de yürüt
    end             # döngü sonu

---

# Bloklar

İki biçimi vardır: `{...}` veya `do ... end`.

    !ruby
    3.times { print "Ruby!" }

    1.upto(10) do |x|
      print x
    end

---

# Karakter Kodlama

Shebang,

    !ruby
    # encoding: utf-8

shelr: 5051f6139660801890000023

- diyez ile başlayan satırlar _shebang comment_ olarak bilinir

---

# Bölüm 3: Veri Türleri ve Nesneler

<img src="http://i.imgur.com/Wlnp3.png" height="500">

---

# 3.1 Sayılar

![](http://i.imgur.com/C4kth.png)

- Integer, 31 bit ? Fixnum : Bignum (keyfi uzunluklu)

---

# 3.1.1 Tamsayı sabitleri

Örnek,

    !ruby
    0
    123
    12345678901234567890

Binlik ayracı olarak `_` kullanılabilir,

    !ruby
    1_000_000

`0` başlayan sayılar özel anlamlıdır,

    !ruby
    0377   # Octal
    0b1010 # Binary
    0xFF   # Hexadecimal

---

# 3.1.2 Gerçel sayı sabitleri

Örnek,

    !ruby
    0.0
    -3.14
    6.02e23
    1_000_000.01

---

# 3.1.3 Aritmetik işlemler

Dört işlem (`+, -, *, /`)

    Ruby
    [5/2, 5.0/2, 5/2.0]                 # => [2, 2.5, 2.5]
    [5.0.div(2), 5.0.fdiv(2), 5.quo(2)] # => [2, 2.5, 5/2 kesri]

- Sığmadığında otomatik tür dönüşümü
- `0`'a bölme `ZeroDivisionError` hatası üretir
- `0.0`'a bölme ise `Infinity` üretir
- `0.0/0.0` ise `NaN` üretir

---

# Modül

Modülün yeri ayrıdır,

    !ruby
    5 % 2              # => 1
    q, r = 10.divmod 3 # => Kesir: 3 tam 1/3

`**` ise üst almada kullanılır,

    !ruby
    x ** 4
    x ** (1/3.0)

---

# Bit düzeyi erişim

- İşleçler: `~, &, |, ^, <<, >>`

- Tamsayılar için indisleme mümkündür ve bitlerine erişimi sağlar

Örnek,

    !ruby
    x = 9 # => ikil: 0b1001
    x[0]  # => 1
    x[1]  # => 0
    x[2]  # => 0
    x[3]  # => 1

---

# 3.1.4 İkil kayar noktalı sayılar ve yuvarlama hataları

- Çoğu bilgisayar donanımı ve dili (Ruby buna dahildir) gerçel sayıları yaklaşık
olarak tutar

- donanımı etkin kullanmak adına, `1/2, 1/4, 1/1024` gibi ikilleri temsil
  ederken

- `1/10, 1/100` gibi kesirler yaklaşık tutulur

Dolayısıyla,

    !ruby
    (0.4 - 0.3) == 0.1 # => false!

Bu bir çok dilin (C, Java, JavaScript) ortak sorunudur

---

# 3.2 Metin ve dizgi sabitleri

## 3.2.1.1 Tek tırnak dizgi sabitleri

Örnekler,

    !ruby
    'Bu dizgidir'
    'Bu baska\' bir dizgidir'
    'a\b' == 'a\\b' # => true

    mesaj = 'Bu cok uzun '\
    'Cok satirli'\
    'Bir dizgidir.'

---

# 3.2.1.2 Çift tırnak dizgi sabitleri

Örnekler,

    !ruby
    "\t\"Bunda hem sekme hem de çift tırnak var ve yeni satırla biter\"\n"
    "\\" # ter slaş

    "360 derece=#{2 * Math::PI}} radyandır"

    $global = 'foo'
    "#$global bar" # => 'foo bar'

    "foo \#{" # => 'foo #{'

İleri düzey,

    !ruby
    sprintf("pi yaklaşık olrak %.4f", Math::PI)
    "pi yaklaşık olarak %.4f" % Math::PI
    "%s: %f" % ["pi", Math::PI]

Escape sequences: `a, b, e, f, n, t, s, u{hexdigits}, ...`

---

# 3.2.1.3 Unicode escape

Örnek,

    !ruby
    "\u00D7  # => "x"
    "\u20ac" # => "€"

---

# 3.2.1.4 Keyfi ayırgaç kullanımı

örnek,

    !ruby
    %q(Bu bir string'dir)
    %-Bu ise yeni satırla sonlanır\n-

Eşleşen parantezler: (, [, {, < , vs

---

# 3.2.1.5 Here dökümanları

- Uzun bir dizgiye ihtiyaç duyulunca

- Unix'den mirastır

- `<<` veya `<<-` ile başlar

Örnek,

    !ruby
    document = <<HERE
    Bu bir dizgidir.
    Bu iki satırdan oluşur.
    HERE

---

# 3.2.1.6 Ters tırnakla komut yürütme

Ters tırnak `\`` ile işletim sistemine ait bir komutu çalıştırmaya izin verir.
Ör. "`\`ls\``". Keyfi dizgi yapısı %x (execute)

    !ruby
    %x[ls]

Çift/tek tırnak içerisinden de yürütülebilirler,

    !ruby
    if windows
      komut = 'dir'
    else
      komut = 'ls'
    end
    sonuc = `#{komut}`

---

# 3.2.1.7 Dizgi sabitleri ve değiştirilebilirlik

Python'un aksine benzer dizgiler aynı nesne değildir!

    !ruby
    10.times { puts "foo".object_id }

- Çıktısı nedir?

- Bu yüzden döngü içinde dizgi sabitleri kullanmaktan sakının!

---

# Karakter sabitleri

Kısa kısa,

    !ruby
    ?A # 'A' karakter sabiti
    ?€
    ?\t
    ?\C-x # Ctrl-X karakter sabiti

---

# 3.2.3 Dizgi işleçleri

- `+` işleci dizginin ardına ekler

- `< < ` benzer göreve sahiptir

- en önemli fark ilki yeni nesne oluştururken, ikincisi sol işleneni
  günceller/ardına ekler

Örnek,

    !ruby
    mesaj = "Merhaba"
    mesaj << " " << "Dunya"
    puts mesaj # => "Merhaba Dunya"

İlginç,

    !ruby
    alfabe = "A"
    alfabe << ?B # "AB"
    alfabe << 67 # "ABC"

---

# 3.2.4 Karakterlere ve altdizgiere erişim

`[]` indislemede kullanılır,

    !ruby
    s = 'hello'
    s[0] # => 'h'

    s[0] = ?H    # => 'Hello'
    s[-1] = ""   # => 'Hell'
    s[-1] = "p!" # => 'Help!'

Dilimleme: `[başla, uzunluk]`

    !ruby
    s = 'hello'
    s[0, 2] # => 'he'

Dilimle: `[başla..bitir]`,

    !ruby
    s = 'hello'
    s[2..3] # => 'll'

İndis,

    !ruby
    s = 'hello'
    s['l'] # => true

Daha fazlası RegExp'de!

---

# 3.2.5 Dizgilerde iterasyon

`each` yerine `each_byte` kullanın,

    !ruby
    "€123".each_byte {|x| puts "#{x} " } # => "€ 1 2 3"

---

# 3.3 Diziler

Örnek,

    !ruby
    [1, 2, 3]
    [-10..0, 0..10]
    [[1,2], [3,4], [5]]
    []

    %w[foo bar baz] # => ['foo', 'bar', 'baz']

    Array.new       # => []
    Array.new(3)    # => [nil, nil, nil]
    Array.new(4, 0) # => [0, 0, 0, 0]

Ayrıntılar,

    !ruby
    a = [0,1,4,9,16]
    a[0]
    a[-1]
    a[-2] = 'dokuz'
    a[-3] = 1..10

---

# Dilimleme

Dilimleme,

    !ruby
    d = ('a'..'e').to_a
    d[0,0]
    d[0..-1]

    d[0,2] = ['A', 'B']

Genişleyen diziler,

    !ruby
    a = []
    a << 1
    a << 2 << 3
    a << [4,5,6]
    a.concat [7,8] # => [1,2,3,[4,5,6],7,8]

- `-` ortak özellikler çıkarılır

- `|`: birleşim, `&`: kesişim

---

# 3.4 Çırpı
