require_relative '../test_helper'
class ListingTest < MiniTest::Test
  def app
    ListingsController
  end

  def test_listing_attributes
    listing = Listing.new

    assert listing.respond_to?(:title), 'should have title attribute'
    assert listing.respond_to?(:description)
    assert listing.respond_to?(:price)
    assert listing.respond_to?(:image)
    assert listing.respond_to?(:user)
    assert listing.respond_to?(:college)
    assert listing.respond_to?(:spam)
    assert listing.respond_to?(:deleted)
    assert listing.respond_to?(:sold)
    assert listing.respond_to?(:markings)
    assert listing.respond_to?(:quality)
    assert listing.respond_to?(:torn)
    assert listing.respond_to?(:edition)
  end

  # test validations
  def test_title_present
    listing = build(:listing)
    listing.title = nil

    assert !listing.valid?
    assert !listing.save
    assert !listing.errors.empty?
  end

  def test_price_present_and_numerical
    listing = build(:listing)
    listing.price = nil

    assert !listing.valid?
    assert !listing.save
    assert !listing.errors.empty?

    listing.price = 'foo'

    assert !listing.valid?
    assert !listing.save
    assert !listing.errors.empty?
  end

  def test_user_present
    listing = build(:listing)
    listing.user = nil

    assert !listing.valid?
    assert !listing.save
    assert !listing.errors.empty?
  end

  def test_college_present
    listing = build(:listing)
    listing.college = nil

    assert !listing.valid?
    assert !listing.save
    assert !listing.errors.empty?
  end

  # test the default paramerters listing is created with

  def test_newly_created_listing_is_not_spam
    listing = create :listing
    assert !listing.spam?
  end

  def test_newly_created_listing_is_not_sold
    listing = create :listing
    assert !listing.sold?
  end

  def test_newly_created_listing_is_not_deleted
    listing = create :listing
    assert !listing.deleted?
  end

  # images
  def test_image_upload


  end
end