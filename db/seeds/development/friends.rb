names = ["鈴木啓介", "藤野大気", "渡部日奈子", "水野雪香", "土屋元", "櫻井ももか", "印旛咲"]

0.upto(6) do |idx|
    Friend.create(
        name: names[idx]
    )
end