if Rails.env.production?
	TimeSpan.delete_all
	TimeSpan.create(:months => 1)
	TimeSpan.create(:months => 2)
	TimeSpan.create(:months => 3)
	TimeSpan.create(:months => 4)
	TimeSpan.create(:months => 5)
	TimeSpan.create(:months => 6)
	TimeSpan.create(:months => 7)
	TimeSpan.create(:months => 8)
	TimeSpan.create(:months => 9)
	TimeSpan.create(:months => 10)
	TimeSpan.create(:months => 11)
	TimeSpan.create(:months => 12)
	TimeSpan.create(:months => 18)
	TimeSpan.create(:months => 24)
end