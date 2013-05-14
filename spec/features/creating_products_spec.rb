require 'spec_helper'
describe "new product" do
  before do

    visit '/shelves/new'
    fill_in 'Name',:with=> 'Cleaning Materials'
    fill_in 'Description',:with=> 'Wide Range of Cleaning Materials'
    click_button 'Create'
  end
  it "displays the success message picture was added and product successfully assigned to a shelf " do
    #shelf = FactoryGirl.create(:shelf, :name => "Cleaning Materials", :description => "Cleaning materials for test")

    visit "/"
    click_link "New Product"
    fill_in "Name", :with => "Soap"
    fill_in "Description", :with => "Organic Soap"
    select "Cleaning Materials", :from => "Shelf"

    #select 'Shelf'=>'Cleaning Materials'
    attach_file 'Product Picture', 'spec/pictures/fightclub.jpg'
    click_button "Create"

    page.should have_text "Product was successfully created"
    end

  it "displays the error message after wrong type of file was attached as a picture and product did not created" do
    #shelf = FactoryGirl.create(:shelf, :name => "Cleaning Materials", :description => "Cleaning materials for test")

    visit "/"
    click_link "New Product"
    fill_in "Name", :with => "Soap"
    fill_in "Description", :with => "Organic Soap"
    select "Cleaning Materials", :from => "Shelf"

    #select 'Shelf'=>'Cleaning Materials'
    attach_file 'Product Picture', 'spec/pictures/fightclub_text'
    click_button "Create"

    page.should have_text "Image content type is invalid"
    end

  it "displays the error message after pictures was not attached" do
    #shelf = FactoryGirl.create(:shelf, :name => "Cleaning Materials", :description => "Cleaning materials for test")

    visit "/"
    click_link "New Product"
    fill_in "Name", :with => "Soap"
    fill_in "Description", :with => "Organic Soap"
    select "Cleaning Materials", :from => "Shelf"

    #select 'Shelf'=>'Cleaning Materials'
    click_button "Create"

    page.should have_text "Image can't be blank"
  end
end