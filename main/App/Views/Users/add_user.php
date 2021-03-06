<div class="card card-outline-info">
    <div class="card-header">
        <h4 class="m-b-0 text-white">
            Fill Form to save new User
        </h4>
    </div>
    <div class="card-body">
        <form id="frm_add_user">
            <div class="form-body">
                <h3 class="card-title">Person Info</h3>
                <hr>
                <div class="row p-t-20">
                    <div class="col-md-12">
                        <div class="form-group">
                            <label class="control-label">First Name & Last Name</label>
                            <input type="text" id="names" name="names" class="form-control" placeholder="Ex:john" required>
                        </div>
                    </div>
                    <!--/span-->
                </div>
                <!--/row-->
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label class="control-label">Email</label>
                            <input type="email" id="email" name="email" class="form-control" placeholder="" required>
                            <small class="form-control-feedback">
                                This field is required for user login.
                            </small>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label class="control-label">Phone Number</label>
                            <input type="number" id="phone" name="phone" class="form-control" placeholder="Format: +2507XXXXXXXX" required>
                            <small class="form-control-feedback">
                                This field can be alternate to email on login.
                            </small>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label class="control-label">Gender</label>
                            <select id="gender" name="gender" class="form-control custom-select" required>
                                <option value="M">Male</option>
                                <option value="F">Female</option>
                            </select>
                            <small class="form-control-feedback"> Select your gender </small>
                        </div>
                    </div>
                    <!--/span-->
                    <div class="col-md-6">
                        <div class="form-group">
                            <label class="control-label">User Category</label>
                            <?php 
                            $users_type=$user->get_users_type();
                            // var_dump($users_type);
                            ?>
                            <select id="category" name="category" class="form-control custom-select" required>
                                <?php 
                                foreach ($users_type as $key => $value) {
                                   ?>
                                   <option value="<?php echo $value['type_id']; ?>">
                                       <?php echo $value['type']; ?>
                                   </option>
                                   <?php
                                }
                                ?>
                            </select>
                        </div>
                    </div>
                    <!--/span-->
                </div>
                <!--/row-->
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label class="control-label">Create Password</label>
                            <input type="password" id="password" name="password" class="form-control" placeholder="" required>
                        </div>
                    </div>
                    <!--/span-->
                    <div class="col-md-6">
                        <div class="form-group">
                            <label class="control-label">Confirm Password</label>
                            <input type="password" id="cpassword" name="cpassword" class="form-control" placeholder="" required>
                        </div>
                    </div>
                    <!--/span-->
                </div>
            </div>
            <div class="form-actions">
                <button type="submit" class="btn btn-info">
                    <i class="fa fa-check"></i> Save Member
                </button>
                <a href="users" class="btn btn-inverse">Cancel</a>
            </div>
        </form>
    </div>
</div>