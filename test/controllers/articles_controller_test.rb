require "test_helper"

class ArticlesControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test 'can delete article' do
    assert_difference('article.count', -1) do
      
      delete article_path(articles(:id))
    end

    assert_redirected_to article_path(@article)
    assert_equal flash[:notice], 'tu articulo se elimino'
  end

end
