require 'rails_helper'



describe 'navigate' do
  let(:user) { FactoryGirl.create(:user) }
  let(:post) do
    Post.create(date: Date.today, work_performed: 'asdfasdf', daily_hours: 2.5, user_id: user.id)
  end
  before do
    login_as(user, :scope => :user)
  end

  describe 'index' do

    before do
      visit posts_path
    end

    it 'can be reached successfully' do
      expect(page.status_code).to eq(200)
    end

    it 'has a title of Posts' do
      expect(page).to have_content(/Posts/)
    end

    it 'has a list of posts' do
      post1 = FactoryGirl.build_stubbed(:post)
      post2 = FactoryGirl.build_stubbed(:second_post)
      page.refresh
      expect(page).to have_content(/Work Performed|Content/)
    end

    it 'has a scope so that only post creators can see their posts' do

      other_user = User.create(first_name: 'Non',
                               last_name: 'Authorized',
                               email: 'asdf@asdf.com',
                               password: 'asdfasdf',
                               password_confirmation: 'asdfasdf',
                               phone: '5555555')
      post_from_other_user = Post.create(date: Date.today, work_performed: "This post shouldn't be seen", daily_hours: 2.5, user_id: other_user.id)

      visit posts_path
      expect(page).to_not have_content(/This post shouldn't be seen/)
    end
  end

  describe 'new' do
    it 'has a link from the home page is an employee is logged in' do
      employee = FactoryGirl.create(:employee)
      login_as(employee, scope: :user)
      visit root_path
      click_link('new_post_from_nav')
      expect(page.status_code).to eq(200)
    end
  end

  describe 'delete' do
    it 'can be deleted' do
      logout(user)

      delete_user = FactoryGirl.create(:user)
      login_as(delete_user, scope: :user)

      post_to_delete = Post.create(date: Date.today, work_performed: 'asdfasdf', daily_hours: 2.5, user_id: delete_user.id)

      visit posts_path
      click_link("delete_post_#{post_to_delete.id}")
      expect(page.status_code).to eq(200)
    end
  end

  describe 'creation' do
    before do
      visit new_post_path
    end

    it 'has a new form that can be reached' do
      expect(page.status_code).to eq(200)
    end

    it 'can be created from new form page' do
      fill_in 'post[date]', with: Date.today
      fill_in 'post[work_performed]', with: 'Some rationale'
      fill_in 'post[daily_hours]', with: 4.5
      click_on 'Save'
      expect(page).to have_content('Some rationale')
    end

    it 'will have a user associated it' do
      fill_in 'post[date]', with: Date.today
      fill_in 'post[work_performed]', with: 'User Association'
      fill_in 'post[daily_hours]', with: 4.5


      expect {click_on 'Save'}.to change(Post, :count).by(1)
    end
  end



  describe 'edit' do

    it 'can be edited' do
      visit edit_post_path(post)

      fill_in 'post[date]', with: Date.today
      fill_in 'post[work_performed]', with: 'Edited content'
      click_on 'Save'
      expect(page).to have_content('Edited content')
    end

    it 'cannot be edited by a non authorized user' do
      logout(:user)
      user = FactoryGirl.create(:non_authorized_user)
      login_as(user, scope: :user)

      visit edit_post_path(post)

      expect(current_path).to eq(root_path)
    end
  end
end