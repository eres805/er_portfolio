use Rack::Static,
  :urls => ["/images", "/stylesheets", "/font-awesome", "/fonts", "/js", "/less"],
  :root => "public"

 run lambda { |env|
  [
    200, 
    {
      'Content-Type'  => 'text/html', 
      'Cache-Control' => 'public, max-age=86400' 
    },
    File.open('views/layout.erb', File::RDONLY)
  ]
}