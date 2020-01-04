 @extends('admin_layout')
 @section('admin_content')

 <div class="row">
            <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            Thêm sản phẩm
                        </header>
                        <div class="panel-body">
                            <?php 
                            $message = Session::get('message');
                            if ($message) {
                                 echo '<span class="text-alert">'.$message.'</span>';
                                 Session::put('message',null);
                             } ?>
                            <div class="position-center">
                                <form role="form" action="{{URL::to('/save-product')}}" method="post" enctype="multipart/form-data">
                                    {{csrf_field()}}
                                <div class="form-group">
                                    <label >Tên sản phẩm</label>
                                    <input type="text" class="form-control" name="product_name"  placeholder="Tên sản phẩm">
                                </div>
                                <div class="form-group">
                                    <label >Giá sản phẩm</label>
                                    <input type="text" class="form-control" name="product_price"  placeholder="Tên sản phẩm">
                                </div>
                                <div class="form-group">
                                    <label >Ảnh sản phẩm</label>
                                    <input type="file" class="form-control" name="product_image"  placeholder="Tên sản phẩm">
                                </div>
                                <div class="form-group">
                                    <label >Mô tả sản phẩm</label>
                                   <textarea style="resize: none" rows="8" class="form-control" name="product_desc" placeholder="Mô tả sản phẩm"></textarea>
                                </div>
                                <div class="form-group">
                                    <label >Nội dung sản phẩm</label>
                                   <textarea style="resize: none" rows="8" class="form-control" name="product_content" placeholder="Mô tả sản phẩm"></textarea>
                                </div>
                                 <div class="form-group">
                                    <label >Danh mục sản phẩm</label>
                                    <select name="product_cate"  class="form-control input-sm m-bot15">
                                        @foreach ($cate_product as $key => $cate)
                                        <option value="{{$cate->category_id}}">{{$cate->category_name}}</option>
                                        @endforeach
                                    </select> 
                                    
                                </div>
                                 <div class="form-group">
                                    <label >Thương hiệu sản phẩm</label>
                                    <select name="product_brand"  class="form-control input-sm m-bot15">
                                        @foreach ($brand_product as $key => $brand)
                                        <option value="{{$brand->brand_id}}">{{$brand->brand_name}}</option>
                                        @endforeach
                                    </select>
                                    
                                </div>
                                <div class="form-group">
                                    <label >Hiển thị</label>
                                    <select name="product_status"  class="form-control input-sm m-bot15">
                                        <option value="0">Ẩn</option>
                                        <option value="1">Hiển thị</option>
                                    </select>
                                    
                                </div>
                                <button type="submit" name="add_product" class="btn btn-info">Thêm sản phẩm</button>
                            </form>
                            </div>

                        </div>
                    </section>

            </div>
        </div>
    @endsection