 @extends('admin_layout')
 @section('admin_content')

 <div class="row">
            <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            Thêm danh mục sản phẩm
                        </header>
                        <div class="panel-body">
                            <script>alert('')</script>
                            
                            <div class="position-center">
                                <form role="form" action="{{URL::to('/save-category-product')}}" method="post">
                                    {{csrf_field()}}
                                <div class="form-group">
                                    <label >Tên danh mục</label>
                                    <input type="text" class="form-control" name="category_product_name"  placeholder="Tên danh mục">
                                </div>
                                <div class="form-group">
                                    <label >Mô tả danh mục</label>
                                   <textarea style="resize: none" rows="8" class="form-control" name="category_prodcut_desc" placeholder="Mô tả danh mục"></textarea>
                                </div>
                                <div class="form-group">
                                    <label >Hiển thị</label>
                                    <select name="category_product_status"  class="form-control input-sm m-bot15">
                                        <option value="0">Ẩn</option>
                                        <option value="1">Hiển thị</option>
                                    </select>
                                    
                                </div>
                                
                                <button type="submit" name="add_category_product" class="btn btn-info">Thêm danh mục</button>
                            </form>
                            </div>

                        </div>
                    </section>

            </div>
        </div>
    @endsection