require 'rails_helper'

RSpec.describe Group, type: :model do
  before do
    user = FactoryBot.create(:user)
    @group = FactoryBot.build(:group, user_id: user.id)
  end

  describe 'グループ新規作成' do
    context 'グループ新規作成できるとき' do
      it 'group_nameとintroduction、group_image、user_id、owner_idが存在すれば登録できる' do
        expect(@group).to be_valid
      end
    end
    context 'グループ新規作成できないとき' do
      it 'group_nameが空では登録できない' do
        @group.group_name = ''
        @group.valid?
        expect(@group.errors.full_messages).to include("グループ名を入力してください")
      end
      it 'introductionが空では登録できない' do
        @group.introduction = ''
        @group.valid?
        expect(@group.errors.full_messages).to include("紹介文を入力してください")
      end
      it 'group_imageが空では登録できない' do
        @group.group_image = nil
        @group.valid?
        expect(@group.errors.full_messages).to include("グループ画像を入力してください")
      end
      it 'user_idが空では登録できない' do
        @group.user_id = ''
        @group.valid?
        expect(@group.errors.full_messages).to include("Userを入力してください")
      end
      it 'owner_idが空では登録できない' do
        @group.owner_id = ''
        @group.valid?
        expect(@group.errors.full_messages).to include("Ownerを入力してください")
      end
    end
  end
end
