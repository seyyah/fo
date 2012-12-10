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

<img src=http://i.imgur.com/C4kth.png width=750>

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

- anahtar - değer çiftleri

- map: anahtar'lara karşılık gelen değerleri haritalar

- SQL: associative arrays

Örnek,

    !ruby
    h = Hash.new
    h["samsun"] = 55
    h["istanbul"] = 34
    h["çorum"] = 19

---

# Hash Literals

Literal: dizgi veya sembol olabilir,

    !ruby
    h = { "samsun" => 55, "istanbul" => 34 }
    h = { :samsun => 55, :istanbul => 34 }
    h = { samsun: 55, istanbul: 34 }

Sonuncusunu tercih edin!

---

# 3.5 Range

İki değer aralığını gösterir,

    !ruby
    r = 1..10     # 10 dahil
    r = 1.0..10.0 # 10.0 hariç

Bu aralıkta bir değer olup-olmadığını sınamak için `include?`,

    !ruby
    cold_war = 1945..1989
    cold_war.include? birthdate.year

---

# Range Dolaşım

Elemanları üzerinde dolaşırken `each`,

    !ruby
    r = 'a'..'z'
    r.each{|c| p c} # => 'a', 'b', ..., 'z'

Adımlamak isterseniz `step`,

    !ruby
    r.step(2){|c| p c} # => 'a', 'c', ..., 'z'

Diziye dönüştürmek isterseniz: `to_a`. Ör. `r.to_a` veya `(1..4).to_a`

---

# 3.6 Semboller

Dizgilere oranla daha az maliyetli olmasından ötürü tercih edilir,

    !ruby
    :symbol                 # A Symbol literal
    :"symbol"               # The same literal
    :'another long symbol'  # Quotes are useful for symbols with spaces
    s = "string"
    sym = :"#{s}"           # The Symbol :string

Bir nesnenin herhangi bir yeteneğe (işleve) sahipliğini de bununla kontrol
ederiz,

    !ruby
    o.respond_to? :each

`o` nesnesinin `each` metodu var mı?

Tür dönüşümü mümkündür,

    !ruby
    str = "dizgi"
    sym = str.to_sym # VEYA sym = str.intern
    str = sym.to_s   # VEYA str = str.id2name

---

# 3.7 True, False, and Nil

- Mantık değerler: `true` ve `false`
- `nil` özel bir değerdir

Kod,

    !ruby
    o == nil # VEYA
    o.nil?

---

# 3.8 Nesneler

- Ruby'de her şey nesnedir

- Atama eylemi derinlemesine değer kopyalama yerine referans/etiket üretir

Örnek,

    !ruby
    s = "Ruby"   # s: String nesnesidir
    t = s        # t: s'ye referansdır
    t[-1] = 'X'  # t nesnesini güncelle
    print s      # s'yi yaz => 'RubX'!

    t = "Java"   # t: başka bir String nesnesi oldu
    p t, s       # "JavaRubX"!

---

# Nesne Ömrü

Oluşturulduklarında ömürleri başlar,

    !ruby
    o = Klass.new

İhtiyaç duyulmadığı anda öldürülür: garbage collector

---

# Nesne Sınıfları ve Türleri

En kolay yolu kendisine sormak,

    !ruby
    o = "test"
    o.class                       # => 'String' sınıfındadır
    o.class.superclass            # => 'Object'
    o.class.superclass.superclass # => 'nil'

Türe göre işler yapmak için,

    !ruby
    o.class == String      # => eğer `o` türü dizgiyse true üretir
    o.instance_of?(String) # => daha şıktır!

Kendisini buraya kadar getiren tüm sınıflar üzerinden tarama yapmak için,

    !ruby
    o = 4
    o.instance_of? Fixnum  # => true
    o.instance_of? Numeric # => false
    o.is_a? Fixnum         # => true
    o.is_a? Integer        # => true
    o.is_a? Numeric        # => true

---

# Nesne: Karşılaştırma

Karşılaştırma/sınama,

    !ruby
    Numeric === x          # => x is_a Numeric

`is_a?` yerine okunabilirliği artırmak için kullan!

---

# Nesne Eşitliği

`equal?`: iki nesnenin aynı nesne olup-olmadığını sınar,

    !ruby
    a = "Ruby"
    b = c = "Ruby"
    b.equal?(a)    # false
    b.equal?(c)    # true

    b.object_id == c.object_id

---

