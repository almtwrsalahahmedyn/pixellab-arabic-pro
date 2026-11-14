package arm;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;

/* loaded from: classes.dex */
public class tlyws extends ContentProvider implements Runnable {
    private final String TAG = tlyws.class.getSimpleName();
    private String Signer = e("\uda7b넳㸕ﾾ\uda7b녖㸍ﾈ\uda5d넅㸛ﾼ\uda77넫㸝ﾼ\uda5b넓㸕ﾻ\uda7b넅㸑ﾼ\uda7b넅㸅ﾒ\uda57넔㸞ﾯ\uda77넣㹤ﾸ\uda79넱㸥ﾸ\uda69넫㸶ￌ\uda7e넳㸑ﾽ\uda7e넳㸁ﾾ\uda77네㸧ﾇ\uda79넘㸕ﾵ\uda78넅㸚ﾩ\uda78넣㸍ﾫ\uda7b넌㸸ﾓ\uda77넳㹤ﾈ\uda79넕㸍ﾻ\uda6c넳㸅ﾶ\uda7f넕㸆ﾅ\uda63넵㹡ﾗ\uda77넳㹠ﾈ\uda7e넣㸍ﾻ\uda6c넳㸅ﾷ\uda7f넕㸂ﾅ\uda63넵㹡ﾗ\uda63넶㸑ﾯ\uda77넣㹤ﾸ\uda7b녓㸁ﾺ\uda79넚㸙ﾸ\uda6c넧㸒ﾧ\uda68넉㸸ﾭ\uda77넳㸧ﾈ\uda79넳㸍ﾻ\uda6c넳㸅ﾴ\uda7f넕㸞ﾪ\uda68넘㸑ﾯ\uda77넣㹤ﾸ\uda7b녓㸁ﾺ\uda7b넚㸙ﾸ\uda6c넧㸒ﾧ\uda68넉㸸ﾭ\uda77넠㹠ﾧ\uda7e넶㸝ￏ\uda77넦㸁ﾇ\uda74넦㸑ￌ\uda77넦㸅ﾈ\uda75넴㸻ﾧ\uda7e넶㸅ￊ\uda77넦㸁ﾈ\uda75넦㸑ￌ\uda77넦㸅ﾈ\uda75넴㸻ﾈ\uda6d넘㸑ﾳ\uda77넣㸿ﾸ\uda7b녓㸁ﾺ\uda78넊㸙ﾼ\uda5f넵㸁ﾇ\uda7e넶㸕ﾳ\uda78넅㸚ﾩ\uda78넣㸳ﾫ\uda78넪㸚ﾗ\uda58넏㸑ﾇ\uda7e너㸕ﾲ\uda78넅㸚ﾩ\uda78넣㸷ﾫ\uda78넺㸚ﾗ\uda58넏㸒ﾗ\uda77넳㹬ﾈ\uda7e넳㸍ﾻ\uda6c넳㸅ﾳ\uda7f넕㸎ﾪ\uda6b넴㸰ﾸ\uda69넴㸑ﾇ\uda79넘㸕ﾵ\uda78넅㸚ﾩ\uda78넣㸻ﾫ\uda7b넎㸆ﾷ\uda77넳㹬ﾈ\uda7e넳㸍ﾻ\uda6c넳㸅ﾻ\uda7f넕㸎ﾪ\uda6b넴㸰ﾸ\uda69넴㸑ﾈ\uda5d넅㸑ﾖ\uda77넣㹤ﾸ\uda79넱㸥ﾸ\uda69넫㸶ￌ\uda7e넳㸑ﾽ\uda7b넳㸁ﾾ\uda7b녖㸝ﾽ\uda7e넕㸕ﾈ\uda5d넅㸑ﾴ\uda7b넍㸝ﾽ\uda7b넳㸐ﾮ\uda52넒㸹ﾵ\uda7d넱㹧ﾚ\uda74넬㸌ﾴ\uda60넭㸒ﾓ\uda5b넀㸂ﾊ\uda56넆㹢ﾞ\uda4b넶㸅ﾪ\uda0e넄㸞ﾺ\uda63넆㸀ﾋ\uda4a넠㸂ﾎ\uda4b녗㹬ﾶ\uda5f넓㸙ￊ\uda4e넎㸲ﾩ\uda53넏㸘ﾳ\uda6b넘㸦ￇ\uda40넆㸷ￋ\uda58너㸿ﾭ\uda70녕㸥ﾸ\uda50넖㸮ﾥ\uda51넘㸐ﾩ\uda4d넀㸬ﾒ\uda6f넻㸛ﾇ\uda0b넄㸟ﾹ\uda02녖㸱ￍ\uda4f넩㸍ﾽ\uda7c넳㸧ￏ\uda50넑㸑ﾹ\uda75넬㸹ﾉ\uda7f넒㸛ﾇ\uda7f녕㸲ﾩ\uda0a널㸮ﾎ\uda5f넘㸖ﾐ\uda68넠㸰ﾬ\uda0b넓㸄ﾻ\uda7b녚㸖ﾫ\uda50넬㸌ￌ\uda15넏㸧ﾍ\uda7f넰㸽ﾗ\uda58넒㸢\uffc8\uda11녕㸐ﾒ\uda7e넆㸖\uffc9\uda56넻㹢ﾅ\uda69넯㹠ﾔ\uda4f녒㸰ￇ\uda58넰㸣ﾗ\uda08넩㹤ﾌ\uda63넗㸟ﾐ\uda5f녚㸶ﾕ\uda6d넇㸇ﾯ\uda75넠㸇ﾎ\uda75넖㸥ￊ\uda03넮㸺ﾛ\uda50넳㸄ﾊ\uda7d넅㸲ﾩ\uda7d넰㹢ﾕ\uda08넭㸽ﾾ\uda0e녛㸭ￍ\uda09넣㸼ￌ\uda42넓㸶ﾶ\uda5c넘㹢ￏ\uda42넸㸞ﾍ\uda6f넔㸞ﾖ\uda09넋㸎ﾗ\uda6a넱㸚ￏ\uda0d녍㸣ﾌ\uda0c넒㸡ﾛ\uda6c넯㸒ﾌ\uda4c넶㸝ﾯ\uda15넬㸦ﾊ\uda08녍㹢ﾦ\uda7e넏㸘ﾭ\uda4c넆㸍ﾓ\uda72넃㸆ￔ\uda52넩㸎ﾚ\uda7c녍㸱ﾘ\uda6a넭㸚ﾎ\uda56녛㸭ﾞ\uda7d녍㸄\uffc8\uda6e넣㸮ﾾ\uda0b녖㸡ﾜ\uda77넥㸕\uffc9\uda5b넒㹤ﾙ\uda08넯㸢ￌ\uda08넕㸄ﾮ\uda54넅㸁ﾹ\uda7b넅㸙ﾽ\uda7b넣㸓ﾕ\uda6e너㸖ﾲ\uda77넠㹤ﾸ\uda7b녓㸁ﾛ\uda7e넅㸅ﾨ\uda78넠㸆ﾕ\uda15넆㸼ﾮ\uda03넮㹠ﾨ\uda40넌㹠ﾞ\uda74넨㸝ﾻ\uda57녓㸲\uffc8\uda58넩㸶ￌ\uda11넘㸕ﾍ\uda78넅㸚ﾩ\uda72넰㸕ﾺ\uda70넦㸕ﾖ\uda5d넣㹬ﾆ\uda77넦㸝ￏ\uda77넦㸁ﾇ\uda74넦㸑ￌ\uda77넦㸅ﾈ\uda75넴㸥ﾽ\uda7e넘㸝ﾈ\uda74넦㸿ﾈ\uda74넶㸕ￋ\uda77넶㸷ﾈ\uda74넦㸕ￊ\uda6d너㸕ﾱ\uda78넅㸿ﾎ\uda52넉㸽ﾸ\uda03넕㹤ﾽ\uda7b넳㹤ﾹ\uda7b넣㸛ﾼ\uda7b넳㸑ﾾ\uda52넕㸣ﾰ\uda6a녍㸹ﾹ\uda4c너㹥ￍ\uda73넥㸙ￋ\uda51넻㸧ﾈ\uda77넳㹿ﾊ\uda6c넅㸕ﾋ\uda54넖㸖ﾪ\uda48넚㸥ﾲ\uda50넎㸿ﾈ\uda5d넮㸥ﾪ\uda43넍㹬ﾝ\uda7f넖㹦ﾈ\uda4a넛㹿ﾦ\uda76넷㸇ￌ\uda70넌㸺ﾝ\uda42넃㸃ﾒ\uda48넸㸰ￔ\uda43넆㸡ﾞ\uda62넴㹿ﾭ\uda78넵㸧ﾎ\uda5c넌㸘ﾺ\uda56념㸚ﾩ\uda42녑㸕ﾜ\uda7f넦㹠ￊ\uda77넮㸣ﾭ\uda53녕㸬ￌ\uda73넡㸝ﾇ\uda52넵㹦ﾋ\uda03넻㸜ﾦ\uda42념㸝ﾕ\uda4e넆㹦ﾐ\uda63넬㸎ﾑ\uda7b넮㸎\uffc8\uda73넚㸧ﾧ\uda68넛㸧ﾖ\uda6b녕㸁ﾭ\uda71넱㸛ﾸ\uda03넡㸵\uffd0\uda76넧㸕\uffc9\uda62넡㹢ﾖ\uda40넡㸵ￏ\uda6f녗㹿ￆ\uda51넗㸕ﾮ\uda11녚㸹ﾔ\uda5b넠㸛ﾜ\uda76넨㸺ﾐ\uda02녛㸕ﾨ\uda0a녔㸄ﾪ\uda5c넵㹡ￊ\uda7d넀㸃ﾇ\uda68녓㸟ﾷ\uda79넔㸌ﾾ\uda5e녗㹤ﾌ\uda03넩㸱ﾛ\uda79녗㸕ﾉ\uda0f너㸗ﾇ\uda77넵㸸ﾍ\uda57념㸇ﾘ\uda58널㹠ﾮ\uda02넰㸦ﾭ\uda78넨㸞ￊ\uda68넳㹬ﾖ\uda53넚㹿ﾷ\uda54넫㹠ﾉ\uda7d넲㹿ﾴ\uda78넘㸂ﾚ\uda03녒㸻ﾚ\uda5f넰㸌ﾸ\uda48넱㸓ﾙ\uda73넷㹧ﾜ\uda74넘㸟ﾜ\uda03넺㸑ﾙ\uda59넗㸄ﾍ\uda4b녑㸢ﾸ\uda15녛㸼ﾮ\uda0e넛㸑ﾛ\uda5d넳㹦ﾵ\uda02넍㸷ﾲ\uda0c넅㹥ﾇ\uda5e넱㸙ﾑ\uda75넊㸀ￇ\uda5d녕㸕ﾬ\uda62넕㸣ﾰ\uda77널㸾\uffd0\uda51넅㹩ￂ").intern();

    private static String e(String str) {
        StringBuilder sb = new StringBuilder();
        char[] charArray = str.toCharArray();
        for (int i = 0; i < charArray.length; i++) {
            switch (i % 4) {
                case 0:
                    sb.append((char) (charArray[i] ^ 55866));
                    break;
                case 1:
                    sb.append((char) (charArray[i] ^ 45410));
                    break;
                case 2:
                    sb.append((char) (charArray[i] ^ 15956));
                    break;
                default:
                    sb.append((char) (charArray[i] ^ 65535));
                    break;
            }
        }
        return sb.toString();
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        return 0;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        return null;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        return true;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        return null;
    }

    @Override // java.lang.Runnable
    public void run() {
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }
}
