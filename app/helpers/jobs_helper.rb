module JobsHelper

	def generate_radio_boxes
		collection_radio_buttons :job, :level, Job.levels, :first, :first do |l|
			l.radio_button +
				l.label do
					l.object.first.titleize
				end
		end
	end
end
