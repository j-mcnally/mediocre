class AssetsController < AuthenticatedController
  def destroy
    @a = Asset.find(params[:id])
    AssetAttachment.where(asset_id: @a.id).destroy_all
    @a.destroy
  end
end
