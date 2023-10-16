  $(document).ready(function() {
    $('.start-button').on('click', function(event) {
      event.preventDefault(); // ボタンのデフォルトの動作をキャンセル

      const itemId = $(this).data('item-id');

      // サーバーとの非同期通信を行う
      $.ajax({
        method: 'POST', // または必要なHTTPメソッド
        url: '/start_item', // アイテムの使用開始を処理するサーバーのエンドポイント
        data: { item_id: itemId }, // データをサーバーに送信する
        success: function(response) {
          if (response.taking) {
            // 使用中の場合、表示を更新
            $('.taking-out[data-item-id="' + itemId + '"]').html('<div class="taking-out text-dark"><span>使用中</span></div>');
          }
        }
      });
    });
  });

