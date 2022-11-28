import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:speed_test_dart/classes/server.dart';
import 'package:speed_test_dart/speed_test_dart.dart';

part 'current_speed_event.dart';

part 'current_speed_state.dart';

class CurrentSpeedBloc extends Bloc<CurrentSpeedEvent, CurrentSpeedState> {
  CurrentSpeedBloc()
      : super(
          const ConnectionSpeedState(speedDownload: 0, speedUpload: 0),
        ) {
    SpeedTestDart tester = SpeedTestDart();
    List<Server> bestServersList = [];

    double downloadRate = 0;
    double uploadRate = 0;

    Future<void> setBestServers() async {
      final settings = await tester.getSettings();
      final servers = settings.servers;

       bestServersList = await tester.getBestServers(
        servers: servers,
      );
    }

    Future<void> testDownloadSpeed() async {
      downloadRate = await tester.testDownloadSpeed(servers: bestServersList);
    }

    Future<void> testUploadSpeed() async {
      uploadRate = await tester.testUploadSpeed(servers: bestServersList);
    }

    on<GetCurrentConnectionSpeedEvent>(
      (event, emit) {
        setBestServers();
        testDownloadSpeed();
        testUploadSpeed();
        emit(
          ConnectionSpeedState(
            speedDownload: downloadRate,
            speedUpload: uploadRate,
          ),
        );
      },
    );
  }
}
