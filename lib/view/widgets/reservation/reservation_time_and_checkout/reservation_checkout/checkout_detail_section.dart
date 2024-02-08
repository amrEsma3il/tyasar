import 'package:flutter/material.dart';
import '../../../../../data/datasource/static/reservation/reservation_checkout_detail_data_source.dart';
import 'checkout_component.dart';

class CheckoutDetailsSection extends StatelessWidget {
  const CheckoutDetailsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
       ...List.generate(rservationCeckoutDetailsList.length, (index) =>  CeckoutComponent(reservationPaymentMethodEntity: rservationCeckoutDetailsList[index]),)
     
      ],
    );
  }
}

