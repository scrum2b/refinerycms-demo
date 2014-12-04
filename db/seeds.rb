# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# # Added by Refinery CMS Pages extension
# Refinery::Pages::Engine.load_seed

if Refinery::Page.where(menu_match: "^/$").empty?
  home_page = Refinery::Page.create!(
    title: "Home",
    deletable: false,
    link_url: "/",
    menu_match: "^/$"
  )
  home_page.parts.create(
    title: "Body",
    body: "<div class='page-title page-home'>
        <div class='container'>
        	<h1><a href='/events' title='Events'></a>RUBY ON RAILS</h1>
        </div>
      </div>
      <div id='hero_primary'>
      	<div class='container'>
      		<h1>QUIS NOSTRUD EXERCITATION ULLAMCO LABORIS NISI UT ALIQUIP.</h1>
      		<h2>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua exercitation ullamco laboris. </h2>
      	</div>
      </div>

      <div id='hero_red'>
      	<div class='container'>
      		<img style='-webkit-user-select: none' src='https://d2c796fw38dva6.cloudfront.net/assets/ruby-382e6fc56266197ea526f5af51147bdc.png' />
      		<h2>Ut ENIM ad MINIM veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</h2>
      		<h3><a href='/projects' title='Projects'>VIEW PROJECTS</a>
      </h3>
      	</div>
      </div>

      <div class='intro'>
      	<div class='container'>
          <h2 class='text-align-center'> News </h2>
          <div style='overflow: auto;'>
          	<div class='intro-left'>
      				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </p>
      	       <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum, Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.</p>
      			</div>
      			<div class='intro-right'>
      				<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
      			</div>
          </div>
          <p class='text-align-center'><a href='/news' title='News'>VIEW NEWS</a>
      </p>
      	</div>
      </div>

      <div id='introduce-event'>
      	<div class='container'>
      		<h1 class='text-align-center'>Voluptate velit esse cillum dolore eu fugiat nulla pariatur</h1>
      		<h3 class='text-align-center'>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</h3>
      		
      		<div class='top-image-event'>
      			<div class='image-event'>
      				<img src='http://demo.joomseller.com/jse_event/components/com_jse_event/templates/default/assets/img/default_event.gif' />
      			</div>
      			<div class='image-event'>
      				<img src='http://demo.joomseller.com/jse_event/components/com_jse_event/templates/default/assets/img/default_event.gif' />
      			</div>
      			<div class='image-event'>
      				<img src='http://demo.joomseller.com/jse_event/components/com_jse_event/templates/default/assets/img/default_event.gif' />
      			</div>
      		</div>

      		<p class='text-align-center'> <a href='/events' title='Events'>VIEW EVENTS</a>
      </p>
      	</div>
      </div>

      <div id='introduce-blog'>
      	<div class='container'>
      		<h1 class='text-align-center'>Recent Blog Posts</h1>
      		<h2>Excepteur sint occaecat cupidatat non proident</h2>
      		<p>Cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
      		<h3>Excepteur sint occaecat cupidatat non proident</h3>
      		<p>Cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
      		<h3>Excepteur sint occaecat cupidatat non proident</h3>
      		<p>Cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
      		<p class='text-align-center'> <a href='/blog' title='Blog'>VIEW BLOG POSTS</a>
      </p>
      	</div>
      </div>",
    position: 0
  )
  home_page.parts.create(
    title: "Side Body",
    body: "",
    position: 1
  )

  home_page_position = -1
  page_not_found_page = home_page.children.create(
    title: "Page not found",
    menu_match: "^/404$",
    show_in_menu: false,
    deletable: false
  )
  page_not_found_page.parts.create(
    title: "Body",
    body: "<div class='container'><h2>Sorry, there was a problem...</h2><p>The page you requested was not found.</p><p><a href='/'>Return to the home page</a></p></div>",
    position: 0
  )

  if Refinery::Page.by_title("About").empty?
    about_us_page = ::Refinery::Page.create(
      title: "About",
      :show_in_menu => false
    )
    about_us_page.parts.create(
      title: "Body",
      body: " <div class='container'><p>This is just a standard text page example. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin metus dolor, hendrerit sit amet, aliquet nec, posuere sed, purus. Nullam et velit iaculis odio sagittis placerat. Duis metus tellus, pellentesque ut, luctus id, egestas a, lorem. Praesent vitae mauris. Aliquam sed nulla. Sed id nunc vitae leo suscipit viverra. Proin at leo ut lacus consequat rhoncus. In hac habitasse platea dictumst. Nunc quis tortor sed libero hendrerit dapibus.\n\nInteger interdum purus id erat. Duis nec velit vitae dolor mattis euismod. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Suspendisse pellentesque dignissim lacus. Nulla semper euismod arcu. Suspendisse egestas, erat a consectetur dapibus, felis orci cursus eros, et sollicitudin purus urna et metus. Integer eget est sed nunc euismod vestibulum. Integer nulla dui, tristique in, euismod et, interdum imperdiet, enim. Mauris at lectus. Sed egestas tortor nec mi.</p></div>",
      position: 0
    )
    about_us_page.parts.create(
      title: "Side Body",
      body: "<div class='container'><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus fringilla nisi a elit. Duis ultricies orci ut arcu. Ut ac nibh. Duis blandit rhoncus magna. Pellentesque semper risus ut magna. Etiam pulvinar tellus eget diam. Morbi blandit. Donec pulvinar mauris at ligula. Sed pellentesque, ipsum id congue molestie, lectus risus egestas pede, ac viverra diam lacus ac urna. Aenean elit.</p></div>",
      position: 1
    )
  end
