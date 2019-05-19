if Rails.env == 'poduction'
    (1..10).each do |i|
        Post.create(name: "ユーザ#{i}", title: "タイトル#{i}", content: "本文#{i}")
    end
    Tag.create([
        { name: 'n' },
        { name: 'x' },
        { name: 'ibd' },
        { name: 'tre' },
        { name: 'かわいい' },
        { name: 'キレイ' }
    ])

end
