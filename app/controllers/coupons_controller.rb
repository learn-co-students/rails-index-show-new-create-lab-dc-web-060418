class CouponsController< ApplicationController
  before_action :set_coupon, only:[:show, :edit]
  before_action :all_coupons

  def index

  end

  def show

  end

  def new

  end

  def edit

  end

  def create
    @coupon = Coupon.new
    @coupon.store = params[:coupon][:store]
    @coupon.coupon_code = params[:coupon][:coupon_code]
    @coupon.save
    @coupon.id = Coupon.last.id
    redirect_to coupon_path(@coupon)
  end




#<-------These are only available in the scope of the class
  private

  def set_coupon
    @coupon = Coupon.find(params[:id])
  end

  def all_coupons
    @coupons = Coupon.all
  end

end
