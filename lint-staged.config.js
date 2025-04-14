export default {
    "*.dart":(fileNames)=>
        fileNames.map((fileName) => [
            `dart fix --apply ${fileName}`,
            `dart format ${fileName}`,
        ]),
};