const hre = require('hardhat')
async function main() {
    const helloWorld = await hre.ethers.getContractFactory("HelloWorld");
    const hello = await helloWorld.deploy();
    await hello.waitForDeployment()
    console.log(`HelloWorld deployed to: ${hello.address}`);
    
}

try{
main()
}catch(err){
console.log(err)

}