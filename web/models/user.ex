defmodule SsShare.User do
    use Ecto.Model
    schema "users" do
      field :smethod, :string
      field :host, :string
      field :pwd, :string
      field :created_at, :datetime, default: Ecto.DateTime.local
      field :updated_at, :datetime, default: Ecto.DateTime.local
    end
end
