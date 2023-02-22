Swagger API Generator 

To rerun generator: 

1. Update the `api_oas3.json` to latest server version
2. delete the `generated/` directory
3. run `flutter pub run build_runner build --delete-conflicting-outputs`
4. After `generated/` directory is added, update `client_index.dart` and replace `api_oas3.swagger` with `api_oas3.swagger`