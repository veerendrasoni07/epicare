import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';


class SymptomFormScreen extends StatefulWidget {
  @override
  _SymptomFormScreenState createState() => _SymptomFormScreenState();
}

class _SymptomFormScreenState extends State<SymptomFormScreen> {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Describe Your Symptoms")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: FormBuilder(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("1. Affected Areas", style: TextStyle(fontWeight: FontWeight.bold)),
                FormBuilderCheckbox(name: 'multiple_organs', title: Text("Multiple organs affected")),
                FormBuilderCheckbox(name: 'multiple_areas', title: Text("Multiple areas in same organ")),

                SizedBox(height: 16),
                Text("2. Origin Timeline", style: TextStyle(fontWeight: FontWeight.bold)),
                FormBuilderCheckbox(name: 'present_birth', title: Text("Present from birth (congenital/ancestral)")),
                FormBuilderCheckbox(name: 'delayed_onset', title: Text("Delayed onset after birth")),

                Row(
                  children: [
                    Expanded(
                      child: FormBuilderTextField(
                        name: 'days',
                        decoration: InputDecoration(labelText: "Days"),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: FormBuilderTextField(
                        name: 'months',
                        decoration: InputDecoration(labelText: "Months"),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: FormBuilderTextField(
                        name: 'years',
                        decoration: InputDecoration(labelText: "Years"),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 16),
                Text("3. Environmental Factors", style: TextStyle(fontWeight: FontWeight.bold)),
                FormBuilderCheckbox(name: 'pollution_related', title: Text("Pollution-related")),
                FormBuilderCheckbox(name: 'weather_related', title: Text("Weather-related")),
                FormBuilderTextField(
                  name: 'environmental_conditions',
                  decoration: InputDecoration(labelText: "Describe environmental conditions"),
                  maxLines: 2,
                ),

                SizedBox(height: 16),
                Text("4. External Agents", style: TextStyle(fontWeight: FontWeight.bold)),
                FormBuilderCheckbox(name: 'medication_related', title: Text("Medication-related")),
                FormBuilderCheckbox(name: 'skincare_products', title: Text("Skincare products")),
                FormBuilderCheckbox(name: 'toxin_exposure', title: Text("Toxin exposure")),
                FormBuilderCheckbox(name: 'infections', title: Text("Infections")),
                FormBuilderTextField(
                  name: 'external_factors',
                  decoration: InputDecoration(labelText: "Provide details about external factors"),
                  maxLines: 2,
                ),

                SizedBox(height: 16),
                Text("Additional Description", style: TextStyle(fontWeight: FontWeight.bold)),
                FormBuilderTextField(
                  name: 'additional_description',
                  decoration: InputDecoration(labelText: "Please provide additional details about your symptoms"),
                  maxLines: 3,
                ),

                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState?.saveAndValidate() ?? false) {
                      print(_formKey.currentState?.value);
                    } else {
                      print("Validation failed");
                    }
                  },
                  child: Text("Submit"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