end

Refinery::I18n.frontend_locales.each do |lang|
  I18n.locale = lang
  {'home' => "Home",
   'page-not-found' => 'Page not found',
   'about' => 'About'
  }.each do |slug, title|
    Refinery::Page.by_title(title).each do |page|
      page.update_attributes slug: slug
    end
  end
end

I18n.locale = ::Refinery::I18n.default_locale


# Added by Refinery CMS News engine
# Refinery::News::Engine.load_seed

if defined?(::Refinery::User)
  ::Refinery::User.all.each do |user|
    if user.plugins.where(:name => 'refinerycms_news').blank?
      user.plugins.create(:name => 'refinerycms_news')
    end
  end
end

if defined?(::Refinery::Page)
  unless ::Refinery::Page.where(:menu_match => "^/news.*$").any?
    page = ::Refinery::Page.create(
      :title => "News",
      :link_url => "/news",
      :deletable => false,
      :menu_match => "^/news.*$"
    )

    page.parts.create(
    	title: "Body",
    	:body => "<div class='page-title page-news'>
								<div class='container'>
									<h1>NEWS</h1>
								</div>
							</div>"
    )
  end
end

# Added by RefineryCMS Copywriting engine
Refinery::Copywriting::Engine.load_seed

# Added by Refinery CMS Events extension
# Refinery::Events::Engine.load_seed

if defined?(::Refinery::Page)
  unless ::Refinery::Page.where(:menu_match => "^/events.*$").any?
    page = ::Refinery::Page.create(
      :title => "Events",
      :link_url => "/events",
      :deletable => false,
      :menu_match => "^/events.*$"
    )
    
    page.parts.create(
    	title: "Body", 
    	:body => "<div class='page-title page-events'>
								<div class='container'>
									<h1>EVENT</h1>
								</div>
							</div>
							"
    )
  end
end

# Add page Project
# Refinery::Events::Engine.load_seed

