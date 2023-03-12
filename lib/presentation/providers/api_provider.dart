import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wage/domain/Member/member_model.dart';
import 'package:wage/domain/Wallets/wallets_model.dart';
import 'package:wage/domain/Project/project_model.dart';
import 'package:wage/infrastructure/api_services/walletsDAO.dart';
import 'package:wage/infrastructure/authentication_service/google_sign_in.dart';
import 'package:wage/presentation/providers/login_controller_provider.dart';

import '../../infrastructure/api_services/memberDAO.dart';
import '../../infrastructure/api_services/projectDAO.dart';

final googleProvider = Provider((ref) => GoogleSignInService());

final userProvider = Provider((ref) => MemberDAO());

final walletsProvider = Provider((ref) => WalletsDAO());

final projectProvider = Provider((ref) => ProjectDAO());

final loginStateProvider = Provider((ref) => LoginController(ref));

final userDataProvider = FutureProvider.autoDispose<Member>(
  (ref) {
    return ref.watch(userProvider).getMember();
  },
);

final walletsDataProvider = FutureProvider.autoDispose<Wallets>(
  (ref) {
    return ref.watch(walletsProvider).getWallets();
  },
);

final projectDatasProvider = FutureProvider.autoDispose<List<Project>>(
  (ref) {
    return ref.read(projectProvider).getProjects().then(
      (projects) {
        final List<Project> characterList = [];
        for (var i = 0; i < projects.length; i++) {
          try {
            characterList.add(Project(
              projectId: projects[i]["projectId"],
              projectName: projects[i]["projectName"],
              projectStatus: projects[i]["projectStatus"],
              projectType: projects[i]["projectType"],
              projectVisibility: projects[i]["projectVisibility"],
              createdAt: DateTime.parse(projects[i]["createdAt"]),
              // startedAt: projects[i]["startedAt"] != null
              //     ? DateTime.parse(projects[i]["startedAt"])
              //     : null,
              // endedAt: projects[i]["endedAt"] != null
              //     ? DateTime.parse(projects[i]["endedAt"])
              //     : null,
              // updatedAt: projects[i]["updatedAt"] != null
              //     ? DateTime.parse(projects[i]["updatedAt"])
              //     : null,
              // projectFiles: projects[i]["projectFiles"] != null
              //     ? ProjectFiles(
              //         file: projects[i]["projectFiles"]["file"] != null
              //             ? File(
              //                 directUrl: projects[i]["projectFiles"]["file"]
              //                             ["directUrl"] !=
              //                         null
              //                     ? projects[i]["projectFiles"]["file"]
              //                         ["directUrl"]
              //                     : '',
              //                 createdAt: projects[i]["projectFiles"]["file"]
              //                             ["createdAt"] !=
              //                         null
              //                     ? DateTime.parse(projects[i]["projectFiles"]
              //                         ["file"]["createdAt"])
              //                     : null,
              //                 updatedAt: projects[i]["projectFiles"]["file"]
              //                             ["updatedAt"] !=
              //                         null
              //                     ? DateTime.parse(projects[i]["projectFiles"]
              //                         ["file"]["updatedAt"])
              //                     : null,
              //               )
              //             : null,
              //         fileType: projects[i]["projectFiles"]["fileType"])
              //     : null,
            ));
          } catch (e) {
            print(e);
          }
          ;
        }
        return characterList;
      },
    );
  },
);

final loginStatesProvider = FutureProvider<String?>(
  (ref) {
    return ref.watch(loginStateProvider).checkStorageForJWT();
  },
);
