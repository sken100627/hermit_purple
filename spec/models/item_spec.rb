require 'rails_helper'

RSpec.describe Item, type: :model do
  before do
    @item = FactoryBot.build(:item)
  end

  describe '探し物新規登録' do
    context '探し物新規登録できるとき' do
      it 'nameとitem_image、quantity、storage、storage_image、explanation、user_id、group_idが存在すれば登録できる' do
        expect(@item).to be_valid
      end
      it 'storageがなくても保存できること' do
        @item.storage = ''
        expect(@item).to be_valid
      end
      it 'storage_imageがなくても保存できること' do
        @item.storage_image = nil
        expect(@item).to be_valid
      end
      it 'explanationがなくても保存できること' do
        @item.explanation = ''
        expect(@item).to be_valid
      end
    end
    context '探し物新規登録できないとき' do
      it 'nameが空では登録できないこと' do
        @item.name = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Name can't be blank")
      end
      it 'item_imageが空では登録できないこと' do
        @item.item_image = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Item image can't be blank")
      end
      it 'quantityが空では登録できないこと' do
        @item.quantity = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Quantity can't be blank")
      end
      it 'user_idが空では登録できないこと' do
        @item.user = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("User can't be blank")
      end
      it 'group_idが空では登録できないこと' do
        @item.group = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Group can't be blank")
      end
    end
  end
end
