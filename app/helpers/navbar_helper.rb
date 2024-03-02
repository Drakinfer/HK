module NavbarHelper
  def navbar_content
    if controller_path.start_with?('admin/')
      render 'layouts/navbar_admin'
    else
      render 'layouts/navbar'
    end
  end
end