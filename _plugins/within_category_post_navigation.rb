module Jekyll
  class WithinCategoryPostNavigation < Generator
    def generate(site)
      site.categories.each_pair do |category, posts|

        posts.sort! { |a,b| b <=> a }

        if posts.length == 0
          return
        end

        if posts.length == 1
          posts[0].data["next_in_category"] = nil
          posts[0].data["previous_in_category"] = nil
          return
        end

        if posts.length == 2
          posts[0].data["next_in_category"] = posts[1]
          posts[0].data["previous_in_category"] = nil
          posts[1].data["next_in_category"] = nil
          posts[1].data["previous_in_category"] = posts[0]
          return
        end

        for i in 1 .. (posts.length - 2)
          posts[i].data["next_in_category"] = posts[i+1]
          posts[i].data["previous_in_category"] = posts[i-1]
        end
        posts[0].data["next_in_category"] = posts[1]
        posts[0].data["previous_in_category"] = nil
        posts[posts.length - 1].data["next_in_category"] = nil
        posts[posts.length - 1].data["previous_in_category"] = posts[posts.length - 2]

      end
    end
  end
end
