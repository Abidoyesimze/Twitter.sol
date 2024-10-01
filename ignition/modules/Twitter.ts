import { buildModule } from "@nomicfoundation/hardhat-ignition/modules";


const TwitterModule = buildModule("TwitterModule", (m) => {

  const twitter = m.contract("Twitter");

  return { twitter };
});

export default TwitterModule;
