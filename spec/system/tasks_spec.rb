require 'rails_helper'

describe 'タスク管理機能', type: :system do
  describe '一覧表示機能' do
      before do
        user_a = FactoryBot.create(:user, name: 'ユーザーA', email: 'a@example.com')
        FactoryBot.create(:task, name: '最初のタスク', user: user_a)
      end

      context 'ユーザーAがログインしているとき' do
        before do
          visit login_path
          fill_in 'メールアドレス', with: 'a@example.com'
          fill_in 'パスワード', with: 'password'
          click_button 'ログインする'
        end

        it 'ユーザーAが作成したタスクが表示される' do
          expect(page).to has_context '最初のタスク'
        end
      end

      # context 'ユーザーBがログインしているとき' do
      #   before do
      #     user_b = FactoryBot.create(:user, name: 'ユーザーB', email: 'b@example.com')
      #     visit login_path
      #     fill_in 'メールアドレス', with: 'b@example.com'
      #     fill_in 'パスワード', with: 'password'
      #     click_button 'ログインする'
      #   end
      #
      #   it 'ユーザーAが作成したタスクが表示されない' do
      #     expect(page).to have_no_context '最初のタスク'
      #   end
      # end
  end
end
