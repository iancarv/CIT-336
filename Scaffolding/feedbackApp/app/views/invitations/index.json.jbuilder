json.array!(@invitations) do |invitation|
  json.extract! invitation, :id, :email, :accepted, :user_id
  json.url invitation_url(invitation, format: :json)
end
