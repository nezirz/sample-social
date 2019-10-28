class RenameFollowingIdToFollowerId < ActiveRecord::Migration[5.2]
  def change
    rename_column :relationships, :following_id, :follower_id
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
