module ApplicationHelper
		def generate_radio_boxes model, attrib, collection
		collection_radio_buttons model, attrib, collection, :first, :first, checked: 'non_specified' do |l|
			l.radio_button +
				l.label do
					l.object.first.titleize
				end
		end
	end
end
