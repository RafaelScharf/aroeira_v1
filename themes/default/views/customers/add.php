<div class="modal-dialog modal-lg">
    <div class="modal-content">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="fa fa-2x">&times;</i>
            </button>
            <h4 class="modal-title" id="myModalLabel"><?php echo lang('add_customer'); ?></h4>
        </div>
        <?php $attrib = array('data-toggle' => 'validator', 'role' => 'form', 'id' => 'add-customer-form');
        echo form_open_multipart("customers/add", $attrib); ?>
        <div class="modal-body">
            <p><?= lang('enter_info'); ?></p>

            <div class="form-group">
                <label class="control-label"
                       for="customer_group"><?php echo $this->lang->line("default_customer_group"); ?></label>

                <div class="controls"> <?php
                    foreach ($customer_groups as $customer_group) {
                        $cgs[$customer_group->id] = $customer_group->name;
                    }
                    echo form_dropdown('customer_group', $cgs, $this->Settings->customer_group, 'class="form-control tip select" id="customer_group" style="width:100%;" required="required"');
                    ?>
                </div>
            </div>

            <div class="row">
                <div class="col-md-6">
                <div class="form-group person">
                        <label class="h3">Informações</label>                    
                    </div>
                    <div class="form-group person">
                        <?= lang("name", "name"); ?>
                        <?php echo form_input('name', '', 'class="form-control tip" placeholder="Ex: Fulano Siclano" id="name" required="required"'); ?>
                    </div>
                    <div class="form-group">
                        <?= lang("phone", "phone"); ?>
                        <input type="tel" name="phone" placeholder="Ex: (DD)9999-9999" class="form-control" required="required" id="phone"/>
                    </div>
                    <div class="form-group">
                        <?= lang("document_natural_person", "vat_no"); ?>
                        <?php echo form_input('vat_no', '', 'class="form-control" placeholder="Ex: 000.000.000-00" id="vat_no"'); ?>
                    </div>
                    <div class="form-group">
                        <?= lang("ccf7", "cf1"); ?>
                        <?php echo form_input('cf1', '', 'class="form-control" placeholder="Ex: 00000000-0" id="cf1"'); ?>
                    </div>

                    <!--<div class="form-group company">
                    <?= lang("contact_person", "contact_person"); ?>
                    <?php echo form_input('contact_person', '', 'class="form-control" id="contact_person"'); ?>
                </div>-->
                <div class="form-group">
                        <?= lang("ccf4", "cf4"); ?>
                        <?php echo form_input('cf4', '', 'class="form-control" placeholder="Ex: F = Pessoa Fisica | J = Pessoa Jurídica" maxlength="1" id="cf4"'); ?>

                    </div>
                    
                 
                    <div class="checkbox" style="margin: 5px;">
                        <label>
                            <input type="checkbox" style="transform: scale(1.6);" value="" id="add_company" onclick="accordionCompany()">
                            <span class="tip h4" style="font-weight: 700"> <?= lang("add_company"); ?></span>
                           
                        </label>
                    </div>
                    <div class="form-group company invisible" id="company_div">
                        <?= lang("company", "company"); ?>
                        <?php echo form_input('company', '', 
                            'class="form-control tip" id="company"'); ?>
                    </div>

                </div>
                <div class="col-md-6">
                <div class="form-group person">
                        <label class="h3">Endereço</label>                    
                    </div>
                    <div class="form-group" style="display: none">
                        <?= lang("postal_code", "postal_code"); ?>
                        <?php echo form_input('postal_code', '',  'class="form-control" id="postal_code"'); ?>
                    </div>
                      
                    <div class="form-group">
                        <?= lang("address_primary", "address_primary"); ?>
                        <?php echo form_input('address', '', 'class="form-control" placeholder="Ex: Rua | Numero | Bairro | Complemento" id="address"'); ?>
                    </div>
                    <div class="form-group">
                        <?= lang("address_company", "address_company"); ?>
                        <?php echo form_input('city', '', 'class="form-control" placeholder="Ex: Rua | Numero | Bairro | Complemento" id="city"'); ?>
                    </div>
                    <div class="form-group" style="display: none">
                        <?= lang("state", "state"); ?>
                        <?php echo form_input('state', '',  'class="form-control" id="state"'); ?>
                    </div>

                    <div class="form-group" style="display: none">
                        <?= lang("country", "country"); ?>
                        <?php echo form_input('country', '', 'class="form-control" id="country"'); ?>
                    </div>
                    
                    <div class="form-group" style="display: none">
                        <?= lang("ccf2", "cf2"); ?>
                        <?php echo form_input('cf2', '', 'class="form-control" id="cf2"'); ?>

                    </div>
                    <div class="form-group" style="display: none">
                        <?= lang("ccf3", "cf3"); ?>
                        <?php echo form_input('cf3', '', 'class="form-control" id="cf3"'); ?>
                    </div>
                    
                    <div class="form-group">
                        <?= lang("email_address", "email_address"); ?>
                        <input type="email" name="email" class="form-control" placeholder="suaconta@dominio.com.br" id="email_address"/>
                    </div>
                    <div class="checkbox" style="margin: 5px;">
                        <label>
                            <input type="checkbox" style="transform: scale(1.6);" value="" id="information_additional" onclick="accordionInformationAdditional()">
                            <span class="tip h4" style="font-weight: 700"> <?= lang("information_additional"); ?></span>
                           
                        </label>
                    </div>
                    <div id="information_additional_div" class="invisible">
                        <div class="form-group">
                            <?= lang("ccf5", "cf5"); ?>
                            <?php echo form_input('cf5', '', 'class="form-control" placeholder="Ex: Rua | Numero | Bairro | Complemento | Motivo endereço" id="cf5"'); ?>

                        </div>                  
                        <div class="form-group">
                            <?= lang("ccf6", "cf6"); ?>
                            <?php echo form_input('cf6', '', 'class="form-control" id="cf6"'); ?>
                        </div>
                    </div>    
                </div>
            </div>


        </div>
        <div class="modal-footer">
            <?php echo form_submit('add_customer', lang('add_customer'), 'class="btn btn-primary"'); ?>
        </div>
    </div>
    <?php echo form_close(); ?>
