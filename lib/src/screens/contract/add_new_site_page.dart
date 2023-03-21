import 'package:customerapp/src/controllers/_controllers.dart';
import 'package:customerapp/src/controllers/sites_controller.dart';
import 'package:customerapp/src/helpers/text_validators.dart';
import 'package:customerapp/src/resources/_resources.dart';
import 'package:customerapp/src/widgets/_widgets.dart';
import 'package:flutter/material.dart';

class AddNewSitePage extends StatefulWidget {
  const AddNewSitePage({Key? key}) : super(key: key);

  @override
  State<AddNewSitePage> createState() => _AddNewSitePageState();
}

class _AddNewSitePageState extends State<AddNewSitePage> {
  final siteController = SiteController.get;
  final profileController = ProfileController.get;

  GlobalKey<FormState> formKey = GlobalKey();

  TextEditingController addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add New Site'),
      ),
      body: Container(
        padding: EdgeInsets.all(14),
        child: Form(
          child: ListView(
            children: [
              CTextField(
                controller: addressController,
                header: 'Site Address',
                validator: TextValidators.name,
              ),
              SizedBox(height: 14),
              CTextField(
                header: 'Agency',
              ),
              SizedBox(height: 14),
              CTextField(
                header: 'Manufacturer',
              ),
              SizedBox(height: 14),
              CTextField(
                header: 'ID Number',
              ),
              SizedBox(height: 14),
              CTextField(
                header: 'Permit Number',
              ),
              SizedBox(height: 20),
              CButton(
                label: 'PROCEED TO PLAN',
              ),
              SizedBox(height: 14),
              CButton(
                label: 'CANCEL',
                labelColor: CColors.primary,
                color: Colors.white,
                border: BorderSide(width: 2, color: CColors.primary),
              )
            ],
          ),
        ),
      ),
    );
  }
}
