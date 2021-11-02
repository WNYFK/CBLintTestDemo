import Danger 
let danger = Danger()
let editedFiles = danger.git.modifiedFiles + danger.git.createdFiles
let path = editedFiles.joined(separator: ", ")
message("These files have changed: \(editedFiles.first ?? "")")
let tmpPath = editedFiles.first(where: { $0.contains(".swift") }) ?? ""
message("aaa:\(tmpPath)")
fail(message: "测试", file: "\(tmpPath)", line: 18)
warn(message: "警告测试", file: "\(tmpPath)", line: 19)

