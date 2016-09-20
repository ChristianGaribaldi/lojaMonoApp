class VendasController < ApplicationController
  before_action :set_venda, only: [:show, :edit, :update, :destroy]
  before_action :set_produtos_clientes, only: [:new,:edit]
  # GET /vendas
  # GET /vendas.json
  def index
    @vendas = Venda.all
  end

  # GET /vendas/1
  # GET /vendas/1.json
  def show
  end

  # GET /vendas/new
  def new
    @venda = Venda.new
  end

  # GET /vendas/1/edit
  def edit
  end

  # POST /vendas
  # POST /vendas.json
  def create
    @venda = Venda.new(venda_params)

    produto = Produto.find(@venda.produto_id)
    @venda.valorVenda = @venda.quantidade * produto.precoUnitario

    respond_to do |format|
      if @venda.save
        produto.qtd_estoque -= @venda.quantidade
        produto.save

        format.html { redirect_to lojas_url, notice: 'Venda realizada com sucesso!' }
        format.json { render :show, status: :created, location: @venda }
      else
        format.html { render :new }
        format.json { render json: @venda.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vendas/1
  # PATCH/PUT /vendas/1.json
  def update
    respond_to do |format|
      if @venda.update(venda_params)
        format.html { redirect_to @venda, notice: 'Venda was successfully updated.' }
        format.json { render :show, status: :ok, location: @venda }
      else
        format.html { render :edit }
        format.json { render json: @venda.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vendas/1
  # DELETE /vendas/1.json
  def destroy
    @venda.destroy
    respond_to do |format|
      format.html { redirect_to vendas_url, notice: 'Venda was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  def set_produtos_clientes
    @clientes = Cliente.all
    @produtos = Produto.all.where("qtd_estoque > 0")
  end
    # Use callbacks to share common setup or constraints between actions.
    def set_venda
      @venda = Venda.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def venda_params
      params.require(:venda).permit(:produto_id, :cliente_id, :quantidade)
    end
end
