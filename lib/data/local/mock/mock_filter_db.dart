import 'package:inked/data/local/mock/base.dart';
import 'package:inked/data/model/filter.dart';

class MockFilterDatabase extends BaseMockDatabase<TokenFilter>{

//  static var spams

  static var photoFilter = TokenFilter("dont show if photo", action: FilterAction.Hide, operation: OperationType.Or, isRootFilter: true, isOn: true, filterLayers: [
    SingleTokenFilterLayer(token: "사진", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "포토", scope: FilterScope.Title, match: FilterMatchType.Contains),
//    SingleTokenFilterLayer(token: "<img", scope: FilterScope.Body, match: FilterMatchType.Contains),
  ]);


  static var paperNewsFilter = TokenFilter("dont show paper news", action: FilterAction.Hide, operation: OperationType.Or, isRootFilter: true, isOn: true, filterLayers: [
      SingleTokenFilterLayer(token: "[앵커]", scope: FilterScope.Body, match: FilterMatchType.Contains),
      SingleTokenFilterLayer(token: "[기자]", scope: FilterScope.Body, match: FilterMatchType.Contains),
      SingleTokenFilterLayer(token: "<video", scope: FilterScope.Body, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "습니다.", scope: FilterScope.Body, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "동영상 뉴스", scope: FilterScope.Body, match: FilterMatchType.Contains),
  ]);

