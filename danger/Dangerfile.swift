import Danger 
let danger = Danger()
let editedFiles = danger.git.modifiedFiles + danger.git.createdFiles
let path = editedFiles.joined(separator: ", ")
message("These files have changed: \(editedFiles.joined(separator: ", "))")
let tmpPath = editedFiles.first(where: { $0.contains(".swift") }) ?? ""
message("aaa:\(tmpPath)")
fail(message: "测试", file: "\(tmpPath)", line: 3)
