require 'rails_helper'

RSpec.describe Group, type: :model do
  before do
    @group = FactoryBot.build(:group)
  end

  describe 'グループ新規作成' do
    context 'グループ新規作成できるとき' do
      it 'group_nameとintroduction、group_imageが存在すれば登録できる' do
        expect(@group).to be_valid
      end
    end
    context 'グループ新規作成できないとき' do
      it 'group_nameが空では登録できない' do
        @group.group_name = ''
        @group.valid?
        expect(@group.errors.full_messages).to include("Group name can't be blank")
      end
      it 'introductionが空では登録できない' do
        @group.introduction = ''
        @group.valid?
        expect(@group.errors.full_messages).to include("Introduction can't be blank")
      end
      it 'group_imageが空では登録できない' do
        @group.group_image = nil
        @group.valid?
        expect(@group.errors.full_messages).to include("Group image can't be blank")
      end
    end
  end

end
