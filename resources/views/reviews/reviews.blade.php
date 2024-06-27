@extends('layouts.master')
@section('title')
    المتجر
@stop

@section('page-header')
    <!-- breadcrumb -->
    <div class="breadcrumb-header justify-content-between">
        <div class="my-auto">
            <div class="d-flex">
                <h4 class="content-title mb-0 my-auto">المتجر</h4><span class="text-muted mt-1 tx-13 mr-2 mb-0">/ اراء العملاء</span>
            </div>
        </div>
    </div>
    <!-- breadcrumb -->
@endsection

@section('content')
    <!-- row -->
    <div class="row">

        <div class="col-xl-12 mb-30">
            <div class="card card-statistics h-100">
                <div class="card-body">

                    @if ($message = Session::get('success'))
                        <div class="alert alert-success">
                            <p>{{ $message }}</p>
                        </div>
                    @endif

                    @if ($errors->any())
                        <div class="alert alert-danger">
                            <ul>
                                @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif

                    <a class="modal-effect btn btn-outline-primary btn-block" data-effect="effect-scale" data-toggle="modal" href="#modaldemo8">اضافة</a>

                    <div class="table-responsive">
                        <table id="datatable" class="table  table-hover table-sm table-bordered p-0"
                               data-page-length="50"
                               style="text-align: center">
                            <thead>
                            <tr>
                                <th scope="col">id</th>
                                <th scope="col">الاسم</th>
                                <th scope="col">العنوان الفرعي</th>
                                <th scope="col">التعليق</th>
                                <th scope="col">الصورة</th>
                                <th class="wd-25p border-bottom-0">العمليات</th>

                            </tr>
                            </thead>
                            <tbody>
                            <?php $i = 0; ?>
                            @foreach ($reviews as $review)
                                <tr>

                                        <?php $i++; ?>
                                    <td>{{ $review->id }}</td>
                                    <td>{{ $review->name }}</td>
                                    <td>{{ $review->sub_title }}</td>
                                    <td>{{ $review->review }}</td>
                                    <td > <img src="{{ asset($review->image) }}"  style="width: 80px" height="80px" border-radius="50%" ></td>
                                    <td>
                                        <button type="button" class="btn btn-info btn-sm" data-toggle="modal"
                                                data-target="#edit{{ $review->id }}"
                                                title=""><i
                                                class="fa fa-edit"></i></button>
                                        <button type="button" class="btn btn-danger btn-sm" data-toggle="modal"
                                                data-target="#delete{{ $review->id }}"
                                                title=""><i
                                                class="fa fa-trash"></i></button>

                                    </td>
                                </tr>

                                <!-- edit_modal -->
                                <div class="modal fade" id="edit{{ $review->id }}" tabindex="-1" role="dialog"
                                     aria-labelledby="exampleModalLabel" aria-hidden="true">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 style="font-family: 'Cairo', sans-serif;" class="modal-title"
                                                    id="exampleModalLabel">
                                                </h5>
                                                <button type="button" class="close" data-dismiss="modal"
                                                        aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                            </div>
                                            <div class="modal-body">
                                                <form action="{{ route('reviews.update', $review->id) }}" method="POST" enctype="multipart/form-data">
                                                    @method('PUT')
                                                    {{ csrf_field() }}

                                                    <input type="hidden" name="id"value="{{ $review->id}}">

                                                    <div class="form-group">
                                                        <label for="exampleInputEmail1">الاسم </label>
                                                        <input type="text" class="form-control" name="name"  value="{{ $review->name}}" >
                                                    </div>

                                                    <div class="form-group">
                                                        <label for="exampleInputEmail1">العنوان الفرعي </label>
                                                        <input type="text" class="form-control" name="sub_title"  value="{{ $review->sub_title}}" >
                                                    </div>

                                                    <div class="form-group">
                                                        <label for="exampleInputEmail1">التعليق </label>
                                                        <input type="text" class="form-control" name="review"  value="{{ $review->review}}" >
                                                    </div>

                                                    <div class="form-group">
                                                        <label >الصورة</label>
                                                        <input type="file" class="form-control-file" name="image" >
                                                    </div>

                                                    <div class="modal-footer">
                                                        <button type="submit" class="btn btn-success">تاكيد</button>
                                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">اغلاق</button>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                                    <!-- delete_modal -->
                                <div class="modal fade" id="delete{{ $review->id }}" tabindex="-1" role="dialog"
                                     aria-labelledby="exampleModalLabel" aria-hidden="true">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 style="font-family: 'Cairo', sans-serif;" class="modal-title"
                                                    id="exampleModalLabel">
                                                    هل انت متاكد من عملية الحذف؟</h5>
                                                <button type="button" class="close" data-dismiss="modal"
                                                        aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                            </div>
                                            <div class="modal-body">
                                                <form action="{{ route('reviews.destroy', $review->id) }}" method="post">
                                                    @method('DELETE')

                                                    @csrf
                                                    <input id="id" type="hidden" name="id" class="form-control"
                                                           value="{{ $review->id }}">
                                                    <div class="modal-footer">
                                                        <button type="submit"
                                                                class="btn btn-danger">حذف</button>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            @endforeach

                            <!-- add modal -->
                            <div class="modal" id="modaldemo8">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content modal-content-demo">
                                        <div class="modal-header">
                                            <h6 class="modal-title">اضافة</h6><button aria-label="Close" class="close" data-dismiss="modal" type="button"><span aria-hidden="true">&times;</span></button>
                                        </div>
                                        <div class="modal-body">
                                            <form action="{{ route('reviews.store') }}" method="post"   enctype="multipart/form-data">
                                                {{ csrf_field() }}

                                                <div class="form-group">
                                                    <label for="exampleInputEmail1">الاسم </label>
                                                    <input type="text" class="form-control" name="name">
                                                </div>

                                                <div class="form-group">
                                                    <label for="exampleInputEmail1">العنوان الفرعي </label>
                                                    <input type="text" class="form-control" name="sub_title">
                                                </div>

                                                <div class="form-group">
                                                    <label for="exampleInputEmail1">التعليق </label>
                                                    <input type="text" class="form-control" name="review">
                                                </div>

                                                <div class="form-group">
                                                    <label >الصورة</label>
                                                    <input type="file" class="form-control-file" name="image">
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="submit" class="btn btn-success">تاكيد</button>
                                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">اغلاق</button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <!-- End Basic modal -->
                            </div>
                            <!-- row closed -->
                    </div>
                    <!-- Container closed -->
                </div>
                <!-- main-content closed -->

    {{ $reviews->links() }}

                @endsection