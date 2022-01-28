const Imobilier = artifacts.require("Immobilier");
module.exports = function(deployer) {
  deployer.deploy(Imobilier);
};