if defined?(::Refinery::Page)
  if Refinery::Page.where(menu_match: "^/projects.*$").empty?
    page_projects = ::Refinery::Page.create(
      :title => "Projects",
      :deletable => false,
      :menu_match => "^/projects.*$"
    )
    
    page_projects.parts.create(
      title: "Body", 
      :body => "<div class='page-title page-project'>
        <div class='container'>
          <h1>PROJECTS</h1>
        </div>
      </div>

      <div id='project'>
        <div class='container'>
          <div class='project-row'>
            <div class='logo-project'>
              <img src='https://d2c796fw38dva6.cloudfront.net/assets/ruby-382e6fc56266197ea526f5af51147bdc.png' />
            </div>
            <div class='content-project'>
              <h3>Name Project</h3>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
            tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
            quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
            consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
            cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
            proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>
            </div>
          </div>
        </div>
      </div>

      <div id='project'>
        <div class='container'>
          <div class='project-row'>
            <div class='logo-project'>
              <img src='https://d2c796fw38dva6.cloudfront.net/assets/ruby-382e6fc56266197ea526f5af51147bdc.png' />
            </div>
            <div class='content-project'>
              <h3>Name Project</h3>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
            tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
            quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
            consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
            cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
            proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>
            </div>
          </div>
        </div>
      </div>

      <div id='project'>
        <div class='container'>
          <div class='project-row'>
            <div class='logo-project'>
              <img src='https://d2c796fw38dva6.cloudfront.net/assets/ruby-382e6fc56266197ea526f5af51147bdc.png' />
            </div>
            <div class='content-project'>
              <h3>Name Project</h3>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
            tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
            quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
            consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
            cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
            proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>
            </div>
          </div>
        </div>
      </div>"
    )
    page_projects.parts.create(
      title: "Side Body",
      body: "",
      position: 1
    )
  end
end

# # Added by Refinery CMS Blog engine
# Refinery::Blog::Engine.load_seed

Refinery::User.all.each do |user|
  if user.plugins.where(:name => 'refinerycms_blog').blank?
    user.plugins.create(:name => "refinerycms_blog",
                        :position => (user.plugins.maximum(:position) || -1) +1)
  end
end if defined?(Refinery::User)

if defined?(Refinery::Page) and !Refinery::Page.exists?(:link_url => '/blog')
  page = Refinery::Page.create(
    :title => "Blog",
    :link_url => "/blog",
    :deletable => false,
    :menu_match => "^/blogs?(\/|\/.+?|)$"
  )

    page.parts.create(
      title: "Body",
      :body => "<div class='page-title page-blog'>
                  <div class='container'>
                    <h1>BLOG</h1>
                  </div>
                </div>
                ", 
      :position => 1
    )
end

# # Added by Refinery CMS Inquiries engine
# Refinery::Inquiries::Engine.load_seed

if defined?(::Refinery::Page)

  contact_us_page = ::Refinery::Page.create({
    :title => "Contact",
    :link_url => "/contact",
    :menu_match => "^/inquiries.*$",
    :show_in_menu => false,
    :deletable => false
  })
  contact_us_page.parts.create({
    :title => "Body",
    :body => "<div class='page-title page-contact'>
                <div class='container'>
                  <h1>CONTACT</h1>
                </div>
              </div>

              <div class='container'><h3 class='text-align-center'>Get in touch with us. Just use the form below and we'll get back to you as soon as we can.</h3></div>",
    :position => 0
  })
  contact_us_page.parts.create({
    :title => "Side Body",
    :body => "",
    :position => 1
  })


  unless Refinery::Page.by_title('Thank You').any?
    thank_you_page = contact_us_page.children.create({
      :title => "Thank You",
      :link_url => "/contact/thank_you",
      :menu_match => "^/inquiries/thank_you.*$",
      :show_in_menu => false,
      :deletable => false
    })
    thank_you_page.parts.create({
      :title => "Body",
      :body => "<div class='container'><p>We've received your inquiry and will get back to you with a response shortly.</p><p><a href='/'>Return to the home page</a></p></div>",
      :position => 0
    })
  end

  unless Refinery::Page.by_title('Privacy Policy').any?
    privacy_policy_page = contact_us_page.children.create({
      :title => "Privacy Policy",
      :deletable => true,
      :show_in_menu => false
    })
    privacy_policy_page.parts.create({
      :title => "Body",
      :body => "<div class='container'><p>We respect your privacy. We do not market, rent or sell our email list to any outside parties.</p><p>We need your e-mail address so that we can ensure that the people using our forms are bona fide. It also allows us to send you e-mail newsletters and other communications, if you opt-in. Your postal address is required in order to send you information and pricing, if you request it.</p><p>Please call us at 123 456 7890 if you have any questions or concerns.</p></div>",
      :position => 0
    })
  end
end

(Refinery::Inquiries::Setting.methods.sort - Refinery::Setting.methods).each do |setting|
  Refinery::Inquiries::Setting.send(setting) if setting.to_s !~ /=\z/
end