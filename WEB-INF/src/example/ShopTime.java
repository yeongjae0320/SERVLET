package example;
import java.util.Calendar;
import java.util.TimeZone;

public class ShopTime {
    public String timenow() {
        // 한국 표준시 설정
        TimeZone kst = TimeZone.getTimeZone("Asia/Seoul");
        Calendar calendar = Calendar.getInstance(kst);

        String am_pm;
        int hour = calendar.get(Calendar.HOUR_OF_DAY); // 24시간 형식으로 시간 가져오기
        int minute = calendar.get(Calendar.MINUTE);
        int second = calendar.get(Calendar.SECOND);

        if (hour < 12) {
            am_pm = "AM";
        } else {
            am_pm = "PM";
            if (hour != 12) { // 12 PM을 그대로 유지
                hour -= 12;
            }
        }

        String CT = hour + ":" + minute + ":" + second + " " + am_pm; // 출력 문자열 조합
        return CT; // 문자열 리턴
    }
}
