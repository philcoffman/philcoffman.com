module Jekyll
    class PostIndex < Generator
        safe true
        priority :low
        def generate(site)
            site.posts.docs.each_with_index do |item, index|
                item.data['index'] = [index+1]
            end
        end
    end
end
