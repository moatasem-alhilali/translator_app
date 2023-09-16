import 'package:store_app/core/resources/assets_manager.dart';

bool IS_CONNECTED = false;

class TranslatorModel {
  late String name;
  late String languege;
  late String gobTitle;
  late String description;
  late String image;
  TranslatorModel({
    this.description = "",
    this.gobTitle = "",
    this.image = "",
    this.languege = "",
    this.name = "",
  });
}

List<TranslatorModel> fakeData = [
  TranslatorModel(
    name: "هاله",
    description: '''
اجيد التحدث بطلاقة في اللغة الإنجليزية، خبرة تتجازو الأربع سنوات، أقدم خدماتي في الترجمة عن بعد
. أمتلك شهادة TOEFL iBT
. حصلت على شهادة IELTS التي هي شهادة دولية تقيس القدرة على الكتابة والقراءة والاستماع والتحدث باللغة الإنجليزية. إنها معترف بها في العديد من البلدان حول العالم.
أمتلك شهادة Cambridge English Proficiency (CPE) وهي تعتبر من أعلى مستويات الكفاءة في اللغة الإنجليزية وتدل على أن مستوى لغتي الإنجليزية مماثل لمستوى الأشخاص الذين يتحدثون الإنجليزية
بطلاقة.

''',
    gobTitle: "اجيد اللغة الإنجليزيهه",
    image: FxImage.girl1,
    languege: "الإنجليزية",
  ),
  TranslatorModel(
    name: "ذكرى",
    description: '''
اجيد التحدث بطلاقة في اللغة الاسبانيه خبرة تتجازو الأربع سنوات، أقدم خدماتي في الترجمة عن بعد
. أمتلك شهادة TOEFL iBT
. حصلت على شهادة IELTS التي هي شهادة دولية تقيس القدرة على الكتابة والقراءة والاستماع والتحدث باللغة الإنجليزية. إنها معترف بها في العديد من البلدان حول العالم.
أمتلك شهادة Cambridge English Proficiency (CPE) وهي تعتبر من أعلى مستويات الكفاءة في اللغة الإنجليزية وتدل على أن مستوى لغتي الإنجليزية مماثل لمستوى الأشخاص الذين يتحدثون الإنجليزية
بطلاقة.

''',
    gobTitle: "اجيد اللغة الاسبانيه",
    image: FxImage.girl2,
    languege: "الاسبانيه",
  ),
  TranslatorModel(
    name: "محمد",
    description: '''
اجيد التحدث بطلاقة في اللغة الفرنسية خبرة تتجازو الأربع سنوات، أقدم خدماتي في الترجمة عن بعد
. أمتلك شهادة TOEFL iBT
. حصلت على شهادة IELTS التي هي شهادة دولية تقيس القدرة على الكتابة والقراءة والاستماع والتحدث باللغة الإنجليزية. إنها معترف بها في العديد من البلدان حول العالم.
أمتلك شهادة Cambridge English Proficiency (CPE) وهي تعتبر من أعلى مستويات الكفاءة في اللغة الإنجليزية وتدل على أن مستوى لغتي الإنجليزية مماثل لمستوى الأشخاص الذين يتحدثون الإنجليزية
بطلاقة.

''',
    gobTitle: "اجيد اللغة الفرنسية",
    image: FxImage.man1,
    languege: "الفرنسية",
  ),
  TranslatorModel(
    name: "معتصم",
    description: '''
اجيد التحدث بطلاقة في اللغة الكوريه خبرة تتجازو الأربع سنوات، أقدم خدماتي في الترجمة عن بعد
. أمتلك شهادة TOEFL iBT
. حصلت على شهادة IELTS التي هي شهادة دولية تقيس القدرة على الكتابة والقراءة والاستماع والتحدث باللغة الإنجليزية. إنها معترف بها في العديد من البلدان حول العالم.
أمتلك شهادة Cambridge English Proficiency (CPE) وهي تعتبر من أعلى مستويات الكفاءة في اللغة الإنجليزية وتدل على أن مستوى لغتي الإنجليزية مماثل لمستوى الأشخاص الذين يتحدثون الإنجليزية
بطلاقة.

''',
    gobTitle: "اجيد اللغة الكوريه",
    image: FxImage.man2,
    languege: "الكوريه",
  ),
  TranslatorModel(
    name: "احمد",
    description: '''
اجيد التحدث بطلاقة في اللغة اليابانيه خبرة تتجازو الأربع سنوات، أقدم خدماتي في الترجمة عن بعد
. أمتلك شهادة TOEFL iBT
. حصلت على شهادة IELTS التي هي شهادة دولية تقيس القدرة على الكتابة والقراءة والاستماع والتحدث باللغة الإنجليزية. إنها معترف بها في العديد من البلدان حول العالم.
أمتلك شهادة Cambridge English Proficiency (CPE) وهي تعتبر من أعلى مستويات الكفاءة في اللغة الإنجليزية وتدل على أن مستوى لغتي الإنجليزية مماثل لمستوى الأشخاص الذين يتحدثون الإنجليزية
بطلاقة.

''',
    gobTitle: "اجيد اللغة اليابانيه",
    image: FxImage.man2,
    languege: "اليابانيه",
  ),
];