</div>

<script type="text/javascript">
    $(document).ready(function (e) {
        $('#add-customer-form').bootstrapValidator({
            feedbackIcons: {
                valid: 'fa fa-check',
                invalid: 'fa fa-times',
                validating: 'fa fa-refresh'
            }, excluded: [':disabled']
        });
        $('select.select').select2({minimumResultsForSearch: 7});
        fields = $('.modal-content').find('.form-control');
        $.each(fields, function () {
            var id = $(this).attr('id');
            var iname = $(this).attr('name');
            var iid = '#' + id;
            if (!!$(this).attr('data-bv-notempty') || !!$(this).attr('required')) {
                $("label[for='" + id + "']").append(' *');
                $(document).on('change', iid, function () {
                    $('form[data-toggle="validator"]').bootstrapValidator('revalidateField', iname);
                });
            }
        });
    });


//Exibi elemento se o checkbox estiver com checked == true;
    function accordionCompany() {

        var checkboxAddCompany = $("#add_company").is(":checked");
        console.log(checkboxAddCompany); 
        if(checkboxAddCompany == true){
            $('#company_div').removeClass("invisible");            
            $('#company_div').addClass("visible");
        }else{
            $('#company_div').removeClass("visible");            
            $('#company_div').addClass("invisible");
        }

    }

//Exibi elemento se o checkbox estiver com checked == true;
    function accordionInformationAdditional() {

        var checkboxAddCompany = $("#information_additional").is(":checked");
        console.log(checkboxAddCompany); 
        if(checkboxAddCompany == true){
            $('#information_additional_div').removeClass("invisible");            
            $('#information_additional_div').addClass("visible");
        }else{
            $('#information_additional_div').removeClass("visible");            
            $('#information_additional_div').addClass("invisible");
        }

    }
//Exibi elemento se o checkbox estiver com checked == true;
    function accordionInformationAdditional() {

        var checkboxAddCompany = $("#information_additional").is(":checked");
        console.log(checkboxAddCompany); 
        if(checkboxAddCompany == true){
            $('#information_additional_div').removeClass("invisible");            
            $('#information_additional_div').addClass("visible");
        }else{
            $('#information_additional_div').removeClass("visible");            
            $('#information_additional_div').addClass("invisible");
        }

    }
    //Exibi elemento se o checkbox estiver com checked == true;
    function accordionAdditionalAddress() {

    var checkboxAddCompany = $("#additional_address").is(":checked");
    console.log(checkboxAddCompany); 
    if(checkboxAddCompany == true){
        $('#additional_address_div').removeClass("invisible");            
        $('#additional_address_div').addClass("visible");
    }else{
        $('#additional_address_div').removeClass("visible");            
        $('#additional_address_div').addClass("invisible");
    }

}
    

    
</script>
