# frozen_string_literal: true

# rubocop:disable Style/Documentation
class DocsController < ApplicationController
  before_action :find_doc, only: %i[edit update show destory]
  def index
    @docs = Doc.all.order(created_at: :desc)
  end

  def new
    @doc = Doc.new
  end

  def create
    @doc = Doc.new(doc_params)
    if @doc.save
      redirect_to @doc
    else
      render 'new'
    end
  end

  def edit
    retrun nil
  end

  def update
    retrun nil
  end

  def show; end

  def destroy
    retrun nil
  end

  private

  def find_doc
    @doc = Doc.find(params[:id])
  end

  def doc_params
    params.require(:doc).permit(:title, :content)
  end
end
# rubocop:enable Style/Documentation