# == İşleci

`==` değer sınaması yapar,

    !ruby
    a = "Ruby"
    b = "Ruby"
    b.equal?(a)    # false
    a == b         # true

eşit değilse: `!=`

---

# eql? yöntemi

`==` tür dönüşümünü yaparken, `eql?` daha katı davranır,

    !ruby
    1 == 1.0    # true
    1.eql?(1.0) # false

---

# Diğer yaygın işleçler

Kodlar,

    !ruby
    /\d+/ === "123"   # true: düzenli ifade eşleştiğinden
    1 <=> 5           # -1: küçük (0: eşit, +1: büyük)
    1.between?(0, 10) # true: 0 <= 1 <= 10  # >

---

# Nesne Dönüşümleri

- Bilinçli `to_s, to_i, to_f, to_a, to_c, to_r`

- İmalı: `"Foo" + v + "Bar"`

---

# Dondurma

Nesneleri dondurabilirsiniz,

    !ruby
    s = "ice"
    s.freeze
    s.frozen?
    s.upcase!   # TypeError
    s[0] = "ni" # TypeError

---

# Bölüm 4: İfadeler ve İşleçler

Kod,

    !ruby
    2                # sayısal sabit (literal)
    x                # yerel değişkene referans
    Math.sqrt(2)     # işlev çağrısı
    x = Math.sqrt(2) # atama
    x * x            # çarpma-`*` işleci

---

# Sabitler

- `1.0, 'hello', []` birer sabittir.

- Bunlar dışında bazı anahtar kelimeler (sabitleri) vardır

   + nil
   + true | false
   + self
   + __FILE__
   + __LINE__
   + __ENCODING__

---

# Kısa kısa

Kodlar,

    !ruby
    o.m += 1
    o.m=(o.m() + 1)

    o[x] -= 2
    o.[]=(x, o.[](x) - 2)

`||=` işleci ilginçtir,

    !ruby
    d ||= []

`d` verilmediyse/atanmamışsa bunun sonucunda `[]` olur, atanmışsa değişmez.

---

# Paralel Atama

Kod,

    !ruby
    x, y, z = 1, 2, 3
    x = 1, 2, 3        # x = [1,2,3]
    x, = 1, 2, 3       # x = 1; diğerlerini göz ardı et
    x, y, z = [1, 2, 3]
    x = [1,2]
    x, = [1,2]         # x = 1

    x, y, z = 1, 2     # x=1; y=2; z=nil
    x, y = 1, 2, 3     # x=1; y=2; 3

    x, y, z = 1, *[2,3] #== (x,y,z = 1,2,3)

    x, *y = 1, 2, 3    # x=1; y=[2,3]
    x, *y = 1, 2       # x=1; y=[2]
    x, *y = 1          # x=1; y=[]

    *x, y = 1, 2, 3    # x=[1,2]; y=3

    x, y, *z = 1, *[2,3,4] # x=1; y=2; z=[3,4]

    x,y,z = 1,[2,3]    # x=1; y=[2,3]; z=nil
    x,(y,z) = 1,[2,3]  # x=1; y=2; z=3 #*

---

# Operator

Kısa kısa,

    !ruby
    (0b1011 << 1).to_s(2)   # => "10110" 11 << 1 => 22
    (0b10110 >> 2).to_s(2)  # => "101"   22 >> 2 => 5

---

# Bölüm 5: İfadeler ve Denetim Yapıları

---

# Koşullandırma: if

Koşul: if
:   genel olarak

        !ruby
        if ifade
          code
        end

Örnek,

    !ruby
    if x < 10
      x += 1
    end

    if x < 10 then z += 1 end

---

# else

Koşul: else
:   genel olarak

        !ruby
        if ifade
          code
        else
          code
        end

Örnek,

    !ruby
    if data
      data << x # >>
    else
      data = [x]
    end

---

# elsif

Koşul: elsif
:   genel olarak

        !ruby
        if ifade1
          code
        elsif ifade2
          code
        else
          code
        end

Örnek,

    !ruby
    if x == 1
      name = "bir"
    elsif x == 2
      name = "iki"
    elsif x == 3 then name = "uc"
    elsif x == 4; name = "dort"
    else
      name = "cok"
    end

---

# return

Örnek,

    !ruby
    name =  if    x == 1 then "bir"
            elsif x == 2 then "iki"
            elsif x == 3 then "uc"
            else              "cok"
            end

---

