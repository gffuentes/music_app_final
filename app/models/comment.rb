class Comment < ActiveRecord::Base
	belongs_to :user
	belongs_to :room
	after_create {|comment| comment.message 'create' }
  after_update {|comment| comment.message 'update' }
  after_destroy {|comment| comment.message 'destroy' }

	  def message action
    msg = { resource: 'comments',
            action: action,
            id: self.id,
            obj: self }

    $redis.publish 'rt-change', msg.to_json
  end
end
