<div class="modal-dialog">
    <div class="modal-content">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="fa fa-2x">&times;</i>
            </button>
            <h4 class="modal-title" id="myModalLabel"><?php echo lang('support_open_ticket'); ?></h4>
        </div>
        <?php $attrib = array('data-toggle' => 'validator', 'role' => 'form');
        echo form_open("support/open_ticket", $attrib); ?>
        <div class="modal-body">
            <p><?= lang('enter_info'); ?></p>

            <div class="row">
                <div class="col-sm-6">
                    <div class="form-group">
                        <?php echo lang('type_ticket', 'type_ticket'); ?>
                        <div class="controls">
                            <?php echo form_input('type_ticket', '', 'class="form-control" id="from_type" required="required"'); ?>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="form-group">
                        <?php echo lang('email', 'email'); ?>
                        <div class="controls">
                            <?php echo form_input('email', '', 'class="form-control " id="email" required="required"'); ?>
                        </div>
                    </div>
                </div>
              
            </div>

            <div class="form-group">
                <?php echo lang('ticket_details', 'ticket_details'); ?>
                <div class="controls">
                    <?php echo form_textarea($ticket_details); ?>
                </div>
            </div>

        </div>
        <div class="modal-footer">
            <?php echo form_submit('open_ticket', lang('support_open_ticket'), 'class="btn btn-primary"'); ?>
        </div>
    </div>
    <?php echo form_close(); ?>
</div>
<?= $modal_js ?>
<script type="text/javascript" src="<?= $assets ?>js/custom.js"></script>
<script type="text/javascript" charset="UTF-8">
    $.fn.datetimepicker.dates['sma'] = <?=$dp_lang?>;
</script>

