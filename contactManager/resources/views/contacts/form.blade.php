  <div class="panel-body">
      @if( count($errors) )
        <div class="alert alert-danger">
          <ul>
            @foreach ($errors->all() as $error)
              <li>{{ $error }}</li>
            @endforeach
          </ul>
        </div>
      @endif
        <div class="col-md-4">
          <div class="container">
            <div class="row">
                <div class="small-12 medium-2 large-2 columns">
                  <div class="circle">
                    <a href="#">
                     <img class="media-object" src="http://placehold.it/250x250" alt="Profile Photo">
                    </a>
                  </div>
                 <!--  <div class="p-image">
                    <i class="fa fa-camera upload-button"></i>
                    <input class="file-upload" type="file" accept="image/*"/>
                  </div>
 -->            </div>
            </div>
          </div>
        </div>
        <div class="col-md-8">
          <div class="form-group row">
            <label for="inputName" class="col-md-3 col-form-label">Name</label>
              <div class="col-md-8">
               {{ Form::text("name", null, ['class' => 'form-control'])}}
              </div>
          </div>
          <div class="form-group row">
            <label for="inputCompany" class="col-md-3 col-form-label">Company</label>
              <div class="col-md-8">
                {{ Form::text("company", null, ['class' => 'form-control'])}}
              </div>
          </div>
          <div class="form-group row">
            <label for="inputEmail" class="col-md-3 col-form-label">Email</label>
              <div class="col-md-8">
                  {{ Form::email("email", null, ['class' => 'form-control'])}}
              </div>
          </div>
          <div class="form-group row">
            <label for="inputPhone" class="col-md-3 col-form-label">Contact No.</label>
              <div class="col-md-8">
                  {{ Form::text("phone", null, ['class' => 'form-control'])}}
              </div>
          </div>
          <div class="form-group row">
            <label for="inputPhone" class="col-md-3 col-form-label">Address</label>
              <div class="col-md-8">
                  {{ Form::textarea("address", null, ['class' => 'form-control', 'row' => 1])}}
              </div>
          </div>
          <div class="form-group row">
            <label for="inputGroup" class="col-md-3 col-form-label">Group</label>
              <div class="col-md-5">
                 {{ Form::select("group_id", $groups, null, ['class' => 'form-control'])}}
              </div>
          <!-- <div class="col-md-3">
            <a href="#" class="btn btn-default">Add Group</a>
          </div> -->
          </div>
            {{ Form::hidden("user_id", Session::get('user_id'), ['class' => 'form-control'])}}
        </div>
  </div>
  <div class="panel-footer">
      <button type="submit" class="btn btn-primary">Save</button>
  </div>