# User.create!([
#   {email: "nleung320+test@gmail.com", encrypted_password: "$2a$10$hlrUEvryJy0HE9TYTYWH5.88Wsa.HOLIOFP6yepgBUnNQpg85cu9a", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-11-26 00:46:03", last_sign_in_at: "2015-11-26 00:46:03", current_sign_in_ip: "::1", last_sign_in_ip: "::1"}
# ])
Image.create!([
  {url: "http://www.kerryleung.com/uploads/4/9/7/5/4975444/s843155839916613551_p4_i1_w640.jpeg", product_id: 1},
  {url: "http://www.kerryleung.com/uploads/4/9/7/5/4975444/s843155839916613551_p5_i1_w640.jpeg", product_id: 2},
  {url: "http://www.kerryleung.com/uploads/4/9/7/5/4975444/s843155839916613551_p6_i1_w640.jpeg", product_id: 3},
  {url: "http://www.kerryleung.com/uploads/4/9/7/5/4975444/s843155839916613551_p7_i1_w640.jpeg", product_id: 4},
  {url: "http://g03.a.alicdn.com/kf/HTB1NCxwIVXXXXcFaXXXq6xXFXXXB/Bamboo-Flute-Dizi-C-D-E-F-G-a-Key-Transverse-Bamboo-Flute-Two-Section-Flauta.jpg", product_id: 1},
  {url: "http://g01.a.alicdn.com/kf/HTB1XygOJXXXXXXNXVXXq6xXFXXXp/Chinese-Bamboo-Flute-Nan-Xiao-Japanese-Shakuhachi-G-F-key-Vertical-Woodwind-Professional-Musical-Instrument-8.jpg", product_id: 2},
  {url: "http://g02.a.alicdn.com/kf/HTB1AHyxIVXXXXbkXVXXq6xXFXXXR/Professional-Environmental-Purple-Bamboo-Flute-Xiao-Instrument-Chinese-Shakuhachi-2-Sections-China-classical-culture.jpg", product_id: 3},
  {url: "http://ecx.images-amazon.com/images/I/414ito8BN-L._SY355_.jpg", product_id: 4},
  {url: "http://ecx.images-amazon.com/images/I/71xL1naYEOL._SL1500_.jpg", product_id: 1},
  {url: "http://smartduckyderby.com/wp-content/uploads/2010/07/rubber-ducky.jpg", product_id: 5},
  {url: "http://img.ffffound.com/static-data/assets/6/912142646a1829d7ef4cbd6a9d17c170d6aaea4f_m.jpg", product_id: 6}
])
Order.create!([
  {user_id: 1, product_id: nil, quantity: 12, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, product_id: 1, quantity: 13, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, product_id: 4, quantity: 37, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, product_id: 1, quantity: 3, subtotal: "557.97", tax: "57.19", total: nil},
  {user_id: 1, product_id: 3, quantity: 2, subtotal: "501.98", tax: "51.45", total: "553.43"},
  {user_id: 1, product_id: 4, quantity: 2, subtotal: "101.98", tax: "10.45", total: "112.43"},
  {user_id: 1, product_id: 3, quantity: 3, subtotal: "752.97", tax: "77.18", total: "830.15"},
  {user_id: 1, product_id: 3, quantity: 3, subtotal: "752.97", tax: "77.18", total: "830.15"},
  {user_id: 1, product_id: 4, quantity: 123, subtotal: "6271.77", tax: "642.86", total: "6914.63"},
  {user_id: 1, product_id: 2, quantity: 10, subtotal: "2759.9", tax: "282.89", total: "3042.79"},
  {user_id: 1, product_id: 1, quantity: 39, subtotal: "7253.61", tax: "743.5", total: "7997.11"}
])
Product.create!([
  {name: "Transverse Bass Flute", price: "185.99", description: "Horizontal bamboo Dizi with a deeper tone. Available in B-flat, A, and G keys.", in_stock: false, supplier_id: 1},
  {name: "Southern Chinese Style Bamboo Vertical Flute", price: "275.99", description: "Bamboo Xiao in key of F. Rich and deep tone.", in_stock: false, supplier_id: 2},
  {name: "Purple Bamboo Xiao", price: "250.99", description: "Master made purple bamboo vertical Xiao flute. ", in_stock: true, supplier_id: 1},
  {name: "Purple Bamboo Ba Wu", price: "50.99", description: "Recorder-like flute with reed. Available in Keys of F and G.", in_stock: true, supplier_id: 2},
  {name: "Test", price: "1.0", description: "Test", in_stock: true, supplier_id: 1},
  {name: "test", price: "13.93", description: "test!", in_stock: nil, supplier_id: 2}
])
Supplier.create!([
  {name: "Guangzhou Flutes", email: "gz@email.com", phone: "123-123-1234"},
  {name: "Beijing Flutes", email: "bj@email.com", phone: "321-321-3214"}
])
