# Ruby on Rails(RoR) 시작하기

-----
## Ruby, RoR 버전
- ruby 2.3.3
- rails 5.0.7.2

-----
## tutorial 문서
- https://www.digitalocean.com/community/tutorials/build-a-restful-json-api-with-rails-5-part-one
- https://www.digitalocean.com/community/tutorials/build-a-restful-json-api-with-rails-5-part-two
- https://www.digitalocean.com/community/tutorials/build-a-restful-json-api-with-rails-5-part-three

-----
## 모르는 것들 정리
- RSpec 에서 let vs subject<br>
let: 단순한 변수<br>
subject: class.new 로 생성되는 변수들. 주로 described_class.new 형태<br>


- let vs let! 차이점<br>
let!: describe 안의 before 전에 실행된다. let! 안의 심볼은 사용 여부와 상관없이 초기화된다.<br>
let: describe 안의 before 다음에 실행된다(it 코드 블록 전에 실행됨). let 안의 심볼은 사용되지 않을 경우 초기화 되지 않는다.<br>

- create!<br>
객체 생성 중 error 가 발생할 경우 raise Exception해준다.<br>

- method 선언부에서 self. prefix 가 붙은 메소드<br>
class 정의 부분에서 self. 가 붙은 메소드는 클래스 메소드이다.<br>
JsonWebToken 클래스에 클래스 메소드가 정의되어 있다.<br>
```ruby
# definition
class JsonWebToken
  def self.encode(payload, exp = 24.hours.from_now)
    # blah blah blah
  end
end

# class method call
JsonWebToken.encode({user: '5'})
```

- ApiVersion<br> 
routes.rb 에서 scope v2를 먼저 선언해야함. v1이 먼저 정의 된 경우 v1.matches? 가 먼저 match 됨.

- include vs extend<br>
include: module 을 include 할 경우 instance method가 된다.<br> 
extend: module 을 extend 할 경우 class method 가 된다.<br>
```ruby
module Foo
  def foo
    puts "method foo"
  end
end

class Bar
  include Foo
end

Bar.new.foo # method foo
Bar.foo # undefined method

module Foo
  def foo
    puts "method foo"
  end
end

class Bar
  extend Foo
end

Bar.foo # foo
Bar.new.foo # undefined method
```