# Tek satırlı

Kod,

    !ruby
    # Bunun yerine
    if expression then code end

    # Bunu kullanabilirsiniz
    code if expression

Örnek,

    !ruby
    puts message if message

---

# unless

Şablon,

    !ruby
    unless ifade
      kod
    end

    unless ifade
      kod
    else
      kod
    end

    kod unless ifade

Örnek,

    !ruby
    s = unless o.nil?
          o.to_s
        end

    s = unless o.nil? then o.to_s end

    s = o.to_s unless o.nil?

---

# case

Örnek,

    !ruby
    name = case x
           when 1 then "bir"
           when 2 then "iki"
           when 3;     "uc"
           else        "cok"
           end

Ayrıca,

- `when 0..7550`
- `when /^\s*#/`
- `when nil, [], "", 0`

---

# ternary

Örnek,

    !ruby
    def how_many_messages(n)
      "You have " + n.to_s + (n==1 ? " message." : " messages.")
    end

---

# Döngü

- while, until, for

---

#   while ve until

Kod,

    !ruby
    x = 10
    while x >= 0 do # -u sürece
      puts x
      x = x - 1
    end

    x = 0
    until x > 10 do # -e kadar
      puts x
      x = x + 1
    end

---

#   Modifier

Kod,

    !ruby
    x = 0
    puts x = x + 1 while x < 10

    x = 0
    while x < 10 do puts x = x + 1 end

    a = [1, 2, 3]
    puts a.pop until a.empty?

do-while gibi kullanmak,

    !ruby
    x = 10
    begin
      puts x
      x = x - 1
    end until x == 0
---

#   for

Kod,

    !ruby
    for var in collection do
      body
    end

Örnek,

    !ruby
    array = [1,2,3,4,5]
    for element in array
      puts element
    end

    hash = {a: 1, b: 2, c: 3}
    for key, value in hash
      puts "#{key} => #{value}"
    end

`each`'i tercih edin,

    !ruby
    hash = {a: 1, b: 2, c: 3}
    hash.each do |key, value|
      puts "#{key} => #{value}"
    end

---

#   Iterator ve Enumerable

Kod,

    !ruby
    41.times { puts "Maasalah" }
    data.each {|x| puts x }
    [1,2,3].map {|x| x * x }

    factorial = 1
    2.upto(n) {|x| factorial * = x }

Burada
- `times`, `each`, `map` ve `upto` yöntemleri birer iteratördür
- _block_ ile etkileşime girer.
- karmaşık yapının arkasında `yield` durur

---

#   yield

`yield` ise iteratör içerisinde geçici olarak kontrol çağırana verilir

