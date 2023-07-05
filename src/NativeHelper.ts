import { TurboModule, TurboModuleRegistry } from "react-native";

export interface Spec extends TurboModule {
  transmitString(string: string): Promise<string>;
}

export default TurboModuleRegistry.get<Spec>(
  "RtnTurboModulesHelper"
) as Spec | null;
