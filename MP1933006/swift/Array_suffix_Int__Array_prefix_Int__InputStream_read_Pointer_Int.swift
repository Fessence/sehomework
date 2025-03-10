/**类名_方法名(_形参类型)*
 *  @author: 胡鹏飞_MP1933006
 *  @className: Array_suffix_Int__Array_prefix_Int__InputStream_read_Pointer_Int
 *  @apiSignature: Array$func suffix(from start: Int) -> ArraySlice<Element>;Array$func prefix(_ maxLength: Int) -> ArraySlice<Element>;InputStream$func read(_ buffer: UnsafeMutablePointer<UInt8>,maxLength len: Int) -> Int
 *  @description: Test swift api Array$func suffix(from start: Int);Array$func prefix(_ maxLength: Int);InputStream$func read(_ buffer: UnsafeMutablePointer<UInt8>,maxLength len: Int)
 *  @Map: java.io.FileInputStream$public int read(byte[] b,int off,int len)
 */

import Foundation

class Array_suffix_Int__Array_prefix_Int__InputStream_read_Pointer_Int{
    /**
     *input : 4
     *class0 class0 = ["as","hello","world","ahahah"]
	 *start = 3
	 *ret0 reto = ["hello","world","ahahah"]
	 *class1 = ["hello","world","ahahah"]
	 *maxLength = 2
	 *ret1 ret1 = ["hello","world"]
	 *class2 InputStream$class2
	 *buffer = UnsafeMutablePointer$buffer
	 *len= 8 * 1024
	 *ret2 = -1
     *ouput : 3
	 *InputStream$class2 : InputStream = InputStream(data: data) & https://stackoverflow.com/questions/42561020/reading-an-inputstream-into-a-data-object
	 *var buffer: UnsafeMutablePointer<UInt8>
	 *buffer = UnsafeMutablePointer.allocate(capacity: len) & https://stackoverflow.com/questions/42561020/reading-an-inputstream-into-a-data-object
     */
    static func suffix0(){
        print(">>>>>>>>")
        let class0 = ["as","hello","world","ahahah"]
		let start = 3
        let ret0 = class0.suffix(start)
		let class1 = ["hello","world","ahahah"]
		assert(ret0==["hello","world","ahahah"])
		let maxLength = 2
		let ret1 = class1.prefix(maxLength)
		let writeRowArr2 = ["hello","world"]
		assert(ret1==["hello","world"])
		
		let stringToWrite = writeRowArr2.joined(separator: "\r\n")
		let data : Data = stringToWrite.data(using: String.Encoding.utf8)!
		let class2 : InputStream = InputStream(data: data)
		let len = 8 * 1024
		var buffer: UnsafeMutablePointer<UInt8>
		buffer = UnsafeMutablePointer.allocate(capacity: len)
		let ret2 = class2.read(buffer,maxLength: len)
		assert(ret2==Int(-1))
		print(ret2)
    }

}
Array_suffix_Int__Array_prefix_Int__InputStream_read_Pointer_Int.suffix0()


