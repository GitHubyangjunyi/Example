import Foundation

public class A {
	public static func test() {
		#if Foo
		
		print("Foo")
		
		#else
		print("xxxx")
		#endif
		
#if Bar
		print("Bar")
#endif
	}
}
