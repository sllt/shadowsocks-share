defmodule SsShare.PageView do
  use SsShare.View

  def shadowsocks do
    [head | tail] = SsShare.Repo.all(SsShare.User)
    "#{head.smethod}"
  end
  
  
end
