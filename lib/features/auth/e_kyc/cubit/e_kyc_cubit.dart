import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hedg_task/core/widgets/flushbar.dart';
import 'package:hedg_task/features/auth/e_kyc/presentation/screen/id_preview_bootmsheet.dart';
import 'package:hedg_task/features/auth/e_kyc/presentation/widgets/face.dart';
import 'package:hedg_task/features/auth/e_kyc/presentation/widgets/face_left.dart';
import 'package:hedg_task/features/auth/e_kyc/presentation/widgets/face_right.dart';
import 'package:hedg_task/features/auth/e_kyc/presentation/widgets/id_back.dart';
import 'package:hedg_task/features/auth/e_kyc/presentation/widgets/id_front.dart';
import 'package:hedg_task/features/auth/e_kyc/presentation/widgets/pick_id_back_bottom_sheet.dart';
import 'package:hedg_task/features/auth/e_kyc/presentation/widgets/pick_id_front_bottom_sheet.dart';
import 'package:image_picker/image_picker.dart';

part 'e_kyc_state.dart';

class EKycCubit extends Cubit<EKycState> {
  int activeStep = 1;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  PersistentBottomSheetController? idPreviewbottomSheetController;
  PersistentBottomSheetController? idPickerbottomSheetController;
  bool isBottomSheetOpen = false;
  PageController pageController = PageController();

  XFile? idFront;
  XFile? idBack;

  List<Widget> regesrtrationSteps = const [
    IDFront(),
    IDBack(),
    Face(),
    FaceRight(),
    FaceLeft(),
  ];
  EKycCubit() : super(EKycInitial());

  closeBottomSheetForIDPreview() {
    isBottomSheetOpen = false;
    idPreviewbottomSheetController!.close();
  }

  goToNextRegesrtrationStep(int nextStep) {
    activeStep++;
    pageController.animateToPage(nextStep,
        duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
    emit(RefreshRegestrationStepper());
  }

  idImagesChecker(
      {required BuildContext context, required XFile? idImage, int? nextStep}) {
    if (idImage != null) {
      nextStep == null
          ? openBottomSheetForIDPreview(context)
          : goToNextRegesrtrationStep(nextStep);
    } else {
      flushBar(context, "You Must Provide ID Image");
    }
  }

  openBottomSheetForIDPreview(BuildContext context) {
    if (idBack != null) {
      isBottomSheetOpen = true;
      idPreviewbottomSheetController = scaffoldKey.currentState!
          .showBottomSheet((context) => const IDPreviewBottomSheet());
      emit(RefreshRegestrationStepper());
    } else {
      flushBar(context, "You Must Provide ID Back Image");
    }
  }

  pickIDFront(BuildContext context) {
    idPickerbottomSheetController = scaffoldKey.currentState!
        .showBottomSheet((context) => const PickIDFrontBottomSheet());
  }

  pickIDBack(BuildContext context) {
    idPickerbottomSheetController = scaffoldKey.currentState!
        .showBottomSheet((context) => const PickIDBackBottomSheet());
  }

  closeIDPickerBottomSheet() {
    idPickerbottomSheetController!.close();
    emit(RefreshRegestrationStepper());
  }
}
