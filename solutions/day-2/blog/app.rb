# /---------------------------------------------------------
#  ------------------------- SETUP -------------------------
#  ---------------------------------------------------------/

class Blog
  def initialize
    @posts = []
    @page_start = 0
    @page_end = 2
  end

  def add_post(new_post)
    @posts.push(new_post)
  end

  def go_next
    # 0..2   ->   3..5
    @page_start += 3
    @page_end += 3
  end

  def go_prev
    # 6..8   ->   3..5
    @page_start -= 3
    @page_end -= 3
  end

  def print_current_page
    puts ""

    # @page_start = 6
    # @page_end = 8
    current_posts = @posts[@page_start..@page_end]
    # @posts[6..8]

    current_posts.each do |the_post|
      the_post.print
    end
  end
end

# ----------

class Post
  attr_accessor(:title, :date, :text)

  def initialize(title, date, text)
    @title = title
    @date = date
    @text = text
  end

  def print
    puts @title
    puts "------------"
    puts @text
    puts ""
    puts "<=================>"
    puts ""
  end
end

# ----------

seconds_in_day = 60 * 60 * 24

# Examples of using Time:

# 78 hours ago:
seventy_eight_hours = Time.now + 78 * 60 * 60

# Tomorrow:
tomorrow = Time.now + 24 * 60 * 60

# Displaying the time in a pretty format
tomorrow.strftime("Tomorrow is: %A, %B %-d %Y")



# /---------------------------------------------------------
#  ------------------- APPLICATION CODE --------------------
#  ---------------------------------------------------------/


# posts = [ 0, 1, 2,    3, 4, 5,     6, 7, 8,     9, 10, 11,    12, 13 ]
#           -------     -------      -------      ---------     ------

# posts.slice(6, 3)

#   0    1    2    3    4    5    6    7
# ["a", "b", "c", "d", "e", "f", "g", "h"]
#                           -------------

# posts.slice(5, 3)


the_blog = Blog.new
the_blog.add_post Post.new("First", Time.now - 4 * seconds_in_day, "First text")
the_blog.add_post Post.new("Second", Time.now - 3 * seconds_in_day, "Second text")
the_blog.add_post Post.new("Third", Time.now - 2 * seconds_in_day, "Third text")
the_blog.add_post Post.new("Fourth", Time.now - 1 * seconds_in_day, "Fourth text")
the_blog.add_post Post.new("Fifth", Time.now, "Fifth text")
the_blog.add_post Post.new("Sixth", Time.now, "Sixth text")
the_blog.add_post Post.new("Seventh", Time.now, "Seventh text")
the_blog.add_post Post.new("Eighth", Time.now, "Eighth text")
the_blog.add_post Post.new("Ninth", Time.now, "Ninth text")
the_blog.add_post Post.new("Tenth", Time.now, "Tenth text")
the_blog.add_post Post.new("Eleventh", Time.now, "Eleventh text")
the_blog.add_post Post.new("Twelth", Time.now, "Twelth text")
the_blog.add_post Post.new("Thirtheenth", Time.now, "Thirtheenth text")
the_blog.add_post Post.new("Fourteenth", Time.now, "Fourteenth text")

the_blog.print_current_page


input = nil

while input != "exit"
  puts "\nType [next] to see the next page or [prev] to see the previous page."
  input = gets.chomp

  if input == "next"
    the_blog.go_next
  elsif input == "prev"
    the_blog.go_prev
  end

  the_blog.print_current_page
end
