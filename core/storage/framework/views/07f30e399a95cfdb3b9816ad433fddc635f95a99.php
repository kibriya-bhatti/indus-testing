<?php $__env->startSection('content'); ?>

<div class="container-fluid">

	<!-- Page Heading -->
    <div class="card mb-4">
        <div class="card-body">
            <div class="d-sm-flex align-items-center justify-content-between">
                <h3 class=" mb-0  pl-3"><b><?php echo e(__('Customers Details')); ?></b> </h3>
                <a class="btn btn-primary btn-sm" href="<?php echo e(route('back.user.index')); ?>"><i class="fas fa-chevron-left"></i> <?php echo e(__('Back')); ?></a>
                </div>
        </div>
    </div>

	<!-- Form -->
	<div class="row">

		<div class="col-xl-12 col-lg-12 col-md-12">
        <form action="<?php echo e(route('back.user.update',$user->id)); ?>" method="POST">
            <?php echo csrf_field(); ?>
            <?php echo method_field('PUT'); ?>
            <?php echo $__env->make('alerts.alerts', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
			<div class="card">

					<!-- Nested Row within Card Body -->
                    <div class="card-body">
                        <div class="gd-responsive-table">
                            <table class="table table-bordered table-striped">
                                <tr>
                                    <th><?php echo e(__("First Name")); ?></th>
                                    <td> <input type="text" name="first_name" class="form-control" id="text"
                                     value="<?php echo e($user->first_name); ?>" ></td>
                                </tr>
                                <tr>
                                    <th><?php echo e(__("Last Name")); ?></th>
                                    <td><input type="text" name="last_name" class="form-control" id="text"
                                     value="<?php echo e($user->last_name); ?>" ></td>
                                </tr>
                                <tr>
                                    <th><?php echo e(__("Email Address")); ?></th>
                                    <td><input type="text" name="email" class="form-control" id="text"
                                         value="<?php echo e($user->email); ?>" ></td>
                                </tr>
                                <tr>
                                    <th><?php echo e(__("Phone Number")); ?></th>
                                    <td><input type="text" name="phone" class="form-control" id="text"
                                         value="<?php echo e($user->phone); ?>" ></td>
                                </tr>
                                <input type="hidden" name="user_id" id="" value="<?php echo e($user->id); ?>">
                                <tr>
                                    <th><?php echo e(__("Password")); ?></th>
                                    <td><input type="password" name="password" class="form-control" id="text"
                                        placeholder="<?php echo e(__('Password')); ?>" value="" ></td>
                                </tr>

                                <tr>
                                    <th><?php echo e(__("Total Orders")); ?></th>
                                    <td><?php echo e(count($user->orders)); ?></td>
                                </tr>
                                <tr>
                                    <th><?php echo e(__("Joined")); ?></th>
                                    <td><?php echo e($user->created_at->diffForHumans()); ?></td>
                                </tr>



                            </table>
                            <button type="submit" class="btn btn-secondary "><?php echo e(__('Submit')); ?></button>
                        </div>
                    </div>
			</div>
        </form>
		</div>

	</div>

</div>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('master.back', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /opt/lampp/htdocs/indusrise/core/resources/views/back/user/show.blade.php ENDPATH**/ ?>