import UIKit

/*
 Swift의 모든 데이터 타입 이름은 첫 글자가 대문자로 시작되는 대문자 카멜케이스(Upper Camel Case)를 사용한다.

 Upper Camel Case: 클래스, 구조체, 익스텐션, 프로토콜, 열거형 이름은 타입의 이름이기 때문에 첫 글자를 대문자로 사용한다.
 
 Lower Camel Case: 함수, 메서드, 인스턴스의 이름의 첫 글자를 소문자로 사용하는 소문자 카멜케이스를 사용한다.

 1. Int와 UInt 타입은 모두 정수 타입이다.
 2. Int는 +, - 부호를 포함한 정수를 뜻하며, UInt는 - 부호를 포함하지 않는 0을 포함한 양의 정수이다. 
 3. bool
    - 참 / 거짓만 값으로 가진다.
 4. double / float
    -  Double은 최소 15자리의 십진수를 표현할 수 있는 반면, Float는 6자리의 숫자까지만 표현이 가능합니다. 필요에 따라 둘 중 하나를 선택하여 사용하면 되는데 만약 무엇을 사용해야할지 모른다면 Double을 사용하는것이 좋습니다.
 5. Character
    - 문자를 의미 , 앞뒤에 큰 따옴표 사용
    - 한글, 이모티콘을 변수로 사용하지 않음
 
 6.String
    - 문자의 나열, 즉 문자열
 
 
 
 */
    var boolean:Bool = false
    boolean.toggle() // false -> ture


//이니셜라이저를 사용하여 빈문자열을 생성가능
//변수 var를 사용하여 변수를 생성했기 때문에 문자열의 수정 및 변경가능
    var name : String = "심재형"
    var introduce :String = String()

//append() 메서드를 이용해서 문자열을 이어붙일수도 있다.
    introduce.append("저의 이름은")

//연산자를 사용하여 문자열을 이어 붙일수도 있다
    introduce = introduce  + " " + name + "입니다"

    print(introduce)


//문자의 수 count
    print("name에 해당되는 글자갯수\(name.count)")

//빈 문자열인지 확인하는방법
    print("introduce가 비어있나요? : \(introduce.isEmpty)")

// 유니코드의 스칼라값을 사용하면 값에 해당하는 표현이 출력됨
    let unicodeScalarValue: String = "\u{2665}"
    let airplane = Unicode.Scalar(9992)!
    let sim: Unicode.Scalar = "심"
    print(sim)//심
    print(airplane) // ✈
    print(unicodeScalarValue) //♥


//String 다양한 예시

    let hello:String = "Hello"
    let Simjae :String = "Simjae"
    var greating :String = hello + " " + Simjae

    print(greating)

    greating = hello
    greating += " "
    greating += Simjae
    greating += "입니다"
    print(greating)

//1.연산자를 통한 문자열비교

    var isSameString :Bool = false

    isSameString = hello == "Hello"
    print(isSameString)


//2.접두어 hasPrefix
    var hasPrefix :Bool = false
    hasPrefix = hello.hasPrefix("He")
    print(hasPrefix)//true


//3.접미어 hasSuffix
    var hasSuffix :Bool = false
    hasSuffix = Simjae.hasSuffix("ae")
    print(hasSuffix)//true


//4.대소문자 변환
    var changeString = Simjae.uppercased()
    print(changeString)


//5. 여러줄의 문자열을 사용할때는 """
    greating = """
    안녕하세요. 심재형입니다.
    저는 IOS개발새내기입니다.
    앞으로 잘 부탁드리겠습니다.
    """
    print(greating)

//6.Any,AnyObject AnyObject - 모든 데이터타입을 사용 할 수 있다. 잘안쓴다.


//7. nil - 데이터가 없음


/*
 multi-line(""")
    - Swift의 표준 문자열은 따옴표로 시작하고 끝나지만 줄 바꿈(enter)을 해서는 안됩니다.
      예를 들어 다음은 표준 문자열입니다.
    -때로는 multi-line을 사용하지 않고 코드에 긴 텍스트 문자열을 포함하고 싶을 수 있지만 이것은 매우 드뭅니다.특히, 다른 사람과 코드를 공유 또는 협업 하려는 경우 multi-line을 사용하는것이 가장 중요합니다.
     이유는 프로그램에서 오류 메시지가 표시되면 코드를 검색해야 하는데 만약 여러 줄로 되어있다면 검색이 실패할 수 있습니다. 때문에 multi-line을 사용하면 검색이 쉬워집니다.
 
 
 
 */
