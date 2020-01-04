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
                                @foreach($edit_product as $key => $pro)
                                <form role="form" action="{{URL::to('/update-product/'.$pro->product_id)}}" method="post" enctype="multipart/form-data">
                                    {{csrf_field()}}
                                <div class="form-group">
                                    <label >Tên sản phẩm</label>
                                    <input type="text" class="form-control" name="product_name"  placeholder="Tên sản phẩm" value="{{$pro->product_name}}">
                                </div>
                                <div class="form-group">
                                    <label >Giá sản phẩm</label>
                                    <input type="text" class="form-control" name="product_price"  placeholder="Tên sản phẩm" value="{{$pro->product_price}}">
                                </div>
                                <div class="form-group">
                                    <label >Ảnh sản phẩm</label>
                                    <input type="file" class="form-control" name="product_image"  placeholder="Tên sản phẩm">
                                    <img src="{{URL::to('public/upload/product/'.$pro->product_image)}}" height="100" width="100">
                                </div>
                                <div class="form-group">
                                    <label >Mô tả sản phẩm</label>
                                   <textarea style="resize: none" rows="8" class="form-control" name="product_desc" placeholder="Mô tả sản phẩm">{{$pro->product_desc}}</textarea>
                                </div>
                                <div class="form-group">
                                    <label >Nội dung sản phẩm</label>
                                   <textarea style="resize: none" rows="8" class="form-control" name="product_content" placeholder="Mô tả sản phẩm">{{$pro->product_content}}</textarea>
                                </div>
                                 <div class="form-group">
                                    <label >Danh mục sản phẩm</label>
                                    <select name="product_cate"  class="form-control input-sm m-bot15">
                                        @foreach ($cate_product as $key => $cate)
                                        @if($cate->category_id==$pro->category_id)
                                        <option selected value="{{$cate->category_id}}">{{$cate->category_name}}</option>
                                        @else
                                        <option value="{{$cate->category_id}}">{{$cate->category_name}}</option>
                                        @endif
                                        @endforeach
                                    </select>
                                    
                                </div>
                                 <div class="form-group">
                                    <label >Thương hiệu sản phẩm</label>
                                    <select name="product_brand"  class="form-control input-sm m-bot15">
                                        @foreach ($brand_product as $key => $brand)
                                        @if($brand->brand_id==$pro->brand_id)
                                        <option selected value="{{$brand->brand_id}}">{{$brand->brand_name}}</option>
                                        @else
                                        <option value="{{$brand->brand_id}}">{{$brand->brand_name}}</option>
                                        @endif
                                        @endforeach
                                    </select>
                                    
                                </div>

                                <button type="submit" name="add_product" class="btn btn-info">Cập nhật sản phẩm</button>
                            </form>
                            @endforeach
                            </div>

                        </div>
                    </section>

            </div>
        </div>
    @endsection