  static var miscSpamFilter = TokenFilter("dont show if misc spam", action: FilterAction.Hide, operation: OperationType.Or, isRootFilter: true, isOn: true, filterLayers: [
    SingleTokenFilterLayer(token: "날씨", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "기고", scope: FilterScope.Title, match: FilterMatchType.Contains),

    // covid
    SingleTokenFilterLayer(token: "아슬아슬", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "거리두기", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "신천지", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "확진", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "사망", scope: FilterScope.Title, match: FilterMatchType.Contains),

    // disaster
    SingleTokenFilterLayer(token: "산불", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "지진", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "화제", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "진화", scope: FilterScope.Title, match: FilterMatchType.Contains),

    // criminal
    SingleTokenFilterLayer(token: "n번방", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "범죄", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "경찰", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "구속", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "검거", scope: FilterScope.Title, match: FilterMatchType.Contains),

    // advertise
    SingleTokenFilterLayer(token: "출시", scope: FilterScope.Title, match: FilterMatchType.Contains),

    // misc
    SingleTokenFilterLayer(token: "기부", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "발굴", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "개미", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "맛있는", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "아시나요", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "!", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "요?", scope: FilterScope.Body, match: FilterMatchType.Contains),
//    SingleTokenFilterLayer(token: "요.", scope: FilterScope.Body, match: FilterMatchType.Contains),
//    SingleTokenFilterLayer(token: "?", scope: FilterScope.Title, match: FilterMatchType.Contains),

    // boxed types
    SingleTokenFilterLayer(token: "중국어", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "일본어", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "영단기", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "깨알뉴스", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "가상화폐", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "간추린 소식", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "종합뉴스", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "위클리", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "퍼스펙티브", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "뉴욕개장", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "논설위원", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "이정민의 시선", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "시시각각", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "지자체장에게 듣는다", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "현장에서", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "상보", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "유럽증시", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "날씨", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "김남국의 아포리아", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "다이제스트", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "여의도포럼", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "떴다! 기자평가단르포", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "패션&뷰티", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "맥주 이야기", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "다이제스트", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "아침을 열며", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "짜오! 베트남", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "진중권의 트루스 오디세이", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "짜오! 베트남", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "강세 토픽", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "오늘 기업·사람", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "기적의 치유법", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "AM-PM", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "LAKA", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "오늘의 키워드", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "글로벌포스트", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "일일펀드동향", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "뉴욕증시", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "뉴욕마감", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "유럽증시", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "중국은 지금", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "스마트 리빙", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "손바닥경제", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "리더스카페", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "MOOC", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "원자재시황", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "현장연결", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "스마트 리빙", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "인제소식", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "연결 기준", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "강세 토픽", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "공시+", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "여기는", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "신상품", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "인포그래픽", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "뉴욕 증시 마감", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "클릭 e종목", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "여행 재고", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "녹취구성", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "-리포트", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "오늘은 이런 경향", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "해피펫툰", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "연합뉴스 이 시각 헤드라인뉴스", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "전국 주요 신문 톱뉴스", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "미디어 브리핑", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "자막뉴스", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "인터뷰", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "맞장토론", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "크립토 시황", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "핫이슈", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "자막뉴스", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "현장영상", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "이 사람", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "국회 오늘은", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "취재수첩", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "서울포토", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "애드버표기O2보", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "아침이슈", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "리얼미터", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "강세 토픽", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "한은 금리동결시황", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "한은 금리동결", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "김경래의 최강시사", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "오늘의 키워드", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "강세 토픽", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "신인동~효동", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "부고", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "ETF·ETN", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "강세 토픽", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "한은 금리동결", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "따뜻한 세상", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "팩트체크", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "자막뉴스", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "강세 토픽", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "오늘의 키워드", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "강세 토픽'극복'", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "줌인", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "n오전시황", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "빅데이터MSI", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "전 서울신문 부사장", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "오늘의 운세", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "이철영의 정사신", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "폴인인사이트", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "미리보는 오늘", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "여의도속풀이", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "스피드뉴스", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "오늘의 건강", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "재테크 단신", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "김현섭 PB의 생활 속 재테크", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "유용하 기자의 사이언스 인터뷰", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "리얼미터", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "과학을읽다", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "식품박물관", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "유가마감", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "오전시황", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "격전지 PK를 가다", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "뉴스피처", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "n팩트체크", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "김화진 칼럼", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "헤럴드pic", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "김종민의 불작불성", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "만났습니다", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "그린 기업, 지구를 살리는 기업", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "직장영어", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "양낙규의 Defense Club", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "이주의 차", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "정치합시다", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "핫이슈 키워드", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "만났습니다", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "부산소식", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "모닝브리핑", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "증시신호등", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "대구경북 조간 헤드라인", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "강세 토픽", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "부산소식", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "아직 살만한 세상", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "이데일리N", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "대전소식", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "김대성의 종목분석", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "e공시 눈에 띄네", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "친절한 경제", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "PRNewswire", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "뉴스터치", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "데일리 국제금융시장", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "부음", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "전 대통령 외교안보수석", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "TF사진관", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "TF초점", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "TF포토", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "TF특징주", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "TF현장", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "TF 이슈&주가", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "코리아타임스 뉴", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "출근길", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "-리포트", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "기억할 오늘", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "기자수첩", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "뉴욕증시", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "삶과 문화", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "유럽증시", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "조간브리핑", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "미리보는 주총-현대차", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "현장연결", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "미리보는 주총-삼성전자", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "빅데이터MSI", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "국제유가", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "외환브리핑", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "이건머니", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "연통TV", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "오늘의 주요일정", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "오늘의 주요 일정", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "오늘의 키워드", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "머니팁", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "이슈분석", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "내일날씨", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "Sell", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "김지현의 IT세상", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "주요 신문 사설", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "이슈 컷", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "홍재화의 무역이야기", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "강세 토픽", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "날씨", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "SC헬스칼럼", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "윤영돈의 코칭이야기", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "사부의 사부에게 묻다-의사 직업병", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "뉴스해설", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "사진", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "뉴스광장 영상", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "라이브24", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "뉴스체크", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "클릭 e종목", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "게시판", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "강릉", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "뉴스특보 LIVE", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "강세 토픽", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "영상", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "리얼미터", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "굿모닝월드", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "달러/원", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "김경래의 최강시사", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "-리포트", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "동정", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "하재근의 이슈분석", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "머니S포토", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "김영상의 오지랖", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "날씨", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "오늘의", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "굿모닝 증시", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "-리포트", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "그래픽", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "생생 글로벌 경제", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "시온의 소리", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "글로벌 이슈", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "한경에세이", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "공식 입장", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "날씨", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "국민의 기업", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "넥스트K", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "ssue&", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "김현석의 월스트리트나우", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "오성수의 툰", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "美 주요 기업 실적시황", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "리얼미터", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "ssue&", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "인베스팅닷컴", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "한줄뉴스", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "강원포럼", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "뉴스 따라잡기시황", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "백진용이 만난 사람", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "녹색성장", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "타임머신", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "증시브리핑", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "Hot-Line", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "마켓인", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "외신브리핑", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "김영진의 문화탐색", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "오늘의 환율전망", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "김기찬의 인(人)프라", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "카드뉴스", scope: FilterScope.Title, match: FilterMatchType.Contains),
    SingleTokenFilterLayer(token: "ESC", scope: FilterScope.Title, match: FilterMatchType.Contains),


  ]);

  static var mainFilter = TokenFilter("default spam removal", action: FilterAction.Hide, operation: OperationType.Or, isRootFilter: true, isOn: true, filterLayers: [], extraFilters: [
    photoFilter,
    paperNewsFilter,
    miscSpamFilter,
  ]);

  @override
  Future<TokenFilter> create(record) async{
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<TokenFilter> get(String re) async{
    return photoFilter;
  }

  @override
  Future<List<TokenFilter>> list() async{
    // TODO: implement list
    throw UnimplementedError();
  }

  @override
  Future<TokenFilter> update(String re, record) async{
    // TODO: implement patch
    throw UnimplementedError();
  }

}