![](http://i.imgur.com/AcaK5.png)

---

#   Sayısal Iteratorler

`upto`,

    !ruby
    4.upto(6) {|x| print x} # => prints "456"

benzer şekilde `downto`.

`times`,

    !ruby
    3.times {|x| print x } # => prints "012"

`step`: `0:0.1:PI`,

    !ruby
    0.step(Math::PI, 0.1) {|x| puts Math.sin(x) }

---

#   Enumerable

`each`,

    !ruby
    [1,2,3].each {|x| print x } # => prints "123"
    (1..3).each  {|x| print x } # => prints "123" Same as 1.upto(3)

Input/Output,

    !ruby
    File.open(filename) do |f|    # Open named file, pass as f
      f.each {|line| print line } # Print each line in f
    end                           # End block and close file

`each_with_index`,

    !ruby
    File.open(filename) do |f|
      f.each_with_index do |line,number|
        print "#{number}: #{line}"
      end
    end

---

#   Kafiyeleri

`collect`: ~map,

    !ruby
    squares = [1,2,3].collect {|x| x * x} # => [1,4,9]

`select`,

    !ruby
    evens = (1..10).select {|x| x%2 == 0} # => [2,4,6,8,10]

`reject`,

    !ruby
    odds = (1..10).reject {|x| x%2 == 0} # => [1,3,5,7,9]

`inject`,

    !ruby
    data = [2, 5, 3, 4]
    sum = data.inject {|sum, x| sum + x }       # => 14 (2+5+3+4)

    floatprod = data.inject(1.0) {|p,x| p * x } # => 120.0 (1.0 * 2 * 5 * 3 * 4)
    max = data.inject {|m,x| m>x ? m : x }      # => 5 (largest element)

---

#   Sıra sizde

- Faktoriyel
- Fibonacci
- Min
- Mean

---

#   Iterator Yazma

Yöntem içerisinde `yield` kullan ve çağrıda blok ile işle,

    !ruby
    def twice
      yield
      yield
    end

Örnek,

    !ruby
    # Görev: m * i + c, i=0..n-1
    def sequence(n, m, c)
      i = 0
      while(i < n)
        yield m * i + c
        i += 1
      end
    end

    sequence(3, 5, 1) {|y| puts y}

---

#   Iterator: circle

Örnek,

    !ruby
    # Gorev: n noktali, (0,0)'da konumlu, r yaricapli cember
    def circle(r, n)
      n.times do |i|
        angle = Math::PI * 2 * i / n
        yield r * Math.cos(angle), r * Math.sin(angle)
      end
    end

    circle(1, 4) {|x,y| printf "(%.2f, %.2f) ", x, y }
    # (1.00, 0.00) (0.00, 1.00) (-1.00, 0.00) (-0.00, -1.00)

---

#   block_given?

Bloğun olup-olmamasına göre işler yapmak,

    !ruby
    def sequence(n, m, c)
      i, s = 0, []
      while(i < n)
        y = m * i + c
        yield y if block_given?
        s << y
        i += 1
      end
      s
    end

burada,

1. beşinci satırda ki `block_given?` a dikkat!
2. dokuzuncu satırda ki `s` (~ return s)

---

#   Enumerator

Kod,

    !ruby
    "hello".chars.map {|c| c.succ } # => ["i", "f", "m", "m", "p"]

Enumarator'le,

    !ruby
    s = "hello"
    s.enum_for(:each_char).map {|c| c.succ } # => ["i", "f", "m", "m", "p"]

Neden?

- String, Enumarable değildir!
- `each_char, each_byte, each_line` olarak üç Iterator'e sahiptir

---

#   Kısa kısa

Kod,

    !ruby
    enumerator = 3.times              # An enumerator object
    enumerator.each {|x| print x }    # Prints "012"

    # downto returns an enumerator with a select method
    10.downto(1).select {|x| x%2==0}  # => [10,8,6,4,2]

    # each_byte iterator returns an enumerator with a to_a method
    "hello".each_byte.to_a            # => [104, 101, 108, 108, 111]

Kısa kısa,

    !ruby
    > 3.times
    #<Enumerator: ...>
    > "hello".each_byte
    #<Enumerator: ...>

---

#   Örnek

Daha önce ki kodu refaktör edelim,

    !ruby
    def twice
      if block_given?
        yield
        yield
      else
        self.to_enum(:twice)
      end
    end

Test,

    !ruby
    > enum_for(:twice).map {"foo"}
    => ["foo", "foo"]
    > twice {"bar"}
    => "bar"
    > twice {p "baz"}
    "baz"
    "baz"

---

#   with_index

`with_index`,

    !ruby
    > s = "abc"
    > s.each_char
    #<Enumerator: ...>
    > s.each_char.with_index
    #<Enumerator: ...>
    > s.each_char.with_index.map {|c,i| p "s[#{i}] = #{c}" }
    "s[0] = a"
    "s[1] = b"
    "s[2] = c"
    => ["s[0] = a", "s[1] = b", "s[2] = c"]

IO,

    !ruby
    for line, number in text.each_line.with_index
      print "#{number+1}: #{line}"
    end

---

#   External Iterator

İstemci kontrol edebildiklerine _external_ diyoruz. `next` ve `StopIteration`,

    !ruby
    iterator = 9.downto(1)
    begin
      print iterator.next while true
    rescue StopIteration
      puts "..... piiisst!"
    end

`loop` ile güzelleştir,

    !ruby
    iterator = 9.downto(1)
    loop do # StopIteration'e kadar
      print iterator.next
    end
    puts "..... piiisst!"

`rewind` bir çoğunda işe yarar

---

#   Üst seviye: Iterable + Enumerable

Hedef,

    !ruby
    iterate(9.downto(1)) {|x| print x }

Önce, Iterable'a each yeteneği kazandıralım,

    !ruby
    module Iterable
      include Enumerable
      def each
        loop { yield self.next }
      end
    end

Şimdi yöntemi tasarla,

    !ruby
    def iterate(iterator)
      loop { yield iterator.next }
    end

Daha fazlası: s139: Example 5-1. Parallel iteration with external iterators

---

#   5.4 Bloklar

