module HackersHelper

  def status_link hacker
    if hacker.active?
      link_to "Desactivar" , activate_hacker_path(hacker), class: 'btn btn-danger btn-xs' ,  :method => :put
    else
      link_to "Activar" ,   activate_hacker_path(hacker), class: 'btn btn-success btn-xs' , :method => :put
    end
  end
